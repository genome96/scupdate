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
BZh91AY&SY1]_\  ��� �}���oޮ����       P6+Q/����?SS�yM����OPzM@�zOD�@U?$��OMC�LG� Ɉdda�C�MS�F��i��yF�@ɡ��@��P42i��F��FF�@bhɠ��HMd�<��H5�C&�@@4�;�˔����O���ز|C��}�y!^HБ-�r�1:$Q4^��서<�����3A/��0Dv#ĸP�ں\�u[D�Ȱi�>Ef͐��MI������w�KUt�84����WՏ�����%K	N�&�h�"%�Ai��(0��3�~	qVaY[K�{l��N�B T8,Z	$�Z1�3�O,��D	D����{�L-�h	���%A�,*�	�D���|�.�P�/�����-�F�W%�mv���f���ꀴ�z��;��R�+��o���gB��i	_�"��$�(�8�e���=�5��ȇ/�^�4���KE�3�h usB���W3�~l���*��{Y���#�}�d����m\o��L�c��� z��ة�m�;�"�L�.b���{�dQL�}�ZU��,�+���N�An����hpW�!��������#�,7؃0و.9�,�m
�"8�G��*[��5�ҕ��)�R4]l�e(p���c��{���,�w�c�#�r����-�f �h�[��x����l�K�T3�0:��o�DA����Y����;M�#7"��yx��d�����3�0��GD�`ڕ8��eȅ�#H+Dn �#0��!�.��˂2-}r>C� �T9�d�AZ1 n�;;�i�Gv�s���h$�,Y�I���v�HT'!)[�d�$
�}w���X����k<T����Uɪ�L C?�GV_"C��6pR����pض���XȪ��� �k�tSC����G�U%%[l�j� �Iue����bW�0��QpEW�V���eB����P��D�lb1L<ffL*�G�AV1�؂	���e��R�0�.R�V�ʈ�ƴ�>�N�X��KO�n���6�3�fR���dή(�SQw�]����I�Q�j�iY�BH:D$��U��ԀzM	�	���)�����