using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Photo_RemarksDetailBL
/// </summary>
public class Photo_RemarksDetailBL:Photo_RemarksDetailProperties,IPhotoProcessing
{
    public Photo_RemarksDetailBL(int remark_id, string remarks_Detail, long fkOrder_id)
	{
        this.Remark_id = remark_id;
        this.Remarks_Detail = remarks_Detail;
        this.FkOrder_id = fkOrder_id;
	}
    public Photo_RemarksDetailBL( string remarks_Detail, long fkOrder_id)
    {
        this.Remarks_Detail = remarks_Detail;
        this.FkOrder_id = fkOrder_id;
    }
    public Photo_RemarksDetailBL(int remark_id)
    {
        this.Remark_id = remark_id;
       
    }
    public Photo_RemarksDetailBL()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public bool Insert()
    {
        return Photo_RemarksDetailDL.Insert(this);
    }

    public bool Update()
    {
        return Photo_RemarksDetailDL.Update(this);
    }

    public bool Delete()
    {
        return Photo_RemarksDetailDL.Delete(this);
    }
}