using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ResultDL
/// </summary>
public class ResultDL
{
	

    internal static bool Insert(ResultBL resultBL)
    {
        OnlineExamHelper.Context.sp_OnlineResultNewInsertCommand(resultBL.TotalMark, resultBL.FK_UserId);
        return true;
    }

    internal static bool Update(ResultBL resultBL)
    {
        OnlineExamHelper.Context.sp_OnlineResultNewUpdateCommand(resultBL.TotalMark, resultBL.FK_UserId, resultBL.ResultId, resultBL.ResultId);
        return true;
    }

    internal static bool Delete(ResultBL resultBL)
    {
        OnlineExamHelper.Context.sp_OnlineResultNewDeleteCommand(resultBL.ResultId);
        return true;
    }
}