namespace RecordKeeperWinForm
{
    public partial class frmOlympicsCreateBasedOnPrevious : Form
    {
        public frmOlympicsCreateBasedOnPrevious()
        {
            InitializeComponent();
            BindData();
            btnCreate.Click += BtnCreate_Click;
        }

        private void BindData()
        {
            WindowsFormsUtility.SetListBinding(lstSeasonName, DataMaintenance.GetDataList("Season",true), null, "Season");
            WindowsFormsUtility.SetListBinding(lstCityName, DataMaintenance.GetDataList("City", true), null, "City");
            WindowsFormsUtility.SetListBinding(lstOlympicsDesc, DataMaintenance.GetDataList("Olympics", true), null, "Olympics");
        }

        private void CreateOlympics()
        {
            int seasonid = WindowsFormsUtility.GetIdFromComboBox(lstSeasonName);
            int cityid = WindowsFormsUtility.GetIdFromComboBox(lstCityName);
            int basedonolympicsid = WindowsFormsUtility.GetIdFromComboBox(lstOlympicsDesc);
            int year = 0;
            int.TryParse(txtYear.Text, out year);

            Cursor = Cursors.WaitCursor;

            try
            {
                Olympics.CreateOlympicsBasedOnPrevious(seasonid, cityid, year, basedonolympicsid);
                if (this.MdiParent != null && this.MdiParent is frmMain)
                {
                    ((frmMain)this.MdiParent).OpenForm(typeof(frmOlympicsSummary));
                    this.Close();
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, Application.ProductName);
            }
            finally
            {
                Cursor = Cursors.Default;
            }
        }

        private void BtnCreate_Click(object? sender, EventArgs e)
        {
            CreateOlympics();
        }

    }
}
