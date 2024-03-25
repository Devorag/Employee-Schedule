using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Runtime.CompilerServices;
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
        private enum DBServerTypeEnum { LocalDB, Azure};
        private enum DBDatabaseTypeEnum { RecordKeeperDB, RecipeDB};
        DBDatabaseTypeEnum database = DBDatabaseTypeEnum.RecordKeeperDB;
        DBServerTypeEnum server = DBServerTypeEnum.LocalDB;
        int ntext = 0;
        public FrmSqlExecutor()
        {
            InitializeComponent();
            btnRunQuery.Click += BtnRunQuery_Click;
        }


        private string DetermineCheckedDatabase()
        {
            if (radioRecordKeeper.Checked == true)
            {
                database = DBDatabaseTypeEnum.RecordKeeperDB;
            }
            if (radioRecipe.Checked == true)
            {
                database = DBDatabaseTypeEnum.RecipeDB;
            }
            return database.ToString();
        }

        private string DetermineCheckedServer()
        {
            if (radioLocalDB.Checked == true)
            {
                server = DBServerTypeEnum.LocalDB;
            }
            if (radioAzure.Checked == true)
            {
                server = DBServerTypeEnum.Azure;
            }
            return server.ToString();
        }

        //SM Name this procedure GetConnectionString()
        private string GetConnectionString()
        {
            var s = "";
            if (server == DBServerTypeEnum.LocalDB)
            {
                s = "Server=.\\SQLExpress;Database=" + database.ToString() + ";Trusted_Connection=True";
            }
                //SM This should be a else if. Or even an else as one (and only one) of the radio buttons must be checked.
            if (server == DBServerTypeEnum.Azure)
            {
                    s = "Server=tcp:dev-devorag.database.windows.net,1433;Initial Catalog=" + database.ToString() + ";Persist Security Info=False;User ID=devorag;Password=DEVO5401!;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30";
            }
                return s;
        }

        private DataTable GetDataTable(string sqlStatement)
        {
            DataTable dt = new();
            SqlConnection conn = new();
            conn.ConnectionString = GetConnectionString();
            conn.Open();
            SqlCommand cmd = new();
            cmd.Connection = conn;
            cmd.CommandText = sqlStatement;
            SqlDataReader dr = cmd.ExecuteReader();
            dt.Load(dr);
            return dt;
        }


        private void ShowDataInGrid(DataGridView dg)
        {
            var dt = GetDataTable(txtQuery.Text);
            dg.DataSource = dt;
        }


        private void BtnRunQuery_Click(object? sender, EventArgs e)
        {
            var ntabtext = new TabPage((tabMain.TabPages.Count + 1).ToString() + " " + DetermineCheckedServer() + " " + DetermineCheckedDatabase());
            DataGridView dgv = new();
            dgv.Dock = DockStyle.Fill;
            ntabtext.Controls.Add(dgv);
            tabMain.TabPages.Add(ntabtext);
            tabMain.SelectedTab = ntabtext;
            ShowDataInGrid(dgv);
        }
    }
}

