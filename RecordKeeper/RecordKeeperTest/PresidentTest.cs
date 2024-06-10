using System.Data;

namespace RecordKeeperTest
{
    public class PresidentTest

    {
        [SetUp]
        public void Setup()
        {
            DBManager.SetConnectionString("Server=.\\SQLExpress;Database=RecordKeeperDB;Trusted_Connection=true");

        }

        [Test]
        [TestCase("Sam", "Test1", "2035-01-01", 2075)]
        [TestCase("Sam", "Test2", "1800-01-01", 1836)]
        public void InsertNewPresident(string firstname, string lastname, DateTime dateborn, int termstart)
        {
            DataTable dt = SQLUtility.GetDataTable("select * from president where presidentid = 0");
            DataRow r = dt.Rows.Add();
            Assume.That(dt.Rows.Count == 1);
            int partyid = SQLUtility.GetFirstColumnFirstRowValue("select top 1 partyid from party");
            int maxnum = SQLUtility.GetFirstColumnFirstRowValue("select max(num) from president");
            Assume.That(partyid > 0, "Can't run test, no parties in the db");
            
            maxnum = maxnum + 1;

            TestContext.WriteLine("insert president with num = " + maxnum);

            r["partyid"] = partyid;
            r["Num"] = maxnum + 1;
            r["FirstName"] = firstname;
            r["LastName"] = lastname;
            r["DateBorn"] = dateborn;
            r["TermStart"] = termstart;
            President.Save(dt);

            int newid = SQLUtility.GetFirstColumnFirstRowValue("Select * from president p where num = ") + maxnum;

            Assert.IsTrue(newid > 0, "president with num = " + maxnum + " is not gound in db");
            TestContext.WriteLine("President with " + maxnum + "is found in db with pk value");

        }

        [Test] 
        public void ChangeExistingPresidenttermstart()
        {
            int presidentid = GetExistingPresidentId();
            Assume.That(presidentid > 0, "No presidents in DB, can't run test");
            int termstart = SQLUtility.GetFirstColumnFirstRowValue("select termstart from president where presidentid = " + presidentid);
            TestContext.WriteLine("termstart for presidentid " + presidentid + " is " + termstart);
            termstart = termstart + 1;
            TestContext.WriteLine("Change termstart to " + termstart);
            DataTable dt = President.Load(presidentid);
            dt.Rows[0]["termstart"] = termstart;
            President.Save(dt);

            int newtermstart = SQLUtility.GetFirstColumnFirstRowValue("select termstart from president where presidentid = " + presidentid);
            Assert.IsTrue(newtermstart == termstart, "termstart for president (" + presidentid + ") = " + newtermstart);
            TestContext.WriteLine("termstart for president (" + presidentid + ") = " + newtermstart);
        }

        [Test] 
        public void DeletePresident()
        {   
            DataTable dt = SQLUtility.GetDataTable("select top 1 p.presidentid from president p left join executiveorder e on e.presidentid = p.presidentid where e.executiveorder is null");
            int presidentid = 0;
            string prezdesc = "";
            if (dt.Rows.Count > 0)
            {
                presidentid = (int)dt.Rows[0]["presidentid"];
                prezdesc = dt.Rows[0]["Num"] + " " + dt.Rows[0]["LastName"];
            }
            Assume.That(presidentid > 0, "No presidents without executive order in DB, can't run test");
            TestContext.WriteLine("existing president without executive order, with id = " + presidentid + " " + prezdesc);
            TestContext.WriteLine("ensure that app can delete " + presidentid);
            President.Delete(dt);
            DataTable dtafterdelete = SQLUtility.GetDataTable("select * from president where presidentid = " + presidentid);
            Assert.IsTrue(dtafterdelete.Rows.Count == 0, "Record with president id " + presidentid + "exists in DB");
            TestContext.WriteLine("Record with president id " + presidentid + "does not exist in DB");
        }

        [Test] 
        public void LoadPresident()
        {
            int presidentid = GetExistingPresidentId();
            //int presidentid = SQLUtility.GetFirstColumnFirstRowValue("select top 1 presidentid from president");
            Assume.That(presidentid > 0, "No presidents in DB, can't run test");
            TestContext.WriteLine("existing president with id = " + presidentid);
            TestContext.WriteLine("Ensure that app loads president " + presidentid);
            DataTable dt = President.Load(presidentid);
            int loadedid = 0; 
            if (dt.Rows.Count > 0 )
            {
                loadedid = (int)dt.Rows[0]["presidentid"];
            }
            Assert.IsTrue(loadedid == presidentid, loadedid + " <> " + presidentid);
            TestContext.WriteLine("Loaded president (" + presidentid + ")" + presidentid);
        }

        [Test] 
        public void SearchPresidents()
        {
            string criteria = "a";
            int num = SQLUtility.GetFirstCFirstRValue("select total = count(*) from president where lastname like '%" + criteria + "%'");
            Assume.That(num > 0, "There are no presidents that match the search for " + num);
            TestContext.WriteLine(num + " presidentst that match " + criteria);
            TestContext.WriteLine("Ensure that president search returns " + num + " rows");

            DataTable dt = President.SearchPresidents(criteria);
            int results = dt.Rows.Count;
            Assert.IsTrue(results == num, "Results of President does not match number of presidents, " + results + "<>" + num);
            TestContext.WriteLine("Number of rows returned by president search is " + results);
        }

        [Test]
        public void GetListOfParties()
        {

            //get the number of parties in db
            //DataTable dtpartycount = SQLUtility.GetDataTable("select total = count(*) from party");
            //int partycount =(int) dtpartycount.Rows[0]["total"];
            int partycount = SQLUtility.GetFirstColumnFirstRowValue("select total = count(*) from party");
            Assume.That(partycount > 0, "No parties in DB, can't test"); 
            TestContext.WriteLine("Num of parties in DB = " + partycount);
            TestContext.WriteLine("Ensure that num of rows return by app matches " + partycount);
            DataTable dt = President.GetPartyList();
            Assert.IsTrue(dt.Rows.Count  == partycount, "num rows returned by app " + dt.Rows.Count + " <> " + partycount);
            TestContext.WriteLine("Number of rows in Parties return by app = " + dt.Rows.Count);

        }

        private int GetExistingPresidentId()
        {
            return SQLUtility.GetFirstColumnFirstRowValue("select top 1 presidentid from president");
        }
    }
}