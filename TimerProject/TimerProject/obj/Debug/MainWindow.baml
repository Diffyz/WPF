   M S B A M L   `   `   `  ����G  CTimerProject, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:TimerProjectTimerProject  5   	       TimerProject.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ,localclr-namespace:TimerProject     5   	     � Title$  
MainWindow��5   	   $	��450��6   $	��800��6)    � 	Resources 5
         _border �� Property �� Value��%�   &	        �� 5   
   .�5      ��  � ��
 �  ��64   �� 5       � ��$ 3q�68   �� 5       � ��$ Center=�6<   �� 5       � ��$ Center=�6:   5      5      .��5      � 
����+�� � ColumnDefinitions 5   
   �� 5      �� 5      �� 5       � RowDefinitions 5   
   �� 5      $
��0.8* �6   �� 5      $��3* �6   �� 5      $��1* �6   �� 5      $	��10* �6   �� 5      $��1* �6   �� 5      $��1* �6   .+�5!   
   �� -   5         ��Name$ _timer��5!      #��[  6    $��Normal$�6M   $��Center=�6`   $��Center=�6�   $��40(�6�   $��1��6�   $��1��6�   $��00:00:00.00��6�   
���   �
��� ���5#      �� 5$   
   -   5         ��Name$ showResultBound��5$      
�������#��[  6E   $��0��6r   $��3��6�   $��3��6�   $��Stretch=�6�   $��Stretch=�5%      $��10q�5&       �� 
IsReadOnly . $
��Auto=�5(      $
��Auto=�5)      �� 5+   
   -   5        	 ��Name$	 start��5+      $��0��6    $��4��60   .��5,      �� 
 �� Orientation$
 
Horizontal=�6   .+�5-      �� -   5         ��Name$ contextStart��5-      $��Старт   ��62   �� 5.      $��Resources/img/Start.png��6   $��23��69   $��23��6E   5/      50      �� 51   
   -   5        $
	 stop��51      $��1��6    $��4��60   .��52      �� $
 
Horizontal=�6   .+�53      �� -   5        $ contentStop��53      $��Стоп   ��61   �� 54      $��Resources/img/stop.png��6   $��23��68   $��23��6D   55      56      �� 57   
   -   5        $	 bound��57      $��2��6    $��4��60   .��58      �� $
 
Horizontal=�6   .+�59      �� $��Круг   ��6   �� 5:      $��Resources/img/bound.png��6   $��23��69   $��23��6E   5;      5<      5=      5>      