using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for OptionsProperties
/// </summary>
public abstract class OptionsProperties
{
    private long optionId;

    public long OptionId
    {
        get { return optionId; }
        set { optionId = value; }
    }
    private string optionName;

    public string OptionName
    {
        get { return optionName; }
        set { optionName = value; }
    }
    private int optionType;

    public int OptionType
    {
        get { return optionType; }
        set { optionType = value; }
    }
    private long fK_QuestionId;

    public long FK_QuestionId
    {
        get { return fK_QuestionId; }
        set { fK_QuestionId = value; }
    }



}