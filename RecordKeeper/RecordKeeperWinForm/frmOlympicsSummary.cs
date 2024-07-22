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
    public partial class frmOlympicsSummary : Form
    {
        public frmOlympicsSummary()
        {
            InitializeComponent();
            this.Activated += FrmOlympicsSummary_Activated;
            BindData();
        }

        private void FrmOlympicsSummary_Activated(object? sender, EventArgs e)
        {
            BindData();
        }

        private void BindData()
        {
            gData.DataSource = Olympics.GetOlympicsSummary();
            WindowsFormsUtility.FormatGridForSearchResults(gData, "Olympics");
        }
    }
}
