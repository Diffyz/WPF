using System;
using System.Threading;
using System.Windows;
using System.Windows.Threading;

namespace TimerProject
{

    public partial class MainWindow : Window
    {
        private DateTime date;
        private DispatcherTimer timer = new DispatcherTimer();
        private int countBound = 0;

        public MainWindow()
        {
            InitializeComponent();    
        }   

        private void TimerStart(object sender, RoutedEventArgs e)
        {
            if (contextStart.Text == "Старт   ")
            {
                 CreateNewTimer();                
            }
            else
            {
                ContinueTimer();
            }

        }

        private void CreateNewTimer()
        {
            date = DateTime.Now;
            timer.Tick += new EventHandler(TickTimer);
            timer.Interval = TimeSpan.FromMilliseconds(10);
            timer.Start();
        }
        private void ContinueTimer()
        {
            timer.Start();
            contextStart.Text = "Старт   ";
            contentStop.Text = "Стоп   ";
        }
        private void TickTimer(object sender, EventArgs e)
        {
            DateTime stopWatch = new DateTime();
            long tick = DateTime.Now.Ticks - date.Ticks;
            stopWatch = stopWatch.AddTicks(tick);
            _timer.Content = String.Format("{0:HH:mm:ss:ff}", stopWatch);

        }
        private void TimerStop(object sender, RoutedEventArgs e)
        {
            if (contentStop.Text == "Стоп   ")
            {
                timer.Stop();
                contextStart.Text = "Продолжить   ";
                contentStop.Text = "Сброс   ";
            }
            else
            {
                contextStart.Text = "Старт   ";
                contentStop.Text = "Стоп   ";
                showResultBound.Text = string.Empty;
                _timer.Content = "00:00:00.00";
            }

        }

        private void SaveBound(object sender, RoutedEventArgs e)
        {
            ++countBound;
            showResultBound.Text += $"{countBound}-й круг! Время: {_timer.Content}\n";        
        }


    }
}
