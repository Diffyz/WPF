using System;
using System.Threading;
using System.Windows;
using System.Windows.Threading;

namespace TimerProject
{

    public partial class MainWindow : Window
    {
        DateTime date;
        DispatcherTimer timer = new DispatcherTimer();


        public MainWindow()
        {
            InitializeComponent();

        }
        
        private void TimerStart(object sender, RoutedEventArgs e)
        {
            date = DateTime.Now;
            timer.Tick += new EventHandler(TickTimer);
            timer.Interval = TimeSpan.FromMilliseconds(10);
            timer.Start();

        }
        private void TickTimer(object sender, EventArgs e)
        {
            long tick = DateTime.Now.Ticks - date.Ticks;
            DateTime stopWatch = new DateTime();
            stopWatch= stopWatch.AddTicks(tick);
            _timer.Content = String.Format("{0:HH:mm:ss:ff}", stopWatch);
           // _timer.Content = DateTime.Now.ToString("HH:mm:ss:ff");
        }

        private void TimerStop(object sender, RoutedEventArgs e)
        {
            timer.Stop();
        }
    }
}
