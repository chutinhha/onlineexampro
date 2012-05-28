using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Photo_PlanDetailBL
/// </summary>
public class Photo_PlanDetailBL:Photo_PlanDetailProperties,IPhotoProcessing
{
    public Photo_PlanDetailBL(int plan_id, string plan_Name, decimal rate)
    {
        this.Plan_id = plan_id;
        this.Plan_Name = plan_Name;
        this.Rate = rate;
    }
    public Photo_PlanDetailBL( string plan_Name, decimal rate)
    {
        this.Plan_Name = plan_Name;
        this.Rate = rate;
    }
    public Photo_PlanDetailBL(int plan_id)
    {
        this.Plan_id = plan_id;
    }
	public Photo_PlanDetailBL()
	{
		
	}

    public bool Insert()
    {
        return Photo_PlanDetailDL.Insert(this);
    }

    public bool Update()
    {
        return Photo_PlanDetailDL.Update(this);
    }

    public bool Delete()
    {
        return Photo_PlanDetailDL.Delete(this);
    }
}