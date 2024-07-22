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
            txtLastName.KeyDown += TxtLastName_KeyDown;
            gPresidents.KeyDown += GPresidents_KeyDown;
            this.BindForm();
        }

        private void BindForm()
        {
            lstParty.DataSource = President.GetPartyList(true);
            lstParty.DisplayMember = "PartyName";
            lstParty.ValueMember = "PartyId";
        }

        private void SearchForPresident(int partyid, string lastname, int begintermstart, int endtermstart)
        {
            this.Cursor = Cursors.WaitCursor;

            try
            {
                DataTable dt = President.SearchPresidents(partyid, lastname, begintermstart, endtermstart);
                gPresidents.DataSource = dt;
                WindowsFormsUtility.FormatGridForSearchResults(gPresidents, "President");
                if (gPresidents.Rows.Count > 0)
                {
                    gPresidents.Focus();
                    gPresidents.Rows[0].Selected = true;
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, Application.ProductName);
            }
            finally
            {
                this.Cursor = Cursors.Default;
            }
        }

        private void ShowPresidentForm(int rowindex)
        {
            int id = 0;
            if (rowindex > -1)
            {
                id = WindowsFormsUtility.GetIdFromGrid(gPresidents, rowindex, "PresidentId");
            }
            if (this.MdiParent != null && this.MdiParent is frmMain)
            {
                ((frmMain)this.MdiParent).OpenForm(typeof(frmPresident), id);
            }
        }

        private void DoSearch()
        {
            int partyid = 0;
            int begintermstart = 0;
            int endtermstart = 0;
            if (lstParty.SelectedValue != null && lstParty.SelectedValue is int)
            {
                partyid = (int)lstParty.SelectedValue;
            }
            int.TryParse(txtBeginTermStart.Text, out begintermstart);
            int.TryParse(txtEndTermStart.Text, out endtermstart);
            SearchForPresident(partyid, txtLastName.Text, begintermstart, endtermstart);
        }

        private void GPresidents_CellDoubleClick(object? sender, DataGridViewCellEventArgs e)
        {
            ShowPresidentForm(e.RowIndex);
        }

        private void BtnSearch_Click(object? sender, EventArgs e)
        {
            DoSearch();
        }

        private void BtnNew_Click(object? sender, EventArgs e)
        {
            ShowPresidentForm(-1);
        }

        private void TxtLastName_KeyDown(object? sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
            {
                DoSearch();
            }
        }

        private void GPresidents_KeyDown(object? sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter && gPresidents.SelectedRows.Count > 0)
            {
                ShowPresidentForm(gPresidents.SelectedRows[0].Index);
                e.SuppressKeyPress = true;
            }
        }

        private void lblLastName_Click(object sender, EventArgs e)
        {

        }
    }
}
