using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RecordKeeperSystem
{
    public class PresidentMedal
    {
        public static DataTable LoadByPresidentId(int presidentid)
        {
            DataTable dt = new();
            SqlCommand cmd = SQLUtility.GetSQLCommand("PresidentMedalGet");
            cmd.Parameters["@PresidentId"].Value = presidentid;
            dt = SQLUtility.GetDataTable(cmd);
            return dt;
        }

        public static void SaveTable(DataTable dt, int presidentid)
        {
            foreach(DataRow r in dt.Select("", "", DataViewRowState.Added))
            {
                r["PresidentId"] = presidentid;
            }
            SQLUtility.SaveDataTable(dt, "PresidentMedalUpdate");
        }

        public static void Delete(int presidentmedalid)
        {
            SqlCommand cmd = SQLUtility.GetSQLCommand("PresidentMedalDelete");
            cmd.Parameters["@PresidentMedalId"].Value = presidentmedalid;
            SQLUtility.ExecuteSQL(cmd);
        }
    }
}
