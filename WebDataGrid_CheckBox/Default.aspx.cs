using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Infragistics.Web.UI.GridControls;
using Infragistics.Web.UI;

public partial class _Default : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.WebDataGrid1.DataSource = this.GetEmployees(10);
    }

    #region SampleData

    private DataTable GetEmployees(int count)
    {
        DataTable dtData = new DataTable("Employees");

        dtData.Columns.Add("EmployeeID", typeof(int));
        dtData.Columns.Add("Name", typeof(string));
        dtData.Columns.Add("Department", typeof(int));
        dtData.Columns.Add("flag1", typeof(bool));
        dtData.Columns.Add("flag2", typeof(bool));


        for (int i = 0; i < count; i++)
        {
            dtData.Rows.Add(new object[] { i, string.Format("Name {0}", i), i % 8, true, false });
        }

        dtData.PrimaryKey = new DataColumn[] { dtData.Columns["EmployeeID"] };

        return dtData;
    }

    #endregion SampleData
    protected void WebDataGrid1_InitializeRow(object sender, Infragistics.Web.UI.GridControls.RowEventArgs e)
    {

        CheckBox cbxflag = (CheckBox)e.Row.Items[3].FindControl("CheckBox1");
        if (cbxflag.Checked == true)
        {
            CheckBox cbxflag2 = (CheckBox)e.Row.Items[4].FindControl("CheckBox2");
            cbxflag2.Enabled = false;
        }
    }
    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        CheckBox chk = (CheckBox)sender;

        GridRecord row = (GridRecord)((Infragistics.Web.UI.GridControls.GridRecordItem)(System.Object)((Infragistics.Web.UI.TemplateContainer)(System.Web.UI.Control)(chk.Parent)).Item).Row;

        CheckBox chk1 = (CheckBox)row.Items[WebDataGrid1.Columns.FromKey("flag2").Index].FindControl("CheckBox2");

        chk1.Enabled = true;
    }
}
