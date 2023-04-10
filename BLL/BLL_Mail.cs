﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public class BLL_Mail
    {
        private string email;
        private string password;
        private string loginemail;
        private string loginpass;
        public BLL_Mail(string email, string password)
        {
            this.loginemail = email;
            this.loginpass = password;
        }
        public string sendMail(string email, string password, bool isUpdate = false)
        {
            try
            {
                MailMessage message = new MailMessage();
                message.From = new MailAddress(loginemail);
                message.To.Add(email);
                if (isUpdate)
                {
                    message.Body = "Chào Bạn. Mật khẩu mới truy cập vào phần mềm của bạn là: " + password ;
                    message.Subject = "Bạn đã yêu cầu cấp lại mật khẩu!";
                }
                else
                {
                    message.Body = string.Format("Chào mừng! Bạn đã được thêm vào nhân viên của nhà hàng với " +
                                                 "thông tin đăng nhập: \n Email: {0} \n Mật khẩu: {1} ", email, password);
                    message.Subject = "Thông tin đăng nhập phần mềm!";

                }


                using (SmtpClient client = new SmtpClient())
                {
                    client.EnableSsl = true;
                    client.UseDefaultCredentials = false;
                    client.Credentials = new NetworkCredential(loginemail, loginpass);
                    client.Host = "smtp.gmail.com";
                    client.Port = 587;
                    client.DeliveryMethod = SmtpDeliveryMethod.Network;

                    client.Send(message);
                }

                return "Vui lòng kiểm tra Email để nhận lấy mật khẩu mới!";

            }
            catch (Exception e)
            {
                return e.Message;

            }

        }
        public string getPassword()
        {
            Random r = new Random();
            StringBuilder builder = new StringBuilder();
            builder.Append(randomString(4, true));
            builder.Append(r.Next(1000, 9999));
            builder.Append(randomString(2, false));
            return builder.ToString();

        }
        private string randomString(int size, bool lowerCase)
        {
            StringBuilder builder = new StringBuilder();
            Random r = new Random();
            char ch;
            for (int i = 0; i < size; i++)
            {
                ch = Convert.ToChar(Convert.ToInt32(Math.Floor(26 * r.NextDouble() + 65)));
                builder.Append(ch);
            }
            if (lowerCase)
            {
                return builder.ToString().ToUpper();

            }
            else return builder.ToString().ToLower();
        }
    }
}
