using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for QuestionDL
/// </summary>
internal class QuestionDL
{
	

    internal static bool Insert(QuestionBL questionBL)
    {
        OnlineExamHelper.Context.sp_OnlineQuestionNewInsertCommand(questionBL.Question, questionBL.Imageurl, questionBL.FK_Answer, questionBL.FK_Category);
        return true;
    }

    internal static bool Update(QuestionBL questionBL)
    {
        OnlineExamHelper.Context.sp_OnlineQuestionNewUpdateCommand(questionBL.Question, questionBL.Imageurl, questionBL.FK_Answer, questionBL.FK_Category, questionBL.QuestionId, questionBL.QuestionId);
        return true;

    }

    internal static bool Delete(QuestionBL questionBL)
    {
        OnlineExamHelper.Context.sp_OnlineQuestionNewDeleteCommand(questionBL.QuestionId);
        return true;
    }
}