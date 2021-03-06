﻿// CSC 365 -- Austin Caldwell, Evan Wehr, Jacob Girvin -- 2015
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;    // To Access Database
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Yellow_Bucket
{
    public partial class Movies : Form
    {
        protected SqlConnection YellowBucketConnection;
        protected string connectionString = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;

        public Movies()
        {
            InitializeComponent();
        }

        private void ListAllMovies_Load(object sender, EventArgs e)
        {
            fillListOfAllMovies();
        }

        private void fillListOfAllMovies()
        {
            DataTable allMovies = new DataTable();

            using (YellowBucketConnection = new SqlConnection(connectionString))
            {
                try
                {
                    SqlDataAdapter adapter = new SqlDataAdapter("SELECT concat(movieId, ') ', title, '(', releaseDate, ')') AS listing FROM dbo.Movie", YellowBucketConnection);
                    adapter.Fill(allMovies);

                    listBoxOfAllMovies.ValueMember = "id";
                    listBoxOfAllMovies.DisplayMember = "listing";
                    listBoxOfAllMovies.DataSource = allMovies;

                    YellowBucketConnection.Close();
                }

                catch (Exception ex)
                {
                    Console.WriteLine(ex.ToString());
                }
            }
        }

        private void hOMEToolStripMenuItem_Click(object sender, EventArgs e)
        {
            this.Hide();
            YellowBucketHome homeForm = new YellowBucketHome();
            homeForm.Show();
        }

        private void cUSTOMERSToolStripMenuItem_Click(object sender, EventArgs e)
        {
            this.Hide();
            Customers customerForm = new Customers();
            customerForm.Show();
        }

        private void kIOSKSToolStripMenuItem_Click(object sender, EventArgs e)
        {
            this.Hide();
            Kiosks kioskForm = new Kiosks();
            kioskForm.Show();
        }

        private void mOVIESToolStripMenuItem_Click(object sender, EventArgs e)
        {
            this.Hide();
            Movies movieForm = new Movies();
            movieForm.Show();
        }

        private void aBOUTToolStripMenuItem_Click(object sender, EventArgs e)
        {
            this.Hide();
            About aboutForm = new About();
            aboutForm.Show();
        }

        private void qUITToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void rEVIEWToolStripMenuItem_Click(object sender, EventArgs e)
        {
            this.Hide();
            Review reviewForm = new Review();
            reviewForm.Show();
        }

        private void rETURNToolStripMenuItem_Click(object sender, EventArgs e)
        {
            this.Hide();
            ReturnMovie ReturnMovieForm = new ReturnMovie();
            ReturnMovieForm.Show();
        }

        private void rENTToolStripMenuItem_Click(object sender, EventArgs e)
        {
            this.Hide();
            RentAMovie RentAMovieForm = new RentAMovie();
            RentAMovieForm.Show();
        }

        private void buttonToDeleteMovie_Click(object sender, EventArgs e)
        {
            
            this.Hide();
            DeleteMovieForm DeleteMovieForm = new DeleteMovieForm();
            DeleteMovieForm.Show();
        }

        private void buttonToAddMovie_Click(object sender, EventArgs e)
        {
            this.Hide();
            AddMovie AddMovieForm = new AddMovie();
            AddMovieForm.Show();
        }

        private void buttonToEditMovieInfo_Click(object sender, EventArgs e)
        {
            this.Hide();
            EditMovieInfo EditMovieInfoForm = new EditMovieInfo();
            EditMovieInfoForm.Show();
        }

        private void buttonToViewMovieDetails_Click(object sender, EventArgs e)
        {
            this.Hide();
            ViewMovieDetails ViewMovieDetailsForm = new ViewMovieDetails();
            ViewMovieDetailsForm.Show();
        }
    }
}
