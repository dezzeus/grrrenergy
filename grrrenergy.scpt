FasdUAS 1.101.10   ��   ��    k             l     ��  ��    H B Va salvato come applicazione con attiva l'opzione "non uscire"...     � 	 	 �   V a   s a l v a t o   c o m e   a p p l i c a z i o n e   c o n   a t t i v a   l ' o p z i o n e   " n o n   u s c i r e " . . .   
  
 i         I     ������
�� .miscidlenmbr    ��� null��  ��    k            Z       ����  l     ����  =        I     �������� 0 usingbattery usingBattery��  ��    m    ��
�� boovtrue��  ��    I   
 �������� 0 sendwarning sendWarning��  ��  ��  ��        l   ��  ��    9 3 Se non � strettamente positivo, controlla ogni 30s     �   f   S e   n o n   �   s t r e t t a m e n t e   p o s i t i v o ,   c o n t r o l l a   o g n i   3 0 s   ��  L       I    �������� 0 evaluatedelay evaluateDelay��  ��  ��        l     ��������  ��  ��         l     �� ! "��   ! \ V Fare un metodo RUN che verifica la presenza di GrowlNotify e, in caso di sua assenza,    " � # # �   F a r e   u n   m e t o d o   R U N   c h e   v e r i f i c a   l a   p r e s e n z a   d i   G r o w l N o t i f y   e ,   i n   c a s o   d i   s u a   a s s e n z a ,    $ % $ l     �� & '��   & Y S usa una finestra di dialog del Finder (ma solo in una fascia pi� ristretta di %) ?    ' � ( ( �   u s a   u n a   f i n e s t r a   d i   d i a l o g   d e l   F i n d e r   ( m a   s o l o   i n   u n a   f a s c i a   p i �   r i s t r e t t a   d i   % )   ? %  ) * ) l     ��������  ��  ��   *  + , + l     �� - .��   - ) # Informa sullo stato della batteria    . � / / F   I n f o r m a   s u l l o   s t a t o   d e l l a   b a t t e r i a ,  0 1 0 i     2 3 2 I      �������� 0 sendwarning sendWarning��  ��   3 k     = 4 4  5 6 5 r     	 7 8 7 c      9 : 9 I     �������� 0 batterylevel batteryLevel��  ��   : m    ��
�� 
nmbr 8 o      ���� 0 
percentage   6  ;�� ; Z   
 = < = >�� < l  
  ?���� ? A   
  @ A @ o   
 ���� 0 
percentage   A m    ���� 
��  ��   = k    ' B B  C D C r     E F E c     G H G I    �������� 0 timeleft timeLeft��  ��   H m    ��
�� 
TEXT F o      ����  0 temporimanente tempoRimanente D  I J I l   �� K L��   K   BASH: which growlnotify    L � M M 0   B A S H :   w h i c h   g r o w l n o t i f y J  N�� N I   '�� O��
�� .sysoexecTEXT���     TEXT O b    # P Q P b    ! R S R b     T U T b     V W V m     X X � Y Y H / u s r / l o c a l / b i n / g r o w l n o t i f y   B a t t e r i a   W o    ���� 0 
percentage   U m     Z Z � [ [  %   - m   ' S o     ����  0 temporimanente tempoRimanente Q m   ! " \ \ � ] ]  '��  ��   >  ^ _ ^ l  * - `���� ` A   * - a b a o   * +���� 0 
percentage   b m   + ,���� ��  ��   _  c�� c I  0 9�� d��
�� .sysoexecTEXT���     TEXT d b   0 5 e f e b   0 3 g h g m   0 1 i i � j j H / u s r / l o c a l / b i n / g r o w l n o t i f y   B a t t e r i a   h o   1 2���� 0 
percentage   f m   3 4 k k � l l  %   - m   ' '��  ��  ��  ��   1  m n m l     ��������  ��  ��   n  o p o l     �� q r��   q * $ Verifica che sia in uso la batteria    r � s s H   V e r i f i c a   c h e   s i a   i n   u s o   l a   b a t t e r i a p  t u t i     v w v I      �������� 0 usingbattery usingBattery��  ��   w k      x x  y z y r     
 { | { n      } ~ } 4    �� 
�� 
cwor  m    ����  ~ l     ����� � I    �� ���
�� .sysoexecTEXT���     TEXT � m      � � � � �  p m s e t   - g   p s��  ��  ��   | o      ���� 0 	powertype 	powerType z  ��� � Z     � ��� � � l    ����� � =     � � � o    ���� 0 	powertype 	powerType � m     � � � � �  A C��  ��   � L     � � m    ��
�� boovfals��   � L     � � m    ��
�� boovtrue��   u  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � 7 1 Restituisce la percentuale di batteria rimanente    � � � � b   R e s t i t u i s c e   l a   p e r c e n t u a l e   d i   b a t t e r i a   r i m a n e n t e �  � � � i     � � � I      �������� 0 batterylevel batteryLevel��  ��   � k      � �  � � � l     �� � ���   � m g return (do shell script "pmset -g ps | sed -n 's/.*[[:blank:]]+*\\(.*%\\).*/\\1/p' | sed -n 's/%//p'")    � � � � �   r e t u r n   ( d o   s h e l l   s c r i p t   " p m s e t   - g   p s   |   s e d   - n   ' s / . * [ [ : b l a n k : ] ] + * \ \ ( . * % \ \ ) . * / \ \ 1 / p '   |   s e d   - n   ' s / % / / p ' " ) �  � � � r     
 � � � n      � � � 4    �� �
�� 
cwor � m    ����  � l     ����� � I    �� ���
�� .sysoexecTEXT���     TEXT � m      � � � � �  p m s e t   - g   p s��  ��  ��   � o      ���� 	0 level   �  ��� � L     � � o    ���� 	0 level  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � : 4 Se presente, restituisce il tempo (stimato) rimasto    � � � � h   S e   p r e s e n t e ,   r e s t i t u i s c e   i l   t e m p o   ( s t i m a t o )   r i m a s t o �  � � � i     � � � I      �������� 0 timeleft timeLeft��  ��   � k      � �  � � � l     �� � ���   � = 7 C'� una funzione per determinare se ritorna qualcosa ?    � � � � n   C ' �   u n a   f u n z i o n e   p e r   d e t e r m i n a r e   s e   r i t o r n a   q u a l c o s a   ? �  ��� � L      � � l     ����� � I    �� ���
�� .sysoexecTEXT���     TEXT � m      � � � � � � p m s e t   - g   p s   |   s e d   - n   ' s / . * [ [ : b l a n k : ] ] + * \ ( [ 0 - 9 ] * : [ 0 - 9 ] * \ ) . * / \ 1 / p '��  ��  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � 7 1 Determina ogni quanto effettuare il controllo...    � � � � b   D e t e r m i n a   o g n i   q u a n t o   e f f e t t u a r e   i l   c o n t r o l l o . . . �  ��� � i     � � � I      �������� 0 evaluatedelay evaluateDelay��  ��   � Z     | � ��� � � l     ����� � =     � � � I     �������� 0 usingbattery usingBattery��  ��   � m    �
� boovtrue��  ��   � k   
 w � �  � � � l  
 
�~ � ��~   � S M Peukert's law ? Posso recuperare i mAh e, non so come, i Watt di utilizzo...    � � � � �   P e u k e r t ' s   l a w   ?   P o s s o   r e c u p e r a r e   i   m A h   e ,   n o n   s o   c o m e ,   i   W a t t   d i   u t i l i z z o . . . �  � � � l  
 
�} � ��}   � ( " Per il momento uso quello che ho:    � � � � D   P e r   i l   m o m e n t o   u s o   q u e l l o   c h e   h o : �  � � � r   
  � � � c   
  � � � I   
 �|�{�z�| 0 timeleft timeLeft�{  �z   � m    �y
�y 
TEXT � o      �x�x 0 strtime strTime �  � � � l   �w � ��w   �   Metodo "empty" ?    � � � � "   M e t o d o   " e m p t y "   ? �  ��v � Z    w � ��u � � l    ��t�s � =     � � � o    �r�r 0 strtime strTime � m     � � � � �  �t  �s   � k     � �  � � � l   �q � ��q   � 8 2 Nel caso in cui non sia ancora stato calcolato...    � � � � d   N e l   c a s o   i n   c u i   n o n   s i a   a n c o r a   s t a t o   c a l c o l a t o . . . �  ��p � L     � � m    �o�o <�p  �u   � k    w � �  � � � r    , � � � c    *   l   (�n�m I   (�l�k
�l .sysoexecTEXT���     TEXT b    $ b    " m      �		 
 e c h o   o     !�j�j 0 strtime strTime m   " #

 � 0   |   s e d   - n   ' s / [ 0 - 9 ] * : / / p '�k  �n  �m   m   ( )�i
�i 
nmbr � o      �h�h 0 timeinminutes timeInMinutes �  r   - : c   - 8 l  - 6�g�f I  - 6�e�d
�e .sysoexecTEXT���     TEXT b   - 2 b   - 0 m   - . � 
 e c h o   o   . /�c�c 0 strtime strTime m   0 1 � 0   |   s e d   - n   ' s / : [ 0 - 9 ] * / / p '�d  �g  �f   m   6 7�b
�b 
nmbr o      �a�a 0 timeinhours timeInHours  r   ; D c   ; B !  I   ; @�`�_�^�` 0 batterylevel batteryLevel�_  �^  ! m   @ A�]
�] 
nmbr o      �\�\ (0 actualbatterylevel actualBatteryLevel "#" l  E E�[$%�[  $ [ U Potrei fare una formula che tiene anche conto dello stato della batteria (capacita')   % �&& �   P o t r e i   f a r e   u n a   f o r m u l a   c h e   t i e n e   a n c h e   c o n t o   d e l l o   s t a t o   d e l l a   b a t t e r i a   ( c a p a c i t a ' )# '(' r   E P)*) l  E N+�Z�Y+ ^   E N,-, l  E L.�X�W. ]   E L/0/ l  E J1�V�U1 [   E J232 o   E F�T�T 0 timeinminutes timeInMinutes3 l  F I4�S�R4 ]   F I565 o   F G�Q�Q 0 timeinhours timeInHours6 m   G H�P�P <�S  �R  �V  �U  0 m   J K�O�O <�X  �W  - o   L M�N�N (0 actualbatterylevel actualBatteryLevel�Z  �Y  * o      �M�M  0 percentagetime percentageTime( 787 l  Q Q�L9:�L  9 $  Elimina la parte frazionaria:   : �;; <   E l i m i n a   l a   p a r t e   f r a z i o n a r i a :8 <=< l  Q Q�K>?�K  > Z T Non sono sicuro che funzioni sempre visto che in un test mi ha sputato fuori 59,25!   ? �@@ �   N o n   s o n o   s i c u r o   c h e   f u n z i o n i   s e m p r e   v i s t o   c h e   i n   u n   t e s t   m i   h a   s p u t a t o   f u o r i   5 9 , 2 5 != ABA l  Q Q�JCD�J  C 0 * round percentageTime rounding toward zero   D �EE T   r o u n d   p e r c e n t a g e T i m e   r o u n d i n g   t o w a r d   z e r oB FGF I  Q X�IHI
�I .sysorondlong        doubH o   Q R�H�H  0 percentagetime percentageTimeI �GJ�F
�G 
direJ m   S T�E
�E olierndS�F  G K�DK Z   Y wLMNOL l  Y \P�C�BP B   Y \QRQ o   Y Z�A�A (0 actualbatterylevel actualBatteryLevelR m   Z [�@�@ 
�C  �B  M k   _ aSS TUT l  _ _�?VW�?  V ' ! Fino al 10%, controllare ogni 1%   W �XX B   F i n o   a l   1 0 % ,   c o n t r o l l a r e   o g n i   1 %U Y�>Y L   _ aZZ o   _ `�=�=  0 percentagetime percentageTime�>  N [\[ l  d i]�<�;] B   d i^_^ o   d e�:�: (0 actualbatterylevel actualBatteryLevel_ m   e h�9�9 �<  �;  \ `�8` k   l paa bcb l  l l�7de�7  d + % Fino al 20%, controllare ogni 3-4% ?   e �ff J   F i n o   a l   2 0 % ,   c o n t r o l l a r e   o g n i   3 - 4 %   ?c g�6g L   l phh l  l oi�5�4i ]   l ojkj o   l m�3�3  0 percentagetime percentageTimek m   m n�2�2 �5  �4  �6  �8  O k   s wll mnm l  s s�1op�1  o   Oltre, ogni 10%   p �qq     O l t r e ,   o g n i   1 0 %n r�0r L   s wss l  s vt�/�.t ]   s vuvu o   s t�-�-  0 percentagetime percentageTimev m   t u�,�, 
�/  �.  �0  �D  �v  ��   � k   z |ww xyx l  z z�+z{�+  z   Controlla ogni minuto   { �|| ,   C o n t r o l l a   o g n i   m i n u t oy }�*} L   z |~~ m   z {�)�) <�*  ��       �(�������(   �'�&�%�$�#�"
�' .miscidlenmbr    ��� null�& 0 sendwarning sendWarning�% 0 usingbattery usingBattery�$ 0 batterylevel batteryLevel�# 0 timeleft timeLeft�" 0 evaluatedelay evaluateDelay� �! � ����
�! .miscidlenmbr    ��� null�   �  �  � ���� 0 usingbattery usingBattery� 0 sendwarning sendWarning� 0 evaluatedelay evaluateDelay� *j+  e  
*j+ Y hO*j+ � � 3������ 0 sendwarning sendWarning�  �  � ��� 0 
percentage  �  0 temporimanente tempoRimanente� ����� X Z \�� i k� 0 batterylevel batteryLevel
� 
nmbr� 
� 0 timeleft timeLeft
� 
TEXT
� .sysoexecTEXT���     TEXT� � >*j+  �&E�O�� *j+ �&E�O�%�%�%�%j Y �� �%�%j Y h� � w�����
� 0 usingbattery usingBattery�  �  � �	�	 0 	powertype 	powerType�  ���� �
� .sysoexecTEXT���     TEXT
� 
cwor� �
 �j ��/E�O��  fY e� � ������� 0 batterylevel batteryLevel�  �  � �� 	0 level  �  �� ����
�  .sysoexecTEXT���     TEXT
�� 
cwor�� � �j ��/E�O�� �� ����������� 0 timeleft timeLeft��  ��  �  �  ���
�� .sysoexecTEXT���     TEXT�� �j � �� ����������� 0 evaluatedelay evaluateDelay��  ��  � ������������ 0 strtime strTime�� 0 timeinminutes timeInMinutes�� 0 timeinhours timeInHours�� (0 actualbatterylevel actualBatteryLevel��  0 percentagetime percentageTime� ������ ���
������������������ 0 usingbattery usingBattery�� 0 timeleft timeLeft
�� 
TEXT�� <
�� .sysoexecTEXT���     TEXT
�� 
nmbr�� 0 batterylevel batteryLevel
�� 
dire
�� olierndS
�� .sysorondlong        doub�� 
�� �� }*j+  e  r*j+ �&E�O��  �Y Z�%�%j �&E�O�%�%j �&E�O*j+ �&E�O��� � �!E�O���l O�� �Y �a  	�m Y �� Y � ascr  ��ޭ