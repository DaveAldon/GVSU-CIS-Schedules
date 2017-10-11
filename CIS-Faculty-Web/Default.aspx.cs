//Created by David Crawford

using System;
using System.Web;
using System.Web.UI;
using FacultySchedules;

namespace CISFacultyWeb
{

    public partial class Default : System.Web.UI.Page
    {
		Run runInit = new Run(); //Instantiation of main engine
		allFaculty allFacultyInit = new allFaculty(); //Faculty finder
		SpecialNameFormatting specialFormatInit = new SpecialNameFormatting(); //Formats all of the different names into proper URLs
		GetData getDataInit = new GetData(); //Class of query builders
		GiveData clearInit = new GiveData(); //Class of queries, only needed to reset tables in this class

        protected void Page_Load(object sender, EventArgs e)
        {

        }

		public void scrapeBtn_Click(object sender, EventArgs args)
        {
			allFacultyInit.findAndInsertAllNames();
			foreach (string eachName in Globals.uniqueFacultyNames) //Goes through each faculty name in the database table
			{
				facultyListCombo.Items.Add(eachName); //Populate the faculty names combo lists
				htmlScheduleCombo.Items.Add(eachName);
				bigFacList.Items.Add(eachName);
				clearInit.dropTable(eachName); //Drop all of the faculty name tables to refresh the data
				runInit.start(eachName); //Begins the main engine with the given name
                break;
			}
			foreach (string eachClassName in Globals.uniqueClassInput) //Populate the class combo lists
			{
				classCombo.Items.Add(eachClassName);
                classCombo3.Items.Add(eachClassName);
				//classCombo2.AddItem(eachClassName);
			}

			foreach (string eachTime in Globals.timeList) //Populate the time combo lists
			{
                timeCombo.Items.Add(eachTime);
			}
			facultyListCombo.DataBind();
			htmlScheduleCombo.DataBind();
			classCombo3.DataBind();
			classCombo.DataBind();
        }

        public void findOut1Btn_Click(object sender, EventArgs args)//When does a faculty teach a specified class
        {
			try
			{
                resultTextBox.Text = getDataInit.whenDoesXHaveY(facultyListCombo.SelectedItem.Text, classCombo.SelectedItem.Text);
			}

			catch (NullReferenceException error)
			{
                resultTextBox.Text = "Error: " + error;
			}
        }

		public void findOut2Btn_Click(object sender, EventArgs args) //Who teaches a specific class query
		{
			try
			{
                resultTextBox.Text = getDataInit.whoTeachesX(classCombo3.SelectedItem.Text);
			}

            catch (NullReferenceException error)
			{
				resultTextBox.Text = "Error: " + error;
			}
		}

		public void findOut3Btn_Click(object sender, EventArgs args) //Customized availability query
		{
			try
			{
                resultTextBox.Text = getDataInit.whoIsFreeAtX(timeCombo.SelectedItem.Text);
			}

			catch (NullReferenceException error)
			{
				resultTextBox.Text = "Error: " + error;
			}
		}

		public void findOut4Btn_Click(object sender, EventArgs args) //All faculty availability query
		{
			try
			{
				resultTextBox.Text = getDataInit.whenIsEveryoneAvailable();
			}

			catch (NullReferenceException error)
			{
				resultTextBox.Text = "Error: " + error;
			}
		}

		public void findOut5Btn_Click(object sender, EventArgs args) //Who is free at a specified time query
		{
			try
			{
                resultTextBox.Text = getDataInit.whoIsFreeFromList(listOfChosenText.Text);
			}

			catch (NullReferenceException error)
			{
				resultTextBox.Text = "Error: " + error;
			}
		}

		public void addBtn_Click(object sender, EventArgs args) //Adds a name to the customized list
		{
			if (!listOfChosenText.Text.Contains(bigFacList.SelectedItem.Text)) //Checks for duplicates
			{
                listOfChosenText.Text += bigFacList.SelectedItem.Text + "\n";
			}
		}

		public void removeBtn_Click(object sender, EventArgs args) //Removes a name from the customized list
		{
            if (listOfChosenText.Text.Contains(bigFacList.SelectedItem.Text))
			{
                listOfChosenText.Text = listOfChosenText.Text.Replace(bigFacList.SelectedItem.Text + "\n", string.Empty);
			}
		}
    }
}
