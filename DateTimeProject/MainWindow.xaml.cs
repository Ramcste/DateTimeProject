using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
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

namespace DateTimeProject
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();

            DateOfBirthTextBox.Text = DateTime.Now.Date.ToString("dd-MM-yyyy");
        }

        private void SaveButton_Click(object sender, RoutedEventArgs e)
        {

            string date = DateOfBirthTextBox.Text;

   String ConnectionString=@"server=ROSHANI;Database=Date;Integrated Security=true";
   
              /*Inserting Data into the Table*/

        String query= string.Format("insert into Table_Date values('{0}')",date);
      //String query= ("insert into (tablename) values('attribute name used in database to denote)",'"++"','"++"','"++"');


               /*Updating the Data of Table*/
      //String query= string.Format("update  (tablename)  set () where Id='"+IdTextBox.Text+"'");

                  
            /*Deleting Item from table*/
 
    //String query= string.Format("delete  from (tablename) where Id='"+IdTextBox.Text+"'");

    SqlConnection connection=new SqlConnection(ConnectionString);
   
   try
{
    connection.Open();
    SqlCommand cmd=new SqlCommand(query,connection);
    cmd.ExecuteNonQuery();
    MessageBox.Show("Data is inserted Successfully!!");
 }
   catch(Exception ex)
{
    MessageBox.Show(ex.Message);
}


        }
    }
}
