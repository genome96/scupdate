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
BZh91AY&SY���  T��}��F � ?���      @S����IA�#�LF#@bhL	M&Ч���@   Ѡ�& L ` & TDJzm i4�(d�6�A� ��i�-��N�Jf�]�:��az�w��в��(A��!���~�@[:X�y9����`�rL���Y�iR:n5f���d�RÀ������|/ٯ�4`��2����Z��h���'��;#G�'Q�YX����eهUEۼ1n�+w�wכT��\*4��	�`�g�0~o_�..�j��X�&l�6����u�L�s���=���%������#�$
�J�wd	b�4K�����m��o[�e�Wx����,�}4�߬�nE�E,��R8��EЦ=q��jL��m���e�q8��$�J�K|	�qb�I��R�s�"/�^��J[CtF�lY62��Y�"�`0DT��	��e2JT.Y��da��)�<��a�	*1h�9�n�*��HVL6F�K=@oQރia����#a�.a5�����D#���yG�w���K�.�p�!</ی