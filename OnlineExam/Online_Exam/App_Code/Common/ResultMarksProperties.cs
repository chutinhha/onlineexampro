using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ResultMarksProperties
/// </summary>
public abstract class ResultMarksProperties
{
    private long markId, fK_MarkType, fK_ResultId;

    public long FK_ResultId
    {
        get { return fK_ResultId; }
        set { fK_ResultId = value; }
    }

    public long FK_MarkType
    {
        get { return fK_MarkType; }
        set { fK_MarkType = value; }
    }

    public long MarkId
    {
        get { return markId; }
        set { markId = value; }
    }
    private int mark;

    public int Mark
    {
        get { return mark; }
        set { mark = value; }
    }

	
}