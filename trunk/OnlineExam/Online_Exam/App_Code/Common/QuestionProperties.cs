using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for QuestionProperties
/// </summary>
public abstract class QuestionProperties
{
    private long questionId;

    public long QuestionId
    {
        get { return questionId; }
        set { questionId = value; }
    }
    private string question;

    public string Question
    {
        get { return question; }
        set { question = value; }
    }
    private string imageurl;

    public string Imageurl
    {
        get { return imageurl; }
        set { imageurl = value; }
    }
    private long fK_Answer;

    public long FK_Answer
    {
        get { return fK_Answer; }
        set { fK_Answer = value; }
    }
    private long fK_Category;

    public long FK_Category
    {
        get { return fK_Category; }
        set { fK_Category = value; }
    }

}