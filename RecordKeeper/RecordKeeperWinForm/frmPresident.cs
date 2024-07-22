using System.Xml.Linq;

namespace RecordKeeperWinForm
{
    public partial class frmPresident : Form
    {
        DataTable dtPresident = new DataTable();
        DataTable dtPresidentMedal = new DataTable();
        BindingSource bindSource = new BindingSource();
        string deleteColName = "deletecol";
        int presidentid = 0;

        public frmPresident()
        {
            InitializeComponent();
            btnSave.Click += BtnSave_Click;
            btnDelete.Click += BtnDelete_Click;
            this.FormClosing += FrmPresident_FormClosing;
            btnSaveMedal.Click += BtnSaveMedal_Click;
            gMedal.CellContentClick += GMedal_CellContentClick;
        }


        public void LoadForm(int presidentidval)
        {
            presidentid = presidentidval;
            this.Tag = presidentid;
            dtPresident = President.Load(presidentid);
            bindSource.DataSource = dtPresident;
            if (presidentid == 0)
            {
                dtPresident.Rows.Add();
            }
            DataTable dtParties = President.GetPartyList();
            WindowsFormsUtility.SetListBinding(lstPartyName, dtParties, dtPresident, "Party");

            WindowsFormsUtility.SetControlBinding(txtNum, bindSource);
            WindowsFormsUtility.SetControlBinding(txtLastName, bindSource);
            WindowsFormsUtility.SetControlBinding(txtFirstName, bindSource);
            WindowsFormsUtility.SetControlBinding(dtpDateBorn, bindSource);
            WindowsFormsUtility.SetControlBinding(txtDateDied, bindSource);
            WindowsFormsUtility.SetControlBinding(txtTermStart, bindSource);
            WindowsFormsUtility.SetControlBinding(txtTermEnd, bindSource);
            this.Text = GetPresidentDesc();
            LoadPresidentMedals();
            SetButtonsEnabledBasedOnNewRecord();
        }

        private void LoadPresidentMedals()
        {
            dtPresidentMedal = PresidentMedal.LoadByPresidentId(presidentid);
            gMedal.Columns.Clear();
            gMedal.DataSource = dtPresidentMedal;
            WindowsFormsUtility.AddComboBoxToGrid(gMedal, DataMaintenance.GetDataList("Medal"), "Medal", "MedalName");
            WindowsFormsUtility.AddDeleteButtonToGrid(gMedal, deleteColName);
            WindowsFormsUtility.FormatGridForEdit(gMedal, "PresidentMedal");
        }

        private bool Save()
        {
            bool b = false;
            Application.UseWaitCursor = true;
            try
            {
                President.Save(dtPresident);
                b = true;
                bindSource.ResetBindings(false);
                presidentid = SQLUtility.GetValueFromFirstRowAsInt(dtPresident, "PresidentId");
                this.Tag = presidentid;
                SetButtonsEnabledBasedOnNewRecord();
                this.Text = GetPresidentDesc();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Record Keeper");
            }
            finally
            {
                Application.UseWaitCursor = false;
            }
            return b;
        }

        private void Delete()
        {

            if (dtPresident.Rows.Count > 0)
            {
                string allowedDelete = SQLUtility.GetValueFromFirstRowAsString(dtPresident,"IsDeleteAllowed");
                if (allowedDelete != ""){
                    MessageBox.Show(allowedDelete, Application.ProductName);
                    return;
                }
            }
            var response = MessageBox.Show("Are you sure you want to delete this president?",Application.ProductName, MessageBoxButtons.YesNo);
            if (response == DialogResult.No)
            {
                return;
            }
            Application.UseWaitCursor = true;
            try
            {
                President.Delete(dtPresident);
                this.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, Application.ProductName);
            }
            finally
            {
                Application.UseWaitCursor = false;
            }
        }

        private void SavePresidentMedal()
        {
            try
            {
                PresidentMedal.SaveTable(dtPresidentMedal, presidentid);
            }
            catch(Exception ex)
            {
                MessageBox.Show(ex.Message, Application.ProductName);
            }
        }

        private void DeletePresidentMedal(int rowIndex)
        {
            int id = WindowsFormsUtility.GetIdFromGrid(gMedal, rowIndex, "PresidentMedalId");
            if (id > 0)
            {
                try
                {
                    PresidentMedal.Delete(id);
                    LoadPresidentMedals();
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message, Application.ProductName);
                }
            }
            else if (id < gMedal.Rows.Count)
            {
                gMedal.Rows.RemoveAt(rowIndex);
            }
        }

        private void SetButtonsEnabledBasedOnNewRecord()
        {
            bool b = presidentid == 0 ? false : true;
            btnDelete.Enabled = b;
            btnSaveMedal.Enabled = b;
        }

        private string GetPresidentDesc()
        {
            string value = "New President";
            int pkvalue = SQLUtility.GetValueFromFirstRowAsInt(dtPresident, "PresidentId");
            if (pkvalue > 0)
            {
                value = SQLUtility.GetValueFromFirstRowAsInt(dtPresident, "Num") + " " + SQLUtility.GetValueFromFirstRowAsString(dtPresident, "LastName");
            }
            return value;
        }

        private void BtnDelete_Click(object? sender, EventArgs e)
        {
            Delete();
        }

        private void BtnSave_Click(object? sender, EventArgs e)
        {
            Save();
        }

        private void FrmPresident_FormClosing(object? sender, FormClosingEventArgs e)
        {
            bindSource.EndEdit();
            if (SQLUtility.TableHasChanges(dtPresident))
            {
                var res = MessageBox.Show($"Do you want to save changes to {this.Text} before closing the form?", Application.ProductName, MessageBoxButtons.YesNoCancel);
                switch (res)
                {
                    case DialogResult.Yes:
                        bool b = Save(); 
                        if (b == false)
                        {
                            e.Cancel = true;
                            this.Activate();
                        }
                        break;
                    case DialogResult.Cancel:
                        e.Cancel = true;
                        this.Activate();
                        break;
                }
            }
        }

        private void BtnSaveMedal_Click(object? sender, EventArgs e)
        {
            SavePresidentMedal();
        }

        private void GMedal_CellContentClick(object? sender, DataGridViewCellEventArgs e)
        {
            DeletePresidentMedal(e.RowIndex);
        }


    }
}
