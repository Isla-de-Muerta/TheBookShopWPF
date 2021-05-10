using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace TheBookShop
{
    public partial class MainWindow : Window
    {
        private ApplicationContext _applicationContext;
        private string gender;
        public MainWindow()
        {
            InitializeComponent();
            _applicationContext = new ApplicationContext();
        }

        private void Login(object sender, RoutedEventArgs e)
        {
            if (usernameTxtBox.Text == "admin" && passwordTxtBox.Password == "admin")
            {
                loginSP.Visibility = Visibility.Hidden;
                adminSP.Visibility = Visibility.Visible;
            }
            else
            {
                var user = _applicationContext.userTables.FirstOrDefault(x => x.u_unm == usernameTxtBox.Text && x.u_pwd == passwordTxtBox.Password);
                if (user != null)
                {
                    loginSP.Visibility = Visibility.Hidden;
                    homeSP.Visibility = Visibility.Visible;
                }
                else
                    SnackBarRegister.MessageQueue.Enqueue("Incorrect login or password");
            }
        }

        private void Register(object sender, RoutedEventArgs e)
        {
            BSTabControl.SelectedItem = RegisterTab;
        }

        private void CreateUser(object sender, RoutedEventArgs e)
        {
            if (checkEmail() && checkNames() && checkPassword())
            {
                var user = new UserTable
                {
                    u_fnm = fnmTxtBox.Text,
                    u_unm = unmTxtBox.Text,
                    u_pwd = pswTxtBox.Password,
                    u_gender = gender,
                    u_email = emailTxtBox.Text,
                    u_contact = contactTxtBox.Text,
                    u_city = cityTxtBox.Text
                };

                _applicationContext.userTables.Add(user);
                _applicationContext.SaveChanges();
            }
            SnackBarRegister2.MessageQueue.Enqueue("User was create successfully");
        }

        private bool checkPassword()
        {
            if (pswTxtBox.Password == psw2TxtBox.Password)
            {
                if (pswTxtBox.Password.Length > 4)
                {
                    return true;
                }
                SnackBarRegister2.MessageQueue.Enqueue("Invalid password, should contain more than 4");
                return false;
            }
            SnackBarRegister2.MessageQueue.Enqueue("Different password");
            return false;
        }

        private bool checkNames()
        {
            if (string.IsNullOrWhiteSpace(fnmTxtBox.Text) && string.IsNullOrWhiteSpace(unmTxtBox.Text))
            {
                SnackBarRegister2.MessageQueue.Enqueue("Please fill name and user name");
                return false;
            }
            return true;
        }

        private bool checkEmail()
        {
            try
            {
                var mail = new MailAddress(emailTxtBox.Text);
                return true;
            }
            catch (ArgumentException)
            {
                SnackBarRegister2.MessageQueue.Enqueue("Please insert email");
                return false;
            }
            catch (FormatException)
            {
                SnackBarRegister2.MessageQueue.Enqueue("Please insert correct email");
                return false;
            }
        }

        private void Gender_Checked(object sender, RoutedEventArgs e)
        {
            RadioButton gndr = (RadioButton)sender;
            gender = gndr.Content.ToString();
        }

        private void Logout(object sender, RoutedEventArgs e)
        {
            loginSP.Visibility = Visibility.Visible;
            adminSP.Visibility = Visibility.Hidden;
            usernameTxtBox.Text = "";
            passwordTxtBox.Password = "";
        }
    }
}
