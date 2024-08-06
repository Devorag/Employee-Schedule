namespace MAUIBasics;

public partial class Basic_Controls : ContentPage
{
	public Basic_Controls()
	{
		InitializeComponent();
        slHeight.ValueChanged += SlHeight_ValueChanged;
	}

    private void SlHeight_ValueChanged(object? sender, ValueChangedEventArgs e)
    {
        lblMessage.Text = slHeight.Value.ToString();
    }

    private void btnSave_Clicked(object sender, EventArgs e)
    {
		lblMessage.Text = "Saved - " + txtLastName.Text;
		txtLastName.Text = "";
    }
}