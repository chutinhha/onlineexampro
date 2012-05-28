using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Photo_Promo_codeDetailBL
/// </summary>
public class Photo_Promo_codeDetailBL:Photo_Promo_codeDetailProperties,IPhotoProcessing
{
    public Photo_Promo_codeDetailBL(int promo_code_id, string code, decimal promo_Discount, long fkCustomer_id)
    {
        this.Promo_code_id = promo_code_id;
        this.Code = code;
        this.Promo_Discount = promo_Discount;
        this.FkCustomer_id = fkCustomer_id;
    }
    public Photo_Promo_codeDetailBL( string code, decimal promo_Discount, long fkCustomer_id)
    {
        this.Code = code;
        this.Promo_Discount = promo_Discount;
        this.FkCustomer_id = fkCustomer_id;
    }
    public Photo_Promo_codeDetailBL(int promo_code_id)
    {
        this.Promo_code_id = promo_code_id;
    }
	public Photo_Promo_codeDetailBL()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public bool Insert()
    {
        return Photo_Promo_codeDetailDL.Insert(this);
    }

    public bool Update()
    {
        return Photo_Promo_codeDetailDL.Update(this);
    }

    public bool Delete()
    {
        return Photo_Promo_codeDetailDL.Delete(this);
    }
}