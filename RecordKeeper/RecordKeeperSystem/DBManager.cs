using CPUFramework;

namespace RecordKeeperSystem
{
    public class DBManager
    {
        public static void SetConnectionString(string connectionstring, bool tryopen, string userId = "", string password = "")
        {
            SQLUtility.SetConnectionString(connectionstring, tryopen, userId, password);
        }
    }
}
