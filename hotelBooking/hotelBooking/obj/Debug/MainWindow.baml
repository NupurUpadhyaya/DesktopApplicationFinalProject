   M S B A M L   `   `   `  ????G  ChotelBooking, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:hotelBookinghotelBooking  5   	       hotelBooking.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ,localclr-namespace:hotelBooking     5   	     ? Title$  
MainWindow??5   	   $	??600??6   $	??800??6)   .??5	      ? $??
10,10,0,-6q?6   .+?5
   
   ?? -   5        $??Reserve??5
      $
??Left=?6#   $??47??6>   $??
68,290,0,0q?6J   $	??Top=?6^   $	??140??6v   6?   ?? 5   
   -   5         ??Name$ txtFullName??5      $
??Left=?6'   $??
107,41,0,0q?6B    ?? TextWrapping$
 Wrap=?6V   $?? ??6j   $	??Top=?6r   $	??120??6?   ?? 5   
   $??
Full Name:??6   $
??Left=?6%   $??	26,37,0,0q?6@   $	??Top=?6S   ?? 5   
   $??Address:??6   $
??Left=?6#   $??	40,68,0,0q?6>   $	??Top=?6Q   $??49??6i   ?? 5   
   -   5        $ 
txtAddress??5      $
??Left=?6&   $??
107,72,0,0q?6A   $
 Wrap=?6U   $?? ??6i   $	??Top=?6q   $	??120??6?   ?? 5   
   $??Email:??6   $
??Left=?6!   $??	46,99,0,0q?6<   $	??Top=?6O   ?? 5   
   -   5        $ txtEmail??5      $
??Left=?6$   $??107,107,0,0q?6?   $
 Wrap=?6T   $?? ??6h   $	??Top=?6p   $	??120??6?   ?? 5   
   $??	Phone No:??6   $
??Left=?6$   $??
32,134,0,0q?6?   $	??Top=?6S   ?? 5   
   -   5        $ txtPhNo??5      $
??Left=?6#   $??107,138,0,0q?6>   $
 Wrap=?6S   $?? ??6g   $	??Top=?6o   $	??120??6?   ?? 5   
   $??Book Hotel:??6   $
??Left=?6&   $??
29,206,0,0q?6A   $	??Top=?6U    J? RenderTransformOrigin$ -0.429,0.518&?6m   ?? 5   
   -   5        $ 
txtHotelID??5      $
??Left=?6&   $??107,210,0,0q?6A   $
 Wrap=?6V   $?? ??6j   $	??Top=?6r   $	??120??6?   ?? 5   
   $??Credit Card:??6   $
??Left=?6'   $??
26,246,0,0q?6B   $	??Top=?6V   $ 
0.097,0.14&?6n   $??27??6?   $??94??6?   ?? 5   
   -   5        $
??Left=?5      $??107,246,0,0q?6-   $
 Wrap=?6B   $?? ??6V   $	??Top=?6^   $	??120??6v   $??20??6?   $ 0.5,0.5&?6?   .??6?   z?5      V? 5      .~?5      ??  ?? ScaleY$ 1Q?6%   ?? 5      ?? 5      T? 5      5      .??5   '   5      ?? 5    
   -   5        $ txtDateFrom??5       $
??Left=?6'   $??107,177,0,0q?6B   $
 Wrap=?6W   $?? ??6k   $	??Top=?6s   $??60??6?   $??18??6?   ?? 5!   
   -	   5        $ 	txtDateTo??5!      $
??Left=?6%   $??197,177,0,0q?6@   $
 Wrap=?6U   $?? ??6i   $	??Top=?6q   $??72??6?   $ -0.833,0.141&?6?   ?? 5"   
   $??From:??6   $
??Left=?6!   $??
54,173,0,0q?6<   $	??Top=?6P   ?? 5#   
   $	??To:??6   $
??Left=?6   $??167,173,0,0q?6:   $	??Top=?6O   ?? 5$   
   $??Show All Hotels??6   $
??Left=?6+   $??
395,22,0,0q?6F   $	??Top=?6Z   $	??150??6r   &   System.Windows.Controls.DataGrid  5%   
   -
   5        $??299,72,32,381q?5%   >   6U   ?? 5&   
   -   5        $ txtBookingStatus??5&      $y?Hidden=?6,   $
??Left=?6@   $??
32,356,0,0q?6[   $
 Wrap=?6o   $??TextBox??6?   $	??Top=?6?   $	??189??6?   $??23??6?   5(      5)      