using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ResultMarksBL
/// </summary>
public class ResultMarksBL:ResultMarksProperties,IOnlinExam
{
    public ResultMarksBL(long markId, int mark, long fK_MarkType, long fK_ResultId)
	{
        this.MarkId = markId;
        this.Mark = mark;
        this.FK_MarkType = fK_MarkType;
        this.FK_ResultId = fK_ResultId;
	}
    public ResultMarksBL(int mark, long fK_MarkType, long fK_ResultId)
    {
        this.Mark = mark;
        this.FK_MarkType = fK_MarkType;
        this.FK_ResultId = fK_ResultId;
    }
    public ResultMarksBL(long markId)
    {
        this.MarkId = markId;
    }
    public ResultMarksBL()
    {
    }

    public bool Insert()
    {
        return ResultMarksDL.Insert(this);
    }

    public bool Update()
    {
        return ResultMarksDL.Update(this);
    }

    public bool Delete()
    {
        return ResultMarksDL.Delete(this);
    }
}