#!/bin/bash
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
BZh91AY&SY}���  �_�Tp}���~nގ����       @�T�`H4"�7�hmz��4��4�@�S@��J44�S�G����  � @��4h���M d41 h�h`��	$!2x�FD�H���h�d4h�dɣ���fi9ˆ����<��ӆׅ�Y�Yu�Q�_Ѿ���vl�`n�ih�$
d3	?�����OaDq[�K���r�r�(�o���ÿ��Γ�{Gg��(�uG�ň��B���| �,t�6W�h9�K��x�m�*l2Om�n�Ճ$hA$G�H�&\j�]6���\���k�W!h0@g�Ic7�l� r�:�HA�\n&�������]�Ca��k���PxՎf��H/�A:I�S!�C�u�}2��E�5bgR>�Z��zL��鬜����|Y�ts�Cy�q��<�!�:��A�(����wFq��c��|��|MZ��B�28�AJ�9�A�>Y��^�y��R�A���	mǷ�)�Ĉ���}}��p�+r��<z�eӸ�2:
]�3SHkV�9Ǿ*���\7�X�0�Ի�U󪢧Ɗk%��ӯx�������Ř��(��
��4B�ɡ=��Iʲ�4�ʦ��ۈp�p�6�i'`���&�v �d��h���EQ�C�.��ӱ��]��J9�p����t��Lj���W����k%o����'UP�Ħ�������g���B�
@K�$�|8)<j��Pd�DP"8�-�JOC& ��Lמ�n\g�"�!�2�p�@�h�%�(�]�5$�/za����)��uW0