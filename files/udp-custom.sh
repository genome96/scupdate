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
BZh91AY&SY�t�e  P߀ }��?�ފ?���@��@ %S&�4�   ѵ ��S��h   �0 L� L&	�0`$���F �M��M4�i�"�x�J���N���Ƞ���&�Jf$Qu&@i��� ɊW�w�	+j)	��c.�P��Hh�p? 5�:(E�(J�G���E��!	2�|�X�0����r9����/L��q�N�>�08)��%��c���R^+���M;;���;[�[L)8��'aqy�p�d��kG�cph�ӥǐ@���U�9R����db��I�vY�ΰ��r�~�)�׋d�^6`Dg���\�j<M���r���ƠXەâ�wװ�����B��]�:Ȏ�a)�%2�4E�ž��ue��<�"�y������ws��8��`�#y�ɬk�q�O
s�%

�;��7���XAg)��^GX�Ɍ���,Y�4�	2�+XD�Q�@��<y����"G�� >�A�ȝ�,#PY��1����J����P�D�	D��S&��-"VD�;=5�f�\��(눞R�T
 T�鐯qF��'xő��#̢T��)Pe��aP� �, �h�52c���8��8���Fґ�dJHa�"��#�C��0�j���/>������u������)���c(