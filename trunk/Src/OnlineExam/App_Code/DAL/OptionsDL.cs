using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for OptionsDL
/// </summary>
internal class OptionsDL
{
    internal static bool Insert(OptionsBL optionsBL)
    {
        OnlineExamHelper.Context.sp_OnlineOptionsNewInsertCommand(optionsBL.OptionName, optionsBL.OptionType, optionsBL.FK_QuestionId);
        return true;
    }

    internal static bool Update(OptionsBL optionsBL)
    {
        OnlineExamHelper.Context.sp_OnlineOptionsNewUpdateCommand(optionsBL.OptionName, optionsBL.OptionType, optionsBL.FK_QuestionId, optionsBL.OptionId, optionsBL.OptionId);
        return true;
    }

    internal static bool Delete(OptionsBL optionsBL)
    {
        OnlineExamHelper.Context.sp_OnlineOptionsNewDeleteCommand(optionsBL.OptionId);
        return true;
    }
}