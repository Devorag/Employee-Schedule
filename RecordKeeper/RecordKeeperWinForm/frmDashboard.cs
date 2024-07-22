using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace RecordKeeperWinForm
{
    public partial class frmDashboard : Form
    {
        public frmDashboard()
        {
            InitializeComponent();
            this.Activated += FrmDashboard_Activated;
            btnPresident.Click += BtnPresident_Click;
            btnOlympics.Click += BtnOlympics_Click;
        }

        private void FrmDashboard_Activated(object? sender, EventArgs e)
        {
            BindData();
        }

        private void BindData()
        {
            DataTable dt = DataMaintenance.GetDashboard();
            SetButtonText(dt, "president", btnPresident);
            SetButtonText(dt, "olympics", btnOlympics);
        }

        private void SetButtonText(DataTable dt, string recordtype, Button btn)
        {
            var rows = dt.Select($"DashboardType = '{recordtype}'");
            if (rows.Length > 0)
            {
                btn.Text = rows[0]["DashboardText"].ToString();
            }
        }

        private void OpenForm(Type frmType)
        {
            if (this.MdiParent != null && this.MdiParent is frmMain)
            {
                ((frmMain)this.MdiParent).OpenForm(frmType);
            }
        }


        private void BtnOlympics_Click(object? sender, EventArgs e)
        {
            OpenForm(typeof(frmOlympicsSummary));
        }

        private void BtnPresident_Click(object? sender, EventArgs e)
        {
            OpenForm(typeof(frmSearch));
        }

    }
}
