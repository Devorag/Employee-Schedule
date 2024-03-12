using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace FrmSqlExecutor
{
    public partial class FrmSqlExecutor : Form
    {
        public FrmSqlExecutor()
        {
            InitializeComponent();
            btnRunQuery.Click += BtnRunQuery_Click;
        }


        private string DetermineCheckedDatabase()
        {
            string Database = "";
            if (radioRecordKeeper.Checked == true)
            {
                Database = "RecordKeeperDB";
            }
            if (radioRecipe.Checked == true)
            {
                Database = "RecipeDB";
            }
            return Database;
        }


        private string LocalOrAzure()
        {
            string s = "";
            if (radioLocalDB.Checked == true)
            {
                s = "Server=.\\SQLExpress;Database=" + DetermineCheckedDatabase() + ";Trusted_Connection=True";
            }
            if (radioAzure.Checked == true)
            {
                s = "Server=tcp:dev-devorag.database.windows.net,1433;Initial Catalog=" + DetermineCheckedDatabase() + ";Persist Security Info=False;User ID=devorag;Password=DEVO5401!;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30";
            }
            return s;
        }

        private DataTable GetDataTable(string sqlStatement)
        {
            DataTable dt = new DataTable();
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = LocalOrAzure();
            conn.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = sqlStatement;
            SqlDataReader dr = cmd.ExecuteReader();
            dt.Load(dr);
            return dt;
        }


        private void ShowDataInGrid(DataGridView dg)
        {
            DataTable dt = GetDataTable(txtQuery.Text);
            dg.DataSource = dt;
        }


        private void BtnRunQuery_Click(object? sender, EventArgs e)
        {
            TabPage p = new TabPage("Query " + (tabMain.TabPages.Count + 1).ToString());
            DataGridView dgv = new DataGridView();
            dgv.Dock = DockStyle.Fill;
            p.Controls.Add(dgv);
            tabMain.TabPages.Add(p);
            tabMain.SelectedTab = p;
            ShowDataInGrid(dgv);
        }
    }
}

