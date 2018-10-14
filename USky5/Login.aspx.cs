using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace USky.WebApp
{
    public partial class Login : System.Web.UI.Page
    {

        public string RedirectURL { get; set; }
        public string LoginCredentials { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["url"] != null)
            {
                RedirectURL = Request.QueryString["url"].ToString();
            }
            else
            {
                RedirectURL = "~/UserHome";
            }


           // string RVal = Request.QueryString["credentials"].ToString();
            string RVal = null;
            if (RVal != null)
            {
                try
                {
                    //string[] Credentials = TLW.Security.Cryptography.DecryptURL(Server.UrlDecode(Request.QueryString.ToString())).Split('|');
                    string[] Credentials = USky.Security.Cryptography.DecryptURL(Server.UrlDecode(RVal)).Split('|');

                    bool _UserExists = USky.BLL.UserManagment.CheckUserExist(Credentials[0]);

                    if (!_UserExists)
                    {
                        string UserSource = "1";
                        if (Credentials.Length > 2)
                        {
                            UserSource = Credentials[2];
                        }

                        string UserName = Credentials[0]; string PasswordHash = Credentials[1]; string PasswordSalt = Credentials[1]; string MiddleName = ""; 

                        long _UserID = USky.BLL.UserManagment.InsertUsersRow(1,UserName, PasswordHash, PasswordSalt, Credentials[0], "", MiddleName, UserSource, Credentials[0], "", false, true);
                        if (_UserID != 0)
                        {
                            USky.BLL.UserManagment uObj = USky.BLL.UserManagment.UsersSelectRow(UserName);
                            //HttpContext context = HttpContext.Current;
                            //context.Session["UsersObject"] = uObj;                            
                        }

                    }

                    //LoginUser(Credentials[0], Credentials[1]);
                    AuthenticateLogin(Credentials[0], "");
                    
                }
                catch (Exception ex) { }
            }
            
        }


        private void LoginUser(string UserName, string Password)
        {
            try
            {
                string Status = "";
                string ErrorMessage = "";
                string SessionID = System.Guid.NewGuid().ToString().Replace("-", "");
                Status = USky.BLL.UserManagment.UserAuthentication(UserName, Password, SessionID, "");

                if (Status == "AUTHORISED")
                {
                    AuthenticateLogin(UserName, SessionID);
                }
                else if (Status == "NOTEXIST")
                {
                    ErrorMessage = "Invalid Email Address or Password";
                }
                else if (Status == "INACTIVE")
                {
                    ErrorMessage = "Your account is InActive. Please check your Email and Activate your account";
                }
                else if (Status == "UNAUTHORISED")
                {
                    ErrorMessage = "Invalid Email Address or Password";
                }
                else if (Status == "LOCKED")
                {
                    ErrorMessage = "Your account has been locked. Please contact Customer support";
                }
                else if (Status == "TEMPID")
                {
                    RedirectURL = "~/UserHome/CreateAccount.aspx";
                    AuthenticateLogin(UserName, SessionID);
                }

                lblStatus.Text = ErrorMessage;
                lblStatus.CssClass = "error-message";
                lblStatus.Visible = true;

            }
            catch (Exception ex)
            {

                lblStatus.Text = ex.Message;
            }


        }

        private void AuthenticateLogin(string UserName, string SessionID)
        {
            USky.BLL.UserManagment uObj = USky.BLL.UserManagment.UsersSelectRow(UserName);
            string ProfileImage = USky.BLL.UserProfile.ProfileImages_GetPath(uObj.UserID, 1, uObj.UserTypeID);
           
            ScriptManager.RegisterClientScriptBlock(this, typeof(Page), "ToggleScript", "localStorage.IsAuthenticated='true'", true);

            FormsAuthenticationTicket ticket = new FormsAuthenticationTicket(1, // Ticket version  
            uObj.UserID.ToString(), // Username associated with ticket
            DateTime.Now, //Date/time issued
            DateTime.Now.AddDays(1), // Date/time to expire
            false, // "true"for a persistent user cookie
            uObj.UserID + "|" + uObj.UserName + "|" + uObj.FirstName + "|" + uObj.LastName + "|" + uObj.EmailAddress + "|" + uObj.MobileNo + "|" + uObj.UserTypeID + "|" + uObj.Usersource + "|" + ProfileImage + "|" + SessionID + "|" + uObj.IsCreated, // User-data, in this case the roles
            FormsAuthentication.FormsCookiePath);

            string hash = FormsAuthentication.Encrypt(ticket);
            HttpCookie cookie = new HttpCookie(FormsAuthentication.FormsCookieName,// Name of auth cookie
                   hash); //Hashed ticket
            // Set the cookie's expiration time to the tickets expiration time
            if (ticket.IsPersistent) cookie.Expires = ticket.Expiration;
            // Add the cookie to the list for outgoing response
            HttpContext.Current.Response.Cookies.Add(cookie);

            if (RedirectURL == null || RedirectURL == "")
                RedirectURL = FormsAuthentication.GetRedirectUrl(uObj.UserID.ToString(), true);

            Response.Redirect(RedirectURL, true);
        }


        private void LoginUser(string UserName)
        {
            try
            {

                string SessionID = System.Guid.NewGuid().ToString().Replace("-", "");

                    USky.BLL.UserManagment uObj = USky.BLL.UserManagment.UsersSelectRow(UserName);
                    HttpContext context = HttpContext.Current;
                    context.Session["UsersObject"] = uObj;

                    FormsAuthentication.RedirectFromLoginPage(UserName + "|" + SessionID, true);

                    if (RedirectURL != null && RedirectURL != "")
                        Response.Redirect(RedirectURL, false);


               

            }
            catch (Exception ex)
            {

                lblStatus.Text = ex.Message;
            }


        }

    }
}