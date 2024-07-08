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
        [TestCase("Sam", "Test1", "2035-01-01", 2075, 2079)]
        [TestCase("Sam", "Test2", "1800-01-01", 1836, 1840)]
        public void InsertNewPresident(string firstname, string lastname, DateTime dateborn, int termstart, int termend)
        {
            DataTable dt = SQLUtility.GetDataTable("select * from president where presidentid = 0");
            DataRow r = dt.Rows.Add();
            Assume.That(dt.Rows.Count == 1);
            int partyid = SQLUtility.GetFirstCFirstRValue("select top 1 partyid from party");
            int maxnum = SQLUtility.GetFirstCFirstRValue("select max(num) from president");
            Assume.That(partyid > 0, "Can't run test, no parties in the db");
            
            maxnum = maxnum + 1;

            TestContext.WriteLine("insert president with num = " + maxnum);

            r["partyid"] = partyid;
            r["Num"] = maxnum + 1;
            r["FirstName"] = firstname;
            r["LastName"] = lastname;
            r["DateBorn"] = dateborn;
            r["TermStart"] = termstart;
            r["TermEnd"] = termend;
            President.Save(dt);

            int newNum = SQLUtility.GetFirstCFirstRValue("Select * from president p where num = ") + maxnum;
            int pkid = 0; 
            if (r["PresidentId"] != DBNull.Value)
            {
                pkid = (int)r["PresidentId"];
            }

            Assert.IsTrue(newNum > 0, "president with num = " + maxnum + " is not gound in db");
            Assert.IsTrue(pkid > 0, "primary key not updated in datatable");
            TestContext.WriteLine("President with " + maxnum + "is found in db with pk value" + newNum);
            TestContext.WriteLine("new primary key = " + pkid);

        }

        [Test] 
        public void ChangeExistingPresidenttermstart()
        {
            int presidentid = GetExistingPresidentId();
            Assume.That(presidentid > 0, "No presidents in DB, can't run test");
            int termstart = SQLUtility.GetFirstCFirstRValue("select termstart from president where presidentid = " + presidentid);
            TestContext.WriteLine("termstart for presidentid " + presidentid + " is " + termstart);
            termstart = termstart + 1;
            TestContext.WriteLine("Change termstart to " + termstart);
            DataTable dt = President.Load(presidentid);
            dt.Rows[0]["termstart"] = termstart;
            President.Save(dt);

            int newtermstart = SQLUtility.GetFirstCFirstRValue("select termstart from president where presidentid = " + presidentid);
            Assert.IsTrue(newtermstart == termstart, "termstart for president (" + presidentid + ") = " + newtermstart);
            TestContext.WriteLine("termstart for president (" + presidentid + ") = " + newtermstart);
        }

        public void ChangeExistingPresidentToInvalidTermstart()
        {
            int presidentid = GetExistingPresidentId();
            int termStart = 0;
            Assume.That(presidentid > 0, "No presidents in DB, can't run test");
            int termEnd = SQLUtility.GetFirstCFirstRValue("select termend from president where presidentid = " + presidentid);
            TestContext.WriteLine("termend for presidentid " + presidentid + " is " + termEnd);
            termStart = termEnd + 1;
            TestContext.WriteLine("Change termstart to " + termStart);
            DataTable dt = President.Load(presidentid);
            dt.Rows[0]["termstart"] = termStart;
            Exception ex = Assert.Throws<Exception>(()=> President.Save(dt), "TermEnd cannot be before TermStart");
            TestContext.WriteLine(ex.Message);
        }

        public void ChangeExistingPresidentToInvalidNum()
        {
            int presidentid = GetExistingPresidentId();
            Assume.That(presidentid > 0, "No presidents in DB, can't run test");
            int num = SQLUtility.GetFirstCFirstRValue("select top 1 num from president where presidentid <> " + presidentid);
            int currentNum = SQLUtility.GetFirstCFirstRValue("select top 1 num from president where presidentid = " + presidentid);
            Assume.That(num > 0, "Cannot run test because there is no other president record in the table");
            TestContext.WriteLine("Change presidentid " + presidentid + "from " + currentNum + " to " + num);
            DataTable dt = President.Load(presidentid);
            dt.Rows[0]["num"] = num;
            Exception ex = Assert.Throws<Exception>(() => President.Save(dt), "TermEnd cannot be before TermStart");
            TestContext.WriteLine(ex.Message);
        }


        [Test] 
        public void DeletePresident()
        {
            string sql = @" 
select top 1 p.presidentid, p.num, p.lastname
from president p 
left join executiveorder e 
on e.presidentid = p.presidentid 
left join presidentmedal pm 
on pm.presidentid = p.presidentid 
where e.executiveorderid is null 
and pm.presidentmedalid is null 
order by p.presidentid
";
            DataTable dt = SQLUtility.GetDataTable(sql);
            int presidentid = 0;
            string prezdesc = "";
            if (dt.Rows.Count > 0)
            {
                presidentid = (int)dt.Rows[0]["presidentid"];
                prezdesc = dt.Rows[0]["Num"] + " " + dt.Rows[0]["LastName"];
            }
            Assume.That(presidentid > 0, "No presidents without executive order in DB, can't run test");
            TestContext.WriteLine("existing president without executive order and medal, with id = " + presidentid + " " + prezdesc);
            TestContext.WriteLine("ensure that app can delete " + presidentid);
            President.Delete(dt);
            DataTable dtafterdelete = SQLUtility.GetDataTable("select * from president where presidentid = " + presidentid);
            Assert.IsTrue(dtafterdelete.Rows.Count == 0, "Record with president id " + presidentid + "exists in DB");
            TestContext.WriteLine("Record with president id " + presidentid + "does not exist in DB");
        }

        [Test]
        public void DeletePresidentWithUpheldExecutiveOrder()
        {
            string sql = @" 
select top 1 p.presidentid 
from president p 
left join executiveorder e 
on e.presidentid = p.presidentid
where e.upheldbycourt = 1
";

            DataTable dt = SQLUtility.GetDataTable(sql);
            int presidentid = 0;
            string prezdesc = "";
            if (dt.Rows.Count > 0)
            {
                presidentid = (int)dt.Rows[0]["presidentid"];
                prezdesc = dt.Rows[0]["Num"] + " " + dt.Rows[0]["LastName"];
            }
            Assume.That(presidentid > 0, "No presidents with upheld executive order in DB, can't run test");
            TestContext.WriteLine("existing president with upheld executive order, with id = " + presidentid + " " + prezdesc);
            TestContext.WriteLine("ensure that app cannnot delete " + presidentid);

            Exception ex = Assert.Throws<Exception>(()=> President.Delete(dt));

            TestContext.WriteLine(ex.Message);
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
            int partycount = SQLUtility.GetFirstCFirstRValue("select total = count(*) from party");
            Assume.That(partycount > 0, "No parties in DB, can't test"); 
            TestContext.WriteLine("Num of parties in DB = " + partycount);
            TestContext.WriteLine("Ensure that num of rows return by app matches " + partycount);
            DataTable dt = President.GetPartyList();
            Assert.IsTrue(dt.Rows.Count  == partycount, "num rows returned by app " + dt.Rows.Count + " <> " + partycount);
            TestContext.WriteLine("Number of rows in Parties return by app = " + dt.Rows.Count);

        }

        private int GetExistingPresidentId()
        {
            return SQLUtility.GetFirstCFirstRValue("select top 1 presidentid from president");
        }
    }
}