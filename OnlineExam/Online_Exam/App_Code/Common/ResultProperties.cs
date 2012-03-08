using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ResultProperties
/// </summary>
public abstract class ResultProperties
{
    private long resultId, fK_UserId;

    public long FK_UserId
    {
        get { return fK_UserId; }
        set { fK_UserId = value; }
    }

    public long ResultId
    {
        get { return resultId; }
        set { resultId = value; }
    }
    private int mark;

    public int Mark
    {
        get { return mark; }
        set { mark = value; }
    }
}