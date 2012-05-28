using System;
using System.Collections.Generic;
using System.Web;

/// <summary>
/// Summary description for Photo_PlanDetailProperties
/// </summary>
public abstract class Photo_PlanDetailProperties
{
    private int plan_id;

    public int Plan_id
    {
        get { return plan_id; }
        set { plan_id = value; }
    }
    private string plan_Name;

    public string Plan_Name
    {
        get { return plan_Name; }
        set { plan_Name = value; }
    }
    private decimal rate;

    public decimal Rate
    {
        get { return rate; }
        set { rate = value; }
    }
}