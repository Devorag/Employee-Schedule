using System.Data;
namespace RecordKeeperWinForm
{
    public partial class frmPresident : Form
    {
        DataTable dtPresident;

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
            President.Save(dtPresident);
        }

        private void Delete()
        {
            President.Delete(dtPresident);
            this.Close();
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
