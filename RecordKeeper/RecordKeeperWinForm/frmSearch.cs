using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;
using CPUFramework;


namespace RecordKeeperWinForm
{
    public partial class frmSearch : Form
    {
        public frmSearch()
        {
            InitializeComponent();
            btnSearch.Click += BtnSearch_Click;
            gPresidents.CellDoubleClick += GPresidents_CellDoubleClick;
            btnNew.Click += BtnNew_Click;
            WindowsFormsUtility.FormatGridForSearchResults(gPresidents);
        }



        private void SearchForPresident(string lastname)
        //run the sql
        //get the data table
        //bind the grid

        {
            DataTable dt = President.SearchPresidents(lastname);
            gPresidents.DataSource = dt;
            gPresidents.Columns["PresidentId"].Visible = false;
        }

        private void ShowPresidentForm(int rowindex)
        {
            int id = 0;
            if (rowindex > -1)
            {
                id = (int)gPresidents.Rows[rowindex].Cells["PresidentId"].Value;
            }
            frmPresident frm = new frmPresident();
            frm.ShowForm(id);
        }



        private void GPresidents_CellDoubleClick(object? sender, DataGridViewCellEventArgs e)
        {
            ShowPresidentForm(e.RowIndex);
        }

        private void BtnSearch_Click(object? sender, EventArgs e)
        {
            SearchForPresident(txtLastName.Text);
        }

        private void BtnNew_Click(object? sender, EventArgs e)
        {
            ShowPresidentForm(-1);
        }
    }
}
