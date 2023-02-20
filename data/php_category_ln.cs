using System;
using System.Collections;
using System.Collections.Generic;
using System.Text;
namespace Kcos
{
    #region Php_category_ln
    public class Php_category_ln
    {
        #region Member Variables
        protected int _id;
        protected string _ln;
        protected string _ln_icon;
        protected string _ln_image;
        protected string _sef_url;
        protected string _name;
        protected string _title;
        protected string _desc;
        protected string _keyword;
        protected string _contentCate;
        #endregion
        #region Constructors
        public Php_category_ln() { }
        public Php_category_ln(string ln_icon, string ln_image, string sef_url, string name, string title, string desc, string keyword, string contentCate)
        {
            this._ln_icon=ln_icon;
            this._ln_image=ln_image;
            this._sef_url=sef_url;
            this._name=name;
            this._title=title;
            this._desc=desc;
            this._keyword=keyword;
            this._contentCate=contentCate;
        }
        #endregion
        #region Public Properties
        public virtual int Id
        {
            get {return _id;}
            set {_id=value;}
        }
        public virtual string Ln
        {
            get {return _ln;}
            set {_ln=value;}
        }
        public virtual string Ln_icon
        {
            get {return _ln_icon;}
            set {_ln_icon=value;}
        }
        public virtual string Ln_image
        {
            get {return _ln_image;}
            set {_ln_image=value;}
        }
        public virtual string Sef_url
        {
            get {return _sef_url;}
            set {_sef_url=value;}
        }
        public virtual string Name
        {
            get {return _name;}
            set {_name=value;}
        }
        public virtual string Title
        {
            get {return _title;}
            set {_title=value;}
        }
        public virtual string Desc
        {
            get {return _desc;}
            set {_desc=value;}
        }
        public virtual string Keyword
        {
            get {return _keyword;}
            set {_keyword=value;}
        }
        public virtual string ContentCate
        {
            get {return _contentCate;}
            set {_contentCate=value;}
        }
        #endregion
    }
    #endregion
}