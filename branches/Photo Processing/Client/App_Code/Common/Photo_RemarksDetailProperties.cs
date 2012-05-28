using System;
using System.Collections.Generic;
using System.Web;

/// <summary>
/// Summary description for Photo_RemarksDetailProperties
/// </summary>
public abstract class Photo_RemarksDetailProperties
{
    private int remark_id;

    public int Remark_id
    {
        get { return remark_id; }
        set { remark_id = value; }
    }
    private string remarks_Detail;

    public string Remarks_Detail
    {
        get { return remarks_Detail; }
        set { remarks_Detail = value; }
    }
    private Int64 fkOrder_id;

    public Int64 FkOrder_id
    {
        get { return fkOrder_id; }
        set { fkOrder_id = value; }
    }
}