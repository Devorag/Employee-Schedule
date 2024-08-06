namespace RecordKeeperWinForm
{
    public partial class frmMain : Form
    {
        public frmMain()
        {
            InitializeComponent();
            menuSearch.Click += MenuSearch_Click;
            menuNewPresident.Click += MenuNewPresident_Click;
            menuDashboard.Click += MenuDashboard_Click;
            menuWindowTile.Click += MenuWindowTile_Click;
            menuWindowCascade.Click += MenuWindowCascade_Click;
            menuDataMaintEdit.Click += MenuDataMaintEdit_Click;
            menuCreatNewBasedOn.Click += MenuCreatNewBasedOn_Click;
            menuOlympicsList.Click += MenuOlympicsList_Click;
            this.Shown += FrmMain_Shown;
        }

        private void FrmMain_Shown(object? sender, EventArgs e)
        {
            frmLogin f = new() { StartPosition = FormStartPosition.CenterParent };
            bool b = f.ShowLogin();
            if(b == false)
            {
                this.Close();
                Application.Exit();
                return;
            }
            OpenForm(typeof(frmDashboard));
        }

        public void OpenForm(Type frmType, int pkvalue = 0)
        {
            bool b = WindowsFormsUtility.IsFormOpen(frmType);

            if (b == false)
            {
                Form? newfrm = null;
                if (frmType == typeof(frmPresident))
                {
                    frmPresident f = new();
                    newfrm = f;
                    f.LoadForm(pkvalue);
                }
                else if (frmType == typeof(frmSearch))
                {
                    frmSearch f = new();
                    newfrm = f;
                }
                else if (frmType == typeof(frmDataMaintenance))
                {
                    frmDataMaintenance f = new();
                    newfrm = f;
                }
                else if (frmType == typeof(frmDashboard))
                {
                    frmDashboard f = new();
                    newfrm = f;
                }
                else if (frmType == typeof(frmOlympicsCreateBasedOnPrevious))
                {
                    frmOlympicsCreateBasedOnPrevious f = new();
                    newfrm = f;
                }
                else if (frmType == typeof(frmOlympicsSummary))
                {
                    frmOlympicsSummary f = new();
                    newfrm = f;
                }
                if (newfrm != null)
                {
                    newfrm.MdiParent = this;
                    newfrm.WindowState = FormWindowState.Maximized;
                    newfrm.FormClosed += Frm_FormClosed;
                    newfrm.TextChanged += Newfrm_TextChanged;
                    newfrm.Show();
                }
                WindowsFormsUtility.SetupNav(tsMain);
            }
        }

        private void Newfrm_TextChanged(object? sender, EventArgs e)
        {
            WindowsFormsUtility.SetupNav(tsMain);
        }

        private void Frm_FormClosed(object? sender, FormClosedEventArgs e)
        {
            WindowsFormsUtility.SetupNav(tsMain);
        }

        private void MenuWindowCascade_Click(object? sender, EventArgs e)
        {
            LayoutMdi(MdiLayout.Cascade);
        }

        private void MenuWindowTile_Click(object? sender, EventArgs e)
        {
            LayoutMdi(MdiLayout.TileVertical);
        }

        private void MenuNewPresident_Click(object? sender, EventArgs e)
        {
            OpenForm(typeof(frmPresident));
        }

        private void MenuSearch_Click(object? sender, EventArgs e)
        {
            OpenForm(typeof(frmSearch));
        }

        private void menuWindow_Click(object sender, EventArgs e)
        {

        }

        private void MenuDataMaintEdit_Click(object? sender, EventArgs e)
        {
            OpenForm(typeof(frmDataMaintenance));
        }

        private void frmMain_Load(object sender, EventArgs e)
        {

        }

        private void MenuDashboard_Click(object? sender, EventArgs e)
        {
            OpenForm(typeof(frmDashboard));
        }

        private void MenuCreatNewBasedOn_Click(object? sender, EventArgs e)
        {
            OpenForm(typeof(frmOlympicsCreateBasedOnPrevious));
        }

        private void MenuOlympicsList_Click(object? sender, EventArgs e)
        {
            OpenForm(typeof(frmOlympicsSummary));
        }
    }
}
