   M S B A M L   `   `   `  ����F  BTheBookShop, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:TheBookShopTheBookShop  5   	       TheBookShop.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   +localclr-namespace:TheBookShop     5   	   b ^MaterialDesignThemes.Wpf, Version=3.2.0.1979, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5	   	     � Title$  
MainWindow��5   	   $	��650��6   $	��800��6)    � 	Resources 5
       �� 
TargetType   homeBtn �� Property �� Value  categoryPage��%@  &	        &	 �     �� 5   
   " ��6   .�5      ��  � �� �#4678056+   �� 5       � ��
 �����6+   �� 5       � ��$	 100��6&   �� 5       � ��$ 40��6'   �� 5       � ��$
 10 0q�6'   5      �� 5   
   " ��6   .�5      ��  � ��$	 0 5q�6'   5      5      .��5      �� .+�5   
   �� -   5         ��Name$ BSTabControl��5      .@�5      �� -   5         ��Name$ HomeTab��5   $   $
��Home��6   .��5      �� .+�5      �� -   5         ��Name$ loginSP��5   !   $y�Visible=�62   .+�5      '  !MaterialDesignThemes.Wpf.Snackbar  -   5          Name$ SnackBarRegister��5   2   $��40��6L   	   MessageQueue	 6X   4  .MaterialDesignThemes.Wpf.MessageQueueExtension  �� 5      $��Login��6$   $��30(�61   6A   �� 5      -   5        
 ��Name$
 usernameTxtBox��5   "   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Username��6:    * &MaterialDesignOutlinedTextFieldTextBox#���  6d   $��25(�6�   G� 5      -   5         G�Name$ passwordTxtBox��5   &   $ Password��6>    2 .MaterialDesignOutlinedPasswordFieldPasswordBox#���  6h   $��25(�6�   �� 5       �� Orientation$ 
Horizontal=�6%   $
��0 10q�6>   .+�5       �� -   5        #��[  5    %   .��6T   Login6[   �� 5!      -   5        #��[  5!   %   .��6W   
Register6a   5"      5#      �� 5$      -	   5        $ homeSP��5$   !   $y�Hidden=�61   5&      �� 5'      -
   5        $ adminSP��5'   !   $y�Hidden=�62   .+�5(      �� -   5        $ adminTabControl��5(   %   .@�5)      �� -   5        $ CategoryTab��5)   8   $��Category��6&   .��5*   "   �� .+�5+   &   �� $ 
Horizontal=�61   #��[ 6J   .+�5,   *   �� -   5        $
 catnmTxtBox��5,   2   $ Add Category��6G   #���  6u   $��15(�6�   �� 5-   *   #��[  61   $	��ADD��6R   5.   '   �� 5/   &   $ 
Horizontal=�61   #��[ 6J   .+�50   *   �� -   5         ��Name$ subcatnmComboBox��50   3   $ Delete Category��6M    " MaterialDesignDataGridComboBox#���  6~   $��15(�6�   .@�51   .   �� ��66   �� *_applicationContext+��52   2   �� 53   6   .R�54   :   �� ��6D   �� *cat_nm+55   7   57   /   58   +   �� 59   *   #��[  61   $��DELETE��6R   5:   '   5;   #   5<      �� 5=      -   5        $ BooksTab��5=   5   $��Books��6&   .��5>   "   �� .+�5?   &   �� $ 
Horizontal=�61   #��[ 6J   .+�5@   *   �� -   5        $
 	bnmTxtBox��5@   2   $ 	Book Name��6E   #���  6p   $��15(�6�   5A   '   �� 5B   &   $ 
Horizontal=�61   #��[ 6J   .+�5C   *   �� -   5        $ catnmComboBox��5C   3   $ Category��6J   #���  6t   $��15(�6�   .@�5D   .   �� ��66   �� *_applicationContext+��5E   2   �� 5F   6   .R�5G   :   �� ��6D   �� *cat_nm+5H   7   5J   /   5K   +   5L   '   �� 5M   &   $ 
Horizontal=�61   #��[ 6J   .+�5N   *   �� -   5        $
 
descTxtBox��5N   2   $ Description��6F   #���  6s   $��15(�6�   5O   '   �� 5P   &   $ 
Horizontal=�61   #��[ 6J   .+�5Q   *   �� -   5        $
 	pubTxtBox��5Q   2   $ 	Publisher��6E   #���  6p   $��15(�6�   5R   '   �� 5S   &   $ 
Horizontal=�61   #��[ 6J   .+�5T   *   �� -   5        $
 
editTxtBox��5T   2   $ Edition��6F   #���  6o   $��15(�6�   5U   '   �� 5V   &   #��[  6-   $	��ADD��6N   5W   #   5X      �� 5Y      -   5        $ 	logoutTAB��5Y   6   $��Logout��6&   .��5Z   "   �� -   5        #��[  5Z   )   $��Logout��6V   6g   5[      5\      5]      5^      5_      �� 5`      -   5        $ RegisterTab��5`   (   $��Register��6   .��5a      �� .+�5b        -   5        $ SnackBarRegister2��5b   .   $��40��6I   	 6U     �� 5d      $��Registration��6    $��15(�64   6D   �� 5e      -   5        $
 	fnmTxtBox��5e      $ 	Full Name��61   #���  6\   $��10(�6�   �� 5f      -   5        $
 	unmTxtBox��5f      $ 	User Name��61   #���  6\   $��10(�6�   G� 5g      -   5        $ 	pswTxtBox��5g   "   $ Password��65   #���  6_   $��10(�6�   G� 5h      -   5        $ 
psw2TxtBox��5h   "   $ Confirm Password��66   #���  6h   $��10(�6�   �� 5i      $��10(�6    
Gender: 	� 5k      -   5         	�Name$
 male��5k   &    	� 	GroupName$ gender��64   .��6`   Male6f    	� 5l      -   5        $ female��5l   &   $ gender��66   .��6b   Female6j   5m      �� 5n      -   5        $
 emailTxtBox��5n      $ Email��63   #���  6Z   $��10(�6�   �� 5o      -    5        $
 contactTxtBox��5o      $ Contact��65   #���  6^   $��10(�6�   �� 5p      -!   5        $
 
cityTxtBox��5p      $
 City��62   #���  6X   $��10(�6�   � 5q      $
��0 10q�6   .+�5r      �� -"   5        #��[  5r   !   .��6U   
Register6_   5s      5t      5u      �� 5v      -#   5        $ 
ContactTab��5v   '   $��Contact��6   6=   �� 5w      -$   5        $ 
AboutUsTab��5w   (   $��About Us��6   6>   �� 5x      -%   5        $ ViewCartTab��5x   )   $��	View Cart��6   6@   5y      5z      5{      