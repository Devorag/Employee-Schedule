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
            FormatGrid();
        }



        private void SearchForPresident(string lastname)
        //run the sql
        //get the data table
        //bind the grid

        {
            string sql = "select PresidentId, Num, LastName, FirstName from president p where p.lastname like '%" + lastname + "%'";
            Debug.Print(sql);
            DataTable dt = SQLUtility.GetDataTable(sql);
            gPresidents.DataSource = dt;
            gPresidents.Columns["PresidentId"].Visible = false;
        }

        private void ShowPresidentForm(int rowindex)
        {
            int id = (int)gPresidents.Rows[rowindex].Cells["PresidentId"].Value;
            frmPresident frm = new frmPresident();
            frm.ShowForm(id);
        }

        private void FormatGrid()
        {
            gPresidents.AllowUserToAddRows = false;
            gPresidents.ReadOnly = true;
            gPresidents.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.AllCells;
            gPresidents.SelectionMode = DataGridViewSelectionMode.FullRowSelect;
        }

        private void GPresidents_CellDoubleClick(object? sender, DataGridViewCellEventArgs e)
        {
            ShowPresidentForm(e.RowIndex);
        }

        private void BtnSearch_Click(object? sender, EventArgs e)
        {
            SearchForPresident(txtLastName.Text);
        }

    }
}
