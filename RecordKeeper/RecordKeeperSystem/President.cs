
using System.Diagnostics;

namespace RecordKeeperSystem
{
    public class President
    {
        public static DataTable SearchPresidents(string lastname)
        {
            DataTable dt = new();
            SqlCommand cmd = SQLUtility.GetSQLCommand("PresidentGet");
            cmd.Parameters["@LastName"].Value = lastname;
            dt = SQLUtility.GetDataTable(cmd);
            return dt;
        }

        public static DataTable Load(int presidentid)
        {
            DataTable dt = new();
            SqlCommand cmd = SQLUtility.GetSQLCommand("PresidentGet");
            cmd.Parameters["@PresidentId"].Value = presidentid;
            dt = SQLUtility.GetDataTable(cmd);
            return dt;
        }

        public static DataTable GetPartyList()
        {
            DataTable dt = new();
            SqlCommand cmd = SQLUtility.GetSQLCommand("PartyGet");
            cmd.Parameters["@All"].Value = 1;
            dt = SQLUtility.GetDataTable(cmd);
            return dt;

        }

        public static void Save(DataTable dtpresident)
        {
            //SQLUtility.DebugPrintDataTable(dtpresident);
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
