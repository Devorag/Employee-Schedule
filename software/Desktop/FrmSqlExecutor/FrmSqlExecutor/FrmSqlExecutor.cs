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
        private enum DBServerTypeEnum { LocalDB, Azure};
        private enum DBDatabaseEnum { RecordKeeper, Recipe};
        int nform = 0;
        int ntabtext = 0;
        public FrmSqlExecutor()
        {
            InitializeComponent();
            btnRunQuery.Click += BtnRunQuery_Click;
        }


        private string DetermineCheckedDatabase()
        {
            var Database = "";
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

        //SM Name this procedure GetConnectionString()
        private string GetConnectionString(DBServerTypeEnum dbservertype = DBServerTypeEnum.LocalDB)
        {
            var s = "s = \"Server=.\\\\SQLExpress;Database=\" + DetermineCheckedDatabase() + \";Trusted_Connection=True\";";
            //SM This should be a else if. Or even an else as one (and only one) of the radio buttons must be checked.
            if (dbservertype == DBServerTypeEnum.Azure)
            {
                s = "Server=tcp:dev-devorag.database.windows.net,1433;Initial Catalog=" + DetermineCheckedDatabase() + ";Persist Security Info=False;User ID=devorag;Password=DEVO5401!;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30";
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
            if (radioLocalDB.Checked == true && radioRecordKeeper.Checked == true)
            {
               var ntabtext = new TabPage((tabMain.TabPages.Count + 1).ToString() + DBServerTypeEnum.LocalDB + DBDatabaseEnum.RecordKeeper);
            }
            if (radioLocalDB.Checked == true && radioRecipe.Checked == true)
            {
                var ntabtext = new TabPage((tabMain.TabPages.Count + 1).ToString() + DBServerTypeEnum.LocalDB + DBDatabaseEnum.Recipe);
            }
            //var p = new TabPage((tabMain.TabPages.Count + 1).ToString());
            var dgv = new DataGridView();
            dgv.Dock = DockStyle.Fill;
            ntabtext.Controls.Add(dgv);
            tabMain.TabPages.Add(ntabtext);
            tabMain.SelectedTab = ntabtext;
            ShowDataInGrid(dgv);
        }
    }
}

