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
BZh91AY&SY�� _�t0�����������b�� 0 `(�`}������rɯv�Ow���__>��n|���v�N#�����+o�Ҟ2j�Z@�:]��Om�j�M�Eۑ�gj8WT^�tT{g[d�N�WE�1N��0� A&6�ɡ4�f*{AOѢ����!=OS�F  ���S�hʛA4��=@� 4�hzA�h @�T��$��<
z�z� ���   &�D�SL)��IꞦ�$ڍ4i�M�h    �D	�L!���`��jz�қOB��&�=S�iP�boT$ b1S�T�4j�<��h�(�C�4a ��ՒBUE�4hD �"(�z>�r�����s�1�2Y������_ە~K�:LG�gL*c��m����)ăL�%��_ػ0��Ď���T9��|�I_P�[Dų�fa���U��"�izV.�w���xh��6u������+�tc �d�
|���4�ޢ�A3�͂��5bΦ�xl�\7+I��k=A�w���F�����������2m����78��
Rk��89m���r(3k�g�U�+�DT?w~f�7u��Ȉ�|J�	�S�߫��8g"Ά�Px�rL��`���N��9w�?�z{�aݏjk��ੲ)�B*�>����jW[Z�H�{�G�m?#e�
�KsTj8m	��Qxl��8vZ��}.�+ca�B�EV��<��m)�����jj�� U��#{�2�J�5��Xb6�\"7+;�� ���>!�4�cs.K�fdb9�w0x�=	���D�vӒ��}~0BP��F��`�L�B�q��ݛ�}�բT�U�lw����.D˚���s-XeC��mU��͎�G��b���I{���)��t����5�s�
��#��� Gg՗w�]����?� m�QE÷��M֢V`���pj�s����ݑ1��'j��UT=�,h�7
���:��@�=W.��iNv;聂B�dH�	qi��u�ZP�8V�{�,V說f��$��[ln��o������ʹ��w|RᘣKŕz��{n	
���@2x8����S�;5��|�_ڠ�0
16!�P$�4������i{��X�9���I��e6�[W��A��ZxZ�;͝'f��X�諾ȹ5�U*�#P�ÚM��cL�ȑ���R(w��#aW-�v����F1!={�05�ݒ�O��]�Y��K�%�#��j�L���_ɟ,��ҕ�_Ԟ���j�"C�61d۷�kY�����'��*�#̰��D��L>� ��8"5Q�4���3z�����aY)ѥ�:R*�e�Jp�T5b�#;~×j���i�A8u6,−�)t�d95[Q��*�����db{��V��ٕrĦ�r�W����M��z��
��>o�����l�m"�T�7��R�q\8�pD��6�fS�)yb4�N��C�U~]��n�rZ��1�6:��"Jnyo��g!#t� �Ұ ,aTvW��)0-�X=��$+�̈́ĹZ���,�EP�9�����M$�Ӣ�{P���o�iO�8�l��w����=��@��g�kB�e��;�I�ת�Y��#\�gR�ΈW�;N[Um)�w�?��O�ʁL�Vs�
� ��w�#�X�K��E+[�H�ĂTZ���}� 0N�c�A�8V�lյ��ʰ �Ԭ���B����'ȵ߮:,]5S�(cUOdCCeN,\v�L0.�����y�Z�����Ұt�[2�?[��C��������L���*�g9���bH�Shbߦ���,�,���q�������{��7n���u�ʆ�h�OO�K��5�r����}b�UW�լ�ygX�$g9� u�9��qΐ��f�\�����Q�� ��KR����"D
c�@Հ�FpϒwI݋�k��s�$��̨ᛃ_��ws��;a��& u��>�2�J�D�n��$+�u#��L�+��X1�Խ��ήǭ�cO��_= C�]QH��Mpd0���~�l���8���xnF!G]��$��֍�澾g}E;3�G-���S��e��婣w^����fM��7MŸ%I:�{�孮���6��F��6t*���â�0sE�w�g��*(�ƞ��`����0},߿������ �.�	�Vk��T�@}�Pġ��F�%#:k��
a��⽜���:��x�UT��sP�Ƈ�p�cE�l���1��a��
,O�ٕ��S0�7tƎ��Q�d�'UC��(��Q�
�_��J�i�mmh���P�[��+�#�>�-�@x
0�����h�w������i ��kTeu�V")|L �Df	ϋ��*���/nk�8��}^,tǮxS9����U�^��[���AtT=�?Lf�펳'��T&;!��J��� �[��'9��(�f,���t� j��"*'`1p�#�w⁽g�;��1R��� ��2)�P��(|�p�XGҥI�*��I���-�z!��bU��/���ZvO�\%ar@7h�w?L�F��Y�6�]q.���_J��]tT�$ 9	*�6
�m�4��X%a�+ %q�V�M����"�m�҇���m��=����:��Ӝ�h j&�)�����5�% a@#����(����(��x��@�(�[R���0w����˄sGr��m�&�G��H��%#.2�/1��I���N�6�&�k�蕧�@��s��c��'� ��s
�"�;��-. ��6��* ?�Li���V�����Q���UYP�b��ӂl.�Ä̜�Rs}p�������S�!����� (�8#�]u5��1���qQ|�ՂR�W�_*���L��cZ5j��vڜ��XN��&*��EAAc! �Ȓ"�ߜ2ח�t���O�&�.cq���Sג�Cƛ��{���]D�Q����+)�TdjvL��b��I��ڌ�*�XHܮV��QU�$q��
l+O�FկR�-1-3����_̙���3�t��I���d��B���MC��7ف�Y�*�a:L��p4qr���)�k�}Ad��{�RC�E'<����cx1��!I��e��^��pA":�����3Q,T��&C��Ჩ������ߖaJ(}�
���yB@��I�߉yhQ<�F�V���t�锔Rɯn\��jF�L9��.6��u�5��n�?i�K�:^��y/��K&Ұ������ih�X��;�������d��Z���2x�����Z�<5΃0�:��sj�HXb��觛&�k��UJ���CC�Ǎ"�q�^.l(.8̼����EՇ�^È�"�k����_P0 'W���"ߧ��*�q����mO�C����������YZY�<��P�"����DPL�w�j�s\���VR�����z[m���5o~O����맷�6��^}T&K��.7M�l�H={q3���nc>Ƴnyh���!z/��G967e%���zø�DR)*O!R�C�!%��A/��$n�s��;��>��}����A���h�86��2�8�slh}�D��9��P�^Mg[�([��ɗ���C=K��rk��
Ξ��%�[�he�J�cR K9�^)�(����-�w9f�G/�(��LHǪ,1L5�$�a�������9��$eG����~��j|9���'�1^��xQ{���
��rzUV{41;��lrAYX���5S*t�B��M2g��ܶ�Y�!�*֙����y�'P.'�疥�>{V9|�X�f8"&r����!�f7ҁ�6�hˑ����KK���tdg��ҧ
�Cn?�B<�>����Qeю��t"f>@&����1X�ZS���i�FB�/V฼���P�~�E֖��	 +6��Ea<�?f��J��_��1�B4�B-�P#H�R==碌CB��n[/ �=��������:Z��"����I�e~�TE߀8 ^H��-*se�PUk@�R=�]�����F��?oz�"�����;�e�e�H��\�r;yл�dB�Ό��Tal����?ҭ:pVWwq�<uj5��C\�f�"!��e��E�4�Zs�}��I�Ki
u΢D`�m���+����홶�(�Ǎ�A�g�����ZB�H��D�{�'!��#X�������[��R��#"��&]���1n��bE���LCS^-�J��)��!�K��֔����JO
�*M����li60s�
$~\����g����Yi
��7~�)��������T�JS�c )�׺u���<�<v��.��p6ha$G�L�ObHI�kvL&D�X;�󔪚~r�rB�jE�ɑ���c�����:���C�G��Wk�΢KCV*��%�'���>kH'�ؽC�!��|�	��p)�}Z��6����NWD�b�F���FvP�Dؕ�H{�э�I��b:���qUW��><pU���Ʊ����&��	�EJHa,�ׇB9��]ػ�yn���=\�t���"Tz���b�~(�$��1�� wV�T�{���ƳD�.>�k���T�@�gճ�:u"^D���L����n;�XO�AMU0QE�_�Ȅ�2eQ��Ě�C˟
��e�2���ǎ��pB�� 4�")4�4&��"�$�F= ~ �+���S��W�"�}qn�;J2X �\�T�
�҈�	�EdbD�D��`%����	 �
���TPג�R�!��g[�'��N���6�\v�$%�(0��}9ぜu�����=�HF�\HX�Z4p�+�������D�#(7�z�"��F`n6m�rR��K�i�n��k��]]��P��VS��
�. ���9N@���jF\�|uQ`ZHUU�s�|@:�N]�x,X��6�ƕ�J�	�kt�����Ռ�D ���qJ�Wu)
�.KA��Sžx
b2����2C*�(P��ssg���SHm�ި�!���*般g�d�2O��%�c��4 ��anb2*�Ka��aUw���k��!��qȦ���S4��+����qr�ffG0@V� ��1�be�h�-W�v�E`�n���dWi�!3��>��� � e+a�������>��,����V��;�[o>>Q��݄�@]�s�"����|��qz6��E�@(o>�r��r��MdѦ���z��ÈѪ#�r��-6�Q�↭7����4m 3f�� @ hL�4!�k:m����fVaA{H�tUJ�%c�ɝf(A���B�]���LfhX���*��ci*��+#7�&����:��^Z"g�B�h	0~��� ���P� �otD��|��6l�bG1kJ (I��Gnv�X��eɢlK˲�J��BCS/5ԲJ*b+���]^�Ե���-�G�(��� K��R�^��7$�fd���b�r,�� sQ}�;$bަ��
��*àa�ǃ�tפw�M�]�񪴴��hdC!�)2���&�����Dwo��w����zw�9�}4��Q##Q��>3�\�ohO�C�(WB�T�)�Ƒ:���'l3W@�l�V��E�<#=}�2zi^�I�;x��_���-�e����$ � E�;,l�H
�w��D[�y�Dp �mDl6$�h�jg6	.V�l'��� TA1s@�0�Y�����W�9��QD��MX�w�������N�.z;�����c�g�ơdy
�Jv��+߶���(�1 B;tIH���>HD��H�`�}߲��P�pH�CL��'�pG��;=�%.J�-��(k���j�!��s2D��Y���NzV�R��\��g���y2��
�"�ݚZ��.�Ҽ�R��Y!T���weJ�v]���M��Aj��h
���E��b�R��H��Q<Yul���P�U�	�6xa΂"���9�����u�枬�O���19�Nr�*���ȻY�r���n����v�6� �3.��e�|�4���^>�gtL���-$�D�'��A�Lm�`��n��_0w��� (+	5La&9FF����#;�0�Ϲ��UUz�]B��ej&x)�|p�7A����I	HE	 Λ�2�� y	�HcVZ�2D���#zIv[�NU����N��5D�{�e��Vm�0#��,��M� {l�L�)���u��R⁜�5"}������-�I�x� [P�L��c������:Ĵ\ZXs�a�qh)ָ�dI�X"���DC�L4����H&I����(���WHz5�%�B���A�)s�E�-j�L��f#9��[fRS/x��`��J��$"kn�����R��GUI�����^�3�l�ئ�υ����Q�D���5q#������@��ߴ�(bbE�8��t���� �4�'�082BVә�Ţ�OA�і��J�Aq�Jb��:�sJ��'lDeV���a�Ed��<���Z�j�*�=���.#����-x��ya�NxH�NQ�Γ��:�V@��o-##����"Ly|��{�6W�T��� �z	jݵ6 �ux�Ə{�=|� ��Ij/��1\�2���8�C�h��p)tn-����I�Dܴ�]QG���e���Ҋ���M�$��!V�Lțb���P0j��R�0z�D�Ɋ���*�XD�Y�P�����	AB!@��!���6ä���5�`�l�D$ȭjQ�a(Cs3fzw겭�/�-�D���t`�8�<�u�$WB%��_���o:�1ne>�o�ʭ�k:5�l�Ãx�b�&7�-������a	��"��.#lP� )d�l8�8ci��"���F��]���űJd%�T��N]�v�S&�zG�9��R'Y2�\t���P����o+��ǯȩG��@@օE����;6A�~��2�EĄd�G��#"oomS��LY1�ֵ��Z��
���� �j!l[�wx|�{����a =�T0��F��a�M�,�F�D�Aw�gkS�괩e8}��Pς�nf��$)v��I��K@bk�m �X
;D����wA=!��0! <0̖�g�'�h6�����N��N��17'5�{N����k��8��g�e *��J�3�ڛoE���f�)�fe�tB#��GѰ�I��ĭ�E
���N���-qE��#ƺq�ې���g���7��}��R�-�z��v�6�q�
���ޱ��`�����o�j��`X2�� Vn,�Ȍ�9s6�JM�b�Q��)�w��έԮ7
K�-�"�<��ļ���!}���A�#F��"�QX���hٖRC,45�uUq�S��;f[Iqbª��tf�FH2��Te�rp�b�s���@�0�r���r^0`i>�Ys9�8(s� �����;g;�����9�$Sn7�!DƄ3!�K�<���슓���4�'X�8%!^B=�	l u�Ix�`��L+�f��!-���E�c��ԇ?�1~,y	�����4��$!��09�.�����x�I90���P'@.dʱa(%@���CrGyi%�N�$VX�c�.����ȵ�)�d���݀��o��L5�
��� ��E"���\	��,�fc��ᔍx�B�K9�hoC�� ߝtd(�!�Q�@���@W;���b<
��++.�`\mc�A��6L��yl�Nl5��#eR56;K����&�^xA����h$[��-CA{D02�=�D�H,��I˭<ƨ�	��5䆥�tjJ����U]4�Q�ԉ��B����?���PQv�}\���ԗA=fǮd����.	%!���ҨO��%(E��wR�v����U��P�/�9X�d�y�i�.T�hC�A4�@�m�ZP�H�EL�$������"�7?�Z�V�����*���(64���j�Y����q��8P�E�P�g�?%�H���1!uç$:�BA6\6Ɲ�$��B��Kg�sv��YIi:*g@�)\5B�a��7�EA��-PcDAIٓ-[�"�	��V
�4jڣ.r����Λ�l���-�턣=K,�Jʒ�i*��r
 X���;%2�`��L�*R����F%��S!̲�B&2ɐ�V@��E�\���6��JC�0s���C���X���`�V��Ĉ�c��b�޺��H�(�x9.ƀ�s0<i(�~m ��2��#P��@VX�Q�6�v�����eg���4�#H4��B�̨�*���%l�����:t_�-��VYkE�+(u�晫iPfr��Ơ�����Wj0L>��a��qV���O�a�ez�V,��t"Y���d���Z�_O��C��GQ��b �9�� ��fa���q�3�@��t	��k��,ZQ6�ϖ��^��5����ǃ�Dl�C[��Vu/Rh�P��	�b	�]&ۆ��7��o})c�ki`#�f/,��s�����S�]b�v��f��
��)�45�v����@�-�UR��Ǧ�%^׆ͧlH�4�W���U(;'Z�Z��P�`X�,t�)<�߻��b��-g5��bq�M�da�7@�se�T�֎���3tl��Jk�G�2�jU)��pƁ�]��A@T:��2�(Iq�f���`�2���8:��jQauYT�����5As.�t�`w.�a�a��.X&�A	��H���/I֒�D���$�:F4�BA���/~����37��\6P~��(�����=�2�$'�}X	��Y׹���_r�j�
9�fU>�!H&l�<[��$���#�����`����IO��*P���?���_x��}�s�1�^����� (�� 	B|G�rE8P���