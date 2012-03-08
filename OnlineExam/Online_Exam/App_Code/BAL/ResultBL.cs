using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ResultBL
/// </summary>
public class ResultBL : ResultProperties, IOnlinExam
{
    public ResultBL(long resultId, long fK_UserId, int mark)
    {
        this.ResultId = resultId;
        this.FK_UserId = fK_UserId;
        this.Mark = mark;
    }
    public ResultBL(long fK_UserId, int mark)
    {
        this.FK_UserId = fK_UserId;
        this.Mark = mark;
    }
    public ResultBL(long resultId)
    {
        this.ResultId = resultId;
    }
    public ResultBL()
    {
    }

    public bool Insert()
    {
        return ResultDL.Insert(this);
    }

    public bool Update()
    {
        return ResultDL.Update(this);
    }

    public bool Delete()
    {
        return ResultDL.Delete(this);
    }
}