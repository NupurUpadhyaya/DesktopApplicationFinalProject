﻿using System;
using System.Collections.Generic;
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
using System.Net.Http;
using Newtonsoft.Json;
using hotelBooking.Models;
using WebApplication1.Models;

namespace hotelBooking
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        HttpClient client = new HttpClient();

        public MainWindow()
        {
            client.BaseAddress = new Uri("https://localhost:44308/api/");
            client.DefaultRequestHeaders.Accept.Clear();
            client.DefaultRequestHeaders.Accept.Add(
                new System.Net.Http.Headers.MediaTypeWithQualityHeaderValue("application/json")
                );
            InitializeComponent();
        }

        private void btnReserveBooking_Click(object sender, RoutedEventArgs e)
        {


            var new_booking = new Booking() {

                customerAddress = this.txtAddress.Text,
                fullName = this.txtFullName.Text,
                customerCity = this.txtCity.Text,
                fromDate = this.txtDateFrom.Text,
                toDate = this.txtDateTo.Text,
                customerPhone = this.txtPhNo.Text,
                customerEmail = this.txtEmail.Text,
                creditCardNo = (int)Convert.ToInt32(this.txtCreditCard.Text),
                hotelID = (int)Convert.ToInt32(this.txtHotelID.Text),
                roomsBooked = (int)Convert.ToInt32(this.txtRoomsBooked.Text)
            };
            this.SaveBooking(new_booking);
            this.txtBookingStatus.Visibility = System.Windows.Visibility.Visible;
            this.txtBookingStatus.Text = "New Reservation Booked";
        }

        private void Show_Hotels_Button_Click(object sender, RoutedEventArgs e)
        {
            this.GetAllHotelsInformation();
        }

        private async void GetAllHotelsInformation()
        {   var hotelCityUri = "Hotel/city?cityName=" + this.txtHotelCitySelector.Text.ToLower();
            var response = await client.GetStringAsync(hotelCityUri);
            var hotels = JsonConvert.DeserializeObject<List<Hotels>>(response);
            this.hotelDataGrid.DataContext = hotels;
        }

        private async void SaveBooking(Booking booking_information)
        {
            await client.PostAsJsonAsync("bookings", booking_information);
        }
         
        private async void UpdateBooking(Booking booking_information)
        {
            await client.PutAsJsonAsync("bookings/"  + booking_information.bookingID, booking_information);
        }

        private async void DeleteBooking(int bookingID)
        {
            await client.DeleteAsync("bookings/" + bookingID);
        }

    }
}
