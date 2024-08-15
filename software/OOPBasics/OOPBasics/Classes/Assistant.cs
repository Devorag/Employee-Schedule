namespace OOPBasics
{
    public class Assistant : Human
    {
        StatusEnum _status;
        public enum StatusEnum { single, married };

        public StatusEnum Status
        {
            get => _status;
            set
            {
                _status = value;
                this.InvokePropertyChanged();
                this.InvokePropertyChanged("Description");
            }

        }
        public string Description { get => $"{this.FirstName} {this.LastName} (assistant)  is currently {this.Status}"; }
    }
}
