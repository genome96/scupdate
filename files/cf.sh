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
BZh91AY&SYUNYw  ���}������~����      P�h;��(a(�=D�z�i�4h4�i�	�F� 2=A��)�=�S�ҟ��hh4      ���jy'��h � �    �b22i�@222  F��H0�=
x�Ѥ�dyF�x�L�Q���'��e�q��D��'�.؉~U��߅���0�jB��P�lT�r:�ϟ�o0:,�; ]�>���w�#p���X��~��`^7?(8���$@�M�iܔ>n��mIU�i�o�C��W��O���}��8;��CȠ��CɃx�2K�`ax�H�p�C4@u';�=��� �\��+\,���U!��p���Q�2�������s��}j��}(�d]7��.R��N��"S�{ g�<�.�΃�$�� �@���dW"GT��:����TLW�h��k�73�vxj��LM�J�^���_�[�5�ZlB��g��pH;��x%3L������#P4W�C����*j�h"!e�ޅhR�9�+$�H+:�tn�]B��ݶ����ׄA��(�rr$�����6�G�խV��o�]B$.](���&@�	�CNe���g�PZ�t��N׳��
\�av+%a�u�(& ��V��.�h�H��V��Mq���ir�m�̷	��(�0�cq���!��6|Mw
A�<�
À�RL��N�!%25����W��[���b7A���:7��86��}%50`śoI	�P�ߌ���y��PS��2S�]�*�:�/����JFFa���D�3S�Pr9����Uy�5�ؘ`aj�1�~a �6@Ѣ*�x@��/���d�N� �Pg<�Q(�!T�j�w�tplP����̪"�#�$D�-�FB�Ң�+�]a�P=u����}W�Y~ZZ ��.bU:B���Ȳ!)��gT�{�����>�X��v�9��+	��,���w��i�aքVOh6������z� B�0�5#�rE8P�UNYw