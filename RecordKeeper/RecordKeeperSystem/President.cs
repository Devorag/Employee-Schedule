using System.Data;
using System.Diagnostics;

namespace RecordKeeperSystem
{
    public class President
    {
        public static DataTable SearchPresidents(string lastname)
        {
            string sql = "select PresidentId, Num, LastName, FirstName from president p where p.lastname like '%" + lastname + "%'";

            DataTable dt = SQLUtility.GetDataTable(sql);
            return dt;
        }

        public static DataTable Load(int presidentid)
        {
            string sql = " select p.*, y.PartyName from president p join party y on p.PartyId = y.PartyId where p.PresidentId = " + presidentid.ToString();
            return SQLUtility.GetDataTable(sql);
        }

        public static DataTable GetPartyList()
        {
            return SQLUtility.GetDataTable("select PartyId, PartyName from party");
        }

        public static void Save(DataTable dtpresident)
        {
            SQLUtility.DebugPrintDataTable(dtpresident);
            DataRow r = dtpresident.Rows[0];
            int id = (int)r["PresidentId"];
            string sql = "";
            if (id > 0)
            {
                sql = string.Join(Environment.NewLine, $"update president set",
                    $"PartyId = '{r["PartyId"]}'",
                    $"Num = '{r["Num"]}'",
                    $"FirstName = '{r["FirstName"]}'",
                    $"LastName = '{r["LastName"]}'",
                    $"DateBorn = '{r["DateBorn"]}'",
                    $"DateBorn = '{r["DateBorn"]}'",
                    $"TermStart = '{r["TermStart"]}'",
                    $"where PresidentId = {r["PresidentId"]}");
            }
            else
            {
                sql = "insert president(PartyId, Num, FirstName, LastName, DateBorn, TermStart) ";
                sql += $"select '{r["PartyId"]}',{r["Num"]}, '{r["FirstName"]}', '{r["LastName"]}', '{r["DateBorn"]}', {r["TermStart"]}";
            }

            Debug.Print("----------");

            SQLUtility.ExecuteSQL(sql);
        }

        public static void Delete(DataTable dtpresident)
        {
            int id = (int)dtpresident.Rows[0]["PresidentId"];
            string sql = "delete president where PresidentId = " + id;
            SQLUtility.ExecuteSQL(sql);
        }
    }
}
