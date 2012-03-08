using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for QuestionBL
/// </summary>
public class QuestionBL : QuestionProperties, IOnlinExam
{
    public QuestionBL(long questionId, string question, string imageurl, long fK_Answer, long fK_Category)
    {
        this.QuestionId = questionId;
        this.Question = question;
        this.Imageurl = imageurl;
        this.FK_Answer = fK_Answer;
        this.FK_Category = fK_Category;
    }
    public QuestionBL(string question, string imageurl, long fK_Answer, long fK_Category)
    {
        this.Question = question;
        this.Imageurl = imageurl;
        this.FK_Answer = fK_Answer;
        this.FK_Category = fK_Category;


    }
    public QuestionBL(long questionId)
    {
        this.QuestionId = questionId;
    }
    public QuestionBL()
    {

    }

    public bool Insert()
    {
        return QuestionDL.Insert(this);
    }

    public bool Update()
    {
        return QuestionDL.Update(this);
    }

    public bool Delete()
    {
        return QuestionDL.Delete(this);
    }
}