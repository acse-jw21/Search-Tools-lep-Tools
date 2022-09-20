FasdUAS 1.101.10   ��   ��    k             l      ��  ��   ��
	Script to run program PHREEQC
	
	Author: Brian Marshall
	
	Date: 26 March 2018
	
	Revision: 2.2
	
	
	Main variables:
	topdir: path to main phreeqc folder
	dbdir: path to database folder
	fi, fo, fdb: input, output, and database files
	Note that variable suffixes s and u refer to string and unix file specifiers
	editFile: file containing name of text editor application
	editApp: name of text editor application
	
     � 	 	B 
 	 S c r i p t   t o   r u n   p r o g r a m   P H R E E Q C 
 	 
 	 A u t h o r :   B r i a n   M a r s h a l l 
 	 
 	 D a t e :   2 6   M a r c h   2 0 1 8 
 	 
 	 R e v i s i o n :   2 . 2 
 	 
 	 
 	 M a i n   v a r i a b l e s : 
 	 t o p d i r :   p a t h   t o   m a i n   p h r e e q c   f o l d e r 
 	 d b d i r :   p a t h   t o   d a t a b a s e   f o l d e r 
 	 f i ,   f o ,   f d b :   i n p u t ,   o u t p u t ,   a n d   d a t a b a s e   f i l e s 
 	 N o t e   t h a t   v a r i a b l e   s u f f i x e s   s   a n d   u   r e f e r   t o   s t r i n g   a n d   u n i x   f i l e   s p e c i f i e r s 
 	 e d i t F i l e :   f i l e   c o n t a i n i n g   n a m e   o f   t e x t   e d i t o r   a p p l i c a t i o n 
 	 e d i t A p p :   n a m e   o f   t e x t   e d i t o r   a p p l i c a t i o n 
 	 
   
  
 l     ��  ��     get the path variables     �   , g e t   t h e   p a t h   v a r i a b l e s      l         r         1     ��
�� 
txdl  o      ���� 0 oldtid oldTID   save current delimiters     �   . s a v e   c u r r e n t   d e l i m i t e r s      l    ����  r        m       �    :  1    
��
�� 
txdl��  ��        l     ��   !��      get directories    ! � " "  g e t   d i r e c t o r i e s   # $ # l   A %���� % O    A & ' & k    @ ( (  ) * ) r     + , + n     - . - m    ��
�� 
ctnr . l    /���� / I   �� 0��
�� .earsffdralis        afdr 0  f    ��  ��  ��   , o      ���� 
0 topdir   *  1 2 1 r     3 4 3 c     5 6 5 o    ���� 
0 topdir   6 m    ��
�� 
TEXT 4 o      ���� 0 topdirs   2  7 8 7 r     ' 9 : 9 n     % ; < ; 1   # %��
�� 
strq < l    # =���� = n     # > ? > 1   ! #��
�� 
psxp ? o     !���� 0 topdirs  ��  ��   : o      ���� 0 topdiru   8  @�� @ Q   ( @ A B C A r   + 3 D E D c   + 1 F G F n   + / H I H 4   , /�� J
�� 
cfol J m   - . K K � L L  d a t a b a s e I o   + ,���� 
0 topdir   G m   / 0��
�� 
alis E o      ���� 	0 dbdir   B R      ������
�� .ascrerr ****      � ****��  ��   C r   ; @ M N M c   ; > O P O o   ; <���� 
0 topdir   P m   < =��
�� 
alis N o      ���� 	0 dbdir  ��   ' m     Q Q�                                                                                  MACS  alis    t  Macintosh HD               �qE8H+     (
Finder.app                                                      �1�Gޞ        ����  	                CoreServices    �q��      �HA       (   '   &  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  ��  ��   $  R S R l     �� T U��   T  prompt for the input file    U � V V 2 p r o m p t   f o r   t h e   i n p u t   f i l e S  W X W l  B a Y���� Y r   B a Z [ Z I  B ]���� \
�� .sysostdfalis    ��� null��   \ �� ] ^
�� 
prmp ] m   F I _ _ � ` ` 8 C h o o s e   a   P H R E E Q C   i n p u t   f i l e : ^ �� a b
�� 
dflc a l  L S c���� c I  L S�� d��
�� .earsffdralis        afdr d m   L O��
�� afdrdocs��  ��  ��   b �� e��
�� 
lfiv e m   V W��
�� boovfals��   [ o      ���� 0 fi  ��  ��   X  f g f l  b m h���� h r   b m i j i n   b i k l k 1   g i��
�� 
strq l l  b g m���� m n   b g n o n 1   e g��
�� 
psxp o o   b e���� 0 fi  ��  ��   j o      ���� 0 fiu  ��  ��   g  p q p l  n w r���� r r   n w s t s c   n s u v u o   n q���� 0 fi   v m   q r��
�� 
TEXT t o      ���� 0 fis  ��  ��   q  w x w l     �� y z��   y ( "get parent directory of input file    z � { { D g e t   p a r e n t   d i r e c t o r y   o f   i n p u t   f i l e x  | } | l  x � ~���� ~ O   x �  �  r   | � � � � n   | � � � � m    ���
�� 
ctnr � o   | ���� 0 fi   � o      ���� 	0 fidir   � m   x y � ��                                                                                  MACS  alis    t  Macintosh HD               �qE8H+     (
Finder.app                                                      �1�Gޞ        ����  	                CoreServices    �q��      �HA       (   '   &  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  ��  ��   }  � � � l     �� � ���   � ) #create default name for output file    � � � � F c r e a t e   d e f a u l t   n a m e   f o r   o u t p u t   f i l e �  � � � l  � � � � � � r   � � � � � n   � � � � � 2  � ���
�� 
citm � o   � ����� 0 fis   � o      ���� 0 	pathparts   �  break into list    � � � �  b r e a k   i n t o   l i s t �  � � � l  � � � � � � r   � � � � � n   � � � � � 4  � ��� �
�� 
cobj � m   � ������� � o   � ����� 0 	pathparts   � o      ���� 	0 fname   �  filename is last item    � � � � * f i l e n a m e   i s   l a s t   i t e m �  � � � l  � � ����� � r   � � � � � b   � � � � � o   � ����� 	0 fname   � m   � � � � � � �  . o u t � o      ���� 
0 fnameo  ��  ��   �  � � � l     �� � ���   � # prompt for saving output file    � � � � : p r o m p t   f o r   s a v i n g   o u t p u t   f i l e �  � � � l  � � ����� � r   � � � � � I  � ����� �
�� .sysonwflfile    ��� null��   � �� � �
�� 
prmt � m   � � � � � � �  S a v e   o u t p u t   a s : � �� � �
�� 
dfnm � o   � ����� 
0 fnameo   � �� � �
�� 
dflc � c   � � � � � o   � ����� 	0 fidir   � m   � ���
�� 
alis � �� ����� 0 
invisibles   � m   � ���
�� boovfals��   � o      ���� 0 fo  ��  ��   �  � � � l  � � ����� � r   � � � � � n   � � � � � 1   � ���
�� 
strq � l  � � ����� � n   � � � � � 1   � ���
�� 
psxp � o   � ����� 0 fo  ��  ��   � o      ���� 0 fou  ��  ��   �  � � � l     �� � ���   �  prompt for database file    � � � � 0 p r o m p t   f o r   d a t a b a s e   f i l e �  � � � l  � � ����� � r   � � � � � I  � ����� �
�� .sysostdfalis    ��� null��   � �� � �
�� 
prmp � m   � � � � � � � . C h o o s e   d a t a b a s e   t o   u s e : � �� � �
�� 
dflc � o   � ����� 	0 dbdir   � �� ���
�� 
lfiv � m   � ���
�� boovfals��   � o      ���� 0 fdb  ��  ��   �  � � � l  � ����� � r   � � � � n   � � � � � 1   � ���
�� 
strq � l  � � ����� � n   � � � � � 1   � ���
�� 
psxp � o   � ����� 0 fdb  ��  ��   � o      ���� 0 fdbu  ��  ��   �  � � � l  � � � � r   � � � o  ���� 0 oldtid oldTID � 1  �
� 
txdl � ! restore original delimiters    � � � � 6 r e s t o r e   o r i g i n a l   d e l i m i t e r s �  � � � l     �~ � ��~   � 9 3get location of PHREEQC executable by relative path    � � � � f g e t   l o c a t i o n   o f   P H R E E Q C   e x e c u t a b l e   b y   r e l a t i v e   p a t h �  � � � l  ��}�| � r   � � � b   � � � o  	�{�{ 0 topdirs   � m  	 � � � � �  b i n : p h r e e q c � o      �z�z 0 command  �}  �|   �  � � � l  ��y�x � r   � � � n     1  �w
�w 
strq l �v�u n   1  �t
�t 
psxp o  �s�s 0 command  �v  �u   � o      �r�r 0 commandu  �y  �x   �  l     �q�q    form the command line    �		 * f o r m   t h e   c o m m a n d   l i n e 

 l G�p�o r  G b  C b  ? b  ; b  7 b  3 b  / b  + b  ' b  #  m  !!! �""  c d    o  !"�n�n 0 topdiru   m  #&## �$$  ; o  '*�m�m 0 commandu   m  +.%% �&&    o  /2�l�l 0 fiu   m  36'' �((    o  7:�k�k 0 fou   m  ;>)) �**    o  ?B�j�j 0 fdbu   o      �i�i 0 s  �p  �o   +,+ l     �h-.�h  - / )send the command to the shell as a script   . �// R s e n d   t h e   c o m m a n d   t o   t h e   s h e l l   a s   a   s c r i p t, 010 l HO2�g�f2 I HO�e3�d
�e .sysoexecTEXT���     TEXT3 o  HK�c�c 0 s  �d  �g  �f  1 454 l     �b67�b  6 ' !open output file in a text editor   7 �88 B o p e n   o u t p u t   f i l e   i n   a   t e x t   e d i t o r5 9:9 l P�;�a�`; Q  P�<=>< k  S}?? @A@ r  SeBCB I Sa�_D�^
�_ .rdwropenshor       fileD 4  S]�]E
�] 
fileE l W\F�\�[F b  W\GHG o  WX�Z�Z 0 topdirs  H m  X[II �JJ  e d i t o r . t x t�\  �[  �^  C o      �Y�Y 0 editfile editFileA KLK r  fuMNM I fq�XOP
�X .rdwrread****        ****O o  fi�W�W 0 editfile editFileP �VQ�U
�V 
as  Q m  lm�T
�T 
TEXT�U  N o      �S�S 0 thedata theDataL R�RR I v}�QS�P
�Q .rdwrclosnull���     ****S o  vy�O�O 0 editfile editFile�P  �R  = R      �N�M�L
�N .ascrerr ****      � ****�M  �L  > r  ��TUT m  ��VV �WW  T e x t E d i t . A p pU o      �K�K 0 thedata theData�a  �`  : XYX l ��Z�J�IZ r  ��[\[ o  ���H�H 0 thedata theData\ o      �G�G 0 editapp editApp�J  �I  Y ]^] l ��_�F�E_ O  ��`a` k  ��bb cdc I ���D�C�B
�D .miscactvnull��� ��� null�C  �B  d e�Ae I ���@f�?
�@ .aevtodocnull  �    alisf o  ���>�> 0 fo  �?  �A  a 4  ���=g
�= 
cappg o  ���<�< 0 editapp editApp�F  �E  ^ h�;h l     �:�9�8�:  �9  �8  �;       �7ij�7  i �6
�6 .aevtoappnull  �   � ****j �5k�4�3lm�2
�5 .aevtoappnull  �   � ****k k    �nn  oo  pp  #qq  Wrr  fss  ptt  |uu  �vv  �ww  �xx  �yy  �zz  �{{  �||  �}}  �~~  � 
�� 0�� 9�� X�� ]�1�1  �4  �3  l  m E�0�/  Q�.�-�,�+�*�)�(�'�& K�%�$�#�"�! _� ������������ ��� ������� ���
 ��	�!#%')���I����� ��V��������
�0 
txdl�/ 0 oldtid oldTID
�. .earsffdralis        afdr
�- 
ctnr�, 
0 topdir  
�+ 
TEXT�* 0 topdirs  
�) 
psxp
�( 
strq�' 0 topdiru  
�& 
cfol
�% 
alis�$ 	0 dbdir  �#  �"  
�! 
prmp
�  
dflc
� afdrdocs
� 
lfiv� 
� .sysostdfalis    ��� null� 0 fi  � 0 fiu  � 0 fis  � 	0 fidir  
� 
citm� 0 	pathparts  
� 
cobj� 	0 fname  � 
0 fnameo  
� 
prmt
� 
dfnm� 0 
invisibles  � 
� .sysonwflfile    ��� null� 0 fo  � 0 fou  � 0 fdb  �
 0 fdbu  �	 0 command  � 0 commandu  � 0 s  
� .sysoexecTEXT���     TEXT
� 
file
� .rdwropenshor       file� 0 editfile editFile
� 
as  
� .rdwrread****        ****�  0 thedata theData
�� .rdwrclosnull���     ****�� 0 editapp editApp
�� 
capp
�� .miscactvnull��� ��� null
�� .aevtodocnull  �    alis�2�*�,E�O�*�,FO� 2)j �,E�O��&E�O��,�,E�O ���/�&E�W X  ��&E�UO*a a a a j a fa  E` O_ �,�,E` O_ �&E` O� _ �,E` UO_ a -E` O_ a i/E`  O_  a !%E` "O*a #a $a %_ "a _ �&a &fa ' (E` )O_ )�,�,E` *O*a a +a �a fa  E` ,O_ ,�,�,E` -O�*�,FO�a .%E` /O_ /�,�,E` 0Oa 1�%a 2%_ 0%a 3%_ %a 4%_ *%a 5%_ -%E` 6O_ 6j 7O /*a 8�a 9%/j :E` ;O_ ;a <�l =E` >O_ ;j ?W X  a @E` >O_ >E` AO*a B_ A/ *j CO_ )j DU ascr  ��ޭ