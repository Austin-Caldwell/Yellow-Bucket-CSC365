﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient; // To access database

namespace Yellow_Bucket
{
    public partial class Movies : Form
    {
        protected SqlConnection YellowBucketConnection;
        protected string connectionString = "Server=AUSTINC-LAPTOP\\SQLEXPRESS;Database=YellowBucketCSC365;Trusted_Connection=True;";
        // Use YellowBucketConnection = new SqlConnection(connectionString); when you need to open a connection

        public Movies()
        {
            InitializeComponent();
        }

        private void Movies_Load(object sender, EventArgs e)
        {
            YellowBucketConnection = new SqlConnection(connectionString);

            try
            {
                YellowBucketConnection.Open();
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
            }

            Console.WriteLine("Connected!");

            //Movies_Load_1();
            //DataTable movies = new DataTable();

            //using (YellowBucketConnection = new SqlConnection(connectionString))
            //{
            //    try
            //    {
            //        SqlDataAdapter adapter = new SqlDataAdapter("Select title FROM dbo.Movies", YellowBucketConnection);
            //        adapter.Fill(movies);

            //        movieTitleComboBox.DataSource = movies;
            //        movieTitleComboBox.ValueMember = "id";
            //        movieTitleComboBox.DisplayMember = "Title";
            //    }
            //    catch (Exception ex)
            //    {
            //        Console.WriteLine(ex.ToString());
            //    }
            //}
        }

        private void hOMEToolStripMenuItem_Click(object sender, EventArgs e)
        {
            this.Hide();
            YellowBucketHome home = new YellowBucketHome();
            home.Show();
        }

        private void cUSTOMERSToolStripMenuItem_Click(object sender, EventArgs e)
        {
            this.Hide();
            Customers customers = new Customers();
            customers.Show();
        }

        private void kIOSKSToolStripMenuItem_Click(object sender, EventArgs e)
        {
            this.Hide();
            Kiosks kiosks = new Kiosks();
            kiosks.Show();
        }

        private void mOVIESToolStripMenuItem_Click(object sender, EventArgs e)
        {
            this.Hide();
            Movies movies = new Movies();
            movies.Show();
        }

        private void aBOUTToolStripMenuItem_Click(object sender, EventArgs e)
        {
            this.Hide();
            About about = new About();
            about.Show();
        }

        private void qUITToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }
    }
}