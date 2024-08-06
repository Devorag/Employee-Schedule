using RecordKeeperWinForm.Properties;
using System.Configuration;

namespace RecordKeeperWinForm
{
    public partial class frmLogin : Form
    {
        bool loginSuccess = false;
        public frmLogin()
        {
            InitializeComponent();
            btnLogin.Click += BtnLogin_Click;
            btnCancel.Click += BtnCancel_Click;
        }

        public bool ShowLogin()
        {
#if DEBUG
            this.Text = this.Text + " - DEV";
#endif
            txtUserId.Text = Settings.Default.UserId;
            this.ShowDialog();
            return loginSuccess;
        }

        private void BtnLogin_Click(object? sender, EventArgs e)
        {
            try
            {
                string connstringKey = "";
#if DEBUG
                connstringKey = "devconn";
#else
                connstringKey = "liveconn";
#endif
                string connstring = ConfigurationManager.ConnectionStrings[connstringKey].ConnectionString;
                DBManager.SetConnectionString(connstring, true, txtUserId.Text, txtPassword.Text);
                loginSuccess = true;
                Settings.Default.UserId = txtUserId.Text;
                Settings.Default.Save();
                this.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Invalid Login. Try again.", Application.ProductName);
            }
        }

        private void BtnCancel_Click(object? sender, EventArgs e)
        {
            this.Close();
        }
    }
}

