#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo Cannot decompress $0; exit 1
fi; exit $res
BZh91AY&SY�B�R V�x0 }���%ގ����      `N>�o�@l4�� a���$�a=S�hC� ��z@  �hi���FA�����2h&F!�4��#CL��##C 14d�L�C	��d1��CM ���h4&OS!��  @  �A��!�h�a	�<�F�i�346�4mM<��"BQ�1R'P�pH=���FT�@S��Uܬ���ÌF�O@����v���҆�D2QM'�捙�cȅ�9u�8���/i�]��� �NV��{�U7�'C���I	���
H!���Ղ���i�}�����:5`�7�Q�s�(��L��isŌf�nŇ'i�Xى41�なV_�#X�z��SX���z�$��`P�R'�`�`�`m��%M"2h�2�k+h(�e��<Yp+S�}P�Y����ӈ��GsN1q�{�s.������)��A�iK�|�R��qK�?c�"�	$�eu	�N;o��+�]�$Ą羚);BJ1UR�`	 BYY?G� #��-���#�Ѓ^>�v(Eq�\[���bR^9�>`�67(�:�lm�m���*#b�m	�N��1#K" ,m�Z�	4����4����6���u�#�0=[��&D�]3:êl� 1��|�������T�dL�`{ V������J/*'� �0;�O��-�����<�l�0A�(V�d��Ǡ6Y]��Zo�md�)ffd���I�D�[E=�ޢB���Z�̘�\`VJE�}֎��)�'h@G��z
A}� 8v�ϯ�§N'���T�a>F[b���TI�>"{Mh%I����=�	X80�&�BE��Q�Z�.HT�!�#<��Y	��;P�-� ���ϙ�nB��qPc����$#�~�I� �$7�Fr������T�)P�$;������`����J�}�
���&����W�)��yn7�"�ŗ�]������ڬV�a��3D}�Xo;��?�G�h�f��[�M��a��H�ރj9,b�_`Y�C�R��@3�Ox��shAh��1�j�:��=M ���k�&#=�J��$��)ā)%}!D����X��mE&.�)����E������ �G|�o�৘�~6������n��w|~�}����w�f��b���zjA�d�K<���&&�H��f�́��\�뼹��� ����1��-��(�	 }�$A n̙и}��4\�%��_ϗ2;�Ӌ���]a�̴	Z&p���|Z4���c��ϛ�$#TXb���vo\{��.{G�QX�A�䅙�>#,"EfY�)W�Y����:���Z��#j����0R)	��*��#�����"�"� D.l3�	��à0=VS����
)0��>v�e����U���ˢ�����-���F �N�e(�ڒb�d')J%��I�����^'�t�u���)�@ʞ{i��դ������X��
$$o� 5ci �QU �*@��Z7	TN�{{ph1��)7�e��~��!+-�aNb�s&xghq��V� Iz��_�]V�i��,U*���ZC��)N	B�ɉ���w�a�������p��M�k*�b���$$�9��\�G�����ZS���xu�\��c/��:!+/�w�O����e.�+v�f��;Ru��z.�d�[�/9�F���%yd��#!ֱv&{�H�����B�RC�5�9�af8�}$�H����
F3�*��G�Tz��26n*R�c���*�T
KP�M��F������+��Շq.`+���i�\����dTN�$O�b��z�E:�kTU$#�M�{��0⅚���Q.�P;�6`�w$S�	
t-� 