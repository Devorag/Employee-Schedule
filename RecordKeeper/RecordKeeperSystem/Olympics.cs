namespace RecordKeeperSystem
{
    public class Olympics
    {
        public static void CreateOlympicsBasedOnPrevious(int seasonid, int cityid, int year, int basedonolympicsid)
        {
            SqlCommand cmd = SQLUtility.GetSQLCommand("OlympicsCreateBasedOnPrevious");
            SQLUtility.SetParamValue(cmd, "@SeasonId", seasonid);
            SQLUtility.SetParamValue(cmd, "@CityId", cityid);
            SQLUtility.SetParamValue(cmd, "@OlympicYear", year);
            SQLUtility.SetParamValue(cmd, "@BaseOlympicsId", basedonolympicsid);
            SQLUtility.ExecuteSQL(cmd);
        }

        public static DataTable GetOlympicsSummary()
        {
            SqlCommand cmd = SQLUtility.GetSQLCommand("OlympicsSummaryGet");
            return SQLUtility.GetDataTable(cmd);
        }
    }
}
