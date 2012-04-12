using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ResultMarksDL
/// </summary>
internal class ResultMarksDL
{
	

    internal static bool Insert(ResultMarksBL resultMarksBL)
    {
        OnlineExamHelper.Context.sp_OnlineResultMarksNewInsertCommand(resultMarksBL.Mark, resultMarksBL.FK_MarkType, resultMarksBL.FK_ResultId);
        return true;
    }

    internal static bool Update(ResultMarksBL resultMarksBL)
    {
        OnlineExamHelper.Context.sp_OnlineResultMarksNewUpdateCommand(resultMarksBL.Mark, resultMarksBL.FK_MarkType, resultMarksBL.FK_ResultId, resultMarksBL.MarkId, resultMarksBL.MarkId);
        return true;
    }

    internal static bool Delete(ResultMarksBL resultMarksBL)
    {
        OnlineExamHelper.Context.sp_OnlineResultMarksNewDeleteCommand(resultMarksBL.MarkId);
        return true;
    }
}