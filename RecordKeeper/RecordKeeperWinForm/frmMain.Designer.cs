namespace RecordKeeperWinForm
{
    partial class frmMain
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            menuMain = new MenuStrip();
            menuFile = new ToolStripMenuItem();
            menuDashboard = new ToolStripMenuItem();
            menuPresident = new ToolStripMenuItem();
            menuSearch = new ToolStripMenuItem();
            menuNewPresident = new ToolStripMenuItem();
            menuDataMaint = new ToolStripMenuItem();
            menuDataMaintEdit = new ToolStripMenuItem();
            menuWindow = new ToolStripMenuItem();
            menuWindowTile = new ToolStripMenuItem();
            menuWindowCascade = new ToolStripMenuItem();
            tsMain = new ToolStrip();
            menuOlympics = new ToolStripMenuItem();
            menuOlympicsList = new ToolStripMenuItem();
            menuCreatNewBasedOn = new ToolStripMenuItem();
            menuMain.SuspendLayout();
            SuspendLayout();
            // 
            // menuMain
            // 
            menuMain.Font = new Font("Segoe UI", 12F, FontStyle.Regular, GraphicsUnit.Point);
            menuMain.ImageScalingSize = new Size(24, 24);
            menuMain.Items.AddRange(new ToolStripItem[] { menuFile, menuPresident, menuOlympics, menuDataMaint, menuWindow });
            menuMain.Location = new Point(0, 0);
            menuMain.Name = "menuMain";
            menuMain.Size = new Size(1363, 40);
            menuMain.TabIndex = 1;
            menuMain.Text = "menuStrip1";
            // 
            // menuFile
            // 
            menuFile.DropDownItems.AddRange(new ToolStripItem[] { menuDashboard });
            menuFile.Name = "menuFile";
            menuFile.Size = new Size(67, 36);
            menuFile.Text = "File";
            // 
            // menuDashboard
            // 
            menuDashboard.Name = "menuDashboard";
            menuDashboard.Size = new Size(233, 40);
            menuDashboard.Text = "Dashboard";
            // 
            // menuPresident
            // 
            menuPresident.DropDownItems.AddRange(new ToolStripItem[] { menuSearch, menuNewPresident });
            menuPresident.Name = "menuPresident";
            menuPresident.Size = new Size(129, 36);
            menuPresident.Text = "President";
            // 
            // menuSearch
            // 
            menuSearch.Name = "menuSearch";
            menuSearch.Size = new Size(272, 40);
            menuSearch.Text = "Search";
            // 
            // menuNewPresident
            // 
            menuNewPresident.Name = "menuNewPresident";
            menuNewPresident.Size = new Size(272, 40);
            menuNewPresident.Text = "New President";
            // 
            // menuDataMaint
            // 
            menuDataMaint.DropDownItems.AddRange(new ToolStripItem[] { menuDataMaintEdit });
            menuDataMaint.Name = "menuDataMaint";
            menuDataMaint.Size = new Size(225, 36);
            menuDataMaint.Text = "Data Maintenance";
            // 
            // menuDataMaintEdit
            // 
            menuDataMaintEdit.Name = "menuDataMaintEdit";
            menuDataMaintEdit.Size = new Size(214, 40);
            menuDataMaintEdit.Text = "Edit Data";
            // 
            // menuWindow
            // 
            menuWindow.DropDownItems.AddRange(new ToolStripItem[] { menuWindowTile, menuWindowCascade });
            menuWindow.Name = "menuWindow";
            menuWindow.Size = new Size(117, 36);
            menuWindow.Text = "&Window";
            menuWindow.Click += menuWindow_Click;
            // 
            // menuWindowTile
            // 
            menuWindowTile.Name = "menuWindowTile";
            menuWindowTile.Size = new Size(270, 40);
            menuWindowTile.Text = "Tile";
            // 
            // menuWindowCascade
            // 
            menuWindowCascade.Name = "menuWindowCascade";
            menuWindowCascade.Size = new Size(270, 40);
            menuWindowCascade.Text = "Cascade";
            // 
            // tsMain
            // 
            tsMain.Font = new Font("Segoe UI", 12F, FontStyle.Regular, GraphicsUnit.Point);
            tsMain.ImageScalingSize = new Size(24, 24);
            tsMain.Location = new Point(0, 40);
            tsMain.Name = "tsMain";
            tsMain.Size = new Size(1363, 25);
            tsMain.TabIndex = 3;
            tsMain.Text = "toolStrip1";
            // 
            // menuOlympics
            // 
            menuOlympics.DropDownItems.AddRange(new ToolStripItem[] { menuOlympicsList, menuCreatNewBasedOn });
            menuOlympics.Name = "menuOlympics";
            menuOlympics.Size = new Size(128, 36);
            menuOlympics.Text = "Olympics";
            // 
            // menuOlympicsList
            // 
            menuOlympicsList.Name = "menuOlympicsList";
            menuOlympicsList.Size = new Size(448, 40);
            menuOlympicsList.Text = "List Of Olympics";
            // 
            // menuCreatNewBasedOn
            // 
            menuCreatNewBasedOn.Name = "menuCreatNewBasedOn";
            menuCreatNewBasedOn.Size = new Size(448, 40);
            menuCreatNewBasedOn.Text = "Create New Based On Previous";
            // 
            // frmMain
            // 
            AutoScaleDimensions = new SizeF(13F, 32F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(1363, 781);
            Controls.Add(tsMain);
            Controls.Add(menuMain);
            Font = new Font("Segoe UI", 12F, FontStyle.Regular, GraphicsUnit.Point);
            IsMdiContainer = true;
            MainMenuStrip = menuMain;
            Margin = new Padding(4);
            Name = "frmMain";
            Text = "Record Keeper";
            Load += frmMain_Load;
            menuMain.ResumeLayout(false);
            menuMain.PerformLayout();
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private MenuStrip menuMain;
        private ToolStripMenuItem menuPresident;
        private ToolStripMenuItem menuSearch;
        private ToolStripMenuItem menuNewPresident;
        private ToolStripMenuItem menuWindow;
        private ToolStripMenuItem menuWindowTile;
        private ToolStripMenuItem menuWindowCascade;
        private ToolStrip tsMain;
        private ToolStripMenuItem menuDataMaint;
        private ToolStripMenuItem menuDataMaintEdit;
        private ToolStripMenuItem menuFile;
        private ToolStripMenuItem menuDashboard;
        private ToolStripMenuItem menuOlympics;
        private ToolStripMenuItem menuOlympicsList;
        private ToolStripMenuItem menuCreatNewBasedOn;
    }
}