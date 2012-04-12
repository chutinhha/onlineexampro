﻿#pragma warning disable 1591
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.239
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.Linq;
using System.Data.Linq.Mapping;
using System.Linq;
using System.Linq.Expressions;
using System.Reflection;



[global::System.Data.Linq.Mapping.DatabaseAttribute(Name="imgapDB")]
public partial class ImgAppDataContext : System.Data.Linq.DataContext
{
	
	private static System.Data.Linq.Mapping.MappingSource mappingSource = new AttributeMappingSource();
	
  #region Extensibility Method Definitions
  partial void OnCreated();
  partial void InserttblImage(tblImage instance);
  partial void UpdatetblImage(tblImage instance);
  partial void DeletetblImage(tblImage instance);
  partial void InserttblUsera(tblUsera instance);
  partial void UpdatetblUsera(tblUsera instance);
  partial void DeletetblUsera(tblUsera instance);
  #endregion
	
	public ImgAppDataContext() : 
			base(global::System.Configuration.ConfigurationManager.ConnectionStrings["imgapDBConnectionString"].ConnectionString, mappingSource)
	{
		OnCreated();
	}
	
	public ImgAppDataContext(string connection) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public ImgAppDataContext(System.Data.IDbConnection connection) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public ImgAppDataContext(string connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public ImgAppDataContext(System.Data.IDbConnection connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public System.Data.Linq.Table<tblImage> tblImages
	{
		get
		{
			return this.GetTable<tblImage>();
		}
	}
	
	public System.Data.Linq.Table<tblUsera> tblUseras
	{
		get
		{
			return this.GetTable<tblUsera>();
		}
	}
}

[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.tblImages")]
public partial class tblImage : INotifyPropertyChanging, INotifyPropertyChanged
{
	
	private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
	
	private long _Id;
	
	private string _BoxBarcode;
	
	private string _AltId;
	
	private string _Des1;
	
	private string _Des2;
	
	private string _Des3;
	
	private string _Des4;
	
	private System.Nullable<System.DateTime> _FromDate;
	
	private System.Nullable<System.DateTime> _ToDate;
	
	private System.Nullable<System.DateTime> _DestroyDate;
	
	private string _ImageName;
	
	private string _ImgaePath;
	
	private System.Nullable<System.DateTime> _Date;
	
	private System.Nullable<long> _FK_User;
	
	private EntityRef<tblUsera> _tblUsera;
	
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnIdChanging(long value);
    partial void OnIdChanged();
    partial void OnBoxBarcodeChanging(string value);
    partial void OnBoxBarcodeChanged();
    partial void OnAltIdChanging(string value);
    partial void OnAltIdChanged();
    partial void OnDes1Changing(string value);
    partial void OnDes1Changed();
    partial void OnDes2Changing(string value);
    partial void OnDes2Changed();
    partial void OnDes3Changing(string value);
    partial void OnDes3Changed();
    partial void OnDes4Changing(string value);
    partial void OnDes4Changed();
    partial void OnFromDateChanging(System.Nullable<System.DateTime> value);
    partial void OnFromDateChanged();
    partial void OnToDateChanging(System.Nullable<System.DateTime> value);
    partial void OnToDateChanged();
    partial void OnDestroyDateChanging(System.Nullable<System.DateTime> value);
    partial void OnDestroyDateChanged();
    partial void OnImageNameChanging(string value);
    partial void OnImageNameChanged();
    partial void OnImgaePathChanging(string value);
    partial void OnImgaePathChanged();
    partial void OnDateChanging(System.Nullable<System.DateTime> value);
    partial void OnDateChanged();
    partial void OnFK_UserChanging(System.Nullable<long> value);
    partial void OnFK_UserChanged();
    #endregion
	
	public tblImage()
	{
		this._tblUsera = default(EntityRef<tblUsera>);
		OnCreated();
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Id", AutoSync=AutoSync.OnInsert, DbType="BigInt NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
	public long Id
	{
		get
		{
			return this._Id;
		}
		set
		{
			if ((this._Id != value))
			{
				this.OnIdChanging(value);
				this.SendPropertyChanging();
				this._Id = value;
				this.SendPropertyChanged("Id");
				this.OnIdChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_BoxBarcode", DbType="NVarChar(50)")]
	public string BoxBarcode
	{
		get
		{
			return this._BoxBarcode;
		}
		set
		{
			if ((this._BoxBarcode != value))
			{
				this.OnBoxBarcodeChanging(value);
				this.SendPropertyChanging();
				this._BoxBarcode = value;
				this.SendPropertyChanged("BoxBarcode");
				this.OnBoxBarcodeChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_AltId", DbType="NVarChar(50)")]
	public string AltId
	{
		get
		{
			return this._AltId;
		}
		set
		{
			if ((this._AltId != value))
			{
				this.OnAltIdChanging(value);
				this.SendPropertyChanging();
				this._AltId = value;
				this.SendPropertyChanged("AltId");
				this.OnAltIdChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Des1", DbType="NVarChar(500)")]
	public string Des1
	{
		get
		{
			return this._Des1;
		}
		set
		{
			if ((this._Des1 != value))
			{
				this.OnDes1Changing(value);
				this.SendPropertyChanging();
				this._Des1 = value;
				this.SendPropertyChanged("Des1");
				this.OnDes1Changed();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Des2", DbType="NVarChar(500)")]
	public string Des2
	{
		get
		{
			return this._Des2;
		}
		set
		{
			if ((this._Des2 != value))
			{
				this.OnDes2Changing(value);
				this.SendPropertyChanging();
				this._Des2 = value;
				this.SendPropertyChanged("Des2");
				this.OnDes2Changed();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Des3", DbType="NVarChar(500)")]
	public string Des3
	{
		get
		{
			return this._Des3;
		}
		set
		{
			if ((this._Des3 != value))
			{
				this.OnDes3Changing(value);
				this.SendPropertyChanging();
				this._Des3 = value;
				this.SendPropertyChanged("Des3");
				this.OnDes3Changed();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Des4", DbType="NVarChar(500)")]
	public string Des4
	{
		get
		{
			return this._Des4;
		}
		set
		{
			if ((this._Des4 != value))
			{
				this.OnDes4Changing(value);
				this.SendPropertyChanging();
				this._Des4 = value;
				this.SendPropertyChanged("Des4");
				this.OnDes4Changed();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_FromDate", DbType="DateTime")]
	public System.Nullable<System.DateTime> FromDate
	{
		get
		{
			return this._FromDate;
		}
		set
		{
			if ((this._FromDate != value))
			{
				this.OnFromDateChanging(value);
				this.SendPropertyChanging();
				this._FromDate = value;
				this.SendPropertyChanged("FromDate");
				this.OnFromDateChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ToDate", DbType="DateTime")]
	public System.Nullable<System.DateTime> ToDate
	{
		get
		{
			return this._ToDate;
		}
		set
		{
			if ((this._ToDate != value))
			{
				this.OnToDateChanging(value);
				this.SendPropertyChanging();
				this._ToDate = value;
				this.SendPropertyChanged("ToDate");
				this.OnToDateChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_DestroyDate", DbType="DateTime")]
	public System.Nullable<System.DateTime> DestroyDate
	{
		get
		{
			return this._DestroyDate;
		}
		set
		{
			if ((this._DestroyDate != value))
			{
				this.OnDestroyDateChanging(value);
				this.SendPropertyChanging();
				this._DestroyDate = value;
				this.SendPropertyChanged("DestroyDate");
				this.OnDestroyDateChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ImageName", DbType="NVarChar(500)")]
	public string ImageName
	{
		get
		{
			return this._ImageName;
		}
		set
		{
			if ((this._ImageName != value))
			{
				this.OnImageNameChanging(value);
				this.SendPropertyChanging();
				this._ImageName = value;
				this.SendPropertyChanged("ImageName");
				this.OnImageNameChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ImgaePath", DbType="NVarChar(500)")]
	public string ImgaePath
	{
		get
		{
			return this._ImgaePath;
		}
		set
		{
			if ((this._ImgaePath != value))
			{
				this.OnImgaePathChanging(value);
				this.SendPropertyChanging();
				this._ImgaePath = value;
				this.SendPropertyChanged("ImgaePath");
				this.OnImgaePathChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Date", DbType="DateTime")]
	public System.Nullable<System.DateTime> Date
	{
		get
		{
			return this._Date;
		}
		set
		{
			if ((this._Date != value))
			{
				this.OnDateChanging(value);
				this.SendPropertyChanging();
				this._Date = value;
				this.SendPropertyChanged("Date");
				this.OnDateChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_FK_User", DbType="BigInt")]
	public System.Nullable<long> FK_User
	{
		get
		{
			return this._FK_User;
		}
		set
		{
			if ((this._FK_User != value))
			{
				if (this._tblUsera.HasLoadedOrAssignedValue)
				{
					throw new System.Data.Linq.ForeignKeyReferenceAlreadyHasValueException();
				}
				this.OnFK_UserChanging(value);
				this.SendPropertyChanging();
				this._FK_User = value;
				this.SendPropertyChanged("FK_User");
				this.OnFK_UserChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.AssociationAttribute(Name="tblUsera_tblImage", Storage="_tblUsera", ThisKey="FK_User", OtherKey="Id", IsForeignKey=true)]
	public tblUsera tblUsera
	{
		get
		{
			return this._tblUsera.Entity;
		}
		set
		{
			tblUsera previousValue = this._tblUsera.Entity;
			if (((previousValue != value) 
						|| (this._tblUsera.HasLoadedOrAssignedValue == false)))
			{
				this.SendPropertyChanging();
				if ((previousValue != null))
				{
					this._tblUsera.Entity = null;
					previousValue.tblImages.Remove(this);
				}
				this._tblUsera.Entity = value;
				if ((value != null))
				{
					value.tblImages.Add(this);
					this._FK_User = value.Id;
				}
				else
				{
					this._FK_User = default(Nullable<long>);
				}
				this.SendPropertyChanged("tblUsera");
			}
		}
	}
	
	public event PropertyChangingEventHandler PropertyChanging;
	
	public event PropertyChangedEventHandler PropertyChanged;
	
	protected virtual void SendPropertyChanging()
	{
		if ((this.PropertyChanging != null))
		{
			this.PropertyChanging(this, emptyChangingEventArgs);
		}
	}
	
	protected virtual void SendPropertyChanged(String propertyName)
	{
		if ((this.PropertyChanged != null))
		{
			this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
		}
	}
}

[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.tblUsera")]
public partial class tblUsera : INotifyPropertyChanging, INotifyPropertyChanged
{
	
	private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
	
	private long _Id;
	
	private string _UserName;
	
	private string _Password;
	
	private System.Nullable<System.DateTime> _Date;
	
	private EntitySet<tblImage> _tblImages;
	
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnIdChanging(long value);
    partial void OnIdChanged();
    partial void OnUserNameChanging(string value);
    partial void OnUserNameChanged();
    partial void OnPasswordChanging(string value);
    partial void OnPasswordChanged();
    partial void OnDateChanging(System.Nullable<System.DateTime> value);
    partial void OnDateChanged();
    #endregion
	
	public tblUsera()
	{
		this._tblImages = new EntitySet<tblImage>(new Action<tblImage>(this.attach_tblImages), new Action<tblImage>(this.detach_tblImages));
		OnCreated();
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Id", AutoSync=AutoSync.OnInsert, DbType="BigInt NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
	public long Id
	{
		get
		{
			return this._Id;
		}
		set
		{
			if ((this._Id != value))
			{
				this.OnIdChanging(value);
				this.SendPropertyChanging();
				this._Id = value;
				this.SendPropertyChanged("Id");
				this.OnIdChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_UserName", DbType="NVarChar(50)")]
	public string UserName
	{
		get
		{
			return this._UserName;
		}
		set
		{
			if ((this._UserName != value))
			{
				this.OnUserNameChanging(value);
				this.SendPropertyChanging();
				this._UserName = value;
				this.SendPropertyChanged("UserName");
				this.OnUserNameChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Password", DbType="NVarChar(50)")]
	public string Password
	{
		get
		{
			return this._Password;
		}
		set
		{
			if ((this._Password != value))
			{
				this.OnPasswordChanging(value);
				this.SendPropertyChanging();
				this._Password = value;
				this.SendPropertyChanged("Password");
				this.OnPasswordChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Date", DbType="DateTime")]
	public System.Nullable<System.DateTime> Date
	{
		get
		{
			return this._Date;
		}
		set
		{
			if ((this._Date != value))
			{
				this.OnDateChanging(value);
				this.SendPropertyChanging();
				this._Date = value;
				this.SendPropertyChanged("Date");
				this.OnDateChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.AssociationAttribute(Name="tblUsera_tblImage", Storage="_tblImages", ThisKey="Id", OtherKey="FK_User")]
	public EntitySet<tblImage> tblImages
	{
		get
		{
			return this._tblImages;
		}
		set
		{
			this._tblImages.Assign(value);
		}
	}
	
	public event PropertyChangingEventHandler PropertyChanging;
	
	public event PropertyChangedEventHandler PropertyChanged;
	
	protected virtual void SendPropertyChanging()
	{
		if ((this.PropertyChanging != null))
		{
			this.PropertyChanging(this, emptyChangingEventArgs);
		}
	}
	
	protected virtual void SendPropertyChanged(String propertyName)
	{
		if ((this.PropertyChanged != null))
		{
			this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
		}
	}
	
	private void attach_tblImages(tblImage entity)
	{
		this.SendPropertyChanging();
		entity.tblUsera = this;
	}
	
	private void detach_tblImages(tblImage entity)
	{
		this.SendPropertyChanging();
		entity.tblUsera = null;
	}
}
#pragma warning restore 1591
