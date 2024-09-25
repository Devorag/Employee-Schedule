namespace APIBasics
{
    public class Customer
    {
        public enum CategoryEnum { standard, priority }
        public int Id { get; set; } = 0;
        public string Name { get; set; } = "";

        public CategoryEnum Category { get; set; } = CategoryEnum.standard;
    }

}
