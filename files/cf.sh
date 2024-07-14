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
BZh91AY&SY;�m�  �_� }������~����POP�@�S�C$6�&��j��2i�=Ph�ѐ�@h0�#LL��#@�La4�ѣ�b4�ɉ��4�d��@h0�#LL��#@�L�	�0�&�jM4�#i=1F�SОH{T��?T���w`���|�L.�FH�x�sڶ=���1+���H�]����(.d[s���V�^���R�$���*�ĎZ��t�8iV���	X`kS<��I�1��^pIs-Ǳ��\�i�uGC�=���h.qMR酲��y���%�2��E��� ���+Y0`�;��*�4����^���u���n�$g�K��"��l๓��\�
��D��կ�
��B[����(l6�w���T�Û��pLS�o$��d��#i�Ea4U�D<�*څUu��G�>������=�/�rN����B!���+�# �,x@<�E4�gQ���%f�!@B�8��H���f�)�B�����y�nN�.�߃>��z�m�+�uA�����n�E T����j��Z��ʴӬ�b �q���CI�D�g�_0X�ڬ��8松tw�T�Cv,E��Nx�a��7��qh�Z0`(�}����%��X����-
�˚��q*`21|� ��42�C��Ja3����.|�")l���}.��qP�0t�!��hk�w��������] ����捊:�{PzplS����=?h^Kc����ς._���N�n����,�B�v�a�g��B�HT�lA�#ᄞ���'q�Z�Y�qSh����Ͽ0Y����8b3�*��T�R��[�?�ܑN$�[a�