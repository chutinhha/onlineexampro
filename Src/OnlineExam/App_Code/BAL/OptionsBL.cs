using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for OptionsBL
/// </summary>
public class OptionsBL:OptionsProperties,IOnlinExam
{
    public OptionsBL(string optionName, int optionType, long fK_QuestionId)
	{
        this.OptionName = optionName;
        this.OptionType = optionType;
        this.FK_QuestionId = fK_QuestionId;
	}
    public OptionsBL(long optionId, string optionName, int optionType, long fK_QuestionId)
    {
        this.OptionId = optionId;
        this.OptionName = optionName;
        this.OptionType = optionType;
        this.FK_QuestionId = fK_QuestionId;
    }
    public OptionsBL(long optionId)
    {
        this.OptionId = optionId;
    }
    public OptionsBL()
    {

    }

    public bool Insert()
    {
        return OptionsDL.Insert(this);
    }

    public bool Update()
    {
        return OptionsDL.Update(this);
    }

    public bool Delete()
    {
        return OptionsDL.Delete(this);
    }
}