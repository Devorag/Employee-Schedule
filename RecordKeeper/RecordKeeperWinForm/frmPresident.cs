﻿
namespace RecordKeeperWinForm
{
    public partial class frmPresident : Form
    {
        DataTable dtPresident = new DataTable();

        public frmPresident()
        {
            InitializeComponent();
            btnSave.Click += BtnSave_Click;
            btnDelete.Click += BtnDelete_Click;
        }


        public void ShowForm(int presidentid)
        {
            dtPresident = President.Load(presidentid);
            if (presidentid == 0)
            {
                dtPresident.Rows.Add();
            }
            DataTable dtParties = President.GetPartyList();
            WindowsFormsUtility.SetListBinding(lstPartyName, dtParties, dtPresident, "Party");
            //SetControlBinding(lblPartyName, dtPresident);
            WindowsFormsUtility.SetControlBinding(txtNum, dtPresident);
            WindowsFormsUtility.SetControlBinding(txtLastName, dtPresident);
            WindowsFormsUtility.SetControlBinding(txtFirstName, dtPresident);
            WindowsFormsUtility.SetControlBinding(dtpDateBorn, dtPresident);
            WindowsFormsUtility.SetControlBinding(txtDateDied, dtPresident);
            WindowsFormsUtility.SetControlBinding(txtTermStart, dtPresident);
            WindowsFormsUtility.SetControlBinding(txtTermEnd, dtPresident);

            this.Show();
        }


        private void Save()
        {
            Application.UseWaitCursor = true;
            try
            {
                President.Save(dtPresident);
            }
            catch (Exception ex)
            {

                MessageBox.Show(ex.Message, "Record Keeper");
            }
            finally
            {
                Application.UseWaitCursor = false;
            }
        }

        private void Delete()
        {
            var response = MessageBox.Show("Are you sure you want to delete this president?", "Record Keeper", MessageBoxButtons.YesNo);
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
                MessageBox.Show(ex.Message, "Record Keeper");
            }
            finally
            {
                Application.UseWaitCursor = false;
            }
        }

        private void BtnDelete_Click(object? sender, EventArgs e)
        {
            Delete();
        }

        private void BtnSave_Click(object? sender, EventArgs e)
        {
            Save();
        }


    }
}
