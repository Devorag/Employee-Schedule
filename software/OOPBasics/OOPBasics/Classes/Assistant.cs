namespace OOPBasics
{
    public class Assistant : Human
    {
        public enum StatusEnum { single, married};

        public StatusEnum Status {get; set;}
        public string Description { get => $"{this.FirstName} {this.LastName} (assistant)  is currently {this.Status}"; }
    }
}
