GDPC                                                                                @   res://.import/Light.png-434aab4fe64b7d35096e8d62977f183c.stex   �      k      �Ew�V�[z��7=5i&D   res://.import/Light_Batt.png-d978fe3469e37c4400eff9c8246640ca.stex  �6      e      3&�c�lx�7����^�<   res://.import/bars.png-ae25147cdbdb4e4f9798d3f9d7b3364f.stex�<     ~       	�	s/�i�[���2�1@   res://.import/ebars.png-d4a96abe80e76ba5d201e82cba2ff623.stex   @@     ~       ����{�~�����<   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stexPC     U      -��`�0��x�5�[@   res://.import/tiles.png-20e12ed313f9b52ca4483ea23302e684.stex   0�           �슂@�>}�+e`��D   res://Battery.gd.remap  ��     "       �T'Ւˬ�?a�X�4   res://Battery.gdc   �      �      P��G8���E�XY�   res://Battery.tscn  �
      @      ��X��\6�>��Σ��   res://Creature.gd.remap  �     #       =�#>�D�q�Rd^_n   res://Creature.gdc  �            b�}�"� ��~e&�W   res://Creature.tscn �      �      iX�ԟ�o����   res://Global.gd.remap   0�     !       z�<��z]
����*Xn   res://Global.gdcp      /      h�-`1���>�zt>�R   res://Light.png.import  3      �      ����@k)����5�,f   res://LightTimer.gd.remap   `�     %       bny1�����Y�$͢�   res://LightTimer.gdc�5      A      VL�� N��C�	�0�   res://Light_Batt.png.import `9      �      x^=[-�F�5����?   res://Player.gd.remap   ��     !       ��0�F �qq��dX��   res://Player.gdc <      2      ��7/
V�]5~Ӈ   res://Player.tscn   @N      �      �_�y�q���\3	ݐ    res://PlayerDetector.gd.remap   ��     )       "3B*-ꥵ_��H   res://PlayerDetector.gdc0b      �      �W\�xZ�ʆu��k�	c   res://World1.tscn   �c      ��     �����d��9�LK��7   res://bars.png.import   =     �      ��Őj>9�� ?�<s   res://default_env.tres  �?     �       um�`�N��<*ỳ�8   res://ebars.png.import  �@     �      �Zc���A�_Ci���   res://icon.png  ��     �      G1?��z�c��vN��   res://icon.png.import   �P     �      �����%��(#AB�   res://m5x7.ttf  0S     ��      6�ż෷�mk0�   res://project.binary�     P      B�0Y��+%t1�Z�   res://tiles.png.import  @�     �      ���n��Q�]�$            GDSC   
          ;      �����Ӷ�   �����Ķ�   �����ڶ�   �����Ķ�   �����϶�   �������ׄ�������������Ҷ   ���϶���   ������������׶��   ���������¶�   �����������Ҷ���                                                    	      
                                                          '      .      7      9      3YY5;�  �  T�  YYYYYYY0�  PQV�  -YYYYYYYY0�  P�  QV�  �  T�  P�  Q�  �  PQT�	  PQ�  -Y`            [gd_scene load_steps=5 format=2]

[ext_resource path="res://tiles.png" type="Texture" id=1]
[ext_resource path="res://Light_Batt.png" type="Texture" id=2]
[ext_resource path="res://Battery.gd" type="Script" id=3]

[sub_resource type="CircleShape2D" id=1]
radius = 5.13773

[node name="Battery" type="Sprite"]
position = Vector2( 90, 130 )
texture = ExtResource( 1 )
region_enabled = true
region_rect = Rect2( 0, 72, 8, 8 )
script = ExtResource( 3 )
__meta__ = {
"_edit_group_": true
}

[node name="Light2D" type="Light2D" parent="."]
texture = ExtResource( 2 )
shadow_enabled = true

[node name="Area2D" type="Area2D" parent="."]
visible = false

[node name="CollisionShape2D" type="CollisionShape2D" parent="Area2D"]
shape = SubResource( 1 )
[connection signal="body_entered" from="Area2D" to="." method="_on_Area2D_body_entered"]
GDSC         ,   �      ������������τ�   ����������������   ��������򶶶   ������������   ���󶶶�   ����󶶶   �������϶���   ��������   ����Ӷ��   �����Ӷ�   �������������Ӷ�   �����������¶���   �������������Ķ�   ���������������Ŷ���   ����׶��   ���϶���   ����������Ķ   �����Ķ�   ��������ض��   ��������������ض   ���������Ҷ�   �����޶�   ζ��   �������������Ӷ�   �������������Ķ�   d      &         idle      walk                                                               	      
                     &      '      (      -      .      5      <      =      >      E      F      J      M      T      c      g      j      q      x       ~   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   3YY:�  Y:�  �  Y:�  YY>N�  �  R�  �  YOYYY;�  �  T�  YYY;�  �  YY5;�	  W�
  Y5;�  W�  YYY0�  P�  QV�  �  /�  V�  �  V�  �	  T�  P�  Q�  �  �  T�#  P�  T�  R�  �  Q�  �  PQ�  �  V�  �	  T�  P�  Q�  ;�  �  T�  �  &�  �  V�  ;�  P�  T�  �  QT�  PQ�  �  �  T�#  P�  �  R�  �  Q�  (V�  �  �  �  �	  T�  �  T�  	�  Y�  �  �  P�  QYY0�  PQV�  &�  T�  PQV�  �  �  Y`            [gd_scene load_steps=13 format=2]

[ext_resource path="res://tiles.png" type="Texture" id=1]
[ext_resource path="res://PlayerDetector.gd" type="Script" id=2]
[ext_resource path="res://Creature.gd" type="Script" id=3]

[sub_resource type="AtlasTexture" id=1]
atlas = ExtResource( 1 )
region = Rect2( 32, 120, 8, 8 )

[sub_resource type="AtlasTexture" id=2]
atlas = ExtResource( 1 )
region = Rect2( 40, 120, 8, 8 )

[sub_resource type="AtlasTexture" id=10]
atlas = ExtResource( 1 )
region = Rect2( 32, 128, 8, 8 )

[sub_resource type="AtlasTexture" id=11]
atlas = ExtResource( 1 )
region = Rect2( 40, 128, 8, 8 )

[sub_resource type="SpriteFrames" id=6]
animations = [ {
"frames": [ SubResource( 1 ), SubResource( 2 ) ],
"loop": true,
"name": "idle",
"speed": 3.0
}, {
"frames": [ SubResource( 10 ), SubResource( 11 ) ],
"loop": true,
"name": "walk",
"speed": 4.0
} ]

[sub_resource type="RectangleShape2D" id=7]
extents = Vector2( 3, 2 )

[sub_resource type="OccluderPolygon2D" id=8]
polygon = PoolVector2Array( -3, 0, -3, 4, 3, 4, 3, 0 )

[sub_resource type="CircleShape2D" id=9]
radius = 23.0

[sub_resource type="CircleShape2D" id=12]
radius = 9.0

[node name="Creature" type="KinematicBody2D"]
script = ExtResource( 3 )

[node name="AnimatedSprite" type="AnimatedSprite" parent="."]
frames = SubResource( 6 )
animation = "walk"
frame = 1
playing = true

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
position = Vector2( 0, 2 )
shape = SubResource( 7 )

[node name="LightOccluder2D" type="LightOccluder2D" parent="."]
occluder = SubResource( 8 )

[node name="PlayerDetector" type="Area2D" parent="."]
script = ExtResource( 2 )
__meta__ = {
"_edit_lock_": true
}

[node name="DetectionCollider" type="CollisionShape2D" parent="PlayerDetector"]
shape = SubResource( 9 )

[node name="HitBox" type="Area2D" parent="."]
script = ExtResource( 2 )

[node name="HitBoxCollider" type="CollisionShape2D" parent="HitBox"]
shape = SubResource( 12 )
[connection signal="body_entered" from="PlayerDetector" to="PlayerDetector" method="_on_PlayerDetector_body_entered"]
[connection signal="body_exited" from="PlayerDetector" to="PlayerDetector" method="_on_PlayerDetector_body_exited"]
               GDSC            %      ���Ӷ���   �����Ķ�   �����϶�   �������Ӷ���   �����Ҷ�                                                     	      
                                              !      "      #      YYYYY3YY;�  YYYY0�  PQV�  �  PQT�  �  -YYYYYY` GDST,  ,          O  PNG �PNG

   IHDR  ,  ,   y}�u   sRGB ���  IDATx���y�li]����{���Ō,�*(q�-4ѠA�DD%����DTDTPB"";CdG��Ad_���ӷ�S���=}�tU�~��y>I��t����w������]@�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$IJ]!����x��S��o8���~o�.K��"1X9���:��?VN��������[SH�� �=��'pW������ -��	�V�.p �|8|�4�	�c���&߳���2�Π��|� ���_��}��f; �����h Y�\g��u�,TBK�J�1�C��ZVi;�x���� [��u6Xg��Au/�� �D�����o^��y�`pe���aK���O$t���i�>�����~���MV-T�
�<��w�����x�b�����l1�2d��� WO@xrw���O�������0�2b��j ?<��?��U�rไ'�s1�v��������ߠ���GBp}����n3�v؜aU<���ӭ�?� �+���d`��ZU�~���O�����;���Z;���1s�U�U�����t6]<�0�k&Ck���.@��3�B�8���тή��5	s�F�.�k��k�8�Yj����֎�#�����_",2�z���#�]hk+}V��lUݕ0)��6[Mn}�5�/N���J�]��V�^C�1A�Q���U��O���a�la�d��*���|�R��?H��5�-�tX)�#�n�)𓛯F'�"a\��.2���.��V_GXV����FS�涝>0�"��[g`m�au�Z��7_�NQ���}���]֖�V�'��{��hN���/�a�ZDCk{�-�#���0}A��@�N���)��Z�a`m�^{�<�vμ�v��
�9Z�����k�Ni]]��0Ю�V ,�*WO����,k�N	�� �ǽ��� |;�H�����XrJX�xp��T�5* >|�lem�.�=�7��8u!�����9�5����Xp�����e�%��3�ɮ��~֚�r��4��-��ͻ�2�Dqk�Z�S�꾄%7��T�-�3�O��{+�g����F3�[���y{�h��$��x�I/Z�c�pMNi]��gu��1p���8�����i���Z�Lٻ����K�3n�K	���W�Rtw�������֊Ny��}\#�7�$<`�[Y�3�6�����/�%��}�-Ck5v	W0��k/�E�yu9�ذ�NzѮ��lam�S��(�~�)Jme-�֒Nh�'<�4�n܄�kek��A؍Azp���8Kla-iʬ��/"�.5����0g�/��ft�	4�X�v���Ԗ�����)��� /�S�u�
�a���_���8[X�Ѻz:�,;�bO",�ъ����pSJ'�~����k3n�'BK����2kuE�ii��w'��i�u���#�"���-\��5�7�S�i��������2k5�ߝvʌ�i�e�j���fL��U���n�|��<!��9��O���2��0����m�e_	x\�Ed�����bwP�y,.�Z���<�%���q���c���Z�𰴋PfՀoO��,2�N1�]�.�=�\�ΖG�]@X����P�}0k96絪{�33���q�W�]@�X�k&�I�z��_�I�l�Y�}	�"�­�Z��q
�d�7Iڅd���8���B�B�@�X�T*R()�
��1�dL���qL�$$��./ra�1s2�f��<��mױkBH�T*T*Uʕ
�J�R�|A`%I�(1�FD�!Q4$�H���EX��nL���0�S.K��4�Eʕ
�z�z�N�V�Z�Q�T(��K%
`�xD<���C�����A��h4��|=��
k1E�ni��R�D�V��l�l6i6��uj�:�j�r�B�T
0�1�ш�p�`0�����u�V*��=�I���J�eXs3�S$�rϝR�L�^��n�j�i�[�-��z�j�J�R�X*R�@2	�(���C��>�^�N�F�R�T*S(���$q�C���``-�v�p*H�X<
���}�{{�[m��6�f�F#tC�4�J��(������}j��j�R%�u0�~�����]�. K������B�H�V��l������>����ޣ�n�l�h6nie��d�j0��v�U�����&O�	q3�:�i�%�br7��\*�h4h�Z��{!����do���=Z�6�f�z�A�Z�\.��JF���~�G�V;�2Z2㊢q<b4���M���. K���j�WqҺj44[MZ���=���ٿ�����k�i��4��I�0V2	�0vեrA닣�:|�8���q���n� k1�:���`�ޠ�O[��V���0����?�oV�X� �:�:�r�h~V<E�aĠ?�֯���X�i�%�bZi�-�B�R�L�R�V�Q��i4�Ǻ���A���=Z�&��53��[B� I�F���^���\�J�^�����Zk1��ؖB�@�\�R�R�֨V�aV�N�Ѡ�h�V����J娅E�]�h2������z��5j��d�i�J�BEy���Zk1�:O�*
�K%*��$�*T+��*�ju���h4¬�ɯ�����(���͎��U*�
�J�hJD�P g���7� ����]
�"�R�b�D�\�\.S*�C�TBxU&�!v8y�0��ߣ�(�*���R������+wS� G��:��YAn���Nţ�΅B����À)�&as��ɯ��8	�R�H�4	�b�R1���d�t�X8��!grsO�����a�l���?�(�5��d���h��������^�#�>��^������Sk`�p1ݴؖ�=̘d���a�g<��FG��}��E�$���F���(<!<��I��q�=�I���v�]@�X��9��%�,���8�i����hUXr3.X�s���C�GE��(��4�$�r�<� ����ZL~6Z��l�("���!����d1so��������Q�#�v�t{=��>���V6�o`ݔvYb`-��.`[���1&��>�~�^�N��9ڴ�x@U*
p˼���n������t:t��ɾX=�^�� �rEy���]@�X��R�l����pp�=L�ۣ^�ҙ,d>����j?6qt0������/����0��/֗�. K��|1��)I����ߣ��R�Uo�
�X��mdWǻ��qB��v=�<�8��V�ӡ������y��i�%�b��q�ۤ]�6$I�p8���Y�
�Rط��2�h�`0�^�]���x�h1���t��B�������n�^�K4�;���k1	�YrX q3���Nf���&a5�"���U�Z�|f�1�h8�?��v�N��L�����u����k11�)�i�-��(��t:
a�q���8�z�F�M�ظ�1�8&��������t8p~Xt�FQ���W��+������s_��l�1p��t*J��XVg��q���Q����k�=:�",�)L�H���!�0h��v������a~��&��j\tU��M��4$I�`п�u5�B�{��a��s	�a�v�ģ�����^����v��{y�:�1 w����Z���. -�-����>���V1���a���$N&{�G��a.W4���(�B�ŝ#̝�݁p˄�8I���pL}�B�R�X[��K����p\�(
k�;�~1P]������4�����p�`q��)(R8��!,�N�xV��y`}�w]���9�tkq1��;�.d�''<Cl�f17���r�N� e���i�5�)�4�?��쵚�q�хX�9G-iYoH��,2��3^�vʬ��_�E�Og`-�ؤ�rގC
K1��w.\�r^�vYe`�aJS} �˖KQ��pM�Ed����W Q�E(S��	��:~5k5���Si�1𢴋�2kN3��a�u(�>�9�"���Z݋���Z�K��ԕX��xu�Eh�����W�3�0���c�~��4o >�vYg`�ǻ8a�i"~��l]-��Z��M� ���f�kEւf�#���KQv<7��
k}b�7�.B;����Oz�����%̸�^�s��h��:.�_k�����.B;�5�[Oz���rJi�U�;�ڭ�^�,�d�+�[�vL�8���^<��l��3����e9�=����I/غZ�-��he}	��aۭH;��'��Oz����lam���y�[��Oz���j�͸�
<��͛��fP��K�S��ʼ��۫F)�_�G��ފ�����Z�Sn�_>��R����7��vg�/������n�m�+��������K�F3�������[*E��Y�qL��bX����F3�9 �'��E]��	�'r��8��f3�MG�S��m�m�3��~���zX�ux'�L����^4����ڀSn�O����_	��i�'�am�)�Y�7ߋOj��?�&L>����0�6hF`��0��]ZYr=�ft���1�6�V�}��C1�����V�g�]`Xm���a���������>E�k5�)�a�y��Zoj�����8!��s���vX[rJh%���cZ����c9�T'�n���Es���FX��p����4տf�n�E�����ڲ9��Cx�p����t��v�ʬ����둒;;�&���{l�]䷁��YV�g`�h�к�{�Q��F�ɼ� ���t�%L��������_��Q�ф�3V鱅��hiA���W�]7[M���_�f]hP��w�0GK�	</���l��3���?$��=�a��1gh�'l�{=p%��C-n��p2�{O�ذ��K�9����<��_�G�_�8�ņ�n1�vԜ�U Lx�ȍ�}7�%�W����q�n2�v؜�P!�"�<�>+(��_�K8B�T���2�2`���`��^+(�?ZU������f`e�����c�C\�C�����W�Š�+c.c[�H8�ML��7�����A�-VF-\��H�2^���#�V���8e.����97m�-\u�A�U�� �����x�r���UvXg��ak�+�i>x �9��3��J_\|q�bPe��u�,\�o|�=� �:�~�� ��w�i�B�Tg��uF�\�J�]O/#�c_��Fh��"&��>I�� ��= ,�Y��RC�l2�r`���f`��Y/C*?��jxP�e`��b��$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I����!���s    IEND�B`�     [remap]

importer="texture"
type="StreamTexture"
path="res://.import/Light.png-434aab4fe64b7d35096e8d62977f183c.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Light.png"
dest_files=[ "res://.import/Light.png-434aab4fe64b7d35096e8d62977f183c.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
             GDSC            )      ���Ӷ���   ����Ķ��   ����¶��   ����Ķ��   ����   ��������Ҷ��   ��������¶��   ��������Ӷ��            ?                                                     	   &   
   '      3YY;�  YY0�  PQV�  �  �  T�  PQ�  �  P�  Q�  �  T�  �  �  T�  �  YY`               GDST              I  PNG �PNG

   IHDR         ;0��   sRGB ���  �IDATH��oO�0����`4Qc��M��Q_�Nn�%Qc�M.e���~w�m�?~hd)��s��$���X� .����މ@��ٱ5s��&�޿T!��Y���ڧ�<��S�v���o�R�
�9����Z́S�Df���J� �e�AE7K���7s_���؆x�]�:֚v�Ll��:/E�L��wX\q�f[�C`\W��<�&M}ɮ�Y�:Tl��B{z����(]/�S_��]�pd�R��{�p<�r] �� ���<�1Bj�>��i�O� �>�5�?��|�S��s��F�0��i�<�7���� s��9��ۖ�����&Y����5��ӫ5������L���M����=0fWOd�Z�Up�96P�R�D�EA�k�WF�ᖙe�6U�籠ޛ�H�s�D����*>�2-�6|���yS�VKS��gO[��o������ ��T�u����k��h;�n��%_ �盫n��Wfbq����o| j��<	M�    IEND�B`�           [remap]

importer="texture"
type="StreamTexture"
path="res://.import/Light_Batt.png-d978fe3469e37c4400eff9c8246640ca.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Light_Batt.png"
dest_files=[ "res://.import/Light_Batt.png-d978fe3469e37c4400eff9c8246640ca.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
              GDSC   S      �   6     ������������τ�   ����������������   ��������򶶶   ������������   �����������ⶶ��   ������������   �������򶶶�   �����������󶶶�   ��������򶶶   ������������   �涶   ��������   ����ⶶ�   ���ⶶ��   �����ض�   ��������   �����������Ķ���   ��������Ѷ��   ���������¶�   ������������   �������������ض�   �������Ŷ���   �������Ŷ���   �Զ�   ����������Ķ   ��������Ķ��   �Զ�   ��������Ķ��   ����¶��   �����   �����Ӷ�   �������������Ӷ�   �����϶�   �����ڶ�   �����Ķ�   ����Ӷ��   �����϶�   �嶶   ������������Ӷ��   �������������������ض���   ����׶��   ������������Ķ��   ζ��   ����¶��   ������������������޶   ϶��   ���������Ҷ�   �����޶�   ���϶���   ����������������������Ķ   ���������������Ŷ���   �������������Ӷ�   �������������Ķ�   ������Ҷ   ������Ŷ   ������Ŷ   ����������Ҷ   ڶ��   ���������������Ӷ���   ���¶���   ������������Ӷ��   ������Ӷ   ������¶   ����Ӷ��   ���������������������¶�   ն��   ��������Ķ��   Ķ��   Ѷ��   Զ��   ��������Ķ��   ���������Ķ�   ����¶��   ���ƶ���   �������Ӷ���   �����Ҷ�   �����������������Ҷ�   �������������������Ӷ���   ������������׶��   ���϶���   �������Ҷ���   ����������������Ҷ��   ����������ڶ   �      (     H�z�G�?  �������?  ��C�l�?                                   d         ui_right      ui_left       ui_down       ui_up               walk      idle   <         %02d min %02d sec             F      	   GAME OVER                                                    #   	   *   
   1      =      D      I      N      S      X      ]      ^      e      n      w      ~      �      �      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (      )     *     +     ,   $  -   +  .   .  /   2  0   9  1   H  2   I  3   K  4   L  5   S  6   X  7   Z  8   [  9   \  :   c  ;   h  <   o  =   t  >   v  ?   w  @   x  A   ~  B     C   �  D   �  E   �  F   �  G   �  H   �  I   �  J   �  K   �  L   �  M   �  N   �  O   �  P   �  Q   �  R   �  S     T     U     V   $  W   *  X   0  Y   7  Z   >  [   E  \   H  ]   M  ^   Q  _   U  `   \  a   d  b   e  c   u  d   v  e   x  f   y  g   z  h   �  i   �  j   �  k   �  l   �  m   �  n   �  o   �  p   �  q   �  r   �  s   �  t   �  u   �  v   �  w   �  x   �  y   �  z   �  {   �  |   �  }   �  ~   �     �  �      �     �     �     �     �     �     �   !  �   *  �   2  �   4  �   3YY:�  Y:�  �  Y:�  Y:�  �  Y:�  �  Y:�  �  �  Y:�  �  �  Y:�  �  �  Y>�	  N�
  R�  R�  R�  OY;�  �  T�  Y;�  �  Y;�  �  Y;�  �  Y;�  �  Y;�  �  YY5;�  W�  Y5;�  W�  �  Y5;�  W�  �  Y5;�  W�  Y5;�  W�  YY0�   PQV�  �!  T�"  �  �  T�#  P�  T�$  �	  Q�
  �  �  T�#  �
  �  �  �%  T�&  PQ�  -YY0�'  P�(  QV�  ;�)  �  T�  �  �)  T�*  �+  T�,  P�  Q�+  T�,  P�  Q�  �)  T�-  �+  T�,  P�  Q�+  T�,  P�  Q�  �)  �)  T�.  PQ�  �  �  T�/  �  	�  �  �  &�)  �  T�  �  V�  �  �  �  �  T�0  P�  Q�  �  �  T�#  P�)  �  R�  �(  Q�  &P�)  T�*  �  QV�  �  �)  T�*  S�  (V�  �  �  �  �  T�0  P�  Q�  �  �  T�#  P�  T�  R�  �(  Q�  �  -�  Y0�1  P�(  QV�  �'  P�(  Q�  -�  �  Y0�2  P�(  QV�  �1  P�(  Q�  &P�  QV�  �3  P�  Q�  -�  YY0�4  PQV�  �  �  �%  T�&  PQ�  ;�5  �  �  �  ;�6  �5  �  �  ;�7  �5  �  �  ;�8  �  L�6  R�7  M�  ;�9  W�  �:  T�;  �  W�  �:  T�;  �9  �8  �  W�  �<  T�=  �  �  W�  �:  T�=  �  �  W�  �>  T�=  �  �  �  T�=  �  �  �  T�=  �  �  W�  �?  T�=  �  �  Y0�@  PQV�  &P�  T�$  �  QV�  �  T�$  �  �  ;�A  �  T�B  PQ�  &PPP�  T�$  �	  Q�
  Q	�  QV�  �A  T�C  �  �  �A  T�D  �  �  �A  T�E  �  �  �?  P�A  T�C  Q�  �  T�F  P�A  Q�  W�G  T�H  PQ�  (V�  �?  P�  Q�  �4  PQ�  �  �  �  W�G  T�I  PQ�  �J  PQT�K  �  �  �  �  T�#  PP�  T�$  �	  Q�
  Q�  �  -YYY0�L  PQV�  �J  PQT�M  PQ�  -YYY�  YYY0�N  P�O  QV�  &P�O  QV�  ;�$  �  T�$  �  �  &P�$  �	  QV�  �  T�$  �	  �  (V�  �  T�$  �$  �  ;�A  �  T�B  PQ�  &P�  T�#  	�  QV�  �A  T�C  �  �  �A  T�D  �  �  �A  T�E  �  �  &P�A  T�C  �  QV�  �A  T�C  �  �  �A  T�D  �  �  �A  T�E  �  �  �  T�F  P�A  Q�  �?  P�A  T�C  Q�  -YY;�P  �  Y0�Q  PQV�  �P  �P  �  W�  �R  T�=  �P  �  �J  PQT�K  �P  �  -Y`              [gd_scene load_steps=19 format=2]

[ext_resource path="res://tiles.png" type="Texture" id=1]
[ext_resource path="res://Player.gd" type="Script" id=2]
[ext_resource path="res://Light.png" type="Texture" id=3]
[ext_resource path="res://LightTimer.gd" type="Script" id=4]
[ext_resource path="res://bars.png" type="Texture" id=5]
[ext_resource path="res://ebars.png" type="Texture" id=6]
[ext_resource path="res://m5x7.ttf" type="DynamicFontData" id=7]

[sub_resource type="AtlasTexture" id=1]
atlas = ExtResource( 1 )
region = Rect2( 0, 120, 16, 8 )

[sub_resource type="AtlasTexture" id=2]
atlas = ExtResource( 1 )
region = Rect2( 0, 128, 16, 8 )

[sub_resource type="AtlasTexture" id=3]
atlas = ExtResource( 1 )
region = Rect2( 16, 128, 16, 8 )

[sub_resource type="AtlasTexture" id=4]
atlas = ExtResource( 1 )
region = Rect2( 0, 120, 16, 8 )

[sub_resource type="AtlasTexture" id=5]
atlas = ExtResource( 1 )
region = Rect2( 16, 120, 16, 8 )

[sub_resource type="AtlasTexture" id=6]
atlas = ExtResource( 1 )
region = Rect2( 0, 120, 16, 8 )

[sub_resource type="SpriteFrames" id=7]
animations = [ {
"frames": [ SubResource( 1 ), SubResource( 2 ) ],
"loop": true,
"name": "idle",
"speed": 3.0
}, {
"frames": [ SubResource( 3 ), SubResource( 4 ), SubResource( 5 ), SubResource( 6 ) ],
"loop": true,
"name": "walk",
"speed": 6.0
} ]

[sub_resource type="RectangleShape2D" id=8]
extents = Vector2( 3.85656, 3.19745 )

[sub_resource type="DynamicFont" id=9]
outline_size = 2
outline_color = Color( 0, 0, 0, 1 )
font_data = ExtResource( 7 )

[sub_resource type="DynamicFont" id=10]
size = 12
font_data = ExtResource( 7 )

[sub_resource type="DynamicFont" id=11]
size = 6
font_data = ExtResource( 7 )

[node name="Player" type="KinematicBody2D"]
position = Vector2( 36.7032, 38.8496 )
script = ExtResource( 2 )

[node name="AnimatedSprite" type="AnimatedSprite" parent="."]
frames = SubResource( 7 )
animation = "walk"
frame = 1

[node name="Camera2D" type="Camera2D" parent="."]
current = true
limit_left = -1000
limit_top = -1000
limit_right = 1000
limit_bottom = 1000

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
position = Vector2( -0.157997, 0.824444 )
shape = SubResource( 8 )

[node name="Light2D" type="Light2D" parent="."]
show_behind_parent = true
texture = ExtResource( 3 )
texture_scale = 0.75
color = Color( 0.0666667, 0.839216, 0.839216, 0.647059 )
energy = 2.0
range_z_min = -500
range_z_max = 500
shadow_enabled = true
shadow_item_cull_mask = 3

[node name="LightTimer" type="Timer" parent="."]
wait_time = 0.5
autostart = true
script = ExtResource( 4 )

[node name="Darkness" type="CanvasModulate" parent="."]
show_behind_parent = true
color = Color( 0.27451, 0.27451, 0.27451, 1 )

[node name="CanvasLayer" type="CanvasLayer" parent="."]

[node name="EnergyBar" type="TextureProgress" parent="CanvasLayer"]
margin_left = 4.0
margin_top = 6.83332
margin_right = 25.0
margin_bottom = 9.83332
value = 2.0
texture_progress = ExtResource( 6 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="HealthBar" type="TextureProgress" parent="CanvasLayer"]
margin_left = 4.0
margin_top = 3.83332
margin_right = 25.0
margin_bottom = 6.83332
value = 2.0
texture_progress = ExtResource( 5 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="GameOverTitle" type="Label" parent="CanvasLayer"]
visible = false
anchor_right = 1.036
margin_top = 17.8089
margin_right = -5.18401
margin_bottom = 31.8089
custom_fonts/font = SubResource( 9 )
text = "GAME OVER"
align = 1
__meta__ = {
"_edit_use_anchors_": false
}

[node name="PausedLabel" type="Label" parent="CanvasLayer"]
visible = false
anchor_right = 1.002
margin_top = 38.8496
margin_right = -0.28801
margin_bottom = 52.8496
custom_fonts/font = SubResource( 9 )
text = "PAUSED"
align = 1
__meta__ = {
"_edit_use_anchors_": false
}

[node name="GameOverSubTitle" type="Label" parent="CanvasLayer"]
visible = false
anchor_right = 1.002
margin_left = 0.281311
margin_top = 31.3716
margin_right = -0.00700378
margin_bottom = 60.3716
custom_fonts/font = SubResource( 10 )
text = "The shadows consumed you. You are alive for "
align = 1
autowrap = true
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Restart" type="Button" parent="CanvasLayer"]
pause_mode = 2
visible = false
anchor_right = 1.0
margin_left = 45.0
margin_top = 60.0
margin_right = -49.0
margin_bottom = 74.0
size_flags_vertical = 0
custom_fonts/font = SubResource( 11 )
shortcut_in_tooltip = false
text = "Restart Game"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Pause" type="Button" parent="CanvasLayer"]
pause_mode = 2
anchor_right = 1.0
margin_left = 118.0
margin_top = 4.0
margin_right = -4.0
margin_bottom = 15.0
size_flags_vertical = 0
custom_fonts/font = SubResource( 11 )
shortcut_in_tooltip = false
text = "Pause"
__meta__ = {
"_edit_use_anchors_": false
}
[connection signal="timeout" from="LightTimer" to="." method="_on_LightTimer_timeout"]
[connection signal="pressed" from="CanvasLayer/Restart" to="." method="_on_Button_pressed"]
[connection signal="pressed" from="CanvasLayer/Pause" to="." method="_on_Pause_pressed"]
             GDSC            =      ���ׄ�   �����Ķ�   �������������Ķ�    ������������������������������Ҷ   ���϶���   �����ڶ�   �����Ķ�    �����������������������������Ҷ�                             	                           	   &   
   *      ,      -      .      5      9      ;      3YY;�  YY0�  PQV�  .�  YY0�  P�  QV�  &P�  �  T�  QV�  �  �  �  -YYY0�  P�  QV�  �  �  -Y`              [gd_scene load_steps=47 format=2]

[ext_resource path="res://tiles.png" type="Texture" id=1]
[ext_resource path="res://Player.tscn" type="PackedScene" id=2]
[ext_resource path="res://Battery.tscn" type="PackedScene" id=3]
[ext_resource path="res://Global.gd" type="Script" id=4]
[ext_resource path="res://Creature.tscn" type="PackedScene" id=5]

[sub_resource type="OccluderPolygon2D" id=1]
polygon = PoolVector2Array( 0, 0, 8, 0, 8, 8, 0, 8 )

[sub_resource type="OccluderPolygon2D" id=2]
polygon = PoolVector2Array( 0, 0, 8, 0, 8, 8, 0, 8 )

[sub_resource type="OccluderPolygon2D" id=3]
polygon = PoolVector2Array( 0, 0, 8, 0, 8, 8, 0, 8 )

[sub_resource type="OccluderPolygon2D" id=4]
polygon = PoolVector2Array( 0, 0, 8, 0, 8, 8, 0, 8 )

[sub_resource type="OccluderPolygon2D" id=5]
polygon = PoolVector2Array( 0, 0, 8, 0, 8, 8, 0, 8 )

[sub_resource type="OccluderPolygon2D" id=6]
polygon = PoolVector2Array( 0, 0, 8, 0, 8, 8, 0, 8 )

[sub_resource type="OccluderPolygon2D" id=7]
polygon = PoolVector2Array( 0, 0, 8, 0, 8, 8, 0, 8 )

[sub_resource type="OccluderPolygon2D" id=8]
polygon = PoolVector2Array( 0, 0, 8, 0, 8, 8, 0, 8 )

[sub_resource type="OccluderPolygon2D" id=9]
polygon = PoolVector2Array( 0, 0, 8, 0, 8, 8, 0, 8 )

[sub_resource type="OccluderPolygon2D" id=10]
polygon = PoolVector2Array( 0, 0, 8, 0, 8, 8, 0, 8 )

[sub_resource type="OccluderPolygon2D" id=11]
polygon = PoolVector2Array( 0, 0, 8, 0, 8, 8, 0, 8 )

[sub_resource type="OccluderPolygon2D" id=12]
polygon = PoolVector2Array( 0, 0, 8, 0, 8, 8, 0, 8 )

[sub_resource type="OccluderPolygon2D" id=13]
polygon = PoolVector2Array( 0, 0, 8, 0, 8, 8, 0, 8 )

[sub_resource type="ConvexPolygonShape2D" id=14]
points = PoolVector2Array( 0, 0, 8, 0, 8, 8, 0, 8 )

[sub_resource type="ConvexPolygonShape2D" id=15]
points = PoolVector2Array( 0, 0, 8, 0, 8, 8, 0, 8 )

[sub_resource type="ConvexPolygonShape2D" id=16]
points = PoolVector2Array( 0, 0, 8, 0, 8, 8, 0, 8 )

[sub_resource type="ConvexPolygonShape2D" id=17]
points = PoolVector2Array( 0, 0, 8, 0, 8, 8, 0, 8 )

[sub_resource type="ConvexPolygonShape2D" id=18]
points = PoolVector2Array( 0, 0, 8, 0, 8, 8, 0, 8 )

[sub_resource type="ConvexPolygonShape2D" id=19]
points = PoolVector2Array( 0, 0, 8, 0, 8, 8, 0, 8 )

[sub_resource type="ConvexPolygonShape2D" id=20]
points = PoolVector2Array( 0, 0, 8, 0, 8, 8, 0, 8 )

[sub_resource type="ConvexPolygonShape2D" id=21]
points = PoolVector2Array( 0, 0, 8, 0, 8, 8, 0, 8 )

[sub_resource type="ConvexPolygonShape2D" id=22]
points = PoolVector2Array( 0, 0, 8, 0, 8, 8, 0, 8 )

[sub_resource type="ConvexPolygonShape2D" id=23]
points = PoolVector2Array( 0, 0, 8, 0, 8, 8, 0, 8 )

[sub_resource type="ConvexPolygonShape2D" id=24]
points = PoolVector2Array( 0, 0, 8, 0, 8, 8, 0, 8 )

[sub_resource type="ConvexPolygonShape2D" id=25]
points = PoolVector2Array( 0, 0, 8, 0, 8, 8, 0, 8 )

[sub_resource type="ConvexPolygonShape2D" id=26]
points = PoolVector2Array( 0, 0, 8, 0, 8, 8, 0, 8 )

[sub_resource type="ConvexPolygonShape2D" id=27]
points = PoolVector2Array( 0, 0, 8, 0, 8, 8, 0, 8 )

[sub_resource type="ConvexPolygonShape2D" id=28]
points = PoolVector2Array( 0, 0, 8, 0, 8, 8, 0, 8 )

[sub_resource type="ConvexPolygonShape2D" id=29]
points = PoolVector2Array( 0, 0, 8, 0, 8, 8, 0, 8 )

[sub_resource type="ConvexPolygonShape2D" id=30]
points = PoolVector2Array( 0, 0, 8, 0, 8, 8, 0, 8 )

[sub_resource type="ConvexPolygonShape2D" id=31]
points = PoolVector2Array( 0, 0, 8, 0, 8, 8, 0, 8 )

[sub_resource type="ConvexPolygonShape2D" id=32]
points = PoolVector2Array( 0, 0, 8, 0, 8, 8, 0, 8 )

[sub_resource type="ConvexPolygonShape2D" id=33]
points = PoolVector2Array( 0, 0, 8, 0, 8, 8, 0, 8 )

[sub_resource type="ConvexPolygonShape2D" id=34]
points = PoolVector2Array( 0, 0, 8, 0, 8, 8, 0, 8 )

[sub_resource type="ConvexPolygonShape2D" id=35]
points = PoolVector2Array( 0, 0, 8, 0, 8, 8, 0, 8 )

[sub_resource type="ConvexPolygonShape2D" id=36]
points = PoolVector2Array( 0, 0, 8, 0, 8, 8, 0, 8 )

[sub_resource type="ConvexPolygonShape2D" id=37]
points = PoolVector2Array( 0, 0, 8, 0, 8, 8, 0, 8 )

[sub_resource type="ConvexPolygonShape2D" id=38]
points = PoolVector2Array( 0, 0, 8, 0, 8, 8, 0, 8 )

[sub_resource type="ConvexPolygonShape2D" id=39]
points = PoolVector2Array( 0, 0, 8, 0, 8, 8, 0, 8 )

[sub_resource type="TileSet" id=40]
0/name = "tiles.png 0"
0/texture = ExtResource( 1 )
0/tex_offset = Vector2( 0, 0 )
0/modulate = Color( 1, 1, 1, 1 )
0/region = Rect2( 0, 0, 64, 120 )
0/tile_mode = 2
0/autotile/icon_coordinate = Vector2( 0, 0 )
0/autotile/tile_size = Vector2( 8, 8 )
0/autotile/spacing = 0
0/autotile/occluder_map = [ Vector2( 0, 12 ), SubResource( 1 ), Vector2( 0, 14 ), SubResource( 2 ), Vector2( 1, 13 ), SubResource( 3 ), Vector2( 1, 14 ), SubResource( 4 ), Vector2( 2, 14 ), SubResource( 5 ), Vector2( 4, 10 ), SubResource( 6 ), Vector2( 4, 13 ), SubResource( 7 ), Vector2( 5, 10 ), SubResource( 8 ), Vector2( 6, 14 ), SubResource( 9 ), Vector2( 7, 11 ), SubResource( 10 ), Vector2( 7, 12 ), SubResource( 11 ), Vector2( 7, 13 ), SubResource( 12 ), Vector2( 7, 14 ), SubResource( 13 ) ]
0/autotile/navpoly_map = [  ]
0/autotile/priority_map = [  ]
0/autotile/z_index_map = [  ]
0/occluder_offset = Vector2( 0, 0 )
0/navigation_offset = Vector2( 0, 0 )
0/shape_offset = Vector2( 0, 0 )
0/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
0/shape = SubResource( 14 )
0/shape_one_way = false
0/shape_one_way_margin = 1.0
0/shapes = [ {
"autotile_coord": Vector2( 0, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 14 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 1, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 15 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 2, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 16 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 3, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 17 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 4, 10 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 18 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 5, 10 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 19 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 2, 12 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 20 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 1, 13 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 21 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 3, 14 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 22 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 4, 14 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 23 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 5, 14 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 24 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 7, 11 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 25 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 7, 11 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 26 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 7, 12 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 27 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 7, 13 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 28 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 0, 12 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 29 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 0, 14 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 30 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 1, 14 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 31 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 2, 14 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 32 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 2, 13 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 33 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 2, 13 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 34 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 3, 13 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 35 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 4, 13 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 36 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 6, 11 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 37 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 3, 11 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 38 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 6, 14 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 39 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
} ]
0/z_index = 0

[sub_resource type="TileSet" id=41]
0/name = "tiles.png 0"
0/texture = ExtResource( 1 )
0/tex_offset = Vector2( 0, 0 )
0/modulate = Color( 1, 1, 1, 1 )
0/region = Rect2( 0, 56, 64, 16 )
0/tile_mode = 2
0/autotile/icon_coordinate = Vector2( 0, 0 )
0/autotile/tile_size = Vector2( 8, 8 )
0/autotile/spacing = 0
0/autotile/occluder_map = [  ]
0/autotile/navpoly_map = [  ]
0/autotile/priority_map = [  ]
0/autotile/z_index_map = [  ]
0/occluder_offset = Vector2( 0, 0 )
0/navigation_offset = Vector2( 0, 0 )
0/shape_offset = Vector2( 0, 0 )
0/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
0/shape_one_way = false
0/shape_one_way_margin = 0.0
0/shapes = [  ]
0/z_index = 0

[node name="Node" type="Node"]
script = ExtResource( 4 )

[node name="Floor" type="TileMap" parent="."]
tile_set = SubResource( 40 )
cell_size = Vector2( 8, 8 )
cell_custom_transform = Transform2D( 8, 0, 0, 8, 0, 0 )
format = 1
tile_data = PoolIntArray( -196616, 0, 0, -196615, 0, 0, -196614, 0, 0, -196613, 0, 0, -196612, 0, 0, -196611, 0, 0, -196610, 0, 0, -196609, 0, 0, -262144, 0, 0, -262143, 0, 0, -262142, 0, 0, -262141, 0, 0, -262140, 0, 0, -262139, 0, 0, -262138, 0, 0, -262137, 0, 0, -262136, 0, 0, -262135, 0, 0, -262134, 0, 0, -262133, 0, 0, -262132, 0, 0, -262131, 0, 0, -262130, 0, 0, -262129, 0, 0, -262128, 0, 0, -262127, 0, 0, -262126, 0, 0, -262125, 0, 0, -262124, 0, 0, -262123, 0, 0, -262122, 0, 0, -262121, 0, 0, -262120, 0, 0, -262119, 0, 0, -262118, 0, 0, -262117, 0, 0, -262116, 0, 0, -262115, 0, 0, -262114, 0, 0, -262113, 0, 0, -262112, 0, 0, -262111, 0, 0, -262110, 0, 0, -262109, 0, 0, -262108, 0, 0, -262107, 0, 0, -262106, 0, 0, -262105, 0, 0, -262104, 0, 0, -262103, 0, 0, -262102, 0, 0, -262101, 0, 0, -262100, 0, 0, -262099, 0, 0, -262098, 0, 0, -262097, 0, 0, -262096, 0, 0, -262095, 0, 0, -262094, 0, 0, -262093, 0, 0, -262092, 0, 0, -262091, 0, 0, -262090, 0, 0, -262089, 0, 0, -262088, 0, 0, -262087, 0, 0, -262086, 0, 0, -262085, 0, 0, -262084, 0, 0, -262083, 0, 0, -262082, 0, 0, -262081, 0, 0, -262080, 0, 0, -262079, 0, 0, -262078, 0, 0, -262077, 0, 0, -262076, 0, 0, -262075, 0, 0, -262074, 0, 0, -262073, 0, 0, -262072, 0, 0, -262071, 0, 0, -262070, 0, 0, -262069, 0, 0, -262068, 0, 0, -262067, 0, 0, -262066, 0, 0, -262065, 0, 0, -262064, 0, 0, -262063, 0, 0, -131080, 0, 0, -131079, 0, 0, -131078, 0, 0, -131077, 0, 0, -131076, 0, 0, -131075, 0, 0, -131074, 0, 0, -131073, 0, 0, -196608, 0, 0, -196607, 0, 0, -196606, 0, 0, -196605, 0, 0, -196604, 0, 0, -196603, 0, 0, -196602, 0, 0, -196601, 0, 0, -196600, 0, 0, -196599, 0, 0, -196598, 0, 0, -196597, 0, 0, -196596, 0, 0, -196595, 0, 0, -196594, 0, 0, -196593, 0, 0, -196592, 0, 0, -196591, 0, 0, -196590, 0, 0, -196589, 0, 0, -196588, 0, 0, -196587, 0, 0, -196586, 0, 0, -196585, 0, 0, -196584, 0, 0, -196583, 0, 0, -196582, 0, 0, -196581, 0, 0, -196580, 0, 0, -196579, 0, 0, -196578, 0, 0, -196577, 0, 0, -196576, 0, 0, -196575, 0, 0, -196574, 0, 0, -196573, 0, 0, -196572, 0, 0, -196571, 0, 0, -196570, 0, 0, -196569, 0, 0, -196568, 0, 0, -196567, 0, 0, -196566, 0, 0, -196565, 0, 0, -196564, 0, 0, -196563, 0, 0, -196562, 0, 0, -196561, 0, 0, -196560, 0, 0, -196559, 0, 0, -196558, 0, 0, -196557, 0, 0, -196556, 0, 0, -196555, 0, 0, -196554, 0, 0, -196553, 0, 0, -196552, 0, 0, -196551, 0, 0, -196550, 0, 0, -196549, 0, 0, -196548, 0, 0, -196547, 0, 0, -196546, 0, 0, -196545, 0, 0, -196544, 0, 0, -196543, 0, 0, -196542, 0, 0, -196541, 0, 0, -196540, 0, 0, -196539, 0, 0, -196538, 0, 0, -196537, 0, 0, -196536, 0, 0, -196535, 0, 0, -196534, 0, 0, -196533, 0, 0, -196532, 0, 0, -196531, 0, 0, -196530, 0, 0, -196529, 0, 0, -196528, 0, 0, -196527, 0, 0, -65544, 0, 0, -65543, 0, 0, -65542, 0, 0, -65541, 0, 0, -65540, 0, 0, -65539, 0, 0, -65538, 0, 0, -65537, 0, 0, -131072, 0, 0, -131071, 0, 0, -131070, 0, 0, -131069, 0, 0, -131068, 0, 0, -131067, 0, 0, -131066, 0, 0, -131065, 0, 0, -131064, 0, 0, -131063, 0, 0, -131062, 0, 0, -131061, 0, 0, -131060, 0, 0, -131059, 0, 0, -131058, 0, 0, -131057, 0, 0, -131056, 0, 0, -131055, 0, 0, -131054, 0, 0, -131053, 0, 0, -131052, 0, 0, -131051, 0, 0, -131050, 0, 0, -131049, 0, 0, -131048, 0, 0, -131047, 0, 0, -131046, 0, 0, -131045, 0, 0, -131044, 0, 0, -131043, 0, 0, -131042, 0, 0, -131041, 0, 0, -131040, 0, 0, -131039, 0, 0, -131038, 0, 0, -131037, 0, 0, -131036, 0, 0, -131035, 0, 0, -131034, 0, 0, -131033, 0, 0, -131032, 0, 0, -131031, 0, 0, -131030, 0, 0, -131029, 0, 0, -131028, 0, 0, -131027, 0, 0, -131026, 0, 0, -131025, 0, 0, -131024, 0, 0, -131023, 0, 0, -131022, 0, 0, -131021, 0, 0, -131020, 0, 0, -131019, 0, 0, -131018, 0, 0, -131017, 0, 0, -131016, 0, 0, -131015, 0, 0, -131014, 0, 0, -131013, 0, 0, -131012, 0, 0, -131011, 0, 0, -131010, 0, 0, -131009, 0, 0, -131008, 0, 0, -131007, 0, 0, -131006, 0, 0, -131005, 0, 0, -131004, 0, 0, -131003, 0, 0, -131002, 0, 0, -131001, 0, 0, -131000, 0, 0, -130999, 0, 0, -130998, 0, 0, -130997, 0, 0, -130996, 0, 0, -130995, 0, 0, -130994, 0, 0, -130993, 0, 0, -130992, 0, 0, -130991, 0, 0, -8, 0, 0, -7, 0, 0, -6, 0, 0, -5, 0, 0, -4, 0, 0, -3, 0, 0, -2, 0, 0, -1, 0, 0, -65536, 0, 0, -65535, 0, 0, -65534, 0, 0, -65533, 0, 0, -65532, 0, 0, -65531, 0, 0, -65530, 0, 0, -65529, 0, 0, -65528, 0, 0, -65527, 0, 0, -65526, 0, 0, -65525, 0, 0, -65524, 0, 0, -65523, 0, 0, -65522, 0, 0, -65521, 0, 0, -65520, 0, 0, -65519, 0, 0, -65518, 0, 0, -65517, 0, 0, -65516, 0, 0, -65515, 0, 0, -65514, 0, 0, -65513, 0, 0, -65512, 0, 0, -65511, 0, 0, -65510, 0, 0, -65509, 0, 0, -65508, 0, 0, -65507, 0, 0, -65506, 0, 0, -65505, 0, 0, -65504, 0, 0, -65503, 0, 0, -65502, 0, 0, -65501, 0, 0, -65500, 0, 0, -65499, 0, 0, -65498, 0, 0, -65497, 0, 0, -65496, 0, 0, -65495, 0, 0, -65494, 0, 0, -65493, 0, 0, -65492, 0, 0, -65491, 0, 0, -65490, 0, 0, -65489, 0, 0, -65488, 0, 0, -65487, 0, 0, -65486, 0, 0, -65485, 0, 0, -65484, 0, 0, -65483, 0, 0, -65482, 0, 0, -65481, 0, 0, -65480, 0, 0, -65479, 0, 0, -65478, 0, 0, -65477, 0, 0, -65476, 0, 0, -65475, 0, 0, -65474, 0, 0, -65473, 0, 0, -65472, 0, 0, -65471, 0, 0, -65470, 0, 0, -65469, 0, 0, -65468, 0, 0, -65467, 0, 0, -65466, 0, 0, -65465, 0, 0, -65464, 0, 0, -65463, 0, 0, -65462, 0, 0, -65461, 0, 0, -65460, 0, 0, -65459, 0, 0, -65458, 0, 0, -65457, 0, 0, -65456, 0, 0, -65455, 0, 0, 65528, 0, 0, 65529, 0, 0, 65530, 0, 0, 65531, 0, 0, 65532, 0, 0, 65533, 0, 0, 65534, 0, 0, 65535, 0, 0, 0, 0, 0, 1, 0, 0, 2, 0, 0, 3, 0, 0, 4, 0, 0, 5, 0, 0, 6, 0, 0, 7, 0, 0, 8, 0, 0, 9, 0, 0, 10, 0, 0, 11, 0, 0, 12, 0, 0, 13, 0, 0, 14, 0, 0, 15, 0, 0, 16, 0, 0, 17, 0, 0, 18, 0, 0, 19, 0, 0, 20, 0, 0, 21, 0, 0, 22, 0, 0, 23, 0, 0, 24, 0, 0, 25, 0, 0, 26, 0, 0, 27, 0, 0, 28, 0, 0, 29, 0, 0, 30, 0, 0, 31, 0, 0, 32, 0, 0, 33, 0, 0, 34, 0, 0, 35, 0, 0, 36, 0, 0, 37, 0, 0, 38, 0, 0, 39, 0, 0, 40, 0, 0, 41, 0, 0, 42, 0, 0, 43, 0, 0, 44, 0, 0, 45, 0, 0, 46, 0, 0, 47, 0, 0, 48, 0, 0, 49, 0, 0, 50, 0, 0, 51, 0, 0, 52, 0, 0, 53, 0, 0, 54, 0, 0, 55, 0, 0, 56, 0, 0, 57, 0, 0, 58, 0, 0, 59, 0, 0, 60, 0, 0, 61, 0, 0, 62, 0, 0, 63, 0, 0, 64, 0, 0, 65, 0, 0, 66, 0, 0, 67, 0, 0, 68, 0, 0, 69, 0, 0, 70, 0, 0, 71, 0, 0, 72, 0, 0, 73, 0, 0, 74, 0, 0, 75, 0, 0, 76, 0, 0, 77, 0, 0, 78, 0, 0, 79, 0, 0, 80, 0, 0, 81, 0, 0, 131064, 0, 0, 131065, 0, 0, 131066, 0, 0, 131067, 0, 0, 131068, 0, 0, 131069, 0, 0, 131070, 0, 0, 131071, 0, 0, 65536, 0, 0, 65537, 0, 0, 65538, 0, 0, 65539, 0, 0, 65540, 0, 0, 65541, 0, 0, 65542, 0, 0, 65543, 0, 0, 65544, 0, 0, 65545, 0, 0, 65546, 0, 0, 65547, 0, 0, 65548, 0, 0, 65549, 0, 0, 65550, 0, 0, 65551, 0, 0, 65552, 0, 0, 65553, 0, 0, 65554, 0, 0, 65555, 0, 0, 65556, 0, 0, 65557, 0, 0, 65558, 0, 0, 65559, 0, 0, 65560, 0, 0, 65561, 0, 0, 65562, 0, 0, 65563, 0, 0, 65564, 0, 0, 65565, 0, 0, 65566, 0, 0, 65567, 0, 0, 65568, 0, 0, 65569, 0, 0, 65570, 0, 0, 65571, 0, 0, 65572, 0, 0, 65573, 0, 0, 65574, 0, 0, 65575, 0, 0, 65576, 0, 0, 65577, 0, 0, 65578, 0, 0, 65579, 0, 0, 65580, 0, 0, 65581, 0, 0, 65582, 0, 0, 65583, 0, 0, 65584, 0, 0, 65585, 0, 0, 65586, 0, 0, 65587, 0, 0, 65588, 0, 0, 65589, 0, 0, 65590, 0, 0, 65591, 0, 0, 65592, 0, 0, 65593, 0, 0, 65594, 0, 0, 65595, 0, 0, 65596, 0, 0, 65597, 0, 0, 65598, 0, 0, 65599, 0, 0, 65600, 0, 0, 65601, 0, 0, 65602, 0, 0, 65603, 0, 0, 65604, 0, 0, 65605, 0, 0, 65606, 0, 0, 65607, 0, 0, 65608, 0, 0, 65609, 0, 0, 65610, 0, 0, 65611, 0, 0, 65612, 0, 0, 65613, 0, 0, 65614, 0, 0, 65615, 0, 0, 65616, 0, 0, 65617, 0, 0, 196600, 0, 0, 196601, 0, 0, 196602, 0, 0, 196603, 0, 0, 196604, 0, 0, 196605, 0, 0, 196606, 0, 0, 196607, 0, 0, 131072, 0, 0, 131073, 0, 0, 131074, 0, 655364, 131075, 0, 851969, 131076, 0, 851969, 131077, 0, 851969, 131078, 0, 851969, 131079, 0, 851969, 131080, 0, 851969, 131081, 0, 851969, 131082, 0, 851969, 131083, 0, 851969, 131084, 0, 851969, 131085, 0, 655364, 131086, 0, 0, 131087, 0, 0, 131088, 0, 0, 131089, 0, 0, 131090, 0, 0, 131091, 0, 0, 131092, 0, 0, 131093, 0, 0, 131094, 0, 0, 131095, 0, 0, 131096, 0, 0, 131097, 0, 0, 131098, 0, 0, 131099, 0, 0, 131100, 0, 0, 131101, 0, 0, 131102, 0, 0, 131103, 0, 0, 131104, 0, 0, 131105, 0, 0, 131106, 0, 0, 131107, 0, 0, 131108, 0, 0, 131109, 0, 0, 131110, 0, 0, 131111, 0, 0, 131112, 0, 0, 131113, 0, 0, 131114, 0, 0, 131115, 0, 0, 131116, 0, 0, 131117, 0, 0, 131118, 0, 0, 131119, 0, 0, 131120, 0, 0, 131121, 0, 0, 131122, 0, 0, 131123, 0, 0, 131124, 0, 0, 131125, 0, 0, 131126, 0, 0, 131127, 0, 0, 131128, 0, 0, 131129, 0, 0, 131130, 0, 0, 131131, 0, 0, 131132, 0, 0, 131133, 0, 0, 131134, 0, 0, 131135, 0, 0, 131136, 0, 0, 131137, 0, 0, 131138, 0, 0, 131139, 0, 0, 131140, 0, 0, 131141, 0, 0, 131142, 0, 0, 131143, 0, 0, 131144, 0, 0, 131145, 0, 0, 131146, 0, 0, 131147, 0, 0, 131148, 0, 0, 131149, 0, 0, 131150, 0, 0, 131151, 0, 0, 131152, 0, 0, 131153, 0, 0, 262136, 0, 0, 262137, 0, 0, 262138, 0, 0, 262139, 0, 0, 262140, 0, 0, 262141, 0, 0, 262142, 0, 0, 262143, 0, 0, 196608, 0, 0, 196609, 0, 0, 196610, 0, 655364, 196611, 0, 917504, 196612, 0, 917504, 196613, 0, 917504, 196614, 0, 917504, 196615, 0, 917504, 196616, 0, 917504, 196617, 0, 917504, 196618, 0, 917504, 196619, 0, 917505, 196620, 0, 917504, 196621, 0, 655364, 196622, 0, 0, 196623, 0, 0, 196624, 0, 0, 196625, 0, 0, 196626, 0, 0, 196627, 0, 0, 196628, 0, 0, 196629, 0, 0, 196630, 0, 0, 196631, 0, 0, 196632, 0, 0, 196633, 0, 0, 196634, 0, 0, 196635, 0, 0, 196636, 0, 0, 196637, 0, 0, 196638, 0, 0, 196639, 0, 0, 196640, 0, 0, 196641, 0, 0, 196642, 0, 0, 196643, 0, 0, 196644, 0, 0, 196645, 0, 0, 196646, 0, 0, 196647, 0, 0, 196648, 0, 0, 196649, 0, 0, 196650, 0, 0, 196651, 0, 0, 196652, 0, 0, 196653, 0, 0, 196654, 0, 0, 196655, 0, 0, 196656, 0, 0, 196657, 0, 0, 196658, 0, 0, 196659, 0, 0, 196660, 0, 0, 196661, 0, 0, 196662, 0, 0, 196663, 0, 0, 196664, 0, 0, 196665, 0, 0, 196666, 0, 0, 196667, 0, 0, 196668, 0, 0, 196669, 0, 0, 196670, 0, 0, 196671, 0, 0, 196672, 0, 0, 196673, 0, 0, 196674, 0, 0, 196675, 0, 0, 196676, 0, 0, 196677, 0, 0, 196678, 0, 0, 196679, 0, 0, 196680, 0, 0, 196681, 0, 0, 196682, 0, 0, 196683, 0, 0, 196684, 0, 0, 196685, 0, 0, 196686, 0, 0, 196687, 0, 0, 196688, 0, 0, 196689, 0, 0, 327672, 0, 0, 327673, 0, 0, 327674, 0, 0, 327675, 0, 0, 327676, 0, 0, 327677, 0, 0, 327678, 0, 0, 327679, 0, 0, 262144, 0, 0, 262145, 0, 0, 262146, 0, 655364, 262147, 0, 131073, 262148, 0, 65543, 262149, 0, 196609, 262150, 0, 196609, 262151, 0, 196609, 262152, 0, 655363, 262153, 0, 720900, 262154, 0, 720900, 262155, 0, 720900, 262156, 0, 655362, 262157, 0, 655364, 262158, 0, 0, 262159, 0, 0, 262160, 0, 0, 262161, 0, 0, 262162, 0, 0, 262163, 0, 0, 262164, 0, 0, 262165, 0, 0, 262166, 0, 0, 262167, 0, 0, 262168, 0, 0, 262169, 0, 0, 262170, 0, 0, 262171, 0, 0, 262172, 0, 0, 262173, 0, 0, 262174, 0, 0, 262175, 0, 0, 262176, 0, 0, 262177, 0, 0, 262178, 0, 0, 262179, 0, 0, 262180, 0, 0, 262181, 0, 0, 262182, 0, 0, 262183, 0, 0, 262184, 0, 0, 262185, 0, 0, 262186, 0, 0, 262187, 0, 0, 262188, 0, 0, 262189, 0, 0, 262190, 0, 0, 262191, 0, 0, 262192, 0, 0, 262193, 0, 0, 262194, 0, 0, 262195, 0, 0, 262196, 0, 0, 262197, 0, 0, 262198, 0, 0, 262199, 0, 0, 262200, 0, 0, 262201, 0, 0, 262202, 0, 0, 262203, 0, 0, 262204, 0, 0, 262205, 0, 0, 262206, 0, 0, 262207, 0, 0, 262208, 0, 0, 262209, 0, 0, 262210, 0, 0, 262211, 0, 0, 262212, 0, 0, 262213, 0, 0, 262214, 0, 0, 262215, 0, 0, 262216, 0, 0, 262217, 0, 0, 262218, 0, 0, 262219, 0, 0, 262220, 0, 0, 262221, 0, 0, 262222, 0, 0, 262223, 0, 0, 262224, 0, 0, 262225, 0, 0, 393208, 0, 0, 393209, 0, 0, 393210, 0, 0, 393211, 0, 0, 393212, 0, 0, 393213, 0, 0, 393214, 0, 0, 393215, 0, 0, 327680, 0, 0, 327681, 0, 0, 327682, 0, 655364, 327683, 0, 131075, 327684, 0, 196608, 327685, 0, 196609, 327686, 0, 196609, 327687, 0, 655367, 327688, 0, 196609, 327689, 0, 196609, 327690, 0, 851968, 327691, 0, 720900, 327692, 0, 655363, 327693, 0, 655364, 327694, 0, 0, 327695, 0, 0, 327696, 0, 0, 327697, 0, 0, 327698, 0, 0, 327699, 0, 0, 327700, 0, 0, 327701, 0, 0, 327702, 0, 0, 327703, 0, 0, 327704, 0, 0, 327705, 0, 0, 327706, 0, 0, 327707, 0, 0, 327708, 0, 0, 327709, 0, 0, 327710, 0, 0, 327711, 0, 0, 327712, 0, 0, 327713, 0, 0, 327714, 0, 0, 327715, 0, 0, 327716, 0, 0, 327717, 0, 0, 327718, 0, 0, 327719, 0, 0, 327720, 0, 0, 327721, 0, 0, 327722, 0, 0, 327723, 0, 0, 327724, 0, 0, 327725, 0, 0, 327726, 0, 0, 327727, 0, 0, 327728, 0, 0, 327729, 0, 0, 327730, 0, 0, 327731, 0, 0, 327732, 0, 0, 327733, 0, 0, 327734, 0, 0, 327735, 0, 0, 327736, 0, 0, 327737, 0, 0, 327738, 0, 0, 327739, 0, 0, 327740, 0, 0, 327741, 0, 0, 327742, 0, 0, 327743, 0, 0, 327744, 0, 0, 327745, 0, 0, 327746, 0, 0, 327747, 0, 0, 327748, 0, 0, 327749, 0, 0, 327750, 0, 0, 327751, 0, 0, 327752, 0, 0, 327753, 0, 0, 327754, 0, 0, 327755, 0, 0, 327756, 0, 0, 327757, 0, 0, 327758, 0, 0, 327759, 0, 0, 327760, 0, 0, 327761, 0, 0, 458744, 0, 0, 458745, 0, 0, 458746, 0, 0, 458747, 0, 0, 458748, 0, 0, 458749, 0, 0, 458750, 0, 0, 458751, 0, 0, 393216, 0, 0, 393217, 0, 0, 393218, 0, 655364, 393219, 0, 196609, 393220, 0, 196609, 393221, 0, 917507, 393222, 0, 917507, 393223, 0, 196609, 393224, 0, 196609, 393225, 0, 196609, 393226, 0, 196609, 393227, 0, 655363, 393228, 0, 655363, 393229, 0, 655364, 393230, 0, 0, 393231, 0, 0, 393232, 0, 0, 393233, 0, 0, 393234, 0, 0, 393235, 0, 0, 393236, 0, 0, 393237, 0, 0, 393238, 0, 0, 393239, 0, 0, 393240, 0, 0, 393241, 0, 0, 393242, 0, 0, 393243, 0, 0, 393244, 0, 0, 393245, 0, 0, 393246, 0, 0, 393247, 0, 0, 393248, 0, 0, 393249, 0, 0, 393250, 0, 0, 393251, 0, 0, 393252, 0, 0, 393253, 0, 0, 393254, 0, 0, 393255, 0, 0, 393256, 0, 0, 393257, 0, 0, 393258, 0, 0, 393259, 0, 0, 393260, 0, 0, 393261, 0, 0, 393262, 0, 0, 393263, 0, 0, 393264, 0, 0, 393265, 0, 0, 393266, 0, 0, 393267, 0, 0, 393268, 0, 0, 393269, 0, 0, 393270, 0, 0, 393271, 0, 0, 393272, 0, 0, 393273, 0, 0, 393274, 0, 0, 393275, 0, 0, 393276, 0, 0, 393277, 0, 0, 393278, 0, 0, 393279, 0, 0, 393280, 0, 0, 393281, 0, 0, 393282, 0, 0, 393283, 0, 0, 393284, 0, 0, 393285, 0, 0, 393286, 0, 0, 393287, 0, 0, 393288, 0, 0, 393289, 0, 0, 393290, 0, 0, 393291, 0, 0, 393292, 0, 0, 393293, 0, 0, 393294, 0, 0, 393295, 0, 0, 393296, 0, 0, 393297, 0, 0, 524280, 0, 0, 524281, 0, 0, 524282, 0, 0, 524283, 0, 0, 524284, 0, 0, 524285, 0, 0, 524286, 0, 0, 524287, 0, 0, 458752, 0, 0, 458753, 0, 0, 458754, 0, 851969, 458755, 0, 655365, 458756, 0, 196609, 458757, 0, 917509, 458758, 0, 917509, 458759, 0, 196609, 458760, 0, 196609, 458761, 0, 655367, 458762, 0, 196609, 458763, 0, 196609, 458764, 0, 720896, 458765, 0, 720903, 458766, 0, 0, 458767, 0, 0, 458768, 0, 0, 458769, 0, 0, 458770, 0, 0, 458771, 0, 0, 458772, 0, 0, 458773, 0, 0, 458774, 0, 0, 458775, 0, 0, 458776, 0, 0, 458777, 0, 0, 458778, 0, 0, 458779, 0, 0, 458780, 0, 0, 458781, 0, 0, 458782, 0, 0, 458783, 0, 0, 458784, 0, 0, 458785, 0, 0, 458786, 0, 0, 458787, 0, 0, 458788, 0, 0, 458789, 0, 0, 458790, 0, 0, 458791, 0, 0, 458792, 0, 0, 458793, 0, 0, 458794, 0, 0, 458795, 0, 0, 458796, 0, 0, 458797, 0, 0, 458798, 0, 0, 458799, 0, 0, 458800, 0, 0, 458801, 0, 0, 458802, 0, 0, 458803, 0, 0, 458804, 0, 0, 458805, 0, 0, 458806, 0, 0, 458807, 0, 0, 458808, 0, 0, 458809, 0, 0, 458810, 0, 0, 458811, 0, 0, 458812, 0, 0, 458813, 0, 0, 458814, 0, 0, 458815, 0, 0, 458816, 0, 0, 458817, 0, 0, 458818, 0, 0, 458819, 0, 0, 458820, 0, 0, 458821, 0, 0, 458822, 0, 0, 458823, 0, 0, 458824, 0, 0, 458825, 0, 0, 458826, 0, 0, 458827, 0, 0, 458828, 0, 0, 458829, 0, 0, 458830, 0, 0, 458831, 0, 0, 458832, 0, 0, 458833, 0, 0, 589816, 0, 0, 589817, 0, 0, 589818, 0, 0, 589819, 0, 0, 589820, 0, 0, 589821, 0, 0, 589822, 0, 0, 589823, 0, 0, 524288, 0, 0, 524289, 0, 720899, 524290, 0, 851972, 524291, 0, 786432, 524292, 0, 196609, 524293, 0, 196609, 524294, 0, 196609, 524295, 0, 196609, 524296, 0, 196609, 524297, 0, 196609, 524298, 0, 196609, 524299, 0, 720896, 524300, 0, 720896, 524301, 0, 786439, 524302, 0, 720902, 524303, 0, 0, 524304, 0, 0, 524305, 0, 0, 524306, 0, 0, 524307, 0, 0, 524308, 0, 0, 524309, 0, 0, 524310, 0, 0, 524311, 0, 0, 524312, 0, 0, 524313, 0, 0, 524314, 0, 0, 524315, 0, 0, 524316, 0, 0, 524317, 0, 0, 524318, 0, 0, 524319, 0, 0, 524320, 0, 0, 524321, 0, 0, 524322, 0, 0, 524323, 0, 0, 524324, 0, 0, 524325, 0, 0, 524326, 0, 0, 524327, 0, 0, 524328, 0, 0, 524329, 0, 0, 524330, 0, 0, 524331, 0, 0, 524332, 0, 0, 524333, 0, 0, 524334, 0, 0, 524335, 0, 0, 524336, 0, 0, 524337, 0, 0, 524338, 0, 0, 524339, 0, 0, 524340, 0, 0, 524341, 0, 0, 524342, 0, 0, 524343, 0, 0, 524344, 0, 0, 524345, 0, 0, 524346, 0, 0, 524347, 0, 0, 524348, 0, 0, 524349, 0, 0, 524350, 0, 0, 524351, 0, 0, 524352, 0, 0, 524353, 0, 0, 524354, 0, 0, 524355, 0, 0, 524356, 0, 0, 524357, 0, 0, 524358, 0, 0, 524359, 0, 0, 524360, 0, 0, 524361, 0, 0, 524362, 0, 0, 524363, 0, 0, 524364, 0, 0, 524365, 0, 0, 524366, 0, 0, 524367, 0, 0, 524368, 0, 0, 524369, 0, 0, 655352, 0, 0, 655353, 0, 0, 655354, 0, 0, 655355, 0, 0, 655356, 0, 0, 655357, 0, 0, 655358, 0, 0, 655359, 0, 0, 589824, 0, 0, 589825, 0, 0, 589826, 0, 851971, 589827, 0, 327686, 589828, 0, 851970, 589829, 0, 851971, 589830, 0, 720897, 589831, 0, 655363, 589832, 0, 851970, 589833, 0, 851970, 589834, 0, 851970, 589835, 0, 851971, 589836, 0, 327686, 589837, 0, 851970, 589838, 0, 720902, 589839, 0, 0, 589840, 0, 0, 589841, 0, 0, 589842, 0, 0, 589843, 0, 0, 589844, 0, 0, 589845, 0, 0, 589846, 0, 0, 589847, 0, 0, 589848, 0, 0, 589849, 0, 0, 589850, 0, 0, 589851, 0, 0, 589852, 0, 0, 589853, 0, 0, 589854, 0, 0, 589855, 0, 0, 589856, 0, 0, 589857, 0, 0, 589858, 0, 0, 589859, 0, 0, 589860, 0, 0, 589861, 0, 0, 589862, 0, 0, 589863, 0, 0, 589864, 0, 0, 589865, 0, 0, 589866, 0, 0, 589867, 0, 0, 589868, 0, 0, 589869, 0, 0, 589870, 0, 0, 589871, 0, 0, 589872, 0, 0, 589873, 0, 0, 589874, 0, 0, 589875, 0, 0, 589876, 0, 0, 589877, 0, 0, 589878, 0, 0, 589879, 0, 0, 589880, 0, 0, 589881, 0, 0, 589882, 0, 0, 589883, 0, 0, 589884, 0, 0, 589885, 0, 0, 589886, 0, 0, 589887, 0, 0, 589888, 0, 0, 589889, 0, 0, 589890, 0, 0, 589891, 0, 0, 589892, 0, 0, 589893, 0, 0, 589894, 0, 0, 589895, 0, 0, 589896, 0, 0, 589897, 0, 0, 589898, 0, 0, 589899, 0, 0, 589900, 0, 0, 589901, 0, 0, 589902, 0, 0, 589903, 0, 0, 589904, 0, 0, 589905, 0, 0, 720888, 0, 0, 720889, 0, 0, 720890, 0, 0, 720891, 0, 0, 720892, 0, 0, 720893, 0, 0, 720894, 0, 0, 720895, 0, 0, 655360, 0, 0, 655361, 0, 0, 655362, 0, 0, 655363, 0, 0, 655364, 0, 0, 655365, 0, 720899, 655366, 0, 196609, 655367, 0, 720896, 655368, 0, 720902, 655369, 0, 0, 655370, 0, 0, 655371, 0, 0, 655372, 0, 0, 655373, 0, 0, 655374, 0, 0, 655375, 0, 0, 655376, 0, 0, 655377, 0, 0, 655378, 0, 0, 655379, 0, 0, 655380, 0, 0, 655381, 0, 0, 655382, 0, 0, 655383, 0, 0, 655384, 0, 0, 655385, 0, 0, 655386, 0, 0, 655387, 0, 0, 655388, 0, 0, 655389, 0, 0, 655390, 0, 0, 655391, 0, 0, 655392, 0, 0, 655393, 0, 0, 655394, 0, 0, 655395, 0, 0, 655396, 0, 0, 655397, 0, 0, 655398, 0, 0, 655399, 0, 0, 655400, 0, 0, 655401, 0, 0, 655402, 0, 0, 655403, 0, 0, 655404, 0, 0, 655405, 0, 0, 655406, 0, 0, 655407, 0, 0, 655408, 0, 0, 655409, 0, 0, 655410, 0, 0, 655411, 0, 0, 655412, 0, 0, 655413, 0, 0, 655414, 0, 0, 655415, 0, 0, 655416, 0, 0, 655417, 0, 0, 655418, 0, 0, 655419, 0, 0, 655420, 0, 0, 655421, 0, 0, 655422, 0, 0, 655423, 0, 0, 655424, 0, 0, 655425, 0, 0, 655426, 0, 0, 655427, 0, 0, 655428, 0, 0, 655429, 0, 0, 655430, 0, 0, 655431, 0, 0, 655432, 0, 0, 655433, 0, 0, 655434, 0, 0, 655435, 0, 0, 655436, 0, 0, 655437, 0, 0, 655438, 0, 0, 655439, 0, 0, 655440, 0, 0, 655441, 0, 0, 786424, 0, 0, 786425, 0, 0, 786426, 0, 0, 786427, 0, 0, 786428, 0, 0, 786429, 0, 0, 786430, 0, 0, 786431, 0, 0, 720896, 0, 0, 720897, 0, 0, 720898, 0, 0, 720899, 0, 0, 720900, 0, 0, 720901, 0, 720899, 720902, 0, 196609, 720903, 0, 720896, 720904, 0, 720902, 720905, 0, 0, 720906, 0, 0, 720907, 0, 0, 720908, 0, 0, 720909, 0, 0, 720910, 0, 0, 720911, 0, 0, 720912, 0, 0, 720913, 0, 0, 720914, 0, 0, 720915, 0, 0, 720916, 0, 0, 720917, 0, 0, 720918, 0, 0, 720919, 0, 0, 720920, 0, 0, 720921, 0, 0, 720922, 0, 0, 720923, 0, 0, 720924, 0, 0, 720925, 0, 0, 720926, 0, 0, 720927, 0, 0, 720928, 0, 0, 720929, 0, 0, 720930, 0, 0, 720931, 0, 0, 720932, 0, 0, 720933, 0, 0, 720934, 0, 0, 720935, 0, 0, 720936, 0, 0, 720937, 0, 0, 720938, 0, 0, 720939, 0, 0, 720940, 0, 0, 720941, 0, 0, 720942, 0, 0, 720943, 0, 0, 720944, 0, 0, 720945, 0, 0, 720946, 0, 0, 720947, 0, 0, 720948, 0, 0, 720949, 0, 0, 720950, 0, 0, 720951, 0, 0, 720952, 0, 0, 720953, 0, 0, 720954, 0, 0, 720955, 0, 0, 720956, 0, 0, 720957, 0, 0, 720958, 0, 0, 720959, 0, 0, 720960, 0, 0, 720961, 0, 0, 720962, 0, 0, 720963, 0, 0, 720964, 0, 0, 720965, 0, 0, 720966, 0, 0, 720967, 0, 0, 720968, 0, 0, 720969, 0, 0, 720970, 0, 0, 720971, 0, 0, 720972, 0, 0, 720973, 0, 0, 720974, 0, 0, 720975, 0, 0, 720976, 0, 0, 720977, 0, 0, 851960, 0, 0, 851961, 0, 0, 851962, 0, 0, 851963, 0, 0, 851964, 0, 0, 851965, 0, 0, 851966, 0, 0, 851967, 0, 0, 786432, 0, 0, 786433, 0, 0, 786434, 0, 0, 786435, 0, 0, 786436, 0, 0, 786437, 0, 720899, 786438, 0, 196609, 786439, 0, 196609, 786440, 0, 720902, 786441, 0, 0, 786442, 0, 0, 786443, 0, 0, 786444, 0, 0, 786445, 0, 0, 786446, 0, 0, 786447, 0, 0, 786448, 0, 0, 786449, 0, 0, 786450, 0, 0, 786451, 0, 0, 786452, 0, 0, 786453, 0, 0, 786454, 0, 0, 786455, 0, 0, 786456, 0, 0, 786457, 0, 0, 786458, 0, 0, 786459, 0, 0, 786460, 0, 0, 786461, 0, 0, 786462, 0, 0, 786463, 0, 0, 786464, 0, 0, 786465, 0, 0, 786466, 0, 0, 786467, 0, 0, 786468, 0, 0, 786469, 0, 0, 786470, 0, 0, 786471, 0, 0, 786472, 0, 0, 786473, 0, 0, 786474, 0, 0, 786475, 0, 0, 786476, 0, 0, 786477, 0, 0, 786478, 0, 0, 786479, 0, 0, 786480, 0, 0, 786481, 0, 0, 786482, 0, 0, 786483, 0, 0, 786484, 0, 0, 786485, 0, 0, 786486, 0, 0, 786487, 0, 0, 786488, 0, 0, 786489, 0, 0, 786490, 0, 0, 786491, 0, 0, 786492, 0, 0, 786493, 0, 0, 786494, 0, 0, 786495, 0, 0, 786496, 0, 0, 786497, 0, 0, 786498, 0, 0, 786499, 0, 0, 786500, 0, 0, 786501, 0, 0, 786502, 0, 0, 786503, 0, 0, 786504, 0, 0, 786505, 0, 0, 786506, 0, 0, 786507, 0, 0, 786508, 0, 0, 786509, 0, 0, 786510, 0, 0, 786511, 0, 0, 786512, 0, 0, 786513, 0, 0, 917496, 0, 0, 917497, 0, 0, 917498, 0, 0, 917499, 0, 0, 917500, 0, 0, 917501, 0, 0, 917502, 0, 0, 917503, 0, 0, 851968, 0, 0, 851969, 0, 0, 851970, 0, 655364, 851971, 0, 851969, 851972, 0, 851969, 851973, 0, 655365, 851974, 0, 196609, 851975, 0, 196609, 851976, 0, 655364, 851977, 0, 851969, 851978, 0, 851969, 851979, 0, 851969, 851980, 0, 851969, 851981, 0, 655364, 851982, 0, 0, 851983, 0, 0, 851984, 0, 0, 851985, 0, 0, 851986, 0, 0, 851987, 0, 0, 851988, 0, 0, 851989, 0, 0, 851990, 0, 0, 851991, 0, 0, 851992, 0, 0, 851993, 0, 0, 851994, 0, 0, 851995, 0, 0, 851996, 0, 0, 851997, 0, 0, 851998, 0, 0, 851999, 0, 0, 852000, 0, 0, 852001, 0, 0, 852002, 0, 0, 852003, 0, 0, 852004, 0, 0, 852005, 0, 0, 852006, 0, 0, 852007, 0, 0, 852008, 0, 0, 852009, 0, 0, 852010, 0, 0, 852011, 0, 0, 852012, 0, 0, 852013, 0, 0, 852014, 0, 0, 852015, 0, 0, 852016, 0, 0, 852017, 0, 0, 852018, 0, 0, 852019, 0, 0, 852020, 0, 0, 852021, 0, 0, 852022, 0, 0, 852023, 0, 0, 852024, 0, 0, 852025, 0, 0, 852026, 0, 0, 852027, 0, 0, 852028, 0, 0, 852029, 0, 0, 852030, 0, 0, 852031, 0, 0, 852032, 0, 0, 852033, 0, 0, 852034, 0, 0, 852035, 0, 0, 852036, 0, 0, 852037, 0, 0, 852038, 0, 0, 852039, 0, 0, 852040, 0, 0, 852041, 0, 0, 852042, 0, 0, 852043, 0, 0, 852044, 0, 0, 852045, 0, 0, 852046, 0, 0, 852047, 0, 0, 852048, 0, 0, 852049, 0, 0, 983032, 0, 0, 983033, 0, 0, 983034, 0, 0, 983035, 0, 0, 983036, 0, 0, 983037, 0, 0, 983038, 0, 0, 983039, 0, 0, 917504, 0, 0, 917505, 0, 0, 917506, 0, 655364, 917507, 0, 917504, 917508, 0, 851972, 917509, 0, 786432, 917510, 0, 655366, 917511, 0, 196609, 917512, 0, 720903, 917513, 0, 917506, 917514, 0, 917504, 917515, 0, 917504, 917516, 0, 917506, 917517, 0, 655364, 917518, 0, 0, 917519, 0, 0, 917520, 0, 0, 917521, 0, 0, 917522, 0, 0, 917523, 0, 0, 917524, 0, 0, 917525, 0, 0, 917526, 0, 0, 917527, 0, 0, 917528, 0, 0, 917529, 0, 0, 917530, 0, 0, 917531, 0, 0, 917532, 0, 0, 917533, 0, 0, 917534, 0, 0, 917535, 0, 0, 917536, 0, 0, 917537, 0, 0, 917538, 0, 0, 917539, 0, 0, 917540, 0, 0, 917541, 0, 0, 917542, 0, 0, 917543, 0, 0, 917544, 0, 0, 917545, 0, 0, 917546, 0, 0, 917547, 0, 0, 917548, 0, 0, 917549, 0, 0, 917550, 0, 0, 917551, 0, 0, 917552, 0, 0, 917553, 0, 0, 917554, 0, 0, 917555, 0, 0, 917556, 0, 0, 917557, 0, 0, 917558, 0, 0, 917559, 0, 0, 917560, 0, 0, 917561, 0, 0, 917562, 0, 0, 917563, 0, 0, 917564, 0, 0, 917565, 0, 0, 917566, 0, 0, 917567, 0, 0, 917568, 0, 0, 917569, 0, 0, 917570, 0, 0, 917571, 0, 0, 917572, 0, 0, 917573, 0, 0, 917574, 0, 0, 917575, 0, 0, 917576, 0, 0, 917577, 0, 0, 917578, 0, 0, 917579, 0, 0, 917580, 0, 0, 917581, 0, 0, 917582, 0, 0, 917583, 0, 0, 917584, 0, 0, 917585, 0, 0, 1048568, 0, 0, 1048569, 0, 0, 1048570, 0, 0, 1048571, 0, 0, 1048572, 0, 0, 1048573, 0, 0, 1048574, 0, 0, 1048575, 0, 0, 983040, 0, 0, 983041, 0, 0, 983042, 0, 655364, 983043, 0, 196609, 983044, 0, 196609, 983045, 0, 196609, 983046, 0, 196609, 983047, 0, 196609, 983048, 0, 786439, 983049, 0, 196609, 983050, 0, 720896, 983051, 0, 720896, 983052, 0, 720896, 983053, 0, 655364, 983054, 0, 0, 983055, 0, 0, 983056, 0, 0, 983057, 0, 0, 983058, 0, 0, 983059, 0, 0, 983060, 0, 0, 983061, 0, 0, 983062, 0, 0, 983063, 0, 0, 983064, 0, 0, 983065, 0, 0, 983066, 0, 0, 983067, 0, 0, 983068, 0, 0, 983069, 0, 0, 983070, 0, 0, 983071, 0, 0, 983072, 0, 0, 983073, 0, 0, 983074, 0, 0, 983075, 0, 0, 983076, 0, 0, 983077, 0, 0, 983078, 0, 0, 983079, 0, 0, 983080, 0, 0, 983081, 0, 0, 983082, 0, 0, 983083, 0, 0, 983084, 0, 0, 983085, 0, 0, 983086, 0, 0, 983087, 0, 0, 983088, 0, 0, 983089, 0, 0, 983090, 0, 0, 983091, 0, 0, 983092, 0, 0, 983093, 0, 0, 983094, 0, 0, 983095, 0, 0, 983096, 0, 0, 983097, 0, 0, 983098, 0, 0, 983099, 0, 0, 983100, 0, 0, 983101, 0, 0, 983102, 0, 0, 983103, 0, 0, 983104, 0, 0, 983105, 0, 0, 983106, 0, 0, 983107, 0, 0, 983108, 0, 0, 983109, 0, 0, 983110, 0, 0, 983111, 0, 0, 983112, 0, 0, 983113, 0, 0, 983114, 0, 0, 983115, 0, 0, 983116, 0, 0, 983117, 0, 0, 983118, 0, 0, 983119, 0, 0, 983120, 0, 0, 983121, 0, 0, 1114104, 0, 0, 1114105, 0, 0, 1114106, 0, 0, 1114107, 0, 0, 1114108, 0, 0, 1114109, 0, 0, 1114110, 0, 0, 1114111, 0, 0, 1048576, 0, 0, 1048577, 0, 0, 1048578, 0, 655364, 1048579, 0, 196609, 1048580, 0, 196609, 1048581, 0, 196609, 1048582, 0, 196609, 1048583, 0, 196609, 1048584, 0, 196609, 1048585, 0, 196609, 1048586, 0, 196609, 1048587, 0, 196609, 1048588, 0, 655363, 1048589, 0, 851969, 1048590, 0, 851969, 1048591, 0, 851969, 1048592, 0, 655364, 1048593, 0, 0, 1048594, 0, 0, 1048595, 0, 0, 1048596, 0, 0, 1048597, 0, 0, 1048598, 0, 0, 1048599, 0, 655364, 1048600, 0, 851969, 1048601, 0, 851969, 1048602, 0, 851969, 1048603, 0, 655364, 1048604, 0, 851969, 1048605, 0, 851969, 1048606, 0, 851969, 1048607, 0, 851969, 1048608, 0, 851969, 1048609, 0, 851969, 1048610, 0, 851969, 1048611, 0, 851969, 1048612, 0, 851969, 1048613, 0, 851969, 1048614, 0, 851969, 1048615, 0, 655364, 1048616, 0, 0, 1048617, 0, 0, 1048618, 0, 0, 1048619, 0, 0, 1048620, 0, 0, 1048621, 0, 0, 1048622, 0, 0, 1048623, 0, 0, 1048624, 0, 0, 1048625, 0, 0, 1048626, 0, 0, 1048627, 0, 0, 1048628, 0, 0, 1048629, 0, 0, 1048630, 0, 0, 1048631, 0, 0, 1048632, 0, 0, 1048633, 0, 0, 1048634, 0, 0, 1048635, 0, 0, 1048636, 0, 0, 1048637, 0, 0, 1048638, 0, 0, 1048639, 0, 0, 1048640, 0, 0, 1048641, 0, 0, 1048642, 0, 0, 1048643, 0, 0, 1048644, 0, 0, 1048645, 0, 0, 1048646, 0, 0, 1048647, 0, 0, 1048648, 0, 0, 1048649, 0, 0, 1048650, 0, 0, 1048651, 0, 0, 1048652, 0, 0, 1048653, 0, 0, 1048654, 0, 0, 1048655, 0, 0, 1048656, 0, 0, 1048657, 0, 0, 1179640, 0, 0, 1179641, 0, 0, 1179642, 0, 0, 1179643, 0, 0, 1179644, 0, 0, 1179645, 0, 0, 1179646, 0, 0, 1179647, 0, 0, 1114112, 0, 0, 1114113, 0, 0, 1114114, 0, 655364, 1114115, 0, 196609, 1114116, 0, 196609, 1114117, 0, 196609, 1114118, 0, 196609, 1114119, 0, 196609, 1114120, 0, 196609, 1114121, 0, 196609, 1114122, 0, 196609, 1114123, 0, 196609, 1114124, 0, 196609, 1114125, 0, 917504, 1114126, 0, 917506, 1114127, 0, 917504, 1114128, 0, 655364, 1114129, 0, 0, 1114130, 0, 0, 1114131, 0, 0, 1114132, 0, 0, 1114133, 0, 0, 1114134, 0, 0, 1114135, 0, 655364, 1114136, 0, 917504, 1114137, 0, 917504, 1114138, 0, 917504, 1114139, 0, 655364, 1114140, 0, 917504, 1114141, 0, 917504, 1114142, 0, 917504, 1114143, 0, 917504, 1114144, 0, 917504, 1114145, 0, 917504, 1114146, 0, 917504, 1114147, 0, 917504, 1114148, 0, 917504, 1114149, 0, 917504, 1114150, 0, 917504, 1114151, 0, 655364, 1114152, 0, 0, 1114153, 0, 0, 1114154, 0, 0, 1114155, 0, 0, 1114156, 0, 0, 1114157, 0, 0, 1114158, 0, 0, 1114159, 0, 0, 1114160, 0, 0, 1114161, 0, 0, 1114162, 0, 0, 1114163, 0, 0, 1114164, 0, 0, 1114165, 0, 0, 1114166, 0, 0, 1114167, 0, 0, 1114168, 0, 0, 1114169, 0, 0, 1114170, 0, 0, 1114171, 0, 0, 1114172, 0, 0, 1114173, 0, 0, 1114174, 0, 0, 1114175, 0, 0, 1114176, 0, 0, 1114177, 0, 0, 1114178, 0, 0, 1114179, 0, 0, 1114180, 0, 0, 1114181, 0, 0, 1114182, 0, 0, 1114183, 0, 0, 1114184, 0, 0, 1114185, 0, 0, 1114186, 0, 0, 1114187, 0, 0, 1114188, 0, 0, 1114189, 0, 0, 1114190, 0, 0, 1114191, 0, 0, 1114192, 0, 0, 1114193, 0, 0, 1245176, 0, 0, 1245177, 0, 0, 1245178, 0, 0, 1245179, 0, 0, 1245180, 0, 0, 1245181, 0, 0, 1245182, 0, 0, 1245183, 0, 0, 1179648, 0, 0, 1179649, 0, 0, 1179650, 0, 655364, 1179651, 0, 196609, 1179652, 0, 196609, 1179653, 0, 655367, 1179654, 0, 196609, 1179655, 0, 196609, 1179656, 0, 196609, 1179657, 0, 196609, 1179658, 0, 196609, 1179659, 0, 196609, 1179660, 0, 196609, 1179661, 0, 196608, 1179662, 0, 131072, 1179663, 0, 131076, 1179664, 0, 851969, 1179665, 0, 0, 1179666, 0, 0, 1179667, 0, 0, 1179668, 0, 0, 1179669, 0, 0, 1179670, 0, 0, 1179671, 0, 851969, 1179672, 0, 196609, 1179673, 0, 196609, 1179674, 0, 196609, 1179675, 0, 655364, 1179676, 0, 196609, 1179677, 0, 196609, 1179678, 0, 196609, 1179679, 0, 196609, 1179680, 0, 196609, 1179681, 0, 196609, 1179682, 0, 196609, 1179683, 0, 196609, 1179684, 0, 196609, 1179685, 0, 196609, 1179686, 0, 196609, 1179687, 0, 655364, 1179688, 0, 0, 1179689, 0, 0, 1179690, 0, 0, 1179691, 0, 0, 1179692, 0, 0, 1179693, 0, 0, 1179694, 0, 0, 1179695, 0, 0, 1179696, 0, 0, 1179697, 0, 0, 1179698, 0, 0, 1179699, 0, 0, 1179700, 0, 0, 1179701, 0, 0, 1179702, 0, 0, 1179703, 0, 0, 1179704, 0, 0, 1179705, 0, 0, 1179706, 0, 0, 1179707, 0, 0, 1179708, 0, 0, 1179709, 0, 0, 1179710, 0, 0, 1179711, 0, 0, 1179712, 0, 0, 1179713, 0, 0, 1179714, 0, 0, 1179715, 0, 0, 1179716, 0, 0, 1179717, 0, 0, 1179718, 0, 0, 1179719, 0, 0, 1179720, 0, 0, 1179721, 0, 0, 1179722, 0, 0, 1179723, 0, 0, 1179724, 0, 0, 1179725, 0, 0, 1179726, 0, 0, 1179727, 0, 0, 1179728, 0, 0, 1179729, 0, 0, 1310712, 0, 0, 1310713, 0, 0, 1310714, 0, 0, 1310715, 0, 0, 1310716, 0, 0, 1310717, 0, 0, 1310718, 0, 0, 1310719, 0, 0, 1245184, 0, 0, 1245185, 0, 0, 1245186, 0, 655364, 1245187, 0, 851968, 1245188, 0, 196609, 1245189, 0, 196609, 1245190, 0, 196609, 1245191, 0, 196609, 1245192, 0, 196609, 1245193, 0, 196609, 1245194, 0, 196609, 1245195, 0, 196609, 1245196, 0, 196609, 1245197, 0, 196608, 1245198, 0, 65543, 1245199, 0, 131076, 1245200, 0, 786432, 1245201, 0, 0, 1245202, 0, 0, 1245203, 0, 0, 1245204, 0, 0, 1245205, 0, 0, 1245206, 0, 0, 1245207, 0, 917504, 1245208, 0, 196609, 1245209, 0, 196609, 1245210, 0, 196609, 1245211, 0, 655364, 1245212, 0, 196609, 1245213, 0, 196609, 1245214, 0, 196609, 1245215, 0, 196609, 1245216, 0, 196609, 1245217, 0, 196609, 1245218, 0, 196609, 1245219, 0, 196609, 1245220, 0, 196609, 1245221, 0, 917507, 1245222, 0, 917507, 1245223, 0, 655364, 1245224, 0, 0, 1245225, 0, 0, 1245226, 0, 0, 1245227, 0, 0, 1245228, 0, 0, 1245229, 0, 0, 1245230, 0, 0, 1245231, 0, 0, 1245232, 0, 0, 1245233, 0, 0, 1245234, 0, 0, 1245235, 0, 0, 1245236, 0, 0, 1245237, 0, 0, 1245238, 0, 0, 1245239, 0, 0, 1245240, 0, 0, 1245241, 0, 0, 1245242, 0, 0, 1245243, 0, 0, 1245244, 0, 0, 1245245, 0, 0, 1245246, 0, 0, 1245247, 0, 0, 1245248, 0, 0, 1245249, 0, 0, 1245250, 0, 0, 1245251, 0, 0, 1245252, 0, 0, 1245253, 0, 0, 1245254, 0, 0, 1245255, 0, 0, 1245256, 0, 0, 1245257, 0, 0, 1245258, 0, 0, 1245259, 0, 0, 1245260, 0, 0, 1245261, 0, 0, 1245262, 0, 0, 1245263, 0, 0, 1245264, 0, 0, 1245265, 0, 0, 1376248, 0, 0, 1376249, 0, 0, 1376250, 0, 0, 1376251, 0, 0, 1376252, 0, 0, 1376253, 0, 0, 1376254, 0, 0, 1376255, 0, 0, 1310720, 0, 0, 1310721, 0, 0, 1310722, 0, 655364, 1310723, 0, 851968, 1310724, 0, 851968, 1310725, 0, 196609, 1310726, 0, 196609, 1310727, 0, 196609, 1310728, 0, 196609, 1310729, 0, 196609, 1310730, 0, 196609, 1310731, 0, 196609, 1310732, 0, 196609, 1310733, 0, 196608, 1310734, 0, 65543, 1310735, 0, 131076, 1310736, 0, 65543, 1310737, 0, 65543, 1310738, 0, 65543, 1310739, 0, 65543, 1310740, 0, 65543, 1310741, 0, 65543, 1310742, 0, 65543, 1310743, 0, 196609, 1310744, 0, 196609, 1310745, 0, 196609, 1310746, 0, 196609, 1310747, 0, 655364, 1310748, 0, 196609, 1310749, 0, 196609, 1310750, 0, 196609, 1310751, 0, 196609, 1310752, 0, 196609, 1310753, 0, 196609, 1310754, 0, 196609, 1310755, 0, 196609, 1310756, 0, 196609, 1310757, 0, 917509, 1310758, 0, 917508, 1310759, 0, 655364, 1310760, 0, 0, 1310761, 0, 0, 1310762, 0, 0, 1310763, 0, 0, 1310764, 0, 0, 1310765, 0, 0, 1310766, 0, 0, 1310767, 0, 0, 1310768, 0, 0, 1310769, 0, 0, 1310770, 0, 0, 1310771, 0, 0, 1310772, 0, 0, 1310773, 0, 0, 1310774, 0, 0, 1310775, 0, 0, 1310776, 0, 0, 1310777, 0, 0, 1310778, 0, 0, 1310779, 0, 0, 1310780, 0, 0, 1310781, 0, 0, 1310782, 0, 0, 1310783, 0, 0, 1310784, 0, 0, 1310785, 0, 0, 1310786, 0, 0, 1310787, 0, 0, 1310788, 0, 0, 1310789, 0, 0, 1310790, 0, 0, 1310791, 0, 0, 1310792, 0, 0, 1310793, 0, 0, 1310794, 0, 0, 1310795, 0, 0, 1310796, 0, 0, 1310797, 0, 0, 1310798, 0, 0, 1310799, 0, 0, 1310800, 0, 0, 1310801, 0, 0, 1441784, 0, 0, 1441785, 0, 0, 1441786, 0, 0, 1441787, 0, 0, 1441788, 0, 0, 1441789, 0, 0, 1441790, 0, 0, 1441791, 0, 0, 1376256, 0, 0, 1376257, 0, 0, 1376258, 0, 655364, 1376259, 0, 851968, 1376260, 0, 851968, 1376261, 0, 196609, 1376262, 0, 196609, 1376263, 0, 196609, 1376264, 0, 196609, 1376265, 0, 196609, 1376266, 0, 196609, 1376267, 0, 196609, 1376268, 0, 65543, 1376269, 0, 65543, 1376270, 0, 65543, 1376271, 0, 65543, 1376272, 0, 65543, 1376273, 0, 65543, 1376274, 0, 65543, 1376275, 0, 65543, 1376276, 0, 65543, 1376277, 0, 65543, 1376278, 0, 65543, 1376279, 0, 196609, 1376280, 0, 196609, 1376281, 0, 196609, 1376282, 0, 655367, 1376283, 0, 655364, 1376284, 0, 196609, 1376285, 0, 196609, 1376286, 0, 196609, 1376287, 0, 655364, 1376288, 0, 851969, 1376289, 0, 851969, 1376290, 0, 196609, 1376291, 0, 196609, 1376292, 0, 196609, 1376293, 0, 196609, 1376294, 0, 655367, 1376295, 0, 655364, 1376296, 0, 0, 1376297, 0, 0, 1376298, 0, 0, 1376299, 0, 0, 1376300, 0, 0, 1376301, 0, 0, 1376302, 0, 0, 1376303, 0, 0, 1376304, 0, 0, 1376305, 0, 0, 1376306, 0, 0, 1376307, 0, 0, 1376308, 0, 0, 1376309, 0, 0, 1376310, 0, 0, 1376311, 0, 0, 1376312, 0, 0, 1376313, 0, 0, 1376314, 0, 0, 1376315, 0, 0, 1376316, 0, 0, 1376317, 0, 0, 1376318, 0, 0, 1376319, 0, 0, 1376320, 0, 0, 1376321, 0, 0, 1376322, 0, 0, 1376323, 0, 0, 1376324, 0, 0, 1376325, 0, 0, 1376326, 0, 0, 1376327, 0, 0, 1376328, 0, 0, 1376329, 0, 0, 1376330, 0, 0, 1376331, 0, 0, 1376332, 0, 0, 1376333, 0, 0, 1376334, 0, 0, 1376335, 0, 0, 1376336, 0, 0, 1376337, 0, 0, 1507320, 0, 0, 1507321, 0, 0, 1507322, 0, 0, 1507323, 0, 0, 1507324, 0, 0, 1507325, 0, 0, 1507326, 0, 0, 1507327, 0, 0, 1441792, 0, 0, 1441793, 0, 0, 1441794, 0, 851969, 1441795, 0, 851969, 1441796, 0, 851969, 1441797, 0, 851969, 1441798, 0, 851969, 1441799, 0, 655365, 1441800, 0, 196609, 1441801, 0, 196609, 1441802, 0, 196609, 1441803, 0, 917510, 1441804, 0, 851969, 1441805, 0, 851969, 1441806, 0, 851969, 1441807, 0, 851969, 1441808, 0, 851969, 1441809, 0, 851971, 1441810, 0, 851970, 1441811, 0, 851970, 1441812, 0, 851970, 1441813, 0, 65543, 1441814, 0, 196608, 1441815, 0, 196609, 1441816, 0, 196609, 1441817, 0, 196609, 1441818, 0, 196609, 1441819, 0, 655364, 1441820, 0, 196609, 1441821, 0, 196609, 1441822, 0, 196609, 1441823, 0, 655364, 1441824, 0, 917504, 1441825, 0, 917504, 1441826, 0, 655363, 1441827, 0, 196609, 1441828, 0, 196609, 1441829, 0, 196609, 1441830, 0, 196609, 1441831, 0, 655364, 1441832, 0, 0, 1441833, 0, 0, 1441834, 0, 0, 1441835, 0, 0, 1441836, 0, 0, 1441837, 0, 0, 1441838, 0, 0, 1441839, 0, 0, 1441840, 0, 0, 1441841, 0, 0, 1441842, 0, 0, 1441843, 0, 0, 1441844, 0, 0, 1441845, 0, 0, 1441846, 0, 0, 1441847, 0, 0, 1441848, 0, 0, 1441849, 0, 0, 1441850, 0, 0, 1441851, 0, 0, 1441852, 0, 0, 1441853, 0, 0, 1441854, 0, 0, 1441855, 0, 0, 1441856, 0, 0, 1441857, 0, 0, 1441858, 0, 0, 1441859, 0, 0, 1441860, 0, 0, 1441861, 0, 0, 1441862, 0, 0, 1441863, 0, 0, 1441864, 0, 0, 1441865, 0, 0, 1441866, 0, 0, 1441867, 0, 0, 1441868, 0, 0, 1441869, 0, 0, 1441870, 0, 0, 1441871, 0, 0, 1441872, 0, 0, 1441873, 0, 0, 1572856, 0, 0, 1572857, 0, 0, 1572858, 0, 0, 1572859, 0, 0, 1572860, 0, 0, 1572861, 0, 0, 1572862, 0, 0, 1572863, 0, 0, 1507328, 0, 0, 1507329, 0, 0, 1507330, 0, 917504, 1507331, 0, 917504, 1507332, 0, 917504, 1507333, 0, 917504, 1507334, 0, 917504, 1507335, 0, 786432, 1507336, 0, 196609, 1507337, 0, 196609, 1507338, 0, 196609, 1507339, 0, 917511, 1507340, 0, 917504, 1507341, 0, 917504, 1507342, 0, 917504, 1507343, 0, 917504, 1507344, 0, 917504, 1507345, 0, 0, 1507346, 0, 0, 1507347, 0, 0, 1507348, 0, 0, 1507349, 0, 196609, 1507350, 0, 196609, 1507351, 0, 196609, 1507352, 0, 196609, 1507353, 0, 196609, 1507354, 0, 196609, 1507355, 0, 655364, 1507356, 0, 655363, 1507357, 0, 655362, 1507358, 0, 196609, 1507359, 0, 655364, 1507360, 0, 655363, 1507361, 0, 655363, 1507362, 0, 655363, 1507363, 0, 196609, 1507364, 0, 196609, 1507365, 0, 196609, 1507366, 0, 196609, 1507367, 0, 655364, 1507368, 0, 0, 1507369, 0, 0, 1507370, 0, 0, 1507371, 0, 0, 1507372, 0, 0, 1507373, 0, 0, 1507374, 0, 0, 1507375, 0, 0, 1507376, 0, 0, 1507377, 0, 0, 1507378, 0, 0, 1507379, 0, 0, 1507380, 0, 0, 1507381, 0, 0, 1507382, 0, 0, 1507383, 0, 0, 1507384, 0, 0, 1507385, 0, 0, 1507386, 0, 0, 1507387, 0, 0, 1507388, 0, 0, 1507389, 0, 0, 1507390, 0, 0, 1507391, 0, 0, 1507392, 0, 0, 1507393, 0, 0, 1507394, 0, 0, 1507395, 0, 0, 1507396, 0, 0, 1507397, 0, 0, 1507398, 0, 0, 1507399, 0, 0, 1507400, 0, 0, 1507401, 0, 0, 1507402, 0, 0, 1507403, 0, 0, 1507404, 0, 0, 1507405, 0, 0, 1507406, 0, 0, 1507407, 0, 0, 1507408, 0, 0, 1507409, 0, 0, 1638392, 0, 0, 1638393, 0, 0, 1638394, 0, 0, 1638395, 0, 0, 1638396, 0, 0, 1638397, 0, 0, 1638398, 0, 0, 1638399, 0, 0, 1572864, 0, 0, 1572865, 0, 0, 1572866, 0, 327686, 1572867, 0, 851970, 1572868, 0, 851971, 1572869, 0, 851970, 1572870, 0, 851970, 1572871, 0, 851970, 1572872, 0, 851970, 1572873, 0, 851971, 1572874, 0, 851971, 1572875, 0, 851970, 1572876, 0, 851970, 1572877, 0, 851970, 1572878, 0, 851970, 1572879, 0, 851970, 1572880, 0, 327686, 1572881, 0, 0, 1572882, 0, 0, 1572883, 0, 0, 1572884, 0, 0, 1572885, 0, 655364, 1572886, 0, 851969, 1572887, 0, 851969, 1572888, 0, 655365, 1572889, 0, 196609, 1572890, 0, 196609, 1572891, 0, 851969, 1572892, 0, 851969, 1572893, 0, 720900, 1572894, 0, 196609, 1572895, 0, 655364, 1572896, 0, 196609, 1572897, 0, 655363, 1572898, 0, 851969, 1572899, 0, 851969, 1572900, 0, 851969, 1572901, 0, 851969, 1572902, 0, 851969, 1572903, 0, 655364, 1572904, 0, 0, 1572905, 0, 0, 1572906, 0, 0, 1572907, 0, 0, 1572908, 0, 0, 1572909, 0, 0, 1572910, 0, 0, 1572911, 0, 0, 1572912, 0, 0, 1572913, 0, 0, 1572914, 0, 0, 1572915, 0, 0, 1572916, 0, 0, 1572917, 0, 0, 1572918, 0, 0, 1572919, 0, 0, 1572920, 0, 0, 1572921, 0, 0, 1572922, 0, 0, 1572923, 0, 0, 1572924, 0, 0, 1572925, 0, 0, 1572926, 0, 0, 1572927, 0, 0, 1572928, 0, 0, 1572929, 0, 0, 1572930, 0, 0, 1572931, 0, 0, 1572932, 0, 0, 1572933, 0, 0, 1572934, 0, 0, 1572935, 0, 0, 1572936, 0, 0, 1572937, 0, 0, 1572938, 0, 0, 1572939, 0, 0, 1572940, 0, 0, 1572941, 0, 0, 1572942, 0, 0, 1572943, 0, 0, 1572944, 0, 0, 1572945, 0, 0, 1703928, 0, 0, 1703929, 0, 0, 1703930, 0, 0, 1703931, 0, 0, 1703932, 0, 0, 1703933, 0, 0, 1703934, 0, 0, 1703935, 0, 0, 1638400, 0, 0, 1638401, 0, 0, 1638402, 0, 0, 1638403, 0, 0, 1638404, 0, 0, 1638405, 0, 0, 1638406, 0, 0, 1638407, 0, 0, 1638408, 0, 0, 1638409, 0, 0, 1638410, 0, 0, 1638411, 0, 0, 1638412, 0, 0, 1638413, 0, 0, 1638414, 0, 0, 1638415, 0, 0, 1638416, 0, 0, 1638417, 0, 0, 1638418, 0, 0, 1638419, 0, 0, 1638420, 0, 7, 1638421, 0, 655364, 1638422, 0, 851972, 1638423, 0, 917504, 1638424, 0, 786432, 1638425, 0, 196609, 1638426, 0, 196609, 1638427, 0, 917504, 1638428, 0, 917504, 1638429, 0, 720897, 1638430, 0, 196609, 1638431, 0, 655364, 1638432, 0, 196609, 1638433, 0, 196609, 1638434, 0, 917504, 1638435, 0, 917504, 1638436, 0, 917504, 1638437, 0, 917504, 1638438, 0, 917504, 1638439, 0, 851969, 1638440, 0, 0, 1638441, 0, 0, 1638442, 0, 0, 1638443, 0, 0, 1638444, 0, 0, 1638445, 0, 0, 1638446, 0, 0, 1638447, 0, 0, 1638448, 0, 0, 1638449, 0, 0, 1638450, 0, 0, 1638451, 0, 0, 1638452, 0, 0, 1638453, 0, 0, 1638454, 0, 0, 1638455, 0, 0, 1638456, 0, 0, 1638457, 0, 0, 1638458, 0, 0, 1638459, 0, 0, 1638460, 0, 0, 1638461, 0, 0, 1638462, 0, 0, 1638463, 0, 0, 1638464, 0, 0, 1638465, 0, 0, 1638466, 0, 0, 1638467, 0, 0, 1638468, 0, 0, 1638469, 0, 0, 1638470, 0, 0, 1638471, 0, 0, 1638472, 0, 0, 1638473, 0, 0, 1638474, 0, 0, 1638475, 0, 0, 1638476, 0, 0, 1638477, 0, 0, 1638478, 0, 0, 1638479, 0, 0, 1638480, 0, 0, 1638481, 0, 0, 1769464, 0, 0, 1769465, 0, 0, 1769466, 0, 0, 1769467, 0, 0, 1769468, 0, 0, 1769469, 0, 0, 1769470, 0, 0, 1769471, 0, 0, 1703936, 0, 0, 1703937, 0, 0, 1703938, 0, 0, 1703939, 0, 0, 1703940, 0, 0, 1703941, 0, 0, 1703942, 0, 0, 1703943, 0, 0, 1703944, 0, 0, 1703945, 0, 0, 1703946, 0, 0, 1703947, 0, 0, 1703948, 0, 0, 1703949, 0, 0, 1703950, 0, 0, 1703951, 0, 0, 1703952, 0, 0, 1703953, 0, 0, 1703954, 0, 0, 1703955, 0, 0, 1703956, 0, 0, 1703957, 0, 655364, 1703958, 0, 720901, 1703959, 0, 196609, 1703960, 0, 196609, 1703961, 0, 196609, 1703962, 0, 196609, 1703963, 0, 196609, 1703964, 0, 196609, 1703965, 0, 196609, 1703966, 0, 196609, 1703967, 0, 655364, 1703968, 0, 196609, 1703969, 0, 196609, 1703970, 0, 196609, 1703971, 0, 196609, 1703972, 0, 720896, 1703973, 0, 720896, 1703974, 0, 720896, 1703975, 0, 917504, 1703976, 0, 0, 1703977, 0, 0, 1703978, 0, 0, 1703979, 0, 0, 1703980, 0, 0, 1703981, 0, 0, 1703982, 0, 851969, 1703983, 0, 0, 1703984, 0, 0, 1703985, 0, 0, 1703986, 0, 0, 1703987, 0, 0, 1703988, 0, 0, 1703989, 0, 0, 1703990, 0, 0, 1703991, 0, 0, 1703992, 0, 0, 1703993, 0, 0, 1703994, 0, 0, 1703995, 0, 0, 1703996, 0, 0, 1703997, 0, 0, 1703998, 0, 0, 1703999, 0, 0, 1704000, 0, 0, 1704001, 0, 0, 1704002, 0, 0, 1704003, 0, 0, 1704004, 0, 0, 1704005, 0, 0, 1704006, 0, 0, 1704007, 0, 0, 1704008, 0, 0, 1704009, 0, 0, 1704010, 0, 0, 1704011, 0, 0, 1704012, 0, 0, 1704013, 0, 0, 1704014, 0, 0, 1704015, 0, 0, 1704016, 0, 0, 1704017, 0, 0, 1835000, 0, 0, 1835001, 0, 0, 1835002, 0, 0, 1835003, 0, 0, 1835004, 0, 0, 1835005, 0, 0, 1835006, 0, 0, 1835007, 0, 0, 1769472, 0, 0, 1769473, 0, 0, 1769474, 0, 0, 1769475, 0, 0, 1769476, 0, 0, 1769477, 0, 0, 1769478, 0, 0, 1769479, 0, 0, 1769480, 0, 0, 1769481, 0, 0, 1769482, 0, 0, 1769483, 0, 0, 1769484, 0, 0, 1769485, 0, 0, 1769486, 0, 0, 1769487, 0, 0, 1769488, 0, 0, 1769489, 0, 0, 1769490, 0, 0, 1769491, 0, 0, 1769492, 0, 0, 1769493, 0, 655364, 1769494, 0, 196609, 1769495, 0, 196609, 1769496, 0, 655367, 1769497, 0, 196609, 1769498, 0, 196609, 1769499, 0, 196609, 1769500, 0, 196609, 1769501, 0, 196609, 1769502, 0, 196609, 1769503, 0, 655364, 1769504, 0, 196609, 1769505, 0, 196609, 1769506, 0, 196609, 1769507, 0, 196609, 1769508, 0, 196609, 1769509, 0, 196609, 1769510, 0, 196609, 1769511, 0, 196609, 1769512, 0, 196609, 1769513, 0, 196609, 1769514, 0, 196609, 1769515, 0, 196609, 1769516, 0, 196609, 1769517, 0, 0, 1769518, 0, 917505, 1769519, 0, 0, 1769520, 0, 0, 1769521, 0, 0, 1769522, 0, 0, 1769523, 0, 0, 1769524, 0, 0, 1769525, 0, 0, 1769526, 0, 0, 1769527, 0, 0, 1769528, 0, 0, 1769529, 0, 0, 1769530, 0, 0, 1769531, 0, 0, 1769532, 0, 0, 1769533, 0, 0, 1769534, 0, 0, 1769535, 0, 0, 1769536, 0, 0, 1769537, 0, 0, 1769538, 0, 0, 1769539, 0, 0, 1769540, 0, 0, 1769541, 0, 0, 1769542, 0, 0, 1769543, 0, 0, 1769544, 0, 0, 1769545, 0, 0, 1769546, 0, 0, 1769547, 0, 0, 1769548, 0, 0, 1769549, 0, 0, 1769550, 0, 0, 1769551, 0, 0, 1769552, 0, 0, 1769553, 0, 0, 1900536, 0, 0, 1900537, 0, 0, 1900538, 0, 0, 1900539, 0, 0, 1900540, 0, 0, 1900541, 0, 0, 1900542, 0, 0, 1900543, 0, 0, 1835008, 0, 0, 1835009, 0, 0, 1835010, 0, 0, 1835011, 0, 0, 1835012, 0, 0, 1835013, 0, 0, 1835014, 0, 0, 1835015, 0, 0, 1835016, 0, 0, 1835017, 0, 0, 1835018, 0, 0, 1835019, 0, 0, 1835020, 0, 0, 1835021, 0, 0, 1835022, 0, 0, 1835023, 0, 0, 1835024, 0, 0, 1835025, 0, 0, 1835026, 0, 0, 1835027, 0, 0, 1835028, 0, 0, 1835029, 0, 655364, 1835030, 0, 196609, 1835031, 0, 196609, 1835032, 0, 196609, 1835033, 0, 196609, 1835034, 0, 655364, 1835035, 0, 196609, 1835036, 0, 196609, 1835037, 0, 196609, 1835038, 0, 196609, 1835039, 0, 655364, 1835040, 0, 196609, 1835041, 0, 655367, 1835042, 0, 196609, 1835043, 0, 196609, 1835044, 0, 196609, 1835045, 0, 196609, 1835046, 0, 196609, 1835047, 0, 655364, 1835048, 0, 196609, 1835049, 0, 196609, 1835050, 0, 196609, 1835051, 0, 196609, 1835052, 0, 196609, 1835053, 0, 0, 1835054, 0, 851971, 1835055, 0, 0, 1835056, 0, 0, 1835057, 0, 0, 1835058, 0, 0, 1835059, 0, 0, 1835060, 0, 0, 1835061, 0, 0, 1835062, 0, 0, 1835063, 0, 0, 1835064, 0, 0, 1835065, 0, 0, 1835066, 0, 0, 1835067, 0, 0, 1835068, 0, 0, 1835069, 0, 0, 1835070, 0, 0, 1835071, 0, 0, 1835072, 0, 0, 1835073, 0, 0, 1835074, 0, 0, 1835075, 0, 0, 1835076, 0, 0, 1835077, 0, 0, 1835078, 0, 0, 1835079, 0, 0, 1835080, 0, 0, 1835081, 0, 0, 1835082, 0, 0, 1835083, 0, 0, 1835084, 0, 0, 1835085, 0, 0, 1835086, 0, 0, 1835087, 0, 0, 1835088, 0, 0, 1835089, 0, 0, 1966072, 0, 0, 1966073, 0, 0, 1966074, 0, 0, 1966075, 0, 0, 1966076, 0, 0, 1966077, 0, 0, 1966078, 0, 0, 1966079, 0, 0, 1900544, 0, 0, 1900545, 0, 0, 1900546, 0, 0, 1900547, 0, 0, 1900548, 0, 0, 1900549, 0, 0, 1900550, 0, 0, 1900551, 0, 0, 1900552, 0, 0, 1900553, 0, 0, 1900554, 0, 0, 1900555, 0, 0, 1900556, 0, 0, 1900557, 0, 0, 1900558, 0, 0, 1900559, 0, 0, 1900560, 0, 0, 1900561, 0, 0, 1900562, 0, 0, 1900563, 0, 0, 1900564, 0, 0, 1900565, 0, 655364, 1900566, 0, 196609, 1900567, 0, 196609, 1900568, 0, 196609, 1900569, 0, 196609, 1900570, 0, 655364, 1900571, 0, 196609, 1900572, 0, 196609, 1900573, 0, 655367, 1900574, 0, 196609, 1900575, 0, 655364, 1900576, 0, 851969, 1900577, 0, 851969, 1900578, 0, 851969, 1900579, 0, 851969, 1900580, 0, 851969, 1900581, 0, 851969, 1900582, 0, 851969, 1900583, 0, 851969, 1900584, 0, 851971, 1900585, 0, 851971, 1900586, 0, 851971, 1900587, 0, 196609, 1900588, 0, 196609, 1900589, 0, 0, 1900590, 0, 0, 1900591, 0, 0, 1900592, 0, 0, 1900593, 0, 0, 1900594, 0, 0, 1900595, 0, 0, 1900596, 0, 0, 1900597, 0, 0, 1900598, 0, 0, 1900599, 0, 0, 1900600, 0, 0, 1900601, 0, 0, 1900602, 0, 0, 1900603, 0, 0, 1900604, 0, 0, 1900605, 0, 0, 1900606, 0, 0, 1900607, 0, 0, 1900608, 0, 0, 1900609, 0, 0, 1900610, 0, 0, 1900611, 0, 0, 1900612, 0, 0, 1900613, 0, 0, 1900614, 0, 0, 1900615, 0, 0, 1900616, 0, 0, 1900617, 0, 0, 1900618, 0, 0, 1900619, 0, 0, 1900620, 0, 0, 1900621, 0, 0, 1900622, 0, 0, 1900623, 0, 0, 1900624, 0, 0, 1900625, 0, 0, 2031608, 0, 0, 2031609, 0, 0, 2031610, 0, 0, 2031611, 0, 0, 2031612, 0, 0, 2031613, 0, 0, 2031614, 0, 0, 2031615, 0, 0, 1966080, 0, 0, 1966081, 0, 0, 1966082, 0, 0, 1966083, 0, 0, 1966084, 0, 0, 1966085, 0, 0, 1966086, 0, 0, 1966087, 0, 0, 1966088, 0, 0, 1966089, 0, 0, 1966090, 0, 0, 1966091, 0, 0, 1966092, 0, 0, 1966093, 0, 0, 1966094, 0, 0, 1966095, 0, 0, 1966096, 0, 0, 1966097, 0, 0, 1966098, 0, 0, 1966099, 0, 0, 1966100, 0, 0, 1966101, 0, 655364, 1966102, 0, 196609, 1966103, 0, 196609, 1966104, 0, 196609, 1966105, 0, 196609, 1966106, 0, 655364, 1966107, 0, 196609, 1966108, 0, 196609, 1966109, 0, 196609, 1966110, 0, 196609, 1966111, 0, 655364, 1966112, 0, 917504, 1966113, 0, 917504, 1966114, 0, 917504, 1966115, 0, 917504, 1966116, 0, 917504, 1966117, 0, 917504, 1966118, 0, 917504, 1966119, 0, 917504, 1966120, 0, 0, 1966121, 0, 851969, 1966122, 0, 0, 1966123, 0, 196609, 1966124, 0, 196609, 1966125, 0, 0, 1966126, 0, 851969, 1966127, 0, 0, 1966128, 0, 0, 1966129, 0, 0, 1966130, 0, 0, 1966131, 0, 0, 1966132, 0, 0, 1966133, 0, 0, 1966134, 0, 0, 1966135, 0, 0, 1966136, 0, 0, 1966137, 0, 0, 1966138, 0, 0, 1966139, 0, 0, 1966140, 0, 0, 1966141, 0, 0, 1966142, 0, 0, 1966143, 0, 0, 1966144, 0, 0, 1966145, 0, 0, 1966146, 0, 0, 1966147, 0, 0, 1966148, 0, 0, 1966149, 0, 0, 1966150, 0, 0, 1966151, 0, 0, 1966152, 0, 0, 1966153, 0, 0, 1966154, 0, 0, 1966155, 0, 0, 1966156, 0, 0, 1966157, 0, 0, 1966158, 0, 0, 1966159, 0, 0, 1966160, 0, 0, 1966161, 0, 0, 2097144, 0, 0, 2097145, 0, 0, 2097146, 0, 0, 2097147, 0, 0, 2097148, 0, 0, 2097149, 0, 0, 2097150, 0, 0, 2097151, 0, 0, 2031616, 0, 0, 2031617, 0, 0, 2031618, 0, 0, 2031619, 0, 0, 2031620, 0, 0, 2031621, 0, 0, 2031622, 0, 0, 2031623, 0, 0, 2031624, 0, 0, 2031625, 0, 0, 2031626, 0, 0, 2031627, 0, 0, 2031628, 0, 0, 2031629, 0, 0, 2031630, 0, 0, 2031631, 0, 0, 2031632, 0, 0, 2031633, 0, 0, 2031634, 0, 0, 2031635, 0, 0, 2031636, 0, 0, 2031637, 0, 851969, 2031638, 0, 851969, 2031639, 0, 851969, 2031640, 0, 851969, 2031641, 0, 851969, 2031642, 0, 851969, 2031643, 0, 851969, 2031644, 0, 851969, 2031645, 0, 851969, 2031646, 0, 851969, 2031647, 0, 851969, 2031648, 0, 851970, 2031649, 0, 851970, 2031650, 0, 851970, 2031651, 0, 851970, 2031652, 0, 851970, 2031653, 0, 851970, 2031654, 0, 851970, 2031655, 0, 851970, 2031656, 0, 0, 2031657, 0, 917505, 2031658, 0, 0, 2031659, 0, 196609, 2031660, 0, 196609, 2031661, 0, 0, 2031662, 0, 917505, 2031663, 0, 0, 2031664, 0, 0, 2031665, 0, 0, 2031666, 0, 0, 2031667, 0, 0, 2031668, 0, 0, 2031669, 0, 0, 2031670, 0, 0, 2031671, 0, 0, 2031672, 0, 0, 2031673, 0, 0, 2031674, 0, 0, 2031675, 0, 0, 2031676, 0, 0, 2031677, 0, 0, 2031678, 0, 0, 2031679, 0, 0, 2031680, 0, 0, 2031681, 0, 0, 2031682, 0, 0, 2031683, 0, 0, 2031684, 0, 0, 2031685, 0, 0, 2031686, 0, 0, 2031687, 0, 0, 2031688, 0, 0, 2031689, 0, 0, 2031690, 0, 0, 2031691, 0, 0, 2031692, 0, 0, 2031693, 0, 0, 2031694, 0, 0, 2031695, 0, 0, 2031696, 0, 0, 2031697, 0, 0, 2162680, 0, 0, 2162681, 0, 0, 2162682, 0, 0, 2162683, 0, 0, 2162684, 0, 0, 2162685, 0, 0, 2162686, 0, 0, 2162687, 0, 0, 2097152, 0, 0, 2097153, 0, 0, 2097154, 0, 0, 2097155, 0, 0, 2097156, 0, 0, 2097157, 0, 0, 2097158, 0, 0, 2097159, 0, 0, 2097160, 0, 0, 2097161, 0, 0, 2097162, 0, 0, 2097163, 0, 0, 2097164, 0, 0, 2097165, 0, 0, 2097166, 0, 0, 2097167, 0, 0, 2097168, 0, 0, 2097169, 0, 0, 2097170, 0, 0, 2097171, 0, 0, 2097172, 0, 7, 2097173, 0, 917504, 2097174, 0, 917504, 2097175, 0, 917504, 2097176, 0, 917504, 2097177, 0, 917504, 2097178, 0, 917504, 2097179, 0, 917504, 2097180, 0, 917504, 2097181, 0, 917504, 2097182, 0, 917504, 2097183, 0, 917504, 2097184, 0, 0, 2097185, 0, 0, 2097186, 0, 0, 2097187, 0, 0, 2097188, 0, 0, 2097189, 0, 0, 2097190, 0, 0, 2097191, 0, 0, 2097192, 0, 0, 2097193, 0, 851971, 2097194, 0, 0, 2097195, 0, 196609, 2097196, 0, 196609, 2097197, 0, 0, 2097198, 0, 851971, 2097199, 0, 0, 2097200, 0, 0, 2097201, 0, 655364, 2097202, 0, 851969, 2097203, 0, 655365, 2097204, 0, 851969, 2097205, 0, 851969, 2097206, 0, 851969, 2097207, 0, 655364, 2097208, 0, 0, 2097209, 0, 0, 2097210, 0, 0, 2097211, 0, 0, 2097212, 0, 0, 2097213, 0, 0, 2097214, 0, 0, 2097215, 0, 0, 2097216, 0, 0, 2097217, 0, 0, 2097218, 0, 0, 2097219, 0, 0, 2097220, 0, 0, 2097221, 0, 0, 2097222, 0, 0, 2097223, 0, 0, 2097224, 0, 0, 2097225, 0, 0, 2097226, 0, 0, 2097227, 0, 0, 2097228, 0, 0, 2097229, 0, 0, 2097230, 0, 0, 2097231, 0, 0, 2097232, 0, 0, 2097233, 0, 0, 2228216, 0, 0, 2228217, 0, 0, 2228218, 0, 0, 2228219, 0, 0, 2228220, 0, 0, 2228221, 0, 0, 2228222, 0, 0, 2228223, 0, 0, 2162688, 0, 0, 2162689, 0, 0, 2162690, 0, 0, 2162691, 0, 0, 2162692, 0, 0, 2162693, 0, 0, 2162694, 0, 0, 2162695, 0, 0, 2162696, 0, 0, 2162697, 0, 0, 2162698, 0, 0, 2162699, 0, 0, 2162700, 0, 0, 2162701, 0, 0, 2162702, 0, 0, 2162703, 0, 0, 2162704, 0, 0, 2162705, 0, 0, 2162706, 0, 0, 2162707, 0, 0, 2162708, 0, 0, 2162709, 0, 851970, 2162710, 0, 851970, 2162711, 0, 851970, 2162712, 0, 851970, 2162713, 0, 851970, 2162714, 0, 851970, 2162715, 0, 851970, 2162716, 0, 851970, 2162717, 0, 851970, 2162718, 0, 851970, 2162719, 0, 851970, 2162720, 0, 0, 2162721, 0, 0, 2162722, 0, 0, 2162723, 0, 0, 2162724, 0, 0, 2162725, 0, 0, 2162726, 0, 0, 2162727, 0, 0, 2162728, 0, 0, 2162729, 0, 0, 2162730, 0, 0, 2162731, 0, 196609, 2162732, 0, 196609, 2162733, 0, 0, 2162734, 0, 0, 2162735, 0, 0, 2162736, 0, 0, 2162737, 0, 655364, 2162738, 0, 917504, 2162739, 0, 786432, 2162740, 0, 851972, 2162741, 0, 917504, 2162742, 0, 917504, 2162743, 0, 655364, 2162744, 0, 0, 2162745, 0, 0, 2162746, 0, 0, 2162747, 0, 0, 2162748, 0, 0, 2162749, 0, 0, 2162750, 0, 0, 2162751, 0, 0, 2162752, 0, 0, 2162753, 0, 0, 2162754, 0, 0, 2162755, 0, 0, 2162756, 0, 0, 2162757, 0, 0, 2162758, 0, 0, 2162759, 0, 0, 2162760, 0, 0, 2162761, 0, 0, 2162762, 0, 0, 2162763, 0, 0, 2162764, 0, 0, 2162765, 0, 0, 2162766, 0, 0, 2162767, 0, 0, 2162768, 0, 0, 2162769, 0, 0, 2293752, 0, 0, 2293753, 0, 0, 2293754, 0, 0, 2293755, 0, 0, 2293756, 0, 0, 2293757, 0, 0, 2293758, 0, 0, 2293759, 0, 0, 2228224, 0, 0, 2228225, 0, 0, 2228226, 0, 0, 2228227, 0, 0, 2228228, 0, 0, 2228229, 0, 0, 2228230, 0, 0, 2228231, 0, 0, 2228232, 0, 0, 2228233, 0, 0, 2228234, 0, 0, 2228235, 0, 0, 2228236, 0, 0, 2228237, 0, 0, 2228238, 0, 0, 2228239, 0, 0, 2228240, 0, 0, 2228241, 0, 0, 2228242, 0, 0, 2228243, 0, 0, 2228244, 0, 0, 2228245, 0, 0, 2228246, 0, 0, 2228247, 0, 0, 2228248, 0, 0, 2228249, 0, 0, 2228250, 0, 0, 2228251, 0, 0, 2228252, 0, 0, 2228253, 0, 0, 2228254, 0, 0, 2228255, 0, 0, 2228256, 0, 0, 2228257, 0, 0, 2228258, 0, 0, 2228259, 0, 0, 2228260, 0, 0, 2228261, 0, 0, 2228262, 0, 0, 2228263, 0, 0, 2228264, 0, 0, 2228265, 0, 851969, 2228266, 0, 0, 2228267, 0, 196609, 2228268, 0, 196609, 2228269, 0, 0, 2228270, 0, 851969, 2228271, 0, 0, 2228272, 0, 0, 2228273, 0, 655364, 2228274, 0, 196609, 2228275, 0, 196609, 2228276, 0, 196609, 2228277, 0, 196609, 2228278, 0, 196609, 2228279, 0, 655364, 2228280, 0, 0, 2228281, 0, 0, 2228282, 0, 0, 2228283, 0, 0, 2228284, 0, 0, 2228285, 0, 0, 2228286, 0, 0, 2228287, 0, 0, 2228288, 0, 0, 2228289, 0, 0, 2228290, 0, 0, 2228291, 0, 0, 2228292, 0, 0, 2228293, 0, 0, 2228294, 0, 0, 2228295, 0, 0, 2228296, 0, 0, 2228297, 0, 0, 2228298, 0, 0, 2228299, 0, 0, 2228300, 0, 0, 2228301, 0, 0, 2228302, 0, 0, 2228303, 0, 0, 2228304, 0, 0, 2228305, 0, 0, 2359288, 0, 0, 2359289, 0, 0, 2359290, 0, 0, 2359291, 0, 0, 2359292, 0, 0, 2359293, 0, 0, 2359294, 0, 0, 2359295, 0, 0, 2293760, 0, 0, 2293761, 0, 0, 2293762, 0, 0, 2293763, 0, 0, 2293764, 0, 0, 2293765, 0, 0, 2293766, 0, 0, 2293767, 0, 0, 2293768, 0, 0, 2293769, 0, 0, 2293770, 0, 0, 2293771, 0, 0, 2293772, 0, 0, 2293773, 0, 0, 2293774, 0, 0, 2293775, 0, 0, 2293776, 0, 0, 2293777, 0, 0, 2293778, 0, 0, 2293779, 0, 0, 2293780, 0, 0, 2293781, 0, 0, 2293782, 0, 0, 2293783, 0, 0, 2293784, 0, 0, 2293785, 0, 0, 2293786, 0, 0, 2293787, 0, 0, 2293788, 0, 0, 2293789, 0, 0, 2293790, 0, 0, 2293791, 0, 0, 2293792, 0, 0, 2293793, 0, 0, 2293794, 0, 0, 2293795, 0, 0, 2293796, 0, 0, 2293797, 0, 0, 2293798, 0, 0, 2293799, 0, 0, 2293800, 0, 0, 2293801, 0, 917505, 2293802, 0, 0, 2293803, 0, 196609, 2293804, 0, 196609, 2293805, 0, 0, 2293806, 0, 917505, 2293807, 0, 0, 2293808, 0, 0, 2293809, 0, 655364, 2293810, 0, 196609, 2293811, 0, 196609, 2293812, 0, 196609, 2293813, 0, 196609, 2293814, 0, 196609, 2293815, 0, 655364, 2293816, 0, 0, 2293817, 0, 0, 2293818, 0, 0, 2293819, 0, 0, 2293820, 0, 0, 2293821, 0, 0, 2293822, 0, 0, 2293823, 0, 0, 2293824, 0, 0, 2293825, 0, 0, 2293826, 0, 0, 2293827, 0, 0, 2293828, 0, 0, 2293829, 0, 0, 2293830, 0, 0, 2293831, 0, 0, 2293832, 0, 0, 2293833, 0, 0, 2293834, 0, 0, 2293835, 0, 0, 2293836, 0, 0, 2293837, 0, 0, 2293838, 0, 0, 2293839, 0, 0, 2293840, 0, 0, 2293841, 0, 0, 2424824, 0, 0, 2424825, 0, 0, 2424826, 0, 0, 2424827, 0, 0, 2424828, 0, 0, 2424829, 0, 0, 2424830, 0, 0, 2424831, 0, 0, 2359296, 0, 0, 2359297, 0, 0, 2359298, 0, 0, 2359299, 0, 0, 2359300, 0, 0, 2359301, 0, 0, 2359302, 0, 0, 2359303, 0, 0, 2359304, 0, 0, 2359305, 0, 0, 2359306, 0, 0, 2359307, 0, 0, 2359308, 0, 0, 2359309, 0, 0, 2359310, 0, 0, 2359311, 0, 0, 2359312, 0, 0, 2359313, 0, 0, 2359314, 0, 0, 2359315, 0, 0, 2359316, 0, 0, 2359317, 0, 0, 2359318, 0, 0, 2359319, 0, 0, 2359320, 0, 0, 2359321, 0, 0, 2359322, 0, 0, 2359323, 0, 0, 2359324, 0, 0, 2359325, 0, 0, 2359326, 0, 0, 2359327, 0, 0, 2359328, 0, 0, 2359329, 0, 0, 2359330, 0, 0, 2359331, 0, 0, 2359332, 0, 0, 2359333, 0, 0, 2359334, 0, 0, 2359335, 0, 0, 2359336, 0, 0, 2359337, 0, 851971, 2359338, 0, 0, 2359339, 0, 196609, 2359340, 0, 196609, 2359341, 0, 0, 2359342, 0, 851971, 2359343, 0, 0, 2359344, 0, 0, 2359345, 0, 655364, 2359346, 0, 196609, 2359347, 0, 196609, 2359348, 0, 196609, 2359349, 0, 851969, 2359350, 0, 851969, 2359351, 0, 655364, 2359352, 0, 0, 2359353, 0, 0, 2359354, 0, 0, 2359355, 0, 0, 2359356, 0, 0, 2359357, 0, 0, 2359358, 0, 0, 2359359, 0, 0, 2359360, 0, 0, 2359361, 0, 0, 2359362, 0, 0, 2359363, 0, 0, 2359364, 0, 0, 2359365, 0, 0, 2359366, 0, 0, 2359367, 0, 0, 2359368, 0, 0, 2359369, 0, 0, 2359370, 0, 0, 2359371, 0, 0, 2359372, 0, 0, 2359373, 0, 0, 2359374, 0, 0, 2359375, 0, 0, 2359376, 0, 0, 2359377, 0, 0, 2490360, 0, 0, 2490361, 0, 0, 2490362, 0, 0, 2490363, 0, 0, 2490364, 0, 0, 2490365, 0, 0, 2490366, 0, 0, 2490367, 0, 0, 2424832, 0, 0, 2424833, 0, 0, 2424834, 0, 0, 2424835, 0, 0, 2424836, 0, 0, 2424837, 0, 0, 2424838, 0, 0, 2424839, 0, 0, 2424840, 0, 0, 2424841, 0, 0, 2424842, 0, 0, 2424843, 0, 0, 2424844, 0, 0, 2424845, 0, 0, 2424846, 0, 0, 2424847, 0, 0, 2424848, 0, 0, 2424849, 0, 0, 2424850, 0, 0, 2424851, 0, 0, 2424852, 0, 0, 2424853, 0, 0, 2424854, 0, 0, 2424855, 0, 0, 2424856, 0, 0, 2424857, 0, 0, 2424858, 0, 0, 2424859, 0, 0, 2424860, 0, 0, 2424861, 0, 0, 2424862, 0, 0, 2424863, 0, 0, 2424864, 0, 0, 2424865, 0, 0, 2424866, 0, 0, 2424867, 0, 0, 2424868, 0, 0, 2424869, 0, 0, 2424870, 0, 0, 2424871, 0, 0, 2424872, 0, 0, 2424873, 0, 0, 2424874, 0, 0, 2424875, 0, 196609, 2424876, 0, 196609, 2424877, 0, 0, 2424878, 0, 0, 2424879, 0, 0, 2424880, 0, 0, 2424881, 0, 655364, 2424882, 0, 196609, 2424883, 0, 196609, 2424884, 0, 196609, 2424885, 0, 917504, 2424886, 0, 917504, 2424887, 0, 655364, 2424888, 0, 0, 2424889, 0, 0, 2424890, 0, 0, 2424891, 0, 0, 2424892, 0, 0, 2424893, 0, 0, 2424894, 0, 0, 2424895, 0, 0, 2424896, 0, 0, 2424897, 0, 0, 2424898, 0, 0, 2424899, 0, 0, 2424900, 0, 0, 2424901, 0, 0, 2424902, 0, 0, 2424903, 0, 0, 2424904, 0, 0, 2424905, 0, 0, 2424906, 0, 0, 2424907, 0, 0, 2424908, 0, 0, 2424909, 0, 0, 2424910, 0, 0, 2424911, 0, 0, 2424912, 0, 0, 2424913, 0, 0, 2555896, 0, 0, 2555897, 0, 0, 2555898, 0, 0, 2555899, 0, 0, 2555900, 0, 0, 2555901, 0, 0, 2555902, 0, 0, 2555903, 0, 0, 2490368, 0, 0, 2490369, 0, 0, 2490370, 0, 0, 2490371, 0, 0, 2490372, 0, 0, 2490373, 0, 0, 2490374, 0, 0, 2490375, 0, 0, 2490376, 0, 0, 2490377, 0, 0, 2490378, 0, 0, 2490379, 0, 0, 2490380, 0, 0, 2490381, 0, 0, 2490382, 0, 0, 2490383, 0, 0, 2490384, 0, 0, 2490385, 0, 0, 2490386, 0, 655364, 2490387, 0, 851969, 2490388, 0, 851969, 2490389, 0, 851969, 2490390, 0, 851969, 2490391, 0, 0, 2490392, 0, 0, 2490393, 0, 0, 2490394, 0, 851969, 2490395, 0, 851969, 2490396, 0, 851969, 2490397, 0, 655364, 2490398, 0, 851969, 2490399, 0, 851969, 2490400, 0, 851969, 2490401, 0, 851969, 2490402, 0, 851969, 2490403, 0, 0, 2490404, 0, 0, 2490405, 0, 0, 2490406, 0, 0, 2490407, 0, 0, 2490408, 0, 0, 2490409, 0, 0, 2490410, 0, 0, 2490411, 0, 196609, 2490412, 0, 196609, 2490413, 0, 0, 2490414, 0, 0, 2490415, 0, 0, 2490416, 0, 0, 2490417, 0, 655364, 2490418, 0, 196609, 2490419, 0, 196609, 2490420, 0, 196609, 2490421, 0, 196609, 2490422, 0, 196609, 2490423, 0, 655364, 2490424, 0, 0, 2490425, 0, 0, 2490426, 0, 0, 2490427, 0, 0, 2490428, 0, 0, 2490429, 0, 0, 2490430, 0, 0, 2490431, 0, 0, 2490432, 0, 0, 2490433, 0, 0, 2490434, 0, 0, 2490435, 0, 0, 2490436, 0, 0, 2490437, 0, 0, 2490438, 0, 0, 2490439, 0, 0, 2490440, 0, 0, 2490441, 0, 0, 2490442, 0, 0, 2490443, 0, 0, 2490444, 0, 0, 2490445, 0, 0, 2490446, 0, 0, 2490447, 0, 0, 2490448, 0, 0, 2490449, 0, 0, 2621432, 0, 0, 2621433, 0, 0, 2621434, 0, 0, 2621435, 0, 0, 2621436, 0, 0, 2621437, 0, 0, 2621438, 0, 0, 2621439, 0, 0, 2555904, 0, 0, 2555905, 0, 0, 2555906, 0, 0, 2555907, 0, 0, 2555908, 0, 0, 2555909, 0, 0, 2555910, 0, 0, 2555911, 0, 0, 2555912, 0, 0, 2555913, 0, 0, 2555914, 0, 0, 2555915, 0, 0, 2555916, 0, 0, 2555917, 0, 0, 2555918, 0, 0, 2555919, 0, 0, 2555920, 0, 0, 2555921, 0, 655364, 2555922, 0, 851969, 2555923, 0, 917504, 2555924, 0, 917504, 2555925, 0, 917504, 2555926, 0, 917504, 2555927, 0, 196609, 2555928, 0, 196609, 2555929, 0, 196609, 2555930, 0, 917504, 2555931, 0, 917504, 2555932, 0, 917504, 2555933, 0, 655364, 2555934, 0, 917504, 2555935, 0, 917504, 2555936, 0, 917505, 2555937, 0, 917504, 2555938, 0, 917504, 2555939, 0, 196609, 2555940, 0, 196609, 2555941, 0, 196609, 2555942, 0, 196609, 2555943, 0, 196609, 2555944, 0, 196609, 2555945, 0, 196609, 2555946, 0, 196609, 2555947, 0, 196609, 2555948, 0, 196609, 2555949, 0, 196609, 2555950, 0, 196609, 2555951, 0, 196609, 2555952, 0, 196609, 2555953, 0, 851969, 2555954, 0, 196609, 2555955, 0, 196609, 2555956, 0, 196609, 2555957, 0, 196609, 2555958, 0, 196609, 2555959, 0, 655364, 2555960, 0, 0, 2555961, 0, 0, 2555962, 0, 0, 2555963, 0, 0, 2555964, 0, 0, 2555965, 0, 0, 2555966, 0, 0, 2555967, 0, 0, 2555968, 0, 0, 2555969, 0, 0, 2555970, 0, 0, 2555971, 0, 0, 2555972, 0, 0, 2555973, 0, 0, 2555974, 0, 0, 2555975, 0, 0, 2555976, 0, 0, 2555977, 0, 0, 2555978, 0, 0, 2555979, 0, 0, 2555980, 0, 0, 2555981, 0, 0, 2555982, 0, 0, 2555983, 0, 0, 2555984, 0, 0, 2555985, 0, 0, 2686968, 0, 0, 2686969, 0, 0, 2686970, 0, 0, 2686971, 0, 0, 2686972, 0, 0, 2686973, 0, 0, 2686974, 0, 0, 2686975, 0, 0, 2621440, 0, 0, 2621441, 0, 0, 2621442, 0, 0, 2621443, 0, 0, 2621444, 0, 0, 2621445, 0, 0, 2621446, 0, 0, 2621447, 0, 0, 2621448, 0, 0, 2621449, 0, 0, 2621450, 0, 0, 2621451, 0, 0, 2621452, 0, 0, 2621453, 0, 0, 2621454, 0, 0, 2621455, 0, 0, 2621456, 0, 0, 2621457, 0, 655364, 2621458, 0, 917504, 2621459, 0, 196609, 2621460, 0, 196609, 2621461, 0, 196609, 2621462, 0, 196609, 2621463, 0, 196609, 2621464, 0, 196609, 2621465, 0, 196609, 2621466, 0, 196609, 2621467, 0, 196609, 2621468, 0, 196609, 2621469, 0, 655364, 2621470, 0, 196609, 2621471, 0, 196609, 2621472, 0, 196609, 2621473, 0, 196609, 2621474, 0, 196609, 2621475, 0, 196609, 2621476, 0, 196609, 2621477, 0, 196609, 2621478, 0, 196609, 2621479, 0, 196609, 2621480, 0, 196609, 2621481, 0, 196609, 2621482, 0, 196609, 2621483, 0, 196609, 2621484, 0, 196609, 2621485, 0, 196609, 2621486, 0, 196609, 2621487, 0, 196609, 2621488, 0, 196609, 2621489, 0, 917504, 2621490, 0, 196609, 2621491, 0, 196609, 2621492, 0, 196609, 2621493, 0, 196609, 2621494, 0, 196609, 2621495, 0, 655364, 2621496, 0, 0, 2621497, 0, 0, 2621498, 0, 0, 2621499, 0, 0, 2621500, 0, 0, 2621501, 0, 0, 2621502, 0, 0, 2621503, 0, 0, 2621504, 0, 0, 2621505, 0, 0, 2621506, 0, 0, 2621507, 0, 0, 2621508, 0, 0, 2621509, 0, 0, 2621510, 0, 0, 2621511, 0, 0, 2621512, 0, 0, 2621513, 0, 0, 2621514, 0, 0, 2621515, 0, 0, 2621516, 0, 0, 2621517, 0, 0, 2621518, 0, 0, 2621519, 0, 0, 2621520, 0, 0, 2621521, 0, 0, 2752504, 0, 0, 2752505, 0, 0, 2752506, 0, 0, 2752507, 0, 0, 2752508, 0, 0, 2752509, 0, 0, 2752510, 0, 0, 2752511, 0, 0, 2686976, 0, 0, 2686977, 0, 0, 2686978, 0, 0, 2686979, 0, 0, 2686980, 0, 0, 2686981, 0, 0, 2686982, 0, 0, 2686983, 0, 0, 2686984, 0, 0, 2686985, 0, 0, 2686986, 0, 0, 2686987, 0, 0, 2686988, 0, 0, 2686989, 0, 0, 2686990, 0, 0, 2686991, 0, 0, 2686992, 0, 0, 2686993, 0, 655364, 2686994, 0, 196609, 2686995, 0, 196609, 2686996, 0, 196609, 2686997, 0, 196609, 2686998, 0, 196609, 2686999, 0, 196609, 2687000, 0, 196609, 2687001, 0, 196609, 2687002, 0, 196609, 2687003, 0, 196609, 2687004, 0, 196609, 2687005, 0, 720903, 2687006, 0, 196609, 2687007, 0, 196609, 2687008, 0, 196609, 2687009, 0, 196609, 2687010, 0, 196609, 2687011, 0, 196609, 2687012, 0, 196609, 2687013, 0, 851969, 2687014, 0, 196609, 2687015, 0, 196609, 2687016, 0, 196609, 2687017, 0, 196609, 2687018, 0, 196609, 2687019, 0, 851969, 2687020, 0, 851969, 2687021, 0, 851969, 2687022, 0, 655364, 2687023, 0, 196609, 2687024, 0, 196609, 2687025, 0, 196609, 2687026, 0, 196609, 2687027, 0, 196609, 2687028, 0, 196609, 2687029, 0, 196609, 2687030, 0, 196609, 2687031, 0, 655364, 2687032, 0, 0, 2687033, 0, 0, 2687034, 0, 0, 2687035, 0, 0, 2687036, 0, 0, 2687037, 0, 0, 2687038, 0, 0, 2687039, 0, 0, 2687040, 0, 0, 2687041, 0, 0, 2687042, 0, 0, 2687043, 0, 0, 2687044, 0, 0, 2687045, 0, 0, 2687046, 0, 0, 2687047, 0, 0, 2687048, 0, 0, 2687049, 0, 0, 2687050, 0, 0, 2687051, 0, 0, 2687052, 0, 0, 2687053, 0, 0, 2687054, 0, 0, 2687055, 0, 0, 2687056, 0, 0, 2687057, 0, 0, 2818040, 0, 0, 2818041, 0, 0, 2818042, 0, 0, 2818043, 0, 0, 2818044, 0, 0, 2818045, 0, 0, 2818046, 0, 0, 2818047, 0, 0, 2752512, 0, 0, 2752513, 0, 0, 2752514, 0, 0, 2752515, 0, 0, 2752516, 0, 0, 2752517, 0, 0, 2752518, 0, 0, 2752519, 0, 0, 2752520, 0, 0, 2752521, 0, 0, 2752522, 0, 0, 2752523, 0, 0, 2752524, 0, 0, 2752525, 0, 0, 2752526, 0, 0, 2752527, 0, 0, 2752528, 0, 0, 2752529, 0, 655364, 2752530, 0, 196609, 2752531, 0, 196609, 2752532, 0, 196609, 2752533, 0, 196609, 2752534, 0, 196609, 2752535, 0, 196609, 2752536, 0, 196609, 2752537, 0, 196609, 2752538, 0, 196609, 2752539, 0, 196609, 2752540, 0, 196609, 2752541, 0, 786439, 2752542, 0, 196609, 2752543, 0, 196609, 2752544, 0, 196609, 2752545, 0, 196609, 2752546, 0, 196609, 2752547, 0, 196609, 2752548, 0, 196609, 2752549, 0, 917505, 2752550, 0, 196609, 2752551, 0, 196609, 2752552, 0, 196609, 2752553, 0, 196609, 2752554, 0, 196609, 2752555, 0, 917504, 2752556, 0, 917504, 2752557, 0, 917504, 2752558, 0, 655364, 2752559, 0, 196609, 2752560, 0, 196609, 2752561, 0, 196609, 2752562, 0, 196609, 2752563, 0, 196609, 2752564, 0, 196609, 2752565, 0, 196609, 2752566, 0, 196609, 2752567, 0, 655364, 2752568, 0, 0, 2752569, 0, 0, 2752570, 0, 0, 2752571, 0, 0, 2752572, 0, 0, 2752573, 0, 0, 2752574, 0, 0, 2752575, 0, 0, 2752576, 0, 0, 2752577, 0, 0, 2752578, 0, 0, 2752579, 0, 0, 2752580, 0, 0, 2752581, 0, 0, 2752582, 0, 0, 2752583, 0, 0, 2752584, 0, 0, 2752585, 0, 0, 2752586, 0, 0, 2752587, 0, 0, 2752588, 0, 0, 2752589, 0, 0, 2752590, 0, 0, 2752591, 0, 0, 2752592, 0, 0, 2752593, 0, 0, 2883576, 0, 0, 2883577, 0, 0, 2883578, 0, 0, 2883579, 0, 0, 2883580, 0, 0, 2883581, 0, 0, 2883582, 0, 0, 2883583, 0, 0, 2818048, 0, 0, 2818049, 0, 0, 2818050, 0, 0, 2818051, 0, 0, 2818052, 0, 0, 2818053, 0, 0, 2818054, 0, 0, 2818055, 0, 0, 2818056, 0, 0, 2818057, 0, 0, 2818058, 0, 0, 2818059, 0, 0, 2818060, 0, 0, 2818061, 0, 0, 2818062, 0, 0, 2818063, 0, 0, 2818064, 0, 0, 2818065, 0, 655364, 2818066, 0, 196609, 2818067, 0, 196609, 2818068, 0, 196609, 2818069, 0, 196609, 2818070, 0, 196609, 2818071, 0, 196609, 2818072, 0, 196609, 2818073, 0, 196609, 2818074, 0, 196609, 2818075, 0, 196609, 2818076, 0, 196609, 2818077, 0, 196609, 2818078, 0, 196609, 2818079, 0, 196609, 2818080, 0, 196609, 2818081, 0, 196609, 2818082, 0, 196609, 2818083, 0, 196609, 2818084, 0, 196609, 2818085, 0, 196609, 2818086, 0, 196609, 2818087, 0, 196609, 2818088, 0, 196609, 2818089, 0, 196609, 2818090, 0, 196609, 2818091, 0, 196609, 2818092, 0, 196609, 2818093, 0, 196609, 2818094, 0, 655364, 2818095, 0, 196609, 2818096, 0, 196609, 2818097, 0, 196609, 2818098, 0, 196609, 2818099, 0, 196609, 2818100, 0, 196609, 2818101, 0, 196609, 2818102, 0, 196609, 2818103, 0, 655364, 2818104, 0, 0, 2818105, 0, 0, 2818106, 0, 0, 2818107, 0, 0, 2818108, 0, 0, 2818109, 0, 0, 2818110, 0, 0, 2818111, 0, 0, 2818112, 0, 0, 2818113, 0, 0, 2818114, 0, 0, 2818115, 0, 0, 2818116, 0, 0, 2818117, 0, 0, 2818118, 0, 0, 2818119, 0, 0, 2818120, 0, 0, 2818121, 0, 0, 2818122, 0, 0, 2818123, 0, 0, 2818124, 0, 0, 2818125, 0, 0, 2818126, 0, 0, 2818127, 0, 0, 2818128, 0, 0, 2818129, 0, 0, 2949112, 0, 0, 2949113, 0, 0, 2949114, 0, 0, 2949115, 0, 0, 2949116, 0, 0, 2949117, 0, 0, 2949118, 0, 0, 2949119, 0, 0, 2883584, 0, 0, 2883585, 0, 0, 2883586, 0, 0, 2883587, 0, 0, 2883588, 0, 0, 2883589, 0, 0, 2883590, 0, 0, 2883591, 0, 0, 2883592, 0, 0, 2883593, 0, 0, 2883594, 0, 0, 2883595, 0, 0, 2883596, 0, 0, 2883597, 0, 0, 2883598, 0, 0, 2883599, 0, 0, 2883600, 0, 0, 2883601, 0, 655364, 2883602, 0, 196609, 2883603, 0, 196609, 2883604, 0, 196609, 2883605, 0, 196609, 2883606, 0, 196609, 2883607, 0, 196609, 2883608, 0, 196609, 2883609, 0, 196609, 2883610, 0, 196609, 2883611, 0, 196609, 2883612, 0, 196609, 2883613, 0, 196609, 2883614, 0, 196609, 2883615, 0, 196609, 2883616, 0, 196609, 2883617, 0, 196609, 2883618, 0, 196609, 2883619, 0, 196609, 2883620, 0, 196609, 2883621, 0, 196609, 2883622, 0, 196609, 2883623, 0, 196609, 2883624, 0, 196609, 2883625, 0, 196609, 2883626, 0, 196609, 2883627, 0, 196609, 2883628, 0, 196609, 2883629, 0, 196609, 2883630, 0, 655364, 2883631, 0, 196609, 2883632, 0, 196609, 2883633, 0, 196609, 2883634, 0, 196609, 2883635, 0, 196609, 2883636, 0, 196609, 2883637, 0, 196609, 2883638, 0, 196609, 2883639, 0, 655364, 2883640, 0, 0, 2883641, 0, 0, 2883642, 0, 0, 2883643, 0, 0, 2883644, 0, 0, 2883645, 0, 0, 2883646, 0, 0, 2883647, 0, 0, 2883648, 0, 0, 2883649, 0, 0, 2883650, 0, 0, 2883651, 0, 0, 2883652, 0, 0, 2883653, 0, 0, 2883654, 0, 0, 2883655, 0, 0, 2883656, 0, 0, 2883657, 0, 0, 2883658, 0, 0, 2883659, 0, 0, 2883660, 0, 0, 2883661, 0, 0, 2883662, 0, 0, 2883663, 0, 0, 2883664, 0, 0, 2883665, 0, 0, 3014648, 0, 0, 3014649, 0, 0, 3014650, 0, 0, 3014651, 0, 0, 3014652, 0, 0, 3014653, 0, 0, 3014654, 0, 0, 3014655, 0, 0, 2949120, 0, 0, 2949121, 0, 0, 2949122, 0, 0, 2949123, 0, 0, 2949124, 0, 0, 2949125, 0, 0, 2949126, 0, 0, 2949127, 0, 0, 2949128, 0, 0, 2949129, 0, 0, 2949130, 0, 0, 2949131, 0, 0, 2949132, 0, 0, 2949133, 0, 0, 2949134, 0, 0, 2949135, 0, 0, 2949136, 0, 0, 2949137, 0, 655364, 2949138, 0, 196609, 2949139, 0, 196609, 2949140, 0, 196609, 2949141, 0, 196609, 2949142, 0, 196609, 2949143, 0, 196609, 2949144, 0, 196609, 2949145, 0, 196609, 2949146, 0, 196609, 2949147, 0, 196609, 2949148, 0, 196609, 2949149, 0, 196609, 2949150, 0, 196609, 2949151, 0, 196609, 2949152, 0, 196609, 2949153, 0, 196609, 2949154, 0, 196609, 2949155, 0, 196609, 2949156, 0, 196609, 2949157, 0, 196609, 2949158, 0, 196609, 2949159, 0, 196609, 2949160, 0, 196609, 2949161, 0, 196609, 2949162, 0, 196609, 2949163, 0, 196609, 2949164, 0, 196609, 2949165, 0, 196609, 2949166, 0, 655364, 2949167, 0, 196609, 2949168, 0, 196609, 2949169, 0, 196609, 2949170, 0, 196609, 2949171, 0, 196609, 2949172, 0, 196609, 2949173, 0, 196609, 2949174, 0, 196609, 2949175, 0, 655364, 2949176, 0, 0, 2949177, 0, 0, 2949178, 0, 0, 2949179, 0, 0, 2949180, 0, 0, 2949181, 0, 0, 2949182, 0, 0, 2949183, 0, 0, 2949184, 0, 0, 2949185, 0, 0, 2949186, 0, 0, 2949187, 0, 0, 2949188, 0, 0, 2949189, 0, 0, 2949190, 0, 0, 2949191, 0, 0, 2949192, 0, 0, 2949193, 0, 0, 2949194, 0, 0, 2949195, 0, 0, 2949196, 0, 0, 2949197, 0, 0, 2949198, 0, 0, 2949199, 0, 0, 2949200, 0, 0, 2949201, 0, 0, 3080184, 0, 0, 3080185, 0, 0, 3080186, 0, 0, 3080187, 0, 0, 3080188, 0, 0, 3080189, 0, 0, 3080190, 0, 0, 3080191, 0, 0, 3014656, 0, 0, 3014657, 0, 0, 3014658, 0, 0, 3014659, 0, 0, 3014660, 0, 0, 3014661, 0, 0, 3014662, 0, 0, 3014663, 0, 0, 3014664, 0, 0, 3014665, 0, 0, 3014666, 0, 0, 3014667, 0, 0, 3014668, 0, 0, 3014669, 0, 0, 3014670, 0, 0, 3014671, 0, 0, 3014672, 0, 0, 3014673, 0, 655364, 3014674, 0, 196609, 3014675, 0, 196609, 3014676, 0, 196609, 3014677, 0, 196609, 3014678, 0, 196609, 3014679, 0, 196609, 3014680, 0, 851969, 3014681, 0, 851969, 3014682, 0, 851969, 3014683, 0, 851969, 3014684, 0, 851969, 3014685, 0, 851969, 3014686, 0, 851969, 3014687, 0, 851969, 3014688, 0, 655364, 3014689, 0, 851969, 3014690, 0, 851969, 3014691, 0, 851969, 3014692, 0, 851969, 3014693, 0, 851969, 3014694, 0, 851969, 3014695, 0, 851969, 3014696, 0, 851969, 3014697, 0, 851969, 3014698, 0, 851969, 3014699, 0, 851969, 3014700, 0, 851969, 3014701, 0, 851969, 3014702, 0, 851969, 3014703, 0, 851969, 3014704, 0, 851969, 3014705, 0, 851969, 3014706, 0, 851969, 3014707, 0, 851969, 3014708, 0, 851969, 3014709, 0, 851969, 3014710, 0, 851969, 3014711, 0, 851969, 3014712, 0, 0, 3014713, 0, 0, 3014714, 0, 0, 3014715, 0, 0, 3014716, 0, 0, 3014717, 0, 0, 3014718, 0, 0, 3014719, 0, 0, 3014720, 0, 0, 3014721, 0, 0, 3014722, 0, 0, 3014723, 0, 0, 3014724, 0, 0, 3014725, 0, 0, 3014726, 0, 0, 3014727, 0, 0, 3014728, 0, 0, 3014729, 0, 0, 3014730, 0, 0, 3014731, 0, 0, 3014732, 0, 0, 3014733, 0, 0, 3014734, 0, 0, 3014735, 0, 0, 3014736, 0, 0, 3014737, 0, 0, 3145720, 0, 0, 3145721, 0, 0, 3145722, 0, 0, 3145723, 0, 0, 3145724, 0, 0, 3145725, 0, 0, 3145726, 0, 0, 3145727, 0, 0, 3080192, 0, 0, 3080193, 0, 0, 3080194, 0, 0, 3080195, 0, 0, 3080196, 0, 0, 3080197, 0, 0, 3080198, 0, 0, 3080199, 0, 0, 3080200, 0, 0, 3080201, 0, 0, 3080202, 0, 0, 3080203, 0, 0, 3080204, 0, 0, 3080205, 0, 0, 3080206, 0, 0, 3080207, 0, 0, 3080208, 0, 0, 3080209, 0, 655364, 3080210, 0, 196609, 3080211, 0, 196609, 3080212, 0, 196609, 3080213, 0, 196609, 3080214, 0, 196609, 3080215, 0, 196609, 3080216, 0, 917504, 3080217, 0, 917504, 3080218, 0, 917504, 3080219, 0, 917504, 3080220, 0, 917504, 3080221, 0, 917504, 3080222, 0, 917504, 3080223, 0, 917504, 3080224, 0, 655364, 3080225, 0, 917504, 3080226, 0, 917504, 3080227, 0, 917504, 3080228, 0, 917504, 3080229, 0, 917504, 3080230, 0, 917504, 3080231, 0, 917504, 3080232, 0, 917504, 3080233, 0, 917504, 3080234, 0, 917504, 3080235, 0, 917504, 3080236, 0, 917504, 3080237, 0, 917504, 3080238, 0, 917504, 3080239, 0, 917504, 3080240, 0, 917504, 3080241, 0, 917504, 3080242, 0, 917504, 3080243, 0, 917504, 3080244, 0, 917504, 3080245, 0, 917504, 3080246, 0, 917504, 3080247, 0, 917504, 3080248, 0, 0, 3080249, 0, 0, 3080250, 0, 0, 3080251, 0, 0, 3080252, 0, 0, 3080253, 0, 0, 3080254, 0, 0, 3080255, 0, 0, 3080256, 0, 0, 3080257, 0, 0, 3080258, 0, 0, 3080259, 0, 0, 3080260, 0, 0, 3080261, 0, 0, 3080262, 0, 0, 3080263, 0, 0, 3080264, 0, 0, 3080265, 0, 0, 3080266, 0, 0, 3080267, 0, 0, 3080268, 0, 0, 3080269, 0, 0, 3080270, 0, 0, 3080271, 0, 0, 3080272, 0, 0, 3080273, 0, 0, 3211256, 0, 0, 3211257, 0, 0, 3211258, 0, 0, 3211259, 0, 0, 3211260, 0, 0, 3211261, 0, 0, 3211262, 0, 0, 3211263, 0, 0, 3145728, 0, 0, 3145729, 0, 0, 3145730, 0, 0, 3145731, 0, 0, 3145732, 0, 0, 3145733, 0, 0, 3145734, 0, 0, 3145735, 0, 0, 3145736, 0, 0, 3145737, 0, 0, 3145738, 0, 0, 3145739, 0, 0, 3145740, 0, 0, 3145741, 0, 0, 3145742, 0, 0, 3145743, 0, 0, 3145744, 0, 0, 3145745, 0, 655364, 3145746, 0, 196609, 3145747, 0, 196609, 3145748, 0, 196609, 3145749, 0, 196609, 3145750, 0, 196609, 3145751, 0, 196609, 3145752, 0, 196609, 3145753, 0, 196609, 3145754, 0, 196609, 3145755, 0, 196609, 3145756, 0, 196609, 3145757, 0, 196609, 3145758, 0, 196609, 3145759, 0, 196609, 3145760, 0, 655364, 3145761, 0, 851970, 3145762, 0, 851970, 3145763, 0, 851970, 3145764, 0, 851970, 3145765, 0, 851970, 3145766, 0, 851970, 3145767, 0, 851970, 3145768, 0, 851970, 3145769, 0, 851970, 3145770, 0, 851970, 3145771, 0, 851970, 3145772, 0, 851970, 3145773, 0, 851970, 3145774, 0, 851970, 3145775, 0, 851970, 3145776, 0, 851970, 3145777, 0, 851970, 3145778, 0, 851970, 3145779, 0, 851970, 3145780, 0, 851970, 3145781, 0, 851970, 3145782, 0, 851970, 3145783, 0, 851970, 3145784, 0, 0, 3145785, 0, 0, 3145786, 0, 0, 3145787, 0, 0, 3145788, 0, 0, 3145789, 0, 0, 3145790, 0, 0, 3145791, 0, 0, 3145792, 0, 0, 3145793, 0, 0, 3145794, 0, 0, 3145795, 0, 0, 3145796, 0, 0, 3145797, 0, 0, 3145798, 0, 0, 3145799, 0, 0, 3145800, 0, 0, 3145801, 0, 0, 3145802, 0, 0, 3145803, 0, 0, 3145804, 0, 0, 3145805, 0, 0, 3145806, 0, 0, 3145807, 0, 0, 3145808, 0, 0, 3145809, 0, 0, 3276792, 0, 0, 3276793, 0, 0, 3276794, 0, 0, 3276795, 0, 0, 3276796, 0, 0, 3276797, 0, 0, 3276798, 0, 0, 3276799, 0, 0, 3211264, 0, 0, 3211265, 0, 0, 3211266, 0, 0, 3211267, 0, 0, 3211268, 0, 0, 3211269, 0, 0, 3211270, 0, 0, 3211271, 0, 0, 3211272, 0, 0, 3211273, 0, 0, 3211274, 0, 0, 3211275, 0, 0, 3211276, 0, 0, 3211277, 0, 0, 3211278, 0, 0, 3211279, 0, 0, 3211280, 0, 0, 3211281, 0, 917504, 3211282, 0, 196609, 3211283, 0, 196609, 3211284, 0, 196609, 3211285, 0, 196609, 3211286, 0, 196609, 3211287, 0, 196609, 3211288, 0, 196609, 3211289, 0, 196609, 3211290, 0, 196609, 3211291, 0, 196609, 3211292, 0, 196609, 3211293, 0, 196609, 3211294, 0, 196609, 3211295, 0, 196609, 3211296, 0, 655364, 3211297, 0, 0, 3211298, 0, 0, 3211299, 0, 0, 3211300, 0, 0, 3211301, 0, 0, 3211302, 0, 0, 3211303, 0, 0, 3211304, 0, 0, 3211305, 0, 0, 3211306, 0, 0, 3211307, 0, 0, 3211308, 0, 0, 3211309, 0, 0, 3211310, 0, 0, 3211311, 0, 0, 3211312, 0, 0, 3211313, 0, 0, 3211314, 0, 0, 3211315, 0, 0, 3211316, 0, 0, 3211317, 0, 0, 3211318, 0, 0, 3211319, 0, 0, 3211320, 0, 0, 3211321, 0, 0, 3211322, 0, 0, 3211323, 0, 0, 3211324, 0, 0, 3211325, 0, 0, 3211326, 0, 0, 3211327, 0, 0, 3211328, 0, 0, 3211329, 0, 0, 3211330, 0, 0, 3211331, 0, 0, 3211332, 0, 0, 3211333, 0, 0, 3211334, 0, 0, 3211335, 0, 0, 3211336, 0, 0, 3211337, 0, 0, 3211338, 0, 0, 3211339, 0, 0, 3211340, 0, 0, 3211341, 0, 0, 3211342, 0, 0, 3211343, 0, 0, 3211344, 0, 0, 3211345, 0, 0, 3342328, 0, 0, 3342329, 0, 0, 3342330, 0, 0, 3342331, 0, 0, 3342332, 0, 0, 3342333, 0, 0, 3342334, 0, 0, 3342335, 0, 0, 3276800, 0, 0, 3276801, 0, 0, 3276802, 0, 0, 3276803, 0, 0, 3276804, 0, 0, 3276805, 0, 0, 3276806, 0, 0, 3276807, 0, 0, 3276808, 0, 0, 3276809, 0, 0, 3276810, 0, 0, 3276811, 0, 0, 3276812, 0, 0, 3276813, 0, 0, 3276814, 0, 0, 3276815, 0, 0, 3276816, 0, 0, 3276817, 0, 851971, 3276818, 0, 196609, 3276819, 0, 196609, 3276820, 0, 196609, 3276821, 0, 196609, 3276822, 0, 196609, 3276823, 0, 196609, 3276824, 0, 196609, 3276825, 0, 196609, 3276826, 0, 196609, 3276827, 0, 196609, 3276828, 0, 196609, 3276829, 0, 196609, 3276830, 0, 196609, 3276831, 0, 196609, 3276832, 0, 655364, 3276833, 0, 0, 3276834, 0, 0, 3276835, 0, 0, 3276836, 0, 0, 3276837, 0, 0, 3276838, 0, 0, 3276839, 0, 0, 3276840, 0, 0, 3276841, 0, 0, 3276842, 0, 0, 3276843, 0, 0, 3276844, 0, 0, 3276845, 0, 0, 3276846, 0, 0, 3276847, 0, 0, 3276848, 0, 0, 3276849, 0, 0, 3276850, 0, 0, 3276851, 0, 0, 3276852, 0, 0, 3276853, 0, 0, 3276854, 0, 0, 3276855, 0, 0, 3276856, 0, 0, 3276857, 0, 0, 3276858, 0, 0, 3276859, 0, 0, 3276860, 0, 0, 3276861, 0, 0, 3276862, 0, 0, 3276863, 0, 0, 3276864, 0, 0, 3276865, 0, 0, 3276866, 0, 0, 3276867, 0, 0, 3276868, 0, 0, 3276869, 0, 0, 3276870, 0, 0, 3276871, 0, 0, 3276872, 0, 0, 3276873, 0, 0, 3276874, 0, 0, 3276875, 0, 0, 3276876, 0, 0, 3276877, 0, 0, 3276878, 0, 0, 3276879, 0, 0, 3276880, 0, 0, 3276881, 0, 0, 3407864, 0, 0, 3407865, 0, 0, 3407866, 0, 0, 3407867, 0, 0, 3407868, 0, 0, 3407869, 0, 0, 3407870, 0, 0, 3407871, 0, 0, 3342336, 0, 0, 3342337, 0, 0, 3342338, 0, 0, 3342339, 0, 0, 3342340, 0, 0, 3342341, 0, 0, 3342342, 0, 0, 3342343, 0, 0, 3342344, 0, 0, 3342345, 0, 0, 3342346, 0, 0, 3342347, 0, 0, 3342348, 0, 0, 3342349, 0, 0, 3342350, 0, 0, 3342351, 0, 0, 3342352, 0, 0, 3342353, 0, 0, 3342354, 0, 196609, 3342355, 0, 196609, 3342356, 0, 196609, 3342357, 0, 196609, 3342358, 0, 196609, 3342359, 0, 196609, 3342360, 0, 196609, 3342361, 0, 196609, 3342362, 0, 196609, 3342363, 0, 196609, 3342364, 0, 196609, 3342365, 0, 196609, 3342366, 0, 196609, 3342367, 0, 196609, 3342368, 0, 917504, 3342369, 0, 0, 3342370, 0, 0, 3342371, 0, 0, 3342372, 0, 0, 3342373, 0, 0, 3342374, 0, 0, 3342375, 0, 0, 3342376, 0, 0, 3342377, 0, 0, 3342378, 0, 0, 3342379, 0, 0, 3342380, 0, 0, 3342381, 0, 0, 3342382, 0, 0, 3342383, 0, 0, 3342384, 0, 0, 3342385, 0, 0, 3342386, 0, 0, 3342387, 0, 0, 3342388, 0, 0, 3342389, 0, 0, 3342390, 0, 0, 3342391, 0, 0, 3342392, 0, 0, 3342393, 0, 0, 3342394, 0, 0, 3342395, 0, 0, 3342396, 0, 0, 3342397, 0, 0, 3342398, 0, 0, 3342399, 0, 0, 3342400, 0, 0, 3342401, 0, 0, 3342402, 0, 0, 3342403, 0, 0, 3342404, 0, 0, 3342405, 0, 0, 3342406, 0, 0, 3342407, 0, 0, 3342408, 0, 0, 3342409, 0, 0, 3342410, 0, 0, 3342411, 0, 0, 3342412, 0, 0, 3342413, 0, 0, 3342414, 0, 0, 3342415, 0, 0, 3342416, 0, 0, 3342417, 0, 0, 3473400, 0, 0, 3473401, 0, 0, 3473402, 0, 0, 3473403, 0, 0, 3473404, 0, 0, 3473405, 0, 0, 3473406, 0, 0, 3473407, 0, 0, 3407872, 0, 0, 3407873, 0, 0, 3407874, 0, 0, 3407875, 0, 0, 3407876, 0, 0, 3407877, 0, 0, 3407878, 0, 0, 3407879, 0, 0, 3407880, 0, 0, 3407881, 0, 0, 3407882, 0, 0, 3407883, 0, 0, 3407884, 0, 0, 3407885, 0, 0, 3407886, 0, 0, 3407887, 0, 0, 3407888, 0, 0, 3407889, 0, 0, 3407890, 0, 851971, 3407891, 0, 851971, 3407892, 0, 851970, 3407893, 0, 851970, 3407894, 0, 851970, 3407895, 0, 851970, 3407896, 0, 851970, 3407897, 0, 851970, 3407898, 0, 851970, 3407899, 0, 851970, 3407900, 0, 851970, 3407901, 0, 851970, 3407902, 0, 851970, 3407903, 0, 851971, 3407904, 0, 851971, 3407905, 0, 0, 3407906, 0, 0, 3407907, 0, 0, 3407908, 0, 0, 3407909, 0, 0, 3407910, 0, 0, 3407911, 0, 0, 3407912, 0, 0, 3407913, 0, 0, 3407914, 0, 0, 3407915, 0, 0, 3407916, 0, 0, 3407917, 0, 0, 3407918, 0, 0, 3407919, 0, 0, 3407920, 0, 0, 3407921, 0, 0, 3407922, 0, 0, 3407923, 0, 0, 3407924, 0, 0, 3407925, 0, 0, 3407926, 0, 0, 3407927, 0, 0, 3407928, 0, 0, 3407929, 0, 0, 3407930, 0, 0, 3407931, 0, 0, 3407932, 0, 0, 3407933, 0, 0, 3407934, 0, 0, 3407935, 0, 0, 3407936, 0, 0, 3407937, 0, 0, 3407938, 0, 0, 3407939, 0, 0, 3407940, 0, 0, 3407941, 0, 0, 3407942, 0, 0, 3407943, 0, 0, 3407944, 0, 0, 3407945, 0, 0, 3407946, 0, 0, 3407947, 0, 0, 3407948, 0, 0, 3407949, 0, 0, 3407950, 0, 0, 3407951, 0, 0, 3407952, 0, 0, 3407953, 0, 0, 3538936, 0, 0, 3538937, 0, 0, 3538938, 0, 0, 3538939, 0, 0, 3538940, 0, 0, 3538941, 0, 0, 3538942, 0, 0, 3538943, 0, 0, 3473408, 0, 0, 3473409, 0, 0, 3473410, 0, 0, 3473411, 0, 0, 3473412, 0, 0, 3473413, 0, 0, 3473414, 0, 0, 3473415, 0, 0, 3473416, 0, 0, 3473417, 0, 0, 3473418, 0, 0, 3473419, 0, 0, 3473420, 0, 0, 3473421, 0, 0, 3473422, 0, 0, 3473423, 0, 0, 3473424, 0, 0, 3473425, 0, 0, 3473426, 0, 0, 3473427, 0, 0, 3473428, 0, 0, 3473429, 0, 0, 3473430, 0, 0, 3473431, 0, 0, 3473432, 0, 0, 3473433, 0, 0, 3473434, 0, 0, 3473435, 0, 0, 3473436, 0, 0, 3473437, 0, 0, 3473438, 0, 0, 3473439, 0, 0, 3473440, 0, 0, 3473441, 0, 0, 3473442, 0, 0, 3473443, 0, 0, 3473444, 0, 0, 3473445, 0, 0, 3473446, 0, 0, 3473447, 0, 0, 3473448, 0, 0, 3473449, 0, 0, 3473450, 0, 0, 3473451, 0, 0, 3473452, 0, 0, 3473453, 0, 0, 3473454, 0, 0, 3473455, 0, 0, 3473456, 0, 0, 3473457, 0, 0, 3473458, 0, 0, 3473459, 0, 0, 3473460, 0, 0, 3473461, 0, 0, 3473462, 0, 0, 3473463, 0, 0, 3473464, 0, 0, 3473465, 0, 0, 3473466, 0, 0, 3473467, 0, 0, 3473468, 0, 0, 3473469, 0, 0, 3473470, 0, 0, 3473471, 0, 0, 3473472, 0, 0, 3473473, 0, 0, 3473474, 0, 0, 3473475, 0, 0, 3473476, 0, 0, 3473477, 0, 0, 3473478, 0, 0, 3473479, 0, 0, 3473480, 0, 0, 3473481, 0, 0, 3473482, 0, 0, 3473483, 0, 0, 3473484, 0, 0, 3473485, 0, 0, 3473486, 0, 0, 3473487, 0, 0, 3473488, 0, 0, 3473489, 0, 0, 3604472, 0, 0, 3604473, 0, 0, 3604474, 0, 0, 3604475, 0, 0, 3604476, 0, 0, 3604477, 0, 0, 3604478, 0, 0, 3604479, 0, 0, 3538944, 0, 0, 3538945, 0, 0, 3538946, 0, 0, 3538947, 0, 0, 3538948, 0, 0, 3538949, 0, 0, 3538950, 0, 0, 3538951, 0, 0, 3538952, 0, 0, 3538953, 0, 0, 3538954, 0, 0, 3538955, 0, 0, 3538956, 0, 0, 3538957, 0, 0, 3538958, 0, 0, 3538959, 0, 0, 3538960, 0, 0, 3538961, 0, 0, 3538962, 0, 0, 3538963, 0, 0, 3538964, 0, 0, 3538965, 0, 0, 3538966, 0, 0, 3538967, 0, 0, 3538968, 0, 0, 3538969, 0, 0, 3538970, 0, 0, 3538971, 0, 0, 3538972, 0, 0, 3538973, 0, 0, 3538974, 0, 0, 3538975, 0, 0, 3538976, 0, 0, 3538977, 0, 0, 3538978, 0, 0, 3538979, 0, 0, 3538980, 0, 0, 3538981, 0, 0, 3538982, 0, 0, 3538983, 0, 0, 3538984, 0, 0, 3538985, 0, 0, 3538986, 0, 0, 3538987, 0, 0, 3538988, 0, 0, 3538989, 0, 0, 3538990, 0, 0, 3538991, 0, 0, 3538992, 0, 0, 3538993, 0, 0, 3538994, 0, 0, 3538995, 0, 0, 3538996, 0, 0, 3538997, 0, 0, 3538998, 0, 0, 3538999, 0, 0, 3539000, 0, 0, 3539001, 0, 0, 3539002, 0, 0, 3539003, 0, 0, 3539004, 0, 0, 3539005, 0, 0, 3539006, 0, 0, 3539007, 0, 0, 3539008, 0, 0, 3539009, 0, 0, 3539010, 0, 0, 3539011, 0, 0, 3539012, 0, 0, 3539013, 0, 0, 3539014, 0, 0, 3539015, 0, 0, 3539016, 0, 0, 3539017, 0, 0, 3539018, 0, 0, 3539019, 0, 0, 3539020, 0, 0, 3539021, 0, 0, 3539022, 0, 0, 3539023, 0, 0, 3539024, 0, 0, 3539025, 0, 0, 3670008, 0, 0, 3670009, 0, 0, 3670010, 0, 0, 3670011, 0, 0, 3670012, 0, 0, 3670013, 0, 0, 3670014, 0, 0, 3670015, 0, 0, 3604480, 0, 0, 3604481, 0, 0, 3604482, 0, 0, 3604483, 0, 0, 3604484, 0, 0, 3604485, 0, 0, 3604486, 0, 0, 3604487, 0, 0, 3604488, 0, 0, 3604489, 0, 0, 3604490, 0, 0, 3604491, 0, 0, 3604492, 0, 0, 3604493, 0, 0, 3604494, 0, 0, 3604495, 0, 0, 3604496, 0, 0, 3604497, 0, 0, 3604498, 0, 0, 3604499, 0, 0, 3604500, 0, 0, 3604501, 0, 0, 3604502, 0, 0, 3604503, 0, 0, 3604504, 0, 0, 3604505, 0, 0, 3604506, 0, 0, 3604507, 0, 0, 3604508, 0, 0, 3604509, 0, 0, 3604510, 0, 0, 3604511, 0, 0, 3604512, 0, 0, 3604513, 0, 0, 3604514, 0, 0, 3604515, 0, 0, 3604516, 0, 0, 3604517, 0, 0, 3604518, 0, 0, 3604519, 0, 0, 3604520, 0, 0, 3604521, 0, 0, 3604522, 0, 0, 3604523, 0, 0, 3604524, 0, 0, 3604525, 0, 0, 3604526, 0, 0, 3604527, 0, 0, 3604528, 0, 0, 3604529, 0, 0, 3604530, 0, 0, 3604531, 0, 0, 3604532, 0, 0, 3604533, 0, 0, 3604534, 0, 0, 3604535, 0, 0, 3604536, 0, 0, 3604537, 0, 0, 3604538, 0, 0, 3604539, 0, 0, 3604540, 0, 0, 3604541, 0, 0, 3604542, 0, 0, 3604543, 0, 0, 3604544, 0, 0, 3604545, 0, 0, 3604546, 0, 0, 3604547, 0, 0, 3604548, 0, 0, 3604549, 0, 0, 3604550, 0, 0, 3604551, 0, 0, 3604552, 0, 0, 3604553, 0, 0, 3604554, 0, 0, 3604555, 0, 0, 3604556, 0, 0, 3604557, 0, 0, 3604558, 0, 0, 3604559, 0, 0, 3604560, 0, 0, 3604561, 0, 0, 3735544, 0, 0, 3735545, 0, 0, 3735546, 0, 0, 3735547, 0, 0, 3735548, 0, 0, 3735549, 0, 0, 3735550, 0, 0, 3735551, 0, 0, 3670016, 0, 0, 3670017, 0, 0, 3670018, 0, 0, 3670019, 0, 0, 3670020, 0, 0, 3670021, 0, 0, 3670022, 0, 0, 3670023, 0, 0, 3670024, 0, 0, 3670025, 0, 0, 3670026, 0, 0, 3670027, 0, 0, 3670028, 0, 0, 3670029, 0, 0, 3670030, 0, 0, 3670031, 0, 0, 3670032, 0, 0, 3670033, 0, 0, 3670034, 0, 0, 3670035, 0, 0, 3670036, 0, 0, 3670037, 0, 0, 3670038, 0, 0, 3670039, 0, 0, 3670040, 0, 0, 3670041, 0, 0, 3670042, 0, 0, 3670043, 0, 0, 3670044, 0, 0, 3670045, 0, 0, 3670046, 0, 0, 3670047, 0, 0, 3670048, 0, 0, 3670049, 0, 0, 3670050, 0, 0, 3670051, 0, 0, 3670052, 0, 0, 3670053, 0, 0, 3670054, 0, 0, 3670055, 0, 0, 3670056, 0, 0, 3670057, 0, 0, 3670058, 0, 0, 3670059, 0, 0, 3670060, 0, 0, 3670061, 0, 0, 3670062, 0, 0, 3670063, 0, 0, 3670064, 0, 0, 3670065, 0, 0, 3670066, 0, 0, 3670067, 0, 0, 3670068, 0, 0, 3670069, 0, 0, 3670070, 0, 0, 3670071, 0, 0, 3670072, 0, 0, 3670073, 0, 0, 3670074, 0, 0, 3670075, 0, 0, 3670076, 0, 0, 3670077, 0, 0, 3670078, 0, 0, 3670079, 0, 0, 3670080, 0, 0, 3670081, 0, 0, 3670082, 0, 0, 3670083, 0, 0, 3670084, 0, 0, 3670085, 0, 0, 3670086, 0, 0, 3670087, 0, 0, 3670088, 0, 0, 3670089, 0, 0, 3670090, 0, 0, 3670091, 0, 0, 3670092, 0, 0, 3670093, 0, 0, 3670094, 0, 0, 3670095, 0, 0, 3670096, 0, 0, 3670097, 0, 0, 3801080, 0, 0, 3801081, 0, 0, 3801082, 0, 0, 3801083, 0, 0, 3801084, 0, 0, 3801085, 0, 0, 3801086, 0, 0, 3801087, 0, 0, 3735552, 0, 0, 3735553, 0, 0, 3735554, 0, 0, 3735555, 0, 0, 3735556, 0, 0, 3735557, 0, 0, 3735558, 0, 0, 3735559, 0, 0, 3735560, 0, 0, 3735561, 0, 0, 3735562, 0, 0, 3735563, 0, 0, 3735564, 0, 0, 3735565, 0, 0, 3735566, 0, 0, 3735567, 0, 0, 3735568, 0, 0, 3735569, 0, 0, 3735570, 0, 0, 3735571, 0, 0, 3735572, 0, 0, 3735573, 0, 0, 3735574, 0, 0, 3735575, 0, 0, 3735576, 0, 0, 3735577, 0, 0, 3735578, 0, 0, 3735579, 0, 0, 3735580, 0, 0, 3735581, 0, 0, 3735582, 0, 0, 3735583, 0, 0, 3735584, 0, 0, 3735585, 0, 0, 3735586, 0, 0, 3735587, 0, 0, 3735588, 0, 0, 3735589, 0, 0, 3735590, 0, 0, 3735591, 0, 0, 3735592, 0, 0, 3735593, 0, 0, 3735594, 0, 0, 3735595, 0, 0, 3735596, 0, 0, 3735597, 0, 0, 3735598, 0, 0, 3735599, 0, 0, 3735600, 0, 0, 3735601, 0, 0, 3735602, 0, 0, 3735603, 0, 0, 3735604, 0, 0, 3735605, 0, 0, 3735606, 0, 0, 3735607, 0, 0, 3735608, 0, 0, 3735609, 0, 0, 3735610, 0, 0, 3735611, 0, 0, 3735612, 0, 0, 3735613, 0, 0, 3735614, 0, 0, 3735615, 0, 0, 3735616, 0, 0, 3735617, 0, 0, 3735618, 0, 0, 3735619, 0, 0, 3735620, 0, 0, 3735621, 0, 0, 3735622, 0, 0, 3735623, 0, 0, 3735624, 0, 0, 3735625, 0, 0, 3735626, 0, 0, 3735627, 0, 0, 3735628, 0, 0, 3735629, 0, 0, 3735630, 0, 0, 3735631, 0, 0, 3735632, 0, 0, 3735633, 0, 0, 3866616, 0, 0, 3866617, 0, 0, 3866618, 0, 0, 3866619, 0, 0, 3866620, 0, 0, 3866621, 0, 0, 3866622, 0, 0, 3866623, 0, 0, 3801088, 0, 0, 3801089, 0, 0, 3801090, 0, 0, 3801091, 0, 0, 3801092, 0, 0, 3801093, 0, 0, 3801094, 0, 0, 3801095, 0, 0, 3801096, 0, 0, 3801097, 0, 0, 3801098, 0, 0, 3801099, 0, 0, 3801100, 0, 0, 3801101, 0, 0, 3801102, 0, 0, 3801103, 0, 0, 3801104, 0, 0, 3801105, 0, 0, 3801106, 0, 0, 3801107, 0, 0, 3801108, 0, 0, 3801109, 0, 0, 3801110, 0, 0, 3801111, 0, 0, 3801112, 0, 0, 3801113, 0, 0, 3801114, 0, 0, 3801115, 0, 0, 3801116, 0, 0, 3801117, 0, 0, 3801118, 0, 0, 3801119, 0, 0, 3801120, 0, 0, 3801121, 0, 0, 3801122, 0, 0, 3801123, 0, 0, 3801124, 0, 0, 3801125, 0, 0, 3801126, 0, 0, 3801127, 0, 0, 3801128, 0, 0, 3801129, 0, 0, 3801130, 0, 0, 3801131, 0, 0, 3801132, 0, 0, 3801133, 0, 0, 3801134, 0, 0, 3801135, 0, 0, 3801136, 0, 0, 3801137, 0, 0, 3801138, 0, 0, 3801139, 0, 0, 3801140, 0, 0, 3801141, 0, 0, 3801142, 0, 0, 3801143, 0, 0, 3801144, 0, 0, 3801145, 0, 0, 3801146, 0, 0, 3801147, 0, 0, 3801148, 0, 0, 3801149, 0, 0, 3801150, 0, 0, 3801151, 0, 0, 3801152, 0, 0, 3801153, 0, 0, 3801154, 0, 0, 3801155, 0, 0, 3801156, 0, 0, 3801157, 0, 0, 3801158, 0, 0, 3801159, 0, 0, 3801160, 0, 0, 3801161, 0, 0, 3801162, 0, 0, 3801163, 0, 0, 3801164, 0, 0, 3801165, 0, 0, 3801166, 0, 0, 3801167, 0, 0, 3801168, 0, 0, 3801169, 0, 0, 3932152, 0, 0, 3932153, 0, 0, 3932154, 0, 0, 3932155, 0, 0, 3932156, 0, 0, 3932157, 0, 0, 3932158, 0, 0, 3932159, 0, 0, 3866624, 0, 0, 3866625, 0, 0, 3866626, 0, 0, 3866627, 0, 0, 3866628, 0, 0, 3866629, 0, 0, 3866630, 0, 0, 3866631, 0, 0, 3866632, 0, 0, 3866633, 0, 0, 3866634, 0, 0, 3866635, 0, 0, 3866636, 0, 0, 3866637, 0, 0, 3866638, 0, 0, 3866639, 0, 0, 3866640, 0, 0, 3866641, 0, 0, 3866642, 0, 0, 3866643, 0, 0, 3866644, 0, 0, 3866645, 0, 0, 3866646, 0, 0, 3866647, 0, 0, 3866648, 0, 0, 3866649, 0, 0, 3866650, 0, 0, 3866651, 0, 0, 3866652, 0, 0, 3866653, 0, 0, 3866654, 0, 0, 3866655, 0, 0, 3866656, 0, 0, 3866657, 0, 0, 3866658, 0, 0, 3866659, 0, 0, 3866660, 0, 0, 3866661, 0, 0, 3866662, 0, 0, 3866663, 0, 0, 3866664, 0, 0, 3866665, 0, 0, 3866666, 0, 0, 3866667, 0, 0, 3866668, 0, 0, 3866669, 0, 0, 3866670, 0, 0, 3866671, 0, 0, 3866672, 0, 0, 3866673, 0, 0, 3866674, 0, 0, 3866675, 0, 0, 3866676, 0, 0, 3866677, 0, 0, 3866678, 0, 0, 3866679, 0, 0, 3866680, 0, 0, 3866681, 0, 0, 3866682, 0, 0, 3866683, 0, 0, 3866684, 0, 0, 3866685, 0, 0, 3866686, 0, 0, 3866687, 0, 0, 3866688, 0, 0, 3866689, 0, 0, 3866690, 0, 0, 3866691, 0, 0, 3866692, 0, 0, 3866693, 0, 0, 3866694, 0, 0, 3866695, 0, 0, 3866696, 0, 0, 3866697, 0, 0, 3866698, 0, 0, 3866699, 0, 0, 3866700, 0, 0, 3866701, 0, 0, 3866702, 0, 0, 3866703, 0, 0, 3866704, 0, 0, 3866705, 0, 0, 3997688, 0, 0, 3997689, 0, 0, 3997690, 0, 0, 3997691, 0, 0, 3997692, 0, 0, 3997693, 0, 0, 3997694, 0, 0, 3997695, 0, 0, 3932160, 0, 0, 3932161, 0, 0, 3932162, 0, 0, 3932163, 0, 0, 3932164, 0, 0, 3932165, 0, 0, 3932166, 0, 0, 3932167, 0, 0, 3932168, 0, 0, 3932169, 0, 0, 3932170, 0, 0, 3932171, 0, 0, 3932172, 0, 0, 3932173, 0, 0, 3932174, 0, 0, 3932175, 0, 0, 3932176, 0, 0, 3932177, 0, 0, 3932178, 0, 0, 3932179, 0, 0, 3932180, 0, 0, 3932181, 0, 0, 3932182, 0, 0, 3932183, 0, 0, 3932184, 0, 0, 3932185, 0, 0, 3932186, 0, 0, 3932187, 0, 0, 3932188, 0, 0, 3932189, 0, 0, 3932190, 0, 0, 3932191, 0, 0, 3932192, 0, 0, 3932193, 0, 0, 3932194, 0, 0, 3932195, 0, 0, 3932196, 0, 0, 3932197, 0, 0, 3932198, 0, 0, 3932199, 0, 0, 3932200, 0, 0, 3932201, 0, 0, 3932202, 0, 0, 3932203, 0, 0, 3932204, 0, 0, 3932205, 0, 0, 3932206, 0, 0, 3932207, 0, 0, 3932208, 0, 0, 3932209, 0, 0, 3932210, 0, 0, 3932211, 0, 0, 3932212, 0, 0, 3932213, 0, 0, 3932214, 0, 0, 3932215, 0, 0, 3932216, 0, 0, 3932217, 0, 0, 3932218, 0, 0, 3932219, 0, 0, 3932220, 0, 0, 3932221, 0, 0, 3932222, 0, 0, 3932223, 0, 0, 3932224, 0, 0, 3932225, 0, 0, 3932226, 0, 0, 3932227, 0, 0, 3932228, 0, 0, 3932229, 0, 0, 3932230, 0, 0, 3932231, 0, 0, 3932232, 0, 0, 3932233, 0, 0, 3932234, 0, 0, 3932235, 0, 0, 3932236, 0, 0, 3932237, 0, 0, 3932238, 0, 0, 3932239, 0, 0, 3932240, 0, 0, 3932241, 0, 0, 4063224, 0, 0, 4063225, 0, 0, 4063226, 0, 0, 4063227, 0, 0, 4063228, 0, 0, 4063229, 0, 0, 4063230, 0, 0, 4063231, 0, 0, 3997696, 0, 0, 3997697, 0, 0, 3997698, 0, 0, 3997699, 0, 0, 3997700, 0, 0, 3997701, 0, 0, 3997702, 0, 0, 3997703, 0, 0, 3997704, 0, 0, 3997705, 0, 0, 3997706, 0, 0, 3997707, 0, 0, 3997708, 0, 0, 3997709, 0, 0, 3997710, 0, 0, 3997711, 0, 0, 3997712, 0, 0, 3997713, 0, 0, 3997714, 0, 0, 3997715, 0, 0, 3997716, 0, 0, 3997717, 0, 0, 3997718, 0, 0, 3997719, 0, 0, 3997720, 0, 0, 3997721, 0, 0, 3997722, 0, 0, 3997723, 0, 0, 3997724, 0, 0, 3997725, 0, 0, 3997726, 0, 0, 3997727, 0, 0, 3997728, 0, 0, 3997729, 0, 0, 3997730, 0, 0, 3997731, 0, 0, 3997732, 0, 0, 3997733, 0, 0, 3997734, 0, 0, 3997735, 0, 0, 3997736, 0, 0, 3997737, 0, 0, 3997738, 0, 0, 3997739, 0, 0, 3997740, 0, 0, 3997741, 0, 0, 3997742, 0, 0, 3997743, 0, 0, 3997744, 0, 0, 3997745, 0, 0, 3997746, 0, 0, 3997747, 0, 0, 3997748, 0, 0, 3997749, 0, 0, 3997750, 0, 0, 3997751, 0, 0, 3997752, 0, 0, 3997753, 0, 0, 3997754, 0, 0, 3997755, 0, 0, 3997756, 0, 0, 3997757, 0, 0, 3997758, 0, 0, 3997759, 0, 0, 3997760, 0, 0, 3997761, 0, 0, 3997762, 0, 0, 3997763, 0, 0, 3997764, 0, 0, 3997765, 0, 0, 3997766, 0, 0, 3997767, 0, 0, 3997768, 0, 0, 3997769, 0, 0, 3997770, 0, 0, 3997771, 0, 0, 3997772, 0, 0, 3997773, 0, 0, 3997774, 0, 0, 3997775, 0, 0, 3997776, 0, 0, 3997777, 0, 0, 4128760, 0, 0, 4128761, 0, 0, 4128762, 0, 0, 4128763, 0, 0, 4128764, 0, 0, 4128765, 0, 0, 4128766, 0, 0, 4128767, 0, 0, 4063232, 0, 0, 4063233, 0, 0, 4063234, 0, 0, 4063235, 0, 0, 4063236, 0, 0, 4063237, 0, 0, 4063238, 0, 0, 4063239, 0, 0, 4063240, 0, 0, 4063241, 0, 0, 4063242, 0, 0, 4063243, 0, 0, 4063244, 0, 0, 4063245, 0, 0, 4063246, 0, 0, 4063247, 0, 0, 4063248, 0, 0, 4063249, 0, 0, 4063250, 0, 0, 4063251, 0, 0, 4063252, 0, 0, 4063253, 0, 0, 4063254, 0, 0, 4063255, 0, 0, 4063256, 0, 0, 4063257, 0, 0, 4063258, 0, 0, 4063259, 0, 0, 4063260, 0, 0, 4063261, 0, 0, 4063262, 0, 0, 4063263, 0, 0, 4063264, 0, 0, 4063265, 0, 0, 4063266, 0, 0, 4063267, 0, 0, 4063268, 0, 0, 4063269, 0, 0, 4063270, 0, 0, 4063271, 0, 0, 4063272, 0, 0, 4063273, 0, 0, 4063274, 0, 0, 4063275, 0, 0, 4063276, 0, 0, 4063277, 0, 0, 4063278, 0, 0, 4063279, 0, 0, 4063280, 0, 0, 4063281, 0, 0, 4063282, 0, 0, 4063283, 0, 0, 4063284, 0, 0, 4063285, 0, 0, 4063286, 0, 0, 4063287, 0, 0, 4063288, 0, 0, 4063289, 0, 0, 4063290, 0, 0, 4063291, 0, 0, 4063292, 0, 0, 4063293, 0, 0, 4063294, 0, 0, 4063295, 0, 0, 4063296, 0, 0, 4063297, 0, 0, 4063298, 0, 0, 4063299, 0, 0, 4063300, 0, 0, 4063301, 0, 0, 4063302, 0, 0, 4063303, 0, 0, 4063304, 0, 0, 4063305, 0, 0, 4063306, 0, 0, 4063307, 0, 0, 4063308, 0, 0, 4063309, 0, 0, 4063310, 0, 0, 4063311, 0, 0, 4063312, 0, 0, 4063313, 0, 0, 4194296, 0, 0, 4194297, 0, 0, 4194298, 0, 0, 4194299, 0, 0, 4194300, 0, 0, 4194301, 0, 0, 4194302, 0, 0, 4194303, 0, 0, 4128768, 0, 0, 4128769, 0, 0, 4128770, 0, 0, 4128771, 0, 0, 4128772, 0, 0, 4128773, 0, 0, 4128774, 0, 0, 4128775, 0, 0, 4128776, 0, 0, 4128777, 0, 0, 4128778, 0, 0, 4128779, 0, 0, 4128780, 0, 0, 4128781, 0, 0, 4128782, 0, 0, 4128783, 0, 0, 4128784, 0, 0, 4128785, 0, 0, 4128786, 0, 0, 4128787, 0, 0, 4128788, 0, 0, 4128789, 0, 0, 4128790, 0, 0, 4128791, 0, 0, 4128792, 0, 0, 4128793, 0, 0, 4128794, 0, 0, 4128795, 0, 0, 4128796, 0, 0, 4128797, 0, 0, 4128798, 0, 0, 4128799, 0, 0, 4128800, 0, 0, 4128801, 0, 0, 4128802, 0, 0, 4128803, 0, 0, 4128804, 0, 0, 4128805, 0, 0, 4128806, 0, 0, 4128807, 0, 0, 4128808, 0, 0, 4128809, 0, 0, 4128810, 0, 0, 4128811, 0, 0, 4128812, 0, 0, 4128813, 0, 0, 4128814, 0, 0, 4128815, 0, 0, 4128816, 0, 0, 4128817, 0, 0, 4128818, 0, 0, 4128819, 0, 0, 4128820, 0, 0, 4128821, 0, 0, 4128822, 0, 0, 4128823, 0, 0, 4128824, 0, 0, 4128825, 0, 0, 4128826, 0, 0, 4128827, 0, 0, 4128828, 0, 0, 4128829, 0, 0, 4128830, 0, 0, 4128831, 0, 0, 4128832, 0, 0, 4128833, 0, 0, 4128834, 0, 0, 4128835, 0, 0, 4128836, 0, 0, 4128837, 0, 0, 4128838, 0, 0, 4128839, 0, 0, 4128840, 0, 0, 4128841, 0, 0, 4128842, 0, 0, 4128843, 0, 0, 4128844, 0, 0, 4128845, 0, 0, 4128846, 0, 0, 4128847, 0, 0, 4128848, 0, 0, 4128849, 0, 0, 4259832, 0, 0, 4259833, 0, 0, 4259834, 0, 0, 4259835, 0, 0, 4259836, 0, 0, 4259837, 0, 0, 4259838, 0, 0, 4259839, 0, 0, 4194304, 0, 0, 4194305, 0, 0, 4194306, 0, 0, 4194307, 0, 0, 4194308, 0, 0, 4194309, 0, 0, 4194310, 0, 0, 4194311, 0, 0, 4194312, 0, 0, 4194313, 0, 0, 4194314, 0, 0, 4194315, 0, 0, 4194316, 0, 0, 4194317, 0, 0, 4194318, 0, 0, 4194319, 0, 0, 4194320, 0, 0, 4194321, 0, 0, 4194322, 0, 0, 4194323, 0, 0, 4194324, 0, 0, 4194325, 0, 0, 4194326, 0, 0, 4194327, 0, 0, 4194328, 0, 0, 4194329, 0, 0, 4194330, 0, 0, 4194331, 0, 0, 4194332, 0, 0, 4194333, 0, 0, 4194334, 0, 0, 4194335, 0, 0, 4194336, 0, 0, 4194337, 0, 0, 4194338, 0, 0, 4194339, 0, 0, 4194340, 0, 0, 4194341, 0, 0, 4194342, 0, 0, 4194343, 0, 0, 4194344, 0, 0, 4194345, 0, 0, 4194346, 0, 0, 4194347, 0, 0, 4194348, 0, 0, 4194349, 0, 0, 4194350, 0, 0, 4194351, 0, 0, 4194352, 0, 0, 4194353, 0, 0, 4194354, 0, 0, 4194355, 0, 0, 4194356, 0, 0, 4194357, 0, 0, 4194358, 0, 0, 4194359, 0, 0, 4194360, 0, 0, 4194361, 0, 0, 4194362, 0, 0, 4194363, 0, 0, 4194364, 0, 0, 4194365, 0, 0, 4194366, 0, 0, 4194367, 0, 0, 4194368, 0, 0, 4194369, 0, 0, 4194370, 0, 0, 4194371, 0, 0, 4194372, 0, 0, 4194373, 0, 0, 4194374, 0, 0, 4194375, 0, 0, 4194376, 0, 0, 4194377, 0, 0, 4194378, 0, 0, 4194379, 0, 0, 4194380, 0, 0, 4194381, 0, 0, 4194382, 0, 0, 4194383, 0, 0, 4194384, 0, 0, 4194385, 0, 0, 4325368, 0, 0, 4325369, 0, 0, 4325370, 0, 0, 4325371, 0, 0, 4325372, 0, 0, 4325373, 0, 0, 4325374, 0, 0, 4325375, 0, 0, 4259840, 0, 0, 4259841, 0, 0, 4259842, 0, 0, 4259843, 0, 0, 4259844, 0, 0, 4259845, 0, 0, 4259846, 0, 0, 4259847, 0, 0, 4259848, 0, 0, 4259849, 0, 0, 4259850, 0, 0, 4259851, 0, 0, 4259852, 0, 0, 4259853, 0, 0, 4259854, 0, 0, 4259855, 0, 0, 4259856, 0, 0, 4259857, 0, 0, 4259858, 0, 0, 4259859, 0, 0, 4259860, 0, 0, 4259861, 0, 0, 4259862, 0, 0, 4259863, 0, 0, 4259864, 0, 0, 4259865, 0, 0, 4259866, 0, 0, 4259867, 0, 0, 4259868, 0, 0, 4259869, 0, 0, 4259870, 0, 0, 4259871, 0, 0, 4259872, 0, 0, 4259873, 0, 0, 4259874, 0, 0, 4259875, 0, 0, 4259876, 0, 0, 4259877, 0, 0, 4259878, 0, 0, 4259879, 0, 0, 4259880, 0, 0, 4259881, 0, 0, 4259882, 0, 0, 4259883, 0, 0, 4259884, 0, 0, 4259885, 0, 0, 4259886, 0, 0, 4259887, 0, 0, 4259888, 0, 0, 4259889, 0, 0, 4259890, 0, 0, 4259891, 0, 0, 4259892, 0, 0, 4259893, 0, 0, 4259894, 0, 0, 4259895, 0, 0, 4259896, 0, 0, 4259897, 0, 0, 4259898, 0, 0, 4259899, 0, 0, 4259900, 0, 0, 4259901, 0, 0, 4259902, 0, 0, 4259903, 0, 0, 4259904, 0, 0, 4259905, 0, 0, 4259906, 0, 0, 4259907, 0, 0, 4259908, 0, 0, 4259909, 0, 0, 4259910, 0, 0, 4259911, 0, 0, 4259912, 0, 0, 4259913, 0, 0, 4259914, 0, 0, 4259915, 0, 0, 4259916, 0, 0, 4259917, 0, 0, 4259918, 0, 0, 4259919, 0, 0, 4259920, 0, 0, 4259921, 0, 0, 4390904, 0, 0, 4390905, 0, 0, 4390906, 0, 0, 4390907, 0, 0, 4390908, 0, 0, 4390909, 0, 0, 4390910, 0, 0, 4390911, 0, 0, 4325376, 0, 0, 4325377, 0, 0, 4325378, 0, 0, 4325379, 0, 0, 4325380, 0, 0, 4325381, 0, 0, 4325382, 0, 0, 4325383, 0, 0, 4325384, 0, 0, 4325385, 0, 0, 4325386, 0, 0, 4325387, 0, 0, 4325388, 0, 0, 4325389, 0, 0, 4325390, 0, 0, 4325391, 0, 0, 4325392, 0, 0, 4325393, 0, 0, 4325394, 0, 0, 4325395, 0, 0, 4325396, 0, 0, 4325397, 0, 0, 4325398, 0, 0, 4325399, 0, 0, 4325400, 0, 0, 4325401, 0, 0, 4325402, 0, 0, 4325403, 0, 0, 4325404, 0, 0, 4325405, 0, 0, 4325406, 0, 0, 4325407, 0, 0, 4325408, 0, 0, 4325409, 0, 0, 4325410, 0, 0, 4325411, 0, 0, 4325412, 0, 0, 4325413, 0, 0, 4325414, 0, 0, 4325415, 0, 0, 4325416, 0, 0, 4325417, 0, 0, 4325418, 0, 0, 4325419, 0, 0, 4325420, 0, 0, 4325421, 0, 0, 4325422, 0, 0, 4325423, 0, 0, 4325424, 0, 0, 4325425, 0, 0, 4325426, 0, 0, 4325427, 0, 0, 4325428, 0, 0, 4325429, 0, 0, 4325430, 0, 0, 4325431, 0, 0, 4325432, 0, 0, 4325433, 0, 0, 4325434, 0, 0, 4325435, 0, 0, 4325436, 0, 0, 4325437, 0, 0, 4325438, 0, 0, 4325439, 0, 0, 4325440, 0, 0, 4325441, 0, 0, 4325442, 0, 0, 4325443, 0, 0, 4325444, 0, 0, 4325445, 0, 0, 4325446, 0, 0, 4325447, 0, 0, 4325448, 0, 0, 4325449, 0, 0, 4325450, 0, 0, 4325451, 0, 0, 4325452, 0, 0, 4325453, 0, 0, 4325454, 0, 0, 4325455, 0, 0, 4325456, 0, 0, 4325457, 0, 0, 4456440, 0, 0, 4456441, 0, 0, 4456442, 0, 0, 4456443, 0, 0, 4456444, 0, 0, 4456445, 0, 0, 4456446, 0, 0, 4456447, 0, 0, 4390912, 0, 0, 4390913, 0, 0, 4390914, 0, 0, 4390915, 0, 0, 4390916, 0, 0, 4390917, 0, 0, 4390918, 0, 0, 4390919, 0, 0, 4390920, 0, 0, 4390921, 0, 0, 4390922, 0, 0, 4390923, 0, 0, 4390924, 0, 0, 4390925, 0, 0, 4390926, 0, 0, 4390927, 0, 0, 4390928, 0, 0, 4390929, 0, 0, 4390930, 0, 0, 4390931, 0, 0, 4390932, 0, 0, 4390933, 0, 0, 4390934, 0, 0, 4390935, 0, 0, 4390936, 0, 0, 4390937, 0, 0, 4390938, 0, 0, 4390939, 0, 0, 4390940, 0, 0, 4390941, 0, 0, 4390942, 0, 0, 4390943, 0, 0, 4390944, 0, 0, 4390945, 0, 0, 4390946, 0, 0, 4390947, 0, 0, 4390948, 0, 0, 4390949, 0, 0, 4390950, 0, 0, 4390951, 0, 0, 4390952, 0, 0, 4390953, 0, 0, 4390954, 0, 0, 4390955, 0, 0, 4390956, 0, 0, 4390957, 0, 0, 4390958, 0, 0, 4390959, 0, 0, 4390960, 0, 0, 4390961, 0, 0, 4390962, 0, 0, 4390963, 0, 0, 4390964, 0, 0, 4390965, 0, 0, 4390966, 0, 0, 4390967, 0, 0, 4390968, 0, 0, 4390969, 0, 0, 4390970, 0, 0, 4390971, 0, 0, 4390972, 0, 0, 4390973, 0, 0, 4390974, 0, 0, 4390975, 0, 0, 4390976, 0, 0, 4390977, 0, 0, 4390978, 0, 0, 4390979, 0, 0, 4390980, 0, 0, 4390981, 0, 0, 4390982, 0, 0, 4390983, 0, 0, 4390984, 0, 0, 4390985, 0, 0, 4390986, 0, 0, 4390987, 0, 0, 4390988, 0, 0, 4390989, 0, 0, 4390990, 0, 0, 4390991, 0, 0, 4390992, 0, 0, 4390993, 0, 0, 4521976, 0, 0, 4521977, 0, 0, 4521978, 0, 0, 4521979, 0, 0, 4521980, 0, 0, 4521981, 0, 0, 4521982, 0, 0, 4521983, 0, 0, 4456448, 0, 0, 4456449, 0, 0, 4456450, 0, 0, 4456451, 0, 0, 4456452, 0, 0, 4456453, 0, 0, 4456454, 0, 0, 4456455, 0, 0, 4456456, 0, 0, 4456457, 0, 0, 4456458, 0, 0, 4456459, 0, 0, 4456460, 0, 0, 4456461, 0, 0, 4456462, 0, 0, 4456463, 0, 0, 4456464, 0, 0, 4456465, 0, 0, 4456466, 0, 0, 4456467, 0, 0, 4456468, 0, 0, 4456469, 0, 0, 4456470, 0, 0, 4456471, 0, 0, 4456472, 0, 0, 4456473, 0, 0, 4456474, 0, 0, 4456475, 0, 0, 4456476, 0, 0, 4456477, 0, 0, 4456478, 0, 0, 4456479, 0, 0, 4456480, 0, 0, 4456481, 0, 0, 4456482, 0, 0, 4456483, 0, 0, 4456484, 0, 0, 4456485, 0, 0, 4456486, 0, 0, 4456487, 0, 0, 4456488, 0, 0, 4456489, 0, 0, 4456490, 0, 0, 4456491, 0, 0, 4456492, 0, 0, 4456493, 0, 0, 4456494, 0, 0, 4456495, 0, 0, 4456496, 0, 0, 4456497, 0, 0, 4456498, 0, 0, 4456499, 0, 0, 4456500, 0, 0, 4456501, 0, 0, 4456502, 0, 0, 4456503, 0, 0, 4456504, 0, 0, 4456505, 0, 0, 4456506, 0, 0, 4456507, 0, 0, 4456508, 0, 0, 4456509, 0, 0, 4456510, 0, 0, 4456511, 0, 0, 4456512, 0, 0, 4456513, 0, 0, 4456514, 0, 0, 4456515, 0, 0, 4456516, 0, 0, 4456517, 0, 0, 4456518, 0, 0, 4456519, 0, 0, 4456520, 0, 0, 4456521, 0, 0, 4456522, 0, 0, 4456523, 0, 0, 4456524, 0, 0, 4456525, 0, 0, 4456526, 0, 0, 4456527, 0, 0, 4456528, 0, 0, 4456529, 0, 0, 4587512, 0, 0, 4587513, 0, 0, 4587514, 0, 0, 4587515, 0, 0, 4587516, 0, 0, 4587517, 0, 0, 4587518, 0, 0, 4587519, 0, 0, 4521984, 0, 0, 4521985, 0, 0, 4521986, 0, 0, 4521987, 0, 0, 4521988, 0, 0, 4521989, 0, 0, 4521990, 0, 0, 4521991, 0, 0, 4521992, 0, 0, 4521993, 0, 0, 4521994, 0, 0, 4521995, 0, 0, 4521996, 0, 0, 4521997, 0, 0, 4521998, 0, 0, 4521999, 0, 0, 4522000, 0, 0, 4522001, 0, 0, 4522002, 0, 0, 4522003, 0, 0, 4522004, 0, 0, 4522005, 0, 0, 4522006, 0, 0, 4522007, 0, 0, 4522008, 0, 0, 4522009, 0, 0, 4522010, 0, 0, 4522011, 0, 0, 4522012, 0, 0, 4522013, 0, 0, 4522014, 0, 0, 4522015, 0, 0, 4522016, 0, 0, 4522017, 0, 0, 4522018, 0, 0, 4522019, 0, 0, 4522020, 0, 0, 4522021, 0, 0, 4522022, 0, 0, 4522023, 0, 0, 4522024, 0, 0, 4522025, 0, 0, 4522026, 0, 0, 4522027, 0, 0, 4522028, 0, 0, 4522029, 0, 0, 4522030, 0, 0, 4522031, 0, 0, 4522032, 0, 0, 4522033, 0, 0, 4522034, 0, 0, 4522035, 0, 0, 4522036, 0, 0, 4522037, 0, 0, 4522038, 0, 0, 4522039, 0, 0, 4522040, 0, 0, 4522041, 0, 0, 4522042, 0, 0, 4522043, 0, 0, 4522044, 0, 0, 4522045, 0, 0, 4522046, 0, 0, 4522047, 0, 0, 4522048, 0, 0, 4522049, 0, 0, 4522050, 0, 0, 4522051, 0, 0, 4522052, 0, 0, 4522053, 0, 0, 4522054, 0, 0, 4522055, 0, 0, 4522056, 0, 0, 4522057, 0, 0, 4522058, 0, 0, 4522059, 0, 0, 4522060, 0, 0, 4522061, 0, 0, 4522062, 0, 0, 4522063, 0, 0, 4522064, 0, 0, 4522065, 0, 0, 4653048, 0, 0, 4653049, 0, 0, 4653050, 0, 0, 4653051, 0, 0, 4653052, 0, 0, 4653053, 0, 0, 4653054, 0, 0, 4653055, 0, 0, 4587520, 0, 0, 4587521, 0, 0, 4587522, 0, 0, 4587523, 0, 0, 4587524, 0, 0, 4587525, 0, 0, 4587526, 0, 0, 4587527, 0, 0, 4587528, 0, 0, 4587529, 0, 0, 4587530, 0, 0, 4587531, 0, 0, 4587532, 0, 0, 4587533, 0, 0, 4587534, 0, 0, 4587535, 0, 0, 4587536, 0, 0, 4587537, 0, 0, 4587538, 0, 0, 4587539, 0, 0, 4587540, 0, 0, 4587541, 0, 0, 4587542, 0, 0, 4587543, 0, 0, 4587544, 0, 0, 4587545, 0, 0, 4587546, 0, 0, 4587547, 0, 0, 4587548, 0, 0, 4587549, 0, 0, 4587550, 0, 0, 4587551, 0, 0, 4587552, 0, 0, 4587553, 0, 0, 4587554, 0, 0, 4587555, 0, 0, 4587556, 0, 0, 4587557, 0, 0, 4587558, 0, 0, 4587559, 0, 0, 4587560, 0, 0, 4587561, 0, 0, 4587562, 0, 0, 4587563, 0, 0, 4587564, 0, 0, 4587565, 0, 0, 4587566, 0, 0, 4587567, 0, 0, 4587568, 0, 0, 4587569, 0, 0, 4587570, 0, 0, 4587571, 0, 0, 4587572, 0, 0, 4587573, 0, 0, 4587574, 0, 0, 4587575, 0, 0, 4587576, 0, 0, 4587577, 0, 0, 4587578, 0, 0, 4587579, 0, 0, 4587580, 0, 0, 4587581, 0, 0, 4587582, 0, 0, 4587583, 0, 0, 4587584, 0, 0, 4587585, 0, 0, 4587586, 0, 0, 4587587, 0, 0, 4587588, 0, 0, 4587589, 0, 0, 4587590, 0, 0, 4587591, 0, 0, 4587592, 0, 0, 4587593, 0, 0, 4587594, 0, 0, 4587595, 0, 0, 4587596, 0, 0, 4587597, 0, 0, 4587598, 0, 0, 4587599, 0, 0, 4587600, 0, 0, 4587601, 0, 0, 4718584, 0, 0, 4718585, 0, 0, 4718586, 0, 0, 4718587, 0, 0, 4718588, 0, 0, 4718589, 0, 0, 4718590, 0, 0, 4718591, 0, 0, 4653056, 0, 0, 4653057, 0, 0, 4653058, 0, 0, 4653059, 0, 0, 4653060, 0, 0, 4653061, 0, 0, 4653062, 0, 0, 4653063, 0, 0, 4653064, 0, 0, 4653065, 0, 0, 4653066, 0, 0, 4653067, 0, 0, 4653068, 0, 0, 4653069, 0, 0, 4653070, 0, 0, 4653071, 0, 0, 4653072, 0, 0, 4653073, 0, 0, 4653074, 0, 0, 4653075, 0, 0, 4653076, 0, 0, 4653077, 0, 0, 4653078, 0, 0, 4653079, 0, 0, 4653080, 0, 0, 4653081, 0, 0, 4653082, 0, 0, 4653083, 0, 0, 4653084, 0, 0, 4653085, 0, 0, 4653086, 0, 0, 4653087, 0, 0, 4653088, 0, 0, 4653089, 0, 0, 4653090, 0, 0, 4653091, 0, 0, 4653092, 0, 0, 4653093, 0, 0, 4653094, 0, 0, 4653095, 0, 0, 4653096, 0, 0, 4653097, 0, 0, 4653098, 0, 0, 4653099, 0, 0, 4653100, 0, 0, 4653101, 0, 0, 4653102, 0, 0, 4653103, 0, 0, 4653104, 0, 0, 4653105, 0, 0, 4653106, 0, 0, 4653107, 0, 0, 4653108, 0, 0, 4653109, 0, 0, 4653110, 0, 0, 4653111, 0, 0, 4653112, 0, 0, 4653113, 0, 0, 4653114, 0, 0, 4653115, 0, 0, 4653116, 0, 0, 4653117, 0, 0, 4653118, 0, 0, 4653119, 0, 0, 4653120, 0, 0, 4653121, 0, 0, 4653122, 0, 0, 4653123, 0, 0, 4653124, 0, 0, 4653125, 0, 0, 4653126, 0, 0, 4653127, 0, 0, 4653128, 0, 0, 4653129, 0, 0, 4653130, 0, 0, 4653131, 0, 0, 4653132, 0, 0, 4653133, 0, 0, 4653134, 0, 0, 4653135, 0, 0, 4653136, 0, 0, 4653137, 0, 0, 4784120, 0, 0, 4784121, 0, 0, 4784122, 0, 0, 4784123, 0, 0, 4784124, 0, 0, 4784125, 0, 0, 4784126, 0, 0, 4784127, 0, 0, 4718592, 0, 0, 4718593, 0, 0, 4718594, 0, 0, 4718595, 0, 0, 4718596, 0, 0, 4718597, 0, 0, 4718598, 0, 0, 4718599, 0, 0, 4718600, 0, 0, 4718601, 0, 0, 4718602, 0, 0, 4718603, 0, 0, 4718604, 0, 0, 4718605, 0, 0, 4718606, 0, 0, 4718607, 0, 0, 4718608, 0, 0, 4718609, 0, 0, 4718610, 0, 0, 4718611, 0, 0, 4718612, 0, 0, 4718613, 0, 0, 4718614, 0, 0, 4718615, 0, 0, 4718616, 0, 0, 4718617, 0, 0, 4718618, 0, 0, 4718619, 0, 0, 4718620, 0, 0, 4718621, 0, 0, 4718622, 0, 0, 4718623, 0, 0, 4718624, 0, 0, 4718625, 0, 0, 4718626, 0, 0, 4718627, 0, 0, 4718628, 0, 0, 4718629, 0, 0, 4718630, 0, 0, 4718631, 0, 0, 4718632, 0, 0, 4718633, 0, 0, 4718634, 0, 0, 4718635, 0, 0, 4718636, 0, 0, 4718637, 0, 0, 4718638, 0, 0, 4718639, 0, 0, 4718640, 0, 0, 4718641, 0, 0, 4718642, 0, 0, 4718643, 0, 0, 4718644, 0, 0, 4718645, 0, 0, 4718646, 0, 0, 4718647, 0, 0, 4718648, 0, 0, 4718649, 0, 0, 4718650, 0, 0, 4718651, 0, 0, 4718652, 0, 0, 4718653, 0, 0, 4718654, 0, 0, 4718655, 0, 0, 4718656, 0, 0, 4718657, 0, 0, 4718658, 0, 0, 4718659, 0, 0, 4718660, 0, 0, 4718661, 0, 0, 4718662, 0, 0, 4718663, 0, 0, 4718664, 0, 0, 4718665, 0, 0, 4718666, 0, 0, 4718667, 0, 0, 4718668, 0, 0, 4718669, 0, 0, 4718670, 0, 0, 4718671, 0, 0, 4718672, 0, 0, 4718673, 0, 0 )
__meta__ = {
"_edit_group_": true
}

[node name="Shadow" type="TileMap" parent="."]
tile_set = SubResource( 41 )
cell_size = Vector2( 8, 8 )
format = 1
tile_data = PoolIntArray( 196611, 0, 3, 262147, 0, 4, 262148, 0, 7, 262149, 0, 7, 262150, 0, 7, 262151, 0, 7, 262152, 0, 7, 262153, 0, 7, 262154, 0, 7, 262155, 0, 7, 262156, 0, 7, 327683, 0, 5, 393219, 0, 5, 524292, 0, 5, 917507, 0, 3, 917510, 0, 5, 983043, 0, 4, 983044, 0, 7, 983045, 0, 7, 983046, 0, 6, 983049, 0, 4, 983050, 0, 7, 983051, 0, 7, 983052, 0, 7, 1048579, 0, 5, 1048584, 0, 7, 1048585, 0, 6, 1114115, 0, 5, 1114136, 0, 3, 1114140, 0, 3, 1179651, 0, 5, 1179661, 0, 7, 1179662, 0, 7, 1179663, 0, 7, 1179672, 0, 4, 1179673, 0, 7, 1179674, 0, 7, 1179676, 0, 4, 1179677, 0, 7, 1179678, 0, 7, 1179679, 0, 7, 1179680, 0, 7, 1179681, 0, 7, 1179682, 0, 7, 1179683, 0, 7, 1179684, 0, 7, 1179685, 0, 7, 1179686, 0, 7, 1245187, 0, 5, 1245208, 0, 5, 1245212, 0, 5, 1310723, 0, 5, 1310736, 0, 7, 1310737, 0, 6, 1310743, 0, 7, 1310744, 0, 6, 1310748, 0, 5, 1376259, 0, 5, 1376284, 0, 5, 1441820, 0, 5, 1441824, 0, 3, 1441826, 0, 5, 1507336, 0, 5, 1507356, 0, 5, 1507360, 0, 4, 1507361, 0, 7, 1507362, 0, 6, 1572896, 0, 5, 1638422, 0, 3, 1638425, 0, 5, 1638429, 0, 5, 1638432, 0, 5, 1703958, 0, 4, 1703959, 0, 7, 1703960, 0, 7, 1703961, 0, 6, 1703963, 0, 7, 1703964, 0, 7, 1703965, 0, 6, 1703968, 0, 5, 1703970, 0, 7, 1703971, 0, 7, 1703972, 0, 7, 1703973, 0, 7, 1703974, 0, 7, 1769494, 0, 5, 1769504, 0, 5, 1769511, 0, 7, 1835030, 0, 5, 1835040, 0, 5, 1900566, 0, 5, 1900571, 0, 5, 1966102, 0, 5, 1966107, 0, 5 )
__meta__ = {
"_edit_group_": true
}

[node name="YSort" type="YSort" parent="."]

[node name="Player" parent="YSort" instance=ExtResource( 2 )]
position = Vector2( 36, 39 )

[node name="Battery" parent="YSort" instance=ExtResource( 3 )]
position = Vector2( 32, 128 )

[node name="Battery2" parent="YSort" instance=ExtResource( 3 )]
position = Vector2( 353, 224 )

[node name="Battery5" parent="YSort" instance=ExtResource( 3 )]
position = Vector2( 248, 328 )

[node name="Battery4" parent="YSort" instance=ExtResource( 3 )]
position = Vector2( 384, 312 )

[node name="Battery3" parent="YSort" instance=ExtResource( 3 )]
position = Vector2( 208, 151 )

[node name="Creature" parent="YSort" instance=ExtResource( 5 )]
position = Vector2( 184, 240 )

[node name="Creature2" parent="YSort" instance=ExtResource( 5 )]
position = Vector2( 40, 168 )

[node name="Creature3" parent="YSort" instance=ExtResource( 5 )]
position = Vector2( 88, 136 )

[node name="Creature4" parent="YSort" instance=ExtResource( 5 )]
position = Vector2( 304, 184 )
        GDST              b   PNG �PNG

   IHDR         �ė�   sRGB ���   IDAT�c�d)�ʀ��2000  i�*o�`t    IEND�B`�  [remap]

importer="texture"
type="StreamTexture"
path="res://.import/bars.png-ae25147cdbdb4e4f9798d3f9d7b3364f.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://bars.png"
dest_files=[ "res://.import/bars.png-ae25147cdbdb4e4f9798d3f9d7b3364f.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
[gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             GDST              b   PNG �PNG

   IHDR         �ė�   sRGB ���   IDAT�ct�����ʀ��2000  ���B˭    IEND�B`�  [remap]

importer="texture"
type="StreamTexture"
path="res://.import/ebars.png-d4a96abe80e76ba5d201e82cba2ff623.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://ebars.png"
dest_files=[ "res://.import/ebars.png-d4a96abe80e76ba5d201e82cba2ff623.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
             GDST@   @           9  PNG �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx�ݜytTU��?��WK*�=���%�  F����0N��݂:���Q�v��{�[�����E�ӋH���:���B�� YHB*d_*�jyo�(*M�JR!h��S�T��w�߻���ro���� N�\���D�*]��c����z��D�R�[�
5Jg��9E�|JxF׵'�a���Q���BH�~���!����w�A�b
C1�dB�.-�#��ihn�����u��B��1YSB<%�������dA�����C�$+(�����]�BR���Qsu][`
�DV����у�1�G���j�G͕IY! L1�]��� +FS�IY!IP ��|�}��*A��H��R�tQq����D`TW���p\3���M���,�fQ����d��h�m7r�U��f������.��ik�>O�;��xm��'j�u�(o}�����Q�S�-��cBc��d��rI�Ϛ�$I|]�ơ�vJkZ�9>��f����@EuC�~�2�ym�ش��U�\�KAZ4��b�4������;�X婐����@Hg@���o��W�b�x�)����3]j_��V;K����7�u����;o�������;=|��Ŗ}5��0q�$�!?��9�|�5tv�C�sHPTX@t����w�nw��۝�8�=s�p��I}�DZ-̝�ǆ�'�;=����R�PR�ۥu���u��ǻC�sH`��>�p�P ���O3R�������۝�SZ7 �p��o�P!�
��� �l��ހmT�Ƴێ�gA��gm�j����iG���B� ܦ(��cX�}4ۻB��ao��"����� ����G�7���H���æ;,NW?��[��`�r~��w�kl�d4�������YT7�P��5lF�BEc��=<�����?�:]�������G�Μ�{������n�v��%���7�eoݪ��
�QX¬)�JKb����W�[�G ��P$��k�Y:;�����{���a��&�eפ�����O�5,;����yx�b>=fc�* �z��{�fr��7��p���Ôִ�P����t^�]͑�~zs.�3����4��<IG�w�e��e��ih�/ˆ�9�H��f�?����O��.O��;!��]���x�-$E�a1ɜ�u�+7Ȃ�w�md��5���C.��\��X��1?�Nغ/�� ��~��<:k?8��X���!���[���꩓��g��:��E����>��꩓�u��A���	iI4���^v:�^l/;MC��	iI��TM-$�X�;iLH���;iI1�Zm7����P~��G�&g�|BfqV#�M������%��TM��mB�/�)����f����~3m`��������m�Ȉ�Ƽq!cr�pc�8fd���Mۨkl�}P�Л�汻��3p�̤H�>+���1D��i�aۡz�
������Z�Lz|8��.ִQ��v@�1%&���͏�������m���KH�� �p8H�4�9����/*)�aa��g�r�w��F36���(���7�fw����P��&�c����{﹏E7-f�M�).���9��$F�f r �9'1��s2).��G��{���?,�
�G��p�µ�QU�UO�����>��/�g���,�M��5�ʖ�e˃�d����/�M`�=�y=�����f�ӫQU�k'��E�F�+ =΂���
l�&���%%�������F#KY����O7>��;w���l6***B�g)�#W�/�k2�������TJ�'����=!Q@mKYYYdg��$Ib��E�j6�U�,Z�鼌Uvv6YYYԶ��}( ���ߠ#x~�s,X0�����rY��yz�	|r�6l����cN��5ϑ��KBB���5ϡ#xq�7�`=4A�o�xds)�~wO�z�^��m���n�Ds�������e|�0�u��k�ٱ:��RN��w�/!�^�<�ͣ�K1d�F����:�������ˣ����%U�Ą������l{�y����)<�G�y�`}�t��y!��O@� A� Y��sv:K�J��ՎۣQ�܃��T6y�ǯ�Zi
��<�F��1>�	c#�Ǉ��i�L��D�� �u�awe1�e&')�_�Ǝ^V�i߀4�$G�:��r��>h�hݝ������t;)�� &�@zl�Ұր��V6�T�+����0q��L���[t���N&e��Z��ˆ/����(�i啝'i�R�����?:
P].L��S��E�݅�Á�.a6�WjY$F�9P�«����V^7���1Ȓ� �b6�(����0"�k�;�@MC���N�]7 �)Q|s����QfdI���5 ��.f��#1���G���z���>)�N�>�L0T�ۘ5}��Y[�W뿼mj���n���S?�v��ْ|.FE"=�ߑ��q����������p����3�¬8�T�GZ���4ݪ�0�L�Y��jRH��.X�&�v����#�t��7y_#�[�o��V�O����^�����paV�&J�V+V��QY����f+m��(�?/������{�X��:�!:5�G�x���I����HG�%�/�LZ\8/����yLf�Æ>�X�Єǣq���$E������E�Ǣ�����gێ��s�rxO��x孏Q]n���LH����98�i�0==���O$5��o^����>6�a� �*�)?^Ca��yv&���%�5>�n�bŜL:��y�w���/��o�褨A���y,[|=1�VZ�U>,?͑���w��u5d�#�K�b�D�&�:�����l~�S\���[CrTV�$����y��;#�������6�y��3ݸ5��.�V��K���{�,-ւ� k1aB���x���	LL� ����ңl۱������!U��0L�ϴ��O\t$Yi�D�Dm��]|�m���M�3���bT�
�N_����~uiIc��M�DZI���Wgkn����C��!xSv�Pt�F��kڨ��������OKh��L����Z&ip��
ޅ���U�C�[�6��p���;uW8<n'n��nͽQ�
�gԞ�+Z	���{���G�Ĭ� �t�]�p;躆 ��.�ۣ�������^��n�ut�L �W��+ ���hO��^�w�\i� ��:9>3�=��So�2v���U1z��.�^�ߋěN���,���� �f��V�    IEND�B`�           [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
     �  `FFTMc{��  ��   GDEF    ��   OS/2�q'  h   VcmapH"XO  �  fcvt  "�  	0   gasp��   ��   glyf_��  �  r head��S   �   6hhea��  $   $hmtx����  �  loca�$�  	4  �maxp� q  H    name}dz=  }�  hpostJ��v  $  �      h~L_<�      �"�    �"�������             ��� \ ��  �               B   B @ 
            @ .     [�   ��   ���  � 3	                      2ttf @  0  �  \� �   �      v "    U  @   �     �  �  �  �   �   �   �     �   �  �   �     �  �  �  �  �  �  �  �  �  �   �   �     @     �  �  �  �  �  �  �  �  �  �  �  �  �  �     �  �  �  �  �  �  �  �  �     �  �  �   �      �  �  �   �  �  �  @  �  �  @  �  �   �     @   �     �  �  �  �  @  �  @  �  �     �  �  �      �     �  @   �  �  �  �  �   �  �     �     �  �  �  �     �         �  �  �   �   �        �           �  �  �  �  �  �  �     �  �  �  �  �  �  �  �  �  ����  �  �  �  �  �  �  ����  �  �  �  �  �  �  �  �  �  �  �  �     @  �  �  �  �   �           �  �  �  �  �  �  �  �  ����  �  �  �  �  �  �  �  �  �  �  �  �  �  @  �  @  �  @  �  @  �     ����  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �������   ���     �     �   �  �   �     �  �  @  �  @  @  �   �  �   �  �     �     ��� ����  �  �  �  �  �  ����  �  �  �  �  �  �  �        �  @  �  @  �  @  �  �  �  �  �  �  �  �  �  @  �  @  �  @  �  �  �  �  �  �  �  �  �  �  �  �        �  �  �  �  �  �  �  �  �  �                    \       @       ~ �~ �0 ��     � � �0 �����������A              
                                                                       	 
                        ! " # $ % & ' ( ) * + , - . / 0 1 2 3 4 5 6 7 8 9 : ; < = > ? @ A B C D E F G H I J K L M N O P Q R S T U V W X Y Z [ \ ] ^ _ ` a   � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �   q d e i   w � o k   u j   � �   r     g v           l {   � � � c n         m |   b � � �             �   �9  @           x       � � � � � � � � � � �   � � � � �     p       y         "�   * * * * @ V � � �(6Tp������&Dx��6X����*Jv��
4^���*N~���(L��� &P���	 	:	X	r	�	�	�	�

.
V
�
�
�
�4^v���@\����(^�����4d���Pb���H\t����,8H`���D���"^��
@p��V���F���4x��&X���*P���*j��6j��*Hl���.b��.d���*b��� $ ` � �!!,!X!�!�!�""V"�"�"�#&#T#�#�#�$4$h$�$�$�%:%t%�%�&B&�&�&�'4'l'�'�( (((`(�(�(�))()R)v)�)�)�*&*\*�*�*�++@+d+�+�+�+�,, ,J,h,�,�,�- -V-�-�-�..H.z.�.�/,/`/�/�00>0p0�0�0�161n1�1�2&2\2�2�33,3V3~3�3�44>4n4�4�5
5F5�5�5�66@6�6�77F7|7�7�8&8T8�8�9 9     "  2�   .� /<� �2��<� �2 � /<� �2��<� �23!'3#"�����V"f       @�    153'=3@@@@@�@@@@@@@@@@     @ ��    =3#=3�@�@@@@@@@@@@       @�  #  35##5#53=#53533533#3#'=#�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�@@@@        @� # '  35+5;5#5#535353;+33#5#3#5#�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@       @�       '  1=33#=;%53=3=3=3!#=;@�@@@� @@@@� @@@@@@@@@@@�@@@@@@@@@@@@@@@@@      ��     ! ' +  !53'3+5;#=3#=3=33#7=3'#53@@�@@@@@�@@� @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�@      @ @�   =3@@@@@@    �� ��     53'#=353@@@@@@@@@@@@@@@@@@@@@@@@     �� ��     53=3#53@@@@@@@@@@@@@@@@@@@@@�@      ��       53#537#53153+53�@�@@@@@�@@ @@@@@@@@@    @@�   7=+5;=3;+�@@@@@@@@@@@@@@@@@@@@    �� � @    53=3@@@@@@@@    �@    3+5; @@@@@@@@@ @@         @ @   153@@@         ��     1=3=3=3@@@@@@@�@@@@@@�@@@@        @�    '  73+5;=3!#=3+5;�@@@@@�@� @@�@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @       @�   %3+5;=#5353 @@@@@@@@@@@@@@@@@@@@@@@@@@      @�      '  533+53533'53=3=3'+5;@�@@@@@@@@@@@@@@@@@@@@@@@� @@@@@@@@@@@@@@@�@      @�      ! )  533+5;=3!#537+5;1=3'+5;@�@@@@@�@� @@�@@@@@@@@@@@@@@@� @@@@@@@@@@@@@�@     @�    3=+=35353533#'3=##�@@@@@@@@@�@@@@@@@@@@@@@@@@@�@@@@       @� 	  '  73+5;=3'+=;+;�@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@@@�@@@@@       @�   ! )  73+5;=3!#=3;+3+53�@@@@@�@� @@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@@      @�     3=3=3=+5;�@@@@@@@@@@@@@@@�@@@@�@@@@@@       @�     ! ' /  73+5;=3!#=37+5;1=3!#=37+5;�@@@@@�@� @@�@@@@@@@� @@�@@@@@@@@@@@@@@@@@@@@@@@@@@@        @�   ! )  73+5;5+5;=3%#=37+5;�@@@@@�@@@@@@@� @@�@@@@@@@@@@@@@@@@@@@�@@@@@�@        @     153'53@@@@@�@@   �� �      535353@@@@@@@ @@�@@    @ ��       753'#53+53153=3�@@@@@@@@@@@@@@@@@@@@     � @ 	   73+5;73+5;�@@@@@@@@@@@@@@@�@@�@@      @ ��       =3=3=3'#53+53@@@@@@@@@@@@@@@@@@@@@      @�        353'53'5353=3'+5;�@@@�@�@@@@@@@@@@@�@@�@@�@@@@@@@�@        @� 	  # ' /  %3+5;+=33+=;53'5#7+5; @@@@@@@�@@�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�@       @�  '  !=+#=3;=3+5; @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�@        @�  -  73=+3+=;3#5+;3#�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@     @� 	     %3+5;+=3=373+53 @@@@@@@�@@@�@@@@@@@@@@@@@@@�@@�@@        @�  '  73=#5+3+=;33#�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@     @� 	  %  %3+5;+=3;+3+5; @@@@@@@�@@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@        @�    1=3;+3+5;@@@@@@@�@@@@@@@@@@@@@@@@@@@�@@      @�    # +  533+5;=+5;!#=3+5; @�@@@@@�@@@@@� @@�@@@@@@@@@� @@@@@@@@@@@@@@@@@ @     @� #  !=+#=3;=3 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@      @�   %3+5;=+5;+ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@     @�     73+5;53=+5;�@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@@      @�   ! '  !=3!=3;3#5+53=3 @��@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@     @� 	   %3+5;+=3 @@@@@@@�@@@@@@@@@@@@@@@@        ��   ' - 3  !=3!=37=3+5;+5;�@�@@�@�@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@       @�  #  !=3!=;3#5+ @��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@       @�    '  73+5;=3!#=3+5;�@@@@@�@� @@�@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @       @� #  1=;3#=+;+@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@     @�  	   # ' /  !53'3+53#53#=33=3+537+5; @�@@@�@@�@@�@�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�@      @�  )  !=3!=;3#=+;+ @��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@        @� 	    '  73+5;=3'+5;+=373+5;�@@@@@@@�@@@@@@@@�@@�@@@@@@@@@@@@@@�@@@@�@@       @�   3=+5;+�@@@@@@@@@@@@@@@@@@@@@@@      @�   #  73+5;=3!#=3�@@@@@�@� @@@@@@@@@@@@@@@@@@@@@@@@@@@@     @�     #  353=3+5;=3!#=3�@@�@@�@� @@@@@@@@@@@@@@@@@@@@@@@@@@@     ��    # 1  %3+5#3+5!=3+=3#=3@@@@�@@@@@�@@�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ 	    @�        % +  !=3!=37#53537#53153+5;=3!#=3 @��@�@@�@@@@@�@@�@� @@@@@@@@@@�@@@@@@@@@@@@@@@@      @�       3=3=3+5;=3!#=3�@@�@@�@� @@@@@@@@�@@@@@@@@@@@@@@       @�     '  %3+=3;'53=3=3=+5; @@@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@      �� ��   #=;#3@@@@@@@@@@@@@@@@@@@@@@@         ��     3=3'#=3'#=3�@@@@@@@@@@@�@@@@@�@@@    �� ��   #53=#5;@@@@@@@@@@@@@@@@@@@@@@@       @�       53!537#53537#53 @��@�@@�@@@@ @@@@@@@@@@@        @ @   %3+5; @@@@@@@@@@@@   @ ��    53'#53@@@@@@@@@@      @@   !  !+5#535;53'35+37+5; @@@@@@@@@�@@@@@�@@@@@@@@@@@@@@@@@�@       @�  #  73=+3+=3;3#�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@       @     73+53+=373+53�@@@@@@@@�@@@@@@@@@@@@@�@@        @�  #  !+5#=35;=3'3=+3 @@@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@@      @@   !  73+53+=3;53+7+5;�@@@@@@@@@@@@@@@@�@@@@@@@@@@@@@@@@�@         �    3=#5353;+3+5@@@@@@@@@@@@@@@@@@@@@@@@�@@     ��@@   ! )  3+5;5+5;=3%#=37+5;�@@@@@�@@@@@@@� @@�@@@@@@@@@@@@@@@@@@@�@@@@@�@       @� 	   !=3!=3;+ @��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@         ��    3=#5;53@@@@@@@@@@@@@@@@�@@      �� ��  	   533+53=#5;�@�@@@�@@@�@@�@@@@@@@@@@@@@@@       �    !  353!=333#5#753=3�@� @@@@@@@@@@@@@@@@@@@@@@@@@@�@@@@@       ��    353'#=3@@@@@@@@@@@@@@@@@@@       �@ 	 )  !=3!=###=335;+�@� @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@     @@ 	    !=3!=33#+5; @��@@@�@@@@@@@@@@@@@@@@@@@@@@ @       @@      73+5;=3!#=37+5;�@@@@@�@� @@�@@@@@@@@@@@@@@@@@@@@�@      ��@@ #  =;3#=+;+@@@@@@@@@@@@@@@�@@@@@@@@@@@@@@@@@@@@      ��@@  #  =+5#=35;'3=+3 @@@@@@@@@�@@@@@�@@@@@@@@@@@@@@�@@@@@@       @    1=33#3+5@@@�@@@@@@@@@@@@@@@@        @@ 	    #  73+5;53'+5;+5373+5;�@@@@@@@�@@@@@@@@�@@�@@@@@@@@@@@@@@@@@@        �    73+51#=#53=3;+�@@@@@@@@@@@@@@@@@@@@@@@@@      @@    !5#+5;53=3%#=3 @@@@@@@� @@@@@@@@@@@@@@@@@@@@@@     @@       353=3+5;=3!#=3�@@�@@�@� @@@@@@@@@@@@@@@@@@@     �@     '  %3+5#3+5!=3+=3#=3@@@@�@@@@@�@@�@@@@@@@@@@@@@@@@@@@@@@@@@@@@   	    @@         #  !53!537#53537#53153+5;53!#53 @��@�@@�@@@@@�@@�@� @@@@@@@@@@@@@@@@@@@    ��@@   %  3+5;5+5;=3%#=3�@@@@@�@@@@@@@� @@@@@@@@@@@@@@@@@�@@@@@@@        @@     %3+53533'53=+5;# @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@     �� ��   #=#53=;#3�@@@@@@@@@@@@@@@@@@@@@@@@      @�   1=3@@@@@@@@@@@@@@@    �� ��   #53=#5;3#@@@@@@@@@@@@@@@@@@@@@@@@@    �@@       753%53353+53+53�@� @�@�@@@@@�@@@@@@@@@      �� @@    =353@@@�@@@@@@@@@@�@@     @�   '  35#5#=3535333#5#3#753#=#�@@@@@@@@@@@@@�@@@@@@@@@@@@@@@@@�@@@@@@@@      @�   #  533+535#53=33#3+5; @@@@@@@@@@@@@@@@@@@@@@@� @@@@@@@@@@@@@@    @@�        %53!537+=;#5#753!#53 @��@�@@@@@@@@�@� @@@@@@@@@@@@@@@�@@@      @�   # ' +  35+5;5+5;53;+;+53+5;53!#53�@@@@@@@@@@@@@@@@@@�@@�@� @@@@@@@@@@@@@@@@@@@      @�    1=3=3@@@@@@@@@ @@@@@@      ��@�      # ' /  533+5;53!#5;+5353+=;#'#5;+5; @�@@@@@�@� @@�@@@@�@@@@@@@�@@@@@@ @@� @@@@@@@@@@@@@@   � ��    53#53�@�@�@@@@       �� 	  ! - 7  %3+5;=3!#=33#=;#3+5; @@@@@@@�@��@@�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @    � ��    7+=35#5;3'5#�@@@@@@@@@�@@@@@@@@@@@    
   @@�         # '  %53#537#53#5;#53#5;53+5;53+53 @�@@@@�@@@@@�@@�@�@@�@�@@@@@@@@@@@@@@@@@@@@       �@@   %5+5; @@@@@@@@@�@@@@      �� 	   + 5  7=;#3+5;=3!#=3+5;�@@@@@@@@@@@�@��@@ @@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @      �@�   3+5; @@@@@@@@@�@@        ��    +=;'5#�@@@@@@@ @@@@@@@@@    @@�   %3+5;5+5;=3;+ @@@@@@@@@@@@@@@@@�@@@@@@@@@@       � �� 	    7+53533'53'+5;�@@@@@@@@@@@@�@@@@�@@@@       � ��    3+535#5#5;3@@@@�@@@@@ @@@@@@@@     @ ��    53=3@@@@@@@@      ��@@    =3;+7=3@@@@@@@�@�@@@@@@@@@@@@@@�@@@@@@@@     @� #  !=##=#5#=35; @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@     � @    =3@�@@     �� � @    53=3@@@@@@@@    � ��   7+535#53533�@@@@@@@�@@@@@@@@      � ��  	    753=3+=37#53@@@�@@@@@�@@@@@@@@@@@@    
   @@�         # '  753#53753+5;53+5;#53#5;#53#53�@�@�@�@@�@�@@@@@�@@@@@�@@@@@@@@@@@@@@@@@@@@     ��     - 1  !5+=33=3!5353535+53=#5;3753�@@@@@�@@ @��@@@@@@@@�@@@@@@@@@@@@@@@@@@� @@�@@@@@@@@�@@        ��       / 3  15353+53533%53%53'+5;+53=#5;3753@ @@@@@@��@ @@@@@@� @@@@@@@�@@@@@@��@@@@@@@@@@@@@@@@@@@@@�@@       ��     # / 3  !5+=33=3!535353'3+535#5#5;3753�@@@@@�@@ @��@@@@@�@@@@@�@@@@@@@@@@@@@@@@@@� @@�@@@@@@@@�@@      ��@@        533+5;53!#=3=3=3�@@@@@@�@� @@@@ @@��@@@@@@@@@@@@@      @�  # + /  !=+#=3;=353+5;'#53 @@@@@@@@@�@@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@ @@�@�@      @�  # + /  !=+#=3;=353+5;'53 @@@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@�@�@@      @�  # ' / 3  !=+#=3;=353#53+5;'#53 @@@@@@@@@�@�@�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@�@�@        @�  # ' / 3 7  !=+#=3;=353#53+5;'53+53 @@@@@@@@@�@�@�@@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@ @@@@�@�@@@      @@  # ' /  !=+#=3;=353#53+5; @@@@@@@@@�@�@�@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@�@       @@  + /  !=+#=3;=3+=3353'#53 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�@@@@@@@        �� ) 3  1=35;+;+;+=+73=+@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�@@@@@@      ��@�     %  53=+5;#'#=3=373+53�@@@@@@@@�@@@�@@@@@�@@@@@@@�@@@@@@@�@@�@@      @�    ) -  533+5;+=3;+3+5;'#53�@@@@@@@@@�@@@@@@@@�@@@@@@@@@@ @@�@@@@@@@@@@@@@@@�@     @�    ) -  533+5;+=3;+3+5;=3�@@@@@@@@@�@@@@@@@@�@@@@@@@@ @@�@@@@@@@@@@@@@@@�@@      @�    # - 1  53#533+5;+=3;+3+5;5#53�@�@�@@@@@@@�@@@@@@@@�@@@@@@@@@ @@@@�@@@@@@@@@@@@@@@�@        @@    # -  53#533+5;+=3;+3+5;�@�@�@@@@@@@�@@@@@@@@�@@@@@@@ @@@@�@@@@@@@@@@@@@@@      @�  # '  533+5;=+5;+#53�@@@@@@@@@@@@@@@@@@@@@@ @@�@@@@@@@@@@@@@@@ @     @�  # '  533+5;=+5;+53�@@@@@@@@@@@@@@@@@@@@ @@�@@@@@@@@@@@@@@@ @@      @�   ' +  53#533+5;=+5;+#53�@�@�@@@@@@@@@@@@@@@@@@@ @@@@�@@@@@@@@@@@@@@@ @        @@   '  53#533+5;=+5;+�@�@�@@@@@@@@@@@@@@@@@ @@@@�@@@@@@@@@@@@@@@   ��  @�  +  73=#5+3#3+=#53=;33#�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@       @�  # ' + / 3  !=3!=;3#5+53#53753+53 @��@@@@@@@@@�@�@�@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@        @�    # + /  533+5;=3!#=3+5;'#53�@@@@@@�@� @@�@@@@@@�@@ @@�@@@@@@@@@@@@@@@@@@@@@@ @�@        @�    # + /  533+5;=3!#=3+5;'53�@@@@@@�@� @@�@@@@@@@@ @@�@@@@@@@@@@@@@@@@@@@@@@ @�@@        @�     ' / 3  53#533+5;=3!#=3+5;'#53�@�@@@@@@@�@� @@�@@@@@@@@@ @@@@�@@@@@@@@@@@@@@@@@@@@@@ @�@     @�     ' / 3 7  53#533+5;=3!#=3+5;'53+53�@�@�@@@@@�@� @@�@@@@@@@@�@@ @@@@�@@@@@@@@@@@@@@@@@@@@@@ @�@@@       @@     ' /  53#533+5;=3!#=3+5;�@�@@@@@@@�@� @@�@@@@@@ @@@@�@@@@@@@@@@@@@@@@@@@@@@ @    	   @@�         #  %53!537#53537#53153+5;53!#53 @��@�@@�@@@@@�@@�@� @@@@@@@@@@@@@@@@@@@@ ��  ��   + / 7  #5373+5;=####=3353535353+5;@@�@@@@@�@@@@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@     @�    ' +  533+5;=3!#=3#53�@@@@@@�@� @@@@@ @@�@@@@@@@@@@@@@@@@@@@@@@@@@@�@     @�    ' +  533+5;=3!#=353�@@@@@@�@� @@�@ @@�@@@@@@@@@@@@@@@@@@@@@@@@@@�@@     @�     + /  53#533+5;=3!#=3#53�@�@@@@@@@�@� @@�@@ @@@@�@@@@@@@@@@@@@@@@@@@@@@@@@@�@      @@     +  53#533+5;=3!#=3�@�@@@@@@@�@� @@ @@@@�@@@@@@@@@@@@@@@@@@@@@@@@@@      @�      # '  3=35353+5;=3!#=353�@@@@�@@�@� @@�@@@@@@@ @@��@@@@@@@@@@@@@@ @@      @� #  1=3;3#=+;+@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@        @�     # +  1=373+53=3'#531=3'+5;@�@@@�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�@@@@@�@      @     % )  53+5#535;53'35+37+5;'#53�@@@@@@@@@@@�@@@@@�@@@@@@�@@�@@��@@@@@@@@@@@�@�@       @     % )  53+5#535;53'35+37+5;'53�@@@@@@@@@@@�@@@@@�@@@@@@@@�@@��@@@@@@@@@@@�@�@@       @     ! ) -  53#53+5#535;53'35+37+5;'#53�@�@�@@@@@@@@@�@@@@@�@@@@@@@@@�@@@@��@@@@@@@@@@@�@�@     @     ! ) - 1  53#53+5#535;53'35+37+5;=3+53�@�@�@@@@@@@@@�@@@@@�@@@@@@@�@@�@@@@��@@@@@@@@@@@�@�@@@        @�    ! )  53#53+5#535;53'35+37+5;�@�@�@@@@@@@@@�@@@@@�@@@@@@�@@@@��@@@@@@@@@@@�@        @    # ' + /  !+5#535;53'35+37+53533'53+5;#53 @@@@@@@@@�@@@@@�@@@@@@@@�@@@@@@@@@@@@@@@@�@@@@@@@@       �@ % +  %3+5#535;5+5;+;53+#35+@@@@@@@@@@@@@@@@@@@@@@@@@@�@@@@@@@@@@@@@@@@@@    �� @      53=#5;#'#=373+53@@@@@@@�@@�@@@@@�@@@@@@@�@@@@@�@@     @     % )  533+53+=3;53+7+5;'#53�@@@@@@@@@@@@@@@@@�@@@@@@�@@�@@��@@@@@@@@@�@�@     @     % )  533+53+=3;53+7+5;'53�@@@@@@@@@@@@@@@@@�@@@@@@@@�@@��@@@@@@@@@�@�@@     @     ! ) -  53#533+53+=3;53+7+5;'#53�@�@@@@@@@@@@@@@@@@@@�@@@@@@@@@�@@@@��@@@@@@@@@�@�@      @�    ! )  53#533+53+=3;53+7+5;�@�@@@@@@@@@@@@@@@@@@�@@@@@@�@@@@��@@@@@@@@@�@      �      3=#5;53'#53@@@@@@@@@@@@@@@@@@@�@@@@      �      3=#5;53=3@@@@@@@@@@@@@@@@@�@@@@@       �       3=#5;53#537#53@@@@@�@@@@@@@@@@@@@@�@@@@@@         ��     3=#5;53#53@@@@@�@@@@@@@@@@@�@@@@       @�    ! % )  73+5;=3!#=37+5;53=3+53�@@@@@�@� @@�@@@@@@@�@@@@@@@@@@@@@@@@�@@@@@@@       @  	    % ) -  !=3!=33#53#53+5;'53+53 @��@@@@@�@�@@@@@@�@@@@@@@@@@@@@@@@@@@@�@@@@�@�@@@     @      # '  533+5;=3!#=37+5;'#53�@@@@@@�@� @@�@@@@@@�@@�@@��@@@@@@@@@@@@@�@�@     @      # '  533+5;=3!#=37+5;'53�@@@@@@�@� @@�@@@@@@@@�@@��@@@@@@@@@@@@@�@�@@     @       ' +  53#533+5;=3!#=37+5;'#53�@�@@@@@@@�@� @@�@@@@@@@@@�@@@@��@@@@@@@@@@@@@�@�@      @       ' + /  53#533+5;=3!#=37+5;'53+53�@�@�@@@@@�@� @@�@@@@@@@@�@@�@@@@��@@@@@@@@@@@@@�@�@@@        @�      '  53#533+5;=3!#=37+5;�@�@@@@@@@�@� @@�@@@@@@�@@@@��@@@@@@@@@@@@@�@    @@�     753533+5;�@@@@@@@@@@@@@@@@ @@@@@   ��  �@   ' +  #5373+5#=333=##535+5;3=3@@�@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�@@        @    ! %  !5#+5;53=353#=3#53 @@@@@@@�@�@@@@@@@@@@@@@@@@@�@@��@@@@@@@@@     @    ! %  !5#+5;53=353#=353 @@@@@@@�@�@@�@@@@@@@@@@@@@�@@��@@@@@@@@@@     @     % )  !5#+5;53=353#53#=3#53 @@@@@@@�@�@@@@�@@@@@@@@@@@@@@�@@@@��@@@@@@@@@       @�    %  !5#+5;53=353#53#=3 @@@@@@@�@�@@@@@@@@@@@@@@@@�@@@@��@@@@@@@     ��@     ) -  533+5;5+5;=3%#=353�@@@@@@�@@@@@@@� @@�@�@@�@@@@@@@@@@@@@@@�@@@@@@@@@@      ��@� #  =3;3#=+;+@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@     ��@�    # -  53#533+5;5+5;=3%#=3�@�@@@@@@@�@@@@@@@� @@�@@@@�@@@@@@@@@@@@@@@�@@@@@@@     @@  ' /  !=+#=3;=3+5;'3+53 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�@�@@      @�   ! )  !+5#535;53'35+37+5;'3+53 @@@@@@@@@�@@@@@�@@@@@@@@@@@@@@@@@@@@@@@�@�@@     @�  # + / 3  !=+#=3;=353+5;'53+53 @@@@@@@@@�@@@@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@ @@�@�@@@        @     % ) -  53+5#535;53'35+37+5;'53+53�@@@@@@@@@@@�@@@@@�@@@@@@@@�@@�@@��@@@@@@@@@@@�@�@@@   ��@�  ' /  53%=3;=3##53=++5; @��@@@@@@@@@@@�@@@@@@�@@�@@@@@@@@@@@@@@@@@@@@@@@@�@     ��@@    '  53'#5+5#535;53#'35+37+5; @@@@@@@@@@@@@@@@@@�@@@@@@�@@@@@@@@@@@@@@@�@      @� 	     %3+5;+=3=373+53 @@@@@@@�@@@�@@@@@@@@@@@@@@@�@@�@@                 533+53+=373+53753�@@@@@@@@@�@@@@@@@�@@��@@@@@@@�@@�@@     @�      ' +  53#533+5;+=3=373+535#53�@�@�@@@@@@@�@@@�@@@@@@@ @@@@�@@@@@@@@@@�@@�@@�@                #  53#533+53+=373+537#53�@�@@@@@@@@@@�@@@@@@@@�@@@@��@@@@@@@�@@�@      @@     #  533+5;+=3=373+53�@@@@@@@@@�@@@�@@@@@ @@�@@@@@@@@@@�@@�@@         �      533+53+=373+53�@@@@@@@@@�@@@@@�@@��@@@@@@@�@@        @�     # ' +  533+5;+=3=373+53=3+53�@@@@@@@@@�@@@�@@@@@@�@@ @@�@@@@@@@@@@�@@�@@�@@@                #  533+53+=373+53753+53�@@@@@@@@@�@@@@@@@�@@�@@��@@@@@@@�@@�@@@       @�   + / 3  533=#5+3+=;33#53+53�@@@@@@@@@@@@@@@@@@�@@ @@�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@       ��   '  53+5#=35;=3'3=+3�@�@@@@@@@@@�@@@@@�@@��@@@@@@@@@@@@@@@@@@@@@    ��  @�  +  73=#5+3#3+=#53=;33#�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@       ��  )  !+5#=35;5+5;#'3=+3 @@@@@@@@@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@@       @@ 	  % -  %3+5;+=3;+3+5;53+53 @@@@@@@�@@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@@@�@@       @�   ! )  73+53+=3;53+7+5;'3+53�@@@@@@@@@@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@�@�@@      @�    ) - 1  533+5;+=3;+3+5;=3+53�@@@@@@@@@�@@@@@@@@�@@@@@@@@�@@ @@�@@@@@@@@@@@@@@@�@@@        @     % ) -  533+53+=3;53+7+5;'53+53�@@@@@@@@@@@@@@@@@�@@@@@@@@�@@�@@��@@@@@@@@@�@�@@@       @@    )  533+5;+=3;+3+5;�@@@@@@@@@�@@@@@@@@�@@@@@@@ @@�@@@@@@@@@@@@@@@        @�    %  533+53+=3;53+7+5;�@@@@@@@@@@@@@@@@@�@@@@@@�@@��@@@@@@@@@�@      ��@�   ! +  53=+5;%#=3;+3+5;�@@@@@@@@� @@@@@@@@�@@@@@@@�@@@@@@@�@@@@@@@@@@@@    ��@@    '  53=#5;#'#=3;53+7+5;@@@@@@@�@@@@@@@@@@�@@@@@@�@@@@@@@�@@@@@@@�@     @�    ) - 1  533+5;+=3;+3+5;=3+53�@@@@@@@@@�@@@@@@@@�@@@@@@@@�@@ @@�@@@@@@@@@@@@@@@�@@@        @     % ) -  533+53+=3;53+7+5;'53+53�@@@@@@@@@@@@@@@@@�@@@@@@@@�@@�@@��@@@@@@@@@�@�@@@       @�      + 3 7  53'53#533+5;=+5;!#=3+5;'#53 @�@�@@@@@@@�@@@@@� @@�@@@@@@@@@@@@�@@@@�@@@@@@@@@@@@@@@@@@ @�@   ��@     ! ) 1 5  53#533+5;5+5;=3%#=37+5;'#53�@�@@@@@@@�@@@@@@@� @@�@@@@@@@@@�@@@@�@@@@@@@@@@@@@�@@@@@�@�@     @�     ' / 3 7  53'533+5;=+5;!#=3+5;'53+53 @�@@@@@@�@@@@@� @@�@@@@@@@@�@@@@@�@@�@@@@@@@@@@@@@@@@@@ @�@@@    ��@     % - 1 5  533+5;5+5;=3%#=37+5;'53+53�@@@@@@�@@@@@@@� @@�@@@@@@@@�@@�@@�@@@@@@@@@@@@@�@@@@@�@�@@@      @@     ' /  53'533+5;=+5;!#=3+5; @�@@@@@@�@@@@@� @@�@@@@@@@@@�@@�@@@@@@@@@@@@@@@@@@ @     ��@�    % -  533+5;5+5;=3%#=37+5;�@@@@@@�@@@@@@@� @@�@@@@@@�@@�@@@@@@@@@@@@@�@@@@@�@     ��@�     ' /  53533+5;=+5;!#=3+5;�@@@�@@@@@�@@@@@� @@�@@@@@@�@@�@@� @@@@@@@@@@@@@@@@@ @     ��@�    % -  533+5;5+5;=3%#=37+5;�@@@@@@�@@@@@@@� @@�@@@@@@�@@�@@@@@@@@@@@@@�@@@@@�@       @� # ' + /  !=+#=3;=353#537#53 @@@@@@@@@�@�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@     @� 	  # ' +  !=3!=3;+53#537#53 @��@@@@@@@�@�@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@   ��  �� # +  !=+#=#5;#35+3 @@@@@@@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ ��  @� 	 %  !=3!=#5;+;+ @��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@     @�   ' + /  53#533+5;=+5;+53+53�@�@�@@@@@@@@@@@@@@@@@@�@@ @@@@�@@@@@@@@@@@@@@@ @@@  ��   �        3=#5;53#53753+53@@@@@@�@�@�@@@@@@@@@@@@�@@@@@@@@     @@  '  %3+5;=+5;+3+53 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@        ��    3=#5;3+53@@@@@@@@@@@@@@@@@@@�@@      @�  # ' +  533+5;=+5;+53+53�@@@@@@@@@@@@@@@@@@@@�@@ @@�@@@@@@@@@@@@@@@ @@@         �       3=#5;53=3+53@@@@@@@�@@@@@@@@@@@@�@@@@@@      ��@�  %  53=+5;=+5;+;�@@@@@@@@@@@@@@@@@@�@@@@@@@@@@@@@@@@@@@     �� ��      5353#531=#5;@@@@@@@@@@�@@ @@�@@@@@@@@@@@@      @@  #  533+5;=+5;+�@@@@@@@@@@@@@@@@@@@ @@�@@@@@@@@@@@@@@@      �@   3=#5;@@@@@@@@@@@@@@        ��  ' + ?  %3+53#3+5;=+5;+!53=+5; @@@@@�@@@@@@@@@@@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@    ��@�     +  3=#5;53!533+53=#5;@@@@�@� @@@@@�@@@@@@@@@@@@@�@@@@�@@@@@@@@@@@@@@@      @�     ' +  53#533+5;53=+5;#53�@�@@@@@@�@@@@@@@@@@�@@ @@@@�@@@@@@@@@@@@@@@@�@      ��       !  53#533+53=#5;#53�@�@@@@@�@@@@@�@@@@�@@@@@@@@@@@@@@@ @   ��@�  	 ! % +  537=3!=3;3#5+53=3�@@@��@@@@@@@�@@�@@�@@@@@@@@@@@@@@@@@@@@ @@@@@@@    �� �    ! %  53=3!=333#5#753=3�@@� @@@@@@@@�@@�@@@@@@@@@@@@@@@@@@�@@@@@        @      353!=333#5#753=3�@� @@@@@@@@@@@@@@@@@@@@@@�@@@@@      @�      533+5;+=353@@�@@@@@@@�@@@@ @@�@@@@@@@@@@@@@@�@@         ��      35353#=353@@�@@@@@@ @@�@@@@@@@@@@@@�@@      ��@�     5373+5;+=3�@@@@@@@@@�@@�@@�@@@@@@@@@@@@@    �� ��     53=3'#=3@@@@@�@@�@@@@@@@@@@@@@@     @�     533+5;+=3�@@@@@@@@�@@�@@��@@@@@@@@@@@@@      ��     35353#=3@@@�@@@@�@@��@@@@@@@@@@@       @�     7533+5;+=3�@@@@@@@@@�@@�@@�@@@@@@@@@@@@@       ��     353=3#=3@@@�@@@@�@@�@@@@@@@@@@@ ��  @� 	    %3+5;+5#53=33#753 @@@@@@@�@@@@@@@@@@@@@@@@@@@@@@�@@    ��   ��    353'#5#53=33#@@@@@@@@@@@@@@@@@@@@@@@       @�  # ' +  !=3!=;3#5+53=3 @��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@     @  	   ! %  !=3!=33#53+5;'53 @��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�@@�@�@@   ��@�   '  537=3!=;3#5+�@@@��@@@@@@@�@@�@@@@@@@@@@@@@@@@@@@@@@@@@@      ��@@    !  537=3!=33#+5;�@@@��@@@�@@@@�@@�@@@@@@@@@@@@@@@@@@ @        @�  # ' + /  !=3!=;3#5+53=3+53 @��@@@@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@       @  	   ! % )  !=3!=33#53+5;'53+53 @��@@@@@@@@@@@@�@@@@@@@@@@@@@@@@@@@@�@@�@�@@@   ��  @� 	   !  !=3!=33#53+5; @��@@@�@ @@@@@@@@@@@@@@@@@@@@@@�@@�@       @�   # )  1=33#73+53=3+5;@@@�@@@�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   ��@@    %  1=33#3+53=3+5;@@@�@@@�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@     @@    ' /  73+5;=3!#=3+5;'3+53�@@@@@�@� @@�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @�@@     @�     '  73+5;=3!#=37+5;'3+53�@@@@@�@� @@�@@@@@@@@@@@@@@@@@@@@@@@@@@�@�@@      @�    # + / 3  533+5;=3!#=3+5;'53+53�@@@@@@�@� @@�@@@@@@@@�@@ @@�@@@@@@@@@@@@@@@@@@@@@@ @�@@@      @      # ' +  533+5;=3!#=37+5;'53+53�@@@@@@�@� @@�@@@@@@@@�@@�@@��@@@@@@@@@@@@@�@�@@@       @@     ' /  53#533+5;=3!#=3+5;�@�@@@@@@@�@� @@�@@@@@@ @@@@�@@@@@@@@@@@@@@@@@@@@@@ @        @�      '  53#533+5;=3!#=37+5;�@�@@@@@@@�@� @@�@@@@@@�@@@@��@@@@@@@@@@@@@�@     ��    ) 1 7  %3+53#3+53#=3;+#=33+53+5;�@@@@@�@@@�@@@@@@�@@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@        �@    # ) /  %3+5#3+53#=3;53+#=3%+5;+5;@@@@�@@@�@@@@@@@@�@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@�@@@      @�  ) - 1  !=3!=;3#=+;+53=3 @��@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@              1=33#533+=3@@@@@@@@@@@@@@@@@@@�@@@@@�@@   ��@�  	 -  537=3!=;3#=+;+�@@@��@@@@@@@@@@@@@@@�@@�@@@@@@@@@@@@@@@@@@@@@@@@   �� @     53'=33#3+5@@@@@�@@@�@@�@@@@@@@@@@@@@        @�  ) - 1 5  !=3!=;3#=+;+53=3+53 @��@@@@@@@@@@@@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@                 1=33#533+=3+53@@@@@@@@@�@@@@@@@@@@@@�@@@@@�@@@       @�     ! + /  533+5;=3'+5;+=373+5;=3�@@@@@@@@�@@@@@@@@�@@�@@@@@@@@ @@�@@@@@@@�@@@@�@@�@@     @       ' +  533+5;53'+5;+5373+5;=3�@@@@@@@@�@@@@@@@@�@@�@@@@@@@@�@@��@@@@@@@@@@�@@     @�      % / 3  53#533+5;=3'+5;+=373+5;5#53�@�@@@@@@@@@�@@@@@@@@�@@�@@@@@@@@@ @@@@�@@@@@@@�@@@@�@@�@      @       ! + /  53#533+5;53'+5;+5373+5;5#53�@�@@@@@@@@@�@@@@@@@@�@@�@@@@@@@@@�@@@@��@@@@@@@@@@�@    ��@�     # -  53=+5;=3'+5;+=373+5;�@@@@@@@@@@@@@@@@�@@�@@@@@@@�@@@@@@@�@@@@�@@@@�@@    ��@@      )  53=+5;#753'+5;+5373+5;@@@@@@@@@@@@@@@@@@�@@�@@@@@@@�@@@@@@@�@@@@@@@@       @�     ! + / 3  533+5;=3'+5;+=373+5;=3+53�@@@@@@@@�@@@@@@@@�@@�@@@@@@@@�@@ @@�@@@@@@@�@@@@�@@�@@@       @       ' + /  533+5;53'+5;+5373+5;=3+53�@@@@@@@@�@@@@@@@@�@@�@@@@@@@@�@@�@@��@@@@@@@@@@�@@@     ��@�     53=3'#=+5;+�@@@@@@@@@@@@@�@@@@@@@@@@@@@@@@@@@     �� �     53=;#'#=#53=3;+@@@@@@@@@@@@@@�@@@@@@@�@@@@@@@@@@@       @�    #  3=+5;+53=3+53�@@@@@@@@@@@@�@@@@@@@@@@@@@@@@ @@@@@@       �  	   533+51#=#53=3;+�@@@@@@@@@@@@@�@@��@@@@@@@@@@@@@     @�   3=#53=+5;+3#�@@@@@@@@@@@@@@@@@@@@@@@@@@@         �    73+51#5#535#53=3;+3#�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@     @�     + / 3  53#533+5;=3!#=353+53�@�@@@@@@@�@� @@�@�@@ @@@@�@@@@@@@@@@@@@@@@@@@@@@@@@@�@@@        @     % ) -  !5#+5;53=353#53#=353+53 @@@@@@@�@�@@@@�@�@@@@@@@@@@@@@@�@@@@��@@@@@@@@@@@     @@   # +  73+5;=3!#=33+53�@@@@@�@� @@�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�@@      @�   %  !5#+5;53=3%#=33+53 @@@@@@@� @@�@@@@@@@@@@@@@@@@@@@@@@@@@@@@      @�    ' + /  533+5;=3!#=353+53�@@@@@@�@� @@�@�@@ @@�@@@@@@@@@@@@@@@@@@@@@@@@@@�@@@       @    ! % )  !5#+5;53=353#=353+53 @@@@@@@�@�@@�@�@@@@@@@@@@@@@@�@@��@@@@@@@@@@@       @�    ' + / 3  533+5;=3!#=353+5;#53�@@@@@@�@� @@�@�@@@@@�@@��@@@@@@@@@@@@@@@@@@@@@@@@@�@@@@     @    ! % ) -  !5#+5;53=353#=353+5;#53 @@@@@@@�@�@@�@�@@@@@@@@@@@@@@@@@@@@� @@@@@@@ @@@@     @@     +  53#533+5;=3!#=3�@�@@@@@@@�@� @@ @@@@�@@@@@@@@@@@@@@@@@@@@@@@@@@      @�    %  !5#+5;53=353#53#=3 @@@@@@@�@�@@@@@@@@@@@@@@@@�@@@@��@@@@@@@     ��@�    )  53=+5;=3!#=3�@@@@@@@� @@�@@@@@@@�@@@@@@@@@@@@@@@@@@@@@@@      ��@@    %  53'#5315#+5;53=3%#=3 @@@@@@@@@@@� @@�@@@@@@@@@@@@@@@@@@@@@@@@        ��     ! + 9 =  53#533+5#3+5!=3+=3#=3#53 @�@�@@@�@@@@@�@@�@@�@@ @@@@�@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@�@      �       % / 3  53#533+5#3+5!=3+=3#=3#53 @�@�@@@�@@@@@�@@�@@�@@�@@@@��@@@@@@@@@@@@@@@@@@@@@@@@@@@        @�       ' +  3=353#5353+5;=3!#=3#53�@@�@@@�@@�@� @@�@@@@@@@@ @@@@��@@@@@@@@@@@@@@ @      ��@     % / 3  53#533+5;5+5;=3%#=3#53�@�@@@@@@@@@�@@@@@@@� @@�@@�@@@@�@@@@@@@@@@@@@@@�@@@@@@@@@       @@       '  3=353#5353+5;=3!#=3�@@�@@@�@@�@� @@@@@@@@ @@@@��@@@@@@@@@@@@@@        @�      + /  533+=3;'53=3=3=+5;53�@@@@@@@@@@@�@@@@@@@@@@@@�@ @@�@@@@@@@@@@@@@@@@@@@ @@        @     # '  533+53533'53=+5;#53�@@@@@@@@@@@@@@@@@@@@@@@@�@@��@@@@@@@@@@@@ @@       @@      +  533+=3;'53=3=3=+5;�@@@@@@@@@@@�@@@@@@@@@@@@ @@�@@@@@@@@@@@@@@@@@@@        @�    #  533+53533'53=+5;#�@@@@@@@@@@@@@@@@@@@@@@�@@��@@@@@@@@@@@@       @�      + / 3  533+=3;'53=3=3=+5;53+53�@@@@@@@@@@@�@@@@@@@@@@@@�@�@@ @@�@@@@@@@@@@@@@@@@@@@ @@@      @     # ' +  533+53533'53=+5;#53+53�@@@@@@@@@@@@@@@@@@@@@@@@�@@�@@��@@@@@@@@@@@@ @@@     @�   '  %3+53+5#535#5353;+;+3+53 @@@@@@@@@@@@@@@@@@@@�@@@@@@@@@@@@@@@@@@@@    �                 %        8        [        s        �        �  	       	     	   *  	   ?  	   i  	    x  	   � m a n a g o r e  managore  m 5 x 7  m5x7  M e d i u m  Medium  m a n a g o r e : m 5 x 7  managore:m5x7  m 5 x 7  m5x7  V e r s i o n   0 0 1 . 0 0 0    Version 001.000   m 5 x 7  m5x7        �� 3                    B           	 
                        ! " # $ % & ' ( ) * + , - . / 0 1 2 3 4 5 6 7 8 9 : ; < = > ? @ A B C D E F G H I J K L M N O P Q R S T U V W X Y Z [ \ ] ^ _ ` a � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � b c � d � e � � � � � � � f � � � � g � � � � � h � � � j i k m l n � o q p r s u t v w � x z y { } | � �  ~ � � � � �	
 � � �  � � !"#$%&'()*+,-./ � �0123456789:;<=> � �?@ABCDEFGHIJKLM � �NOPQRSTUVW � � � �XYZ[\]^_`abcdefghijklm �nopq � �rsuni00A0uni00B2uni00B3uni00B5uni00B9AmacronamacronAbreveabreveAogonekaogonekCcircumflexccircumflex
Cdotaccent
cdotaccentDcarondcaronDcroatEmacronemacronEbreveebreve
Edotaccent
edotaccentEogonekeogonekEcaronecaronGcircumflexgcircumflex
Gdotaccent
gdotaccentGcommaaccentgcommaaccentHcircumflexhcircumflexHbarhbarItildeitildeImacronimacronIbreveibreveIogonekiogonekIJijJcircumflexjcircumflexKcommaaccentkcommaaccentkgreenlandicLacutelacuteLcommaaccentlcommaaccentLcaronlcaronLdotldotNacutenacuteNcommaaccentncommaaccentNcaronncaronnapostropheEngengOmacronomacronObreveobreveOhungarumlautohungarumlautRacuteracuteRcommaaccentrcommaaccentRcaronrcaronSacutesacuteScircumflexscircumflexTcommaaccenttcommaaccentTcarontcaronTbartbarUtildeutildeUmacronumacronUbreveubreveUringuringUhungarumlautuhungarumlautUogonekuogonekWcircumflexwcircumflexYcircumflexycircumflexZacutezacute
Zdotaccent
zdotaccentEurouni3000    ��                                  ����    �x+A    �"�    GDST@   �            �  PNG �PNG

   IHDR   @   �   W��   sRGB ���  �IDATx��]}tUŵ��$7�\�\$�+&��644E��,S�(b�
����PۮZ�[}��G�����Z}�Gɢby��J��+*�����%	$%�B 	���^�}�3sg�̜snj�[+�3_��={��ٳ�D�����U~�*�jݘW����wi��@g�=��\Z��<�>}�ce]�g2���O��T�yD�qF��t5	ڞF����O��@���=��-���@�e�kʀ�qW�e����-ͅI7�  ^�����i�iE�g2�q	 c�'<ou�^o����-W�e󜲻-ͅꛦ�������J	��%���P�m:x�p��Q�=���q
�)�ہ1ƕY\���t�O�r�e�ԟ\�Q���A�K�( � �'�� ���2�s�}��*t�۹�LWNL�퐕R�ݟ�m���PvON��}���`���|��_} ��h���tTyB�~FG:��,*���:��#�g9EVJ!�*?�K ��j/n���v�'�rY): �o��ʵ��?�j v�څo�ل+�z  9�Ϣ��F���X�+m��hC��z1Ь�B�E�C �܀��Y��ع�N��������m�� o����)��
t���Ҭ��{n7�e�r(�S��C���Y�c%��o��ﴍ8v�,�j�������E��(;���2�y�m�Nq��J�pQ�ʐ  2&�~ �]�'����<z���e ��s��2�F��l��	��0Q�E%����
M��]�ЖL�9���%��0�B�@�e��$�e�YI^��F����w=���3� ���fε|����B���3O�++��kmd5�+�zB�
$��w��h�M�������f0�N �� ��D^씜�1���[��.�BƸ+T�㈸�� ���	�$X�T߈�K�]��Y߅Q�q��j�<�H�wnH�_�TvnH��<{�1n�h��$�&� n�zq(`-F��K�����&%�J ��\�$A[C���EI���T������7M�� c��.������5�8��l8���H�_�����Ǥ� �/�jrb?t��q9]m�����b�BSz��AZ�n�5��J	($��{,������8o_� y�)\�i�} ��7P3��cˍ\�g�V @��٦�J	 �c�LN�6�����-��{��dl�؇gu�~��?ӗg	g��Dt����>L	�G*{ML57p�����>������pq�4xflE��#�{�1ZߒN$������k���jn��|��\�,���2,B��o���^>:��� � ��� �1�b��)� ��; xs����VU�@���/�Ҵ��kP�|�e�a3���#�p�Te�$j�<�Q�  ���@�y�p�,�)��?v��bϋ�T
�ˊM���'!" p�ÏS)���l�R�L�� pq��f}K^��'��y,� mO#�f?��+|-q()ЙP��א��w ���U�Z����r7~�Bg�&܅[���W�� 3���z���Bڳ��ڞ���Xh4a��{,��r]�'n�$<_`*�nǷ��E�*����M��䵶;���B!���a�s �3C����(��0*m�}�7}���_y�S�
W���Z8&��@E�<T� hظ��&C�T���*\N�b������U��uU�
��=��S�,��L�">yL�%���ۀ[2�N�OZ��Z�=��� �T`�)�<�.5W �L�ڕw=8�یA���{T��3؄���zuU�H���e���,z��4���b?:?Z�p�c[�rv��V33D��wq;B 2 ���8�{	��g�hݢ�^�?�M�˖seVn� #��k4sI�Y ����mu����ߵ�xp�-_CY��m�+%���=���FB��aly���,��hzƢ ��l:��	S����́��Uz ;N��׾�,�����Z��@�~�!��c�bd�'FΒ<���'i~\G:_x��*���#���h9�z�'�����?b�W������Em2��v�O�r�y4B67Y�0���k ���h��!��OtD�3� <���6�/$R?�[�a �^"�C �?b	G���l��Z��������f�Y����23:� �*� ��U�GJ!%r��h� 
���x�q��M�U��%S�x��eQ�]S�G������C�F*n-P�Y�8�O�-��,��Fx��P�jΠ��em:�!=��R��HTG���d�����M��v�,�̯����D����^
�O��D7��T��i�V���	\�ɔP �x	��#57�o0+��)����WM
�ݕUտq��P3TT������mi.|���W�t��U�����ݸkp>��aw�?J��Y �.��R#���O�p�˳
p������uE������@�[7�,0��96u���\�΄1Q��X�J��Zߛ�M}��mǨo�D�م�wm��1,H�{�RM���m杢���
����RK�d�& �i�	e} X�f�ohy���I��]ߟxޙ #^�*H2'هo��n�������}��)�D��(ϔ>U�11dq��H ��	g]a9��#g�k �N�.A���y����X�S'�����@}�)f/��P�ל���`�:�9%>'�������3��z��xg��Gmd3��P��O�C< �"�,s��%���.�K,��	�>��O���Q�k�!+�^ɉ@��p'�a���c��%��8*V3����ޗ��b?���`G���2(�_��R~d��#��!d���I��b?��6'�9�>d����b�yoP$~]pr�}X�Q��}x�v^�h+��xs�9�2��L�K:Nf� C�J�q���O<o��*��/�~_�Xk�8$�q�X��w��7'���-�������$��0����5��0�I�7C�}��Y���h�lߑWX< 6�y� R�Iĝ�&��h "�_B�&F�Q�Z﫾 �He/���D���֨�Nt�iVv�%L"����DH_�����,q�vS��@﫜R��@�g}sU�к7�c-�p24t����`$�&"��dS{�6�o�H<!�b�B*�GF�aӄ�	�XK^�j����"���D�K�M[䷥� ���@%�|r�MI�����`�'�9E��*O�[�+���cZ���%�t���R���kK�ϏȆ��]�!ӕ���y��1��n=����N��w_�`BD�?H ���ͻ8�<����3���?�T=�8M��7�z+�eVn�[��#��M�o��٤��aA���S�����X2}>�|@�~g#=��_� ���~iC�?�8���l��6����@DxI�R�ǝe\�W�U[�oJ'��zq� t�p�5B���N �U���Y��,��$M|F������2�ߟI�0ēz�}@�4������w�rk��%����l��.K ��q \� G��p� ��� ����N=T}��w 81zΙ�Cf�Kg�1[�_�{� �XBo[1�M��U*�r��L�?<r�����]�7��o��K���� {�� $��_O �5�� ��
���c\f��4mn~�TQ���,����}��%b۱��2@�x �&���7� `�˝�����
� #�T�C���,�!��.�&��u��I��1�..�Ɖ��¥$Ύ���Fz�rת]\��2�@���P����%�R/7�7��KN�2�M��mu\[��4ˋї���a9\ }�s���e�>��i2U�n6���D[h�@���������@Z�}P�,pJ�QژN��������a�k �^;H�����z�6Tb�N�I[��A������w��/�M�<}�\�K��q� ����+��ae@��#O=\ ��W=<�w+�SM����D�<Y񑘝��G���LV�q\�ke̳��� =��9T�^��&���'-��������W�7�Pu�q)�<�76�@%`$�6vaW�Ґ��' �6���y`6�I+��2�O�3Wt�D h�9��цC=h�9��U�4���y4�������'"2���y�=��jkTe��P����c�+��fz�*>&Ԇ��ȯ����),��3�h/D��df��"�94��h����M�6�bex�s_�3��>F�)JvN�+�Gl|/��X���{��^T�o�؇��_Ş�-�����h+�=�^ǂ��y�l:@#�Eu,����yQ������aI�'��׬�,0R�QQ4���S z�<a��������~���#����i^�^*�
E��v��T��o2<�����#ߦ�*�I%��N��&'��I�Z�Ac�+��!>c!�Sd�@-~qx>{��p�ry�������l,z(ʄ��_�*��?�aq�ҙ��]�M���Ź_�_^cJӾ�rq ��'1���V1�����a\���дT�%��@��Ⱦ!l3���"^�����ۍ�u$�cxs���uFa���A��"^|��X��L�����W݈��FSG���	�7}]Z�̞ 	P�9������<�\}F�b/��'A�qv�UG�4�ˊM�Nu��>��B6\�z"��ؙi��.��a@�}��4n�	K`�1�0���(a�:`8p:����Y@o3�eJ�7��Sc�a&�p�t��k����U�X$�ET���t;��Š/Z7�5P�����񅽹�\T��ËG������5 ��v5�O_����U������M��V�t�O���MTl������ؖ����q��'|S���
 ���X���uUþ��g�!a��(�&�G���
*��l��,���4)��3DP,���3�=����8���K�E�B<9�M>��.�� ��%@F��]t��W$=� �6� �`�Z����4�5P�,T��yon7f�3���e�����i�`]8�^�c�$?f?%)3e�g D�VAV��$�k�	��.�(�2]m4"������z�ɞ��U���mZ��F��'\N��]�7���YwQ6Ք�w���t�p�Jł>!}{�l}z��ʯ�8����k��^�!M:�R	��Ύ��	l��}����(��M�=G�����G��	���i��,�[d�D��n��c���X��=;�q�?�b#W���� �`~#�CE��ࡀ8$��(9K�.�d��[�s��5�q��1~a�_��\��㲏��P� P~d���������#��<�2��7E��� c���`m���sVSf{�.�W�ys5N���p2<d�C�k�|�ۃS}��,*FdQ17.�{��p)�y�W"�0��-ni��>���BtR�eÁ.���#����:MMM����x*	z^	���G���&S���? ���e`- �g.�0�3;V/�{��)J<��)����_�-����G(:�����p����*FȈ��x{_%�,D�0By��~�~�n-��TOak�`{��l8����%+��"u�C�<ބ�?:�ݯ,��o�4�a-B�Y���pR	B���L =XX�	#�U)��`�`G�U�/�]��_��T�+t���{���>���A�ř�{���4���%Nz��y��"���`������F ��8�@-BH�����̟|vu��O	cGW��!�#:�?H�v���X���y�/f+\��=�~2�T���|����s�f����A\����C��h���'��J�	L����I����/o�v�� $����A��H@�y��шcX��=ۙZ���Qd�Ȕ�
�r�F� ^��DӂM���v�7��8�_�>�E��M�O���� B��7VJ��
ܹA�*�[���{oQ�#�<)�_��jVi �V�\ �A�	T�FZ��x<q>�v{8Ѕ��Uh+}0�8*����ȫY �p�h�K_�~X��8����R��eK}�#`B�I0�$�[����kW6� *����;���~7�Q6�E��z�]}U,,�pg�kIy�`Mч��Y���4�6XW�?ݠ���:��+ڰ�Qlg{b�,�.1rj�I�~�$G��ߟI�g�/�{�i�`��H% �#���=��"����6�MսS[�J�l5��L?��'0{Z��x�H��
��%�T� ������|1Vq�Py�5�_,� ��� �݋�y��v�  �D[?Ԣ���;�� 'mXIALp:T!�|�3�pq�7'���M�6,}�̽��2=:��ƈ��� �,`;���b��pb)I_��@����m��o��Y/Z&�*d�<�z+�ϯ  Tn_�3v��?��*jTn_K�b�\Y��C��)�rk%f����~�$�M[�kWc�qM�a�@j�2(��Ӓ�v���%�L�.t�ié���!Dhr2�?��m�A��    IEND�B`�           [remap]

importer="texture"
type="StreamTexture"
path="res://.import/tiles.png-20e12ed313f9b52ca4483ea23302e684.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://tiles.png"
dest_files=[ "res://.import/tiles.png-20e12ed313f9b52ca4483ea23302e684.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=false
svg/scale=1.0
           [remap]

path="res://Battery.gdc"
              [remap]

path="res://Creature.gdc"
             [remap]

path="res://Global.gdc"
               [remap]

path="res://LightTimer.gdc"
           [remap]

path="res://Player.gdc"
               [remap]

path="res://PlayerDetector.gdc"
       �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx��ytTU��?�ի%���@ȞY1JZ �iA�i�[P��e��c;�.`Ow+4�>�(}z�EF�Dm�:�h��IHHB�BR!{%�Zߛ?��	U�T�
���:��]~�������-�	Ì�{q*�h$e-
�)��'�d�b(��.�B�6��J�ĩ=;���Cv�j��E~Z��+��CQ�AA�����;�.�	�^P	���ARkUjQ�b�,#;�8�6��P~,� �0�h%*QzE� �"��T��
�=1p:lX�Pd�Y���(:g����kZx ��A���띊3G�Di� !�6����A҆ @�$JkD�$��/�nYE��< Q���<]V�5O!���>2<��f��8�I��8��f:a�|+�/�l9�DEp�-�t]9)C�o��M~�k��tw�r������w��|r�Ξ�	�S�)^� ��c�eg$�vE17ϟ�(�|���Ѧ*����
����^���uD�̴D����h�����R��O�bv�Y����j^�SN֝
������PP���������Y>����&�P��.3+�$��ݷ�����{n����_5c�99�fbסF&�k�mv���bN�T���F���A�9�
(.�'*"��[��c�{ԛmNު8���3�~V� az
�沵�f�sD��&+[���ke3o>r��������T�]����* ���f�~nX�Ȉ���w+�G���F�,U�� D�Դ0赍�!�B�q�c�(
ܱ��f�yT�:��1�� +����C|��-�T��D�M��\|�K�j��<yJ, ����n��1.FZ�d$I0݀8]��Jn_� ���j~����ցV���������1@M�)`F�BM����^x�>
����`��I�˿��wΛ	����W[�����v��E�����u��~��{R�(����3���������y����C��!��nHe�T�Z�����K�P`ǁF´�nH啝���=>id,�>�GW-糓F������m<P8�{o[D����w�Q��=N}�!+�����-�<{[���������w�u�L�����4�����Uc�s��F�륟��c�g�u�s��N��lu���}ן($D��ת8m�Q�V	l�;��(��ڌ���k�
s\��JDIͦOzp��مh����T���IDI���W�Iǧ�X���g��O��a�\:���>����g���%|����i)	�v��]u.�^�:Gk��i)	>��T@k{'	=�������@a�$zZ�;}�󩀒��T�6�Xq&1aWO�,&L�cřT�4P���g[�
p�2��~;� ��Ҭ�29�xri� ��?��)��_��@s[��^�ܴhnɝ4&'
��NanZ4��^Js[ǘ��2���x?Oܷ�$��3�$r����Q��1@�����~��Y�Qܑ�Hjl(}�v�4vSr�iT�1���f������(���A�ᥕ�$� X,�3'�0s����×ƺk~2~'�[�ё�&F�8{2O�y�n�-`^/FPB�?.�N�AO]]�� �n]β[�SR�kN%;>�k��5������]8������=p����Ցh������`}�
�J�8-��ʺ����� �fl˫[8�?E9q�2&������p��<�r�8x� [^݂��2�X��z�V+7N����V@j�A����hl��/+/'5�3�?;9
�(�Ef'Gyҍ���̣�h4RSS� ����������j�Z��jI��x��dE-y�a�X�/�����:��� +k�� �"˖/���+`��],[��UVV4u��P �˻�AA`��)*ZB\\��9lܸ�]{N��礑]6�Hnnqqq-a��Qxy�7�`=8A�Sm&�Q�����u�0hsPz����yJt�[�>�/ޫ�il�����.��ǳ���9��
_
��<s���wT�S������;F����-{k�����T�Z^���z�!t�۰؝^�^*���؝c
���;��7]h^
��PA��+@��gA*+�K��ˌ�)S�1��(Ե��ǯ�h����õ�M�`��p�cC�T")�z�j�w��V��@��D��N�^M\����m�zY��C�Ҙ�I����N�Ϭ��{�9�)����o���C���h�����ʆ.��׏(�ҫ���@�Tf%yZt���wg�4s�]f�q뗣�ǆi�l�⵲3t��I���O��v;Z�g��l��l��kAJѩU^wj�(��������{���)�9�T���KrE�V!�D���aw���x[�I��tZ�0Y �%E�͹���n�G�P�"5FӨ��M�K�!>R���$�.x����h=gϝ�K&@-F��=}�=�����5���s �CFwa���8��u?_����D#���x:R!5&��_�]���*�O��;�)Ȉ�@�g�����ou�Q�v���J�G�6�P�������7��-���	պ^#�C�S��[]3��1���IY��.Ȉ!6\K�:��?9�Ev��S]�l;��?/� ��5�p�X��f�1�;5�S�ye��Ƅ���,Da�>�� O.�AJL(���pL�C5ij޿hBƾ���ڎ�)s��9$D�p���I��e�,ə�+;?�t��v�p�-��&����	V���x���yuo-G&8->�xt�t������Rv��Y�4ZnT�4P]�HA�4�a�T�ǅ1`u\�,���hZ����S������o翿���{�릨ZRq��Y��fat�[����[z9��4�U�V��Anb$Kg������]������8�M0(WeU�H�\n_��¹�C�F�F�}����8d�N��.��]���u�,%Z�F-���E�'����q�L�\������=H�W'�L{�BP0Z���Y�̞���DE��I�N7���c��S���7�Xm�/`�	�+`����X_��KI��^��F\�aD�����~�+M����ㅤ��	SY��/�.�`���:�9Q�c �38K�j�0Y�D�8����W;ܲ�pTt��6P,� Nǵ��Æ�:(���&�N�/ X��i%�?�_P	�n�F�.^�G�E���鬫>?���"@v�2���A~�aԹ_[P, n��N������_rƢ��    IEND�B`�       ECFG      _global_script_classes             _global_script_class_icons             application/config/name         LudumDare46    application/run/main_scene         res://World1.tscn      application/config/icon         res://icon.png     autoload/Global         *res://Global.gd   display/window/size/width      �      display/window/size/height      Q      display/window/size/test_width      �     display/window/size/test_height      �     display/window/stretch/mode         2d     display/window/stretch/aspect         expand  $   rendering/quality/driver/driver_name         GLES2   =   rendering/quality/2d/gles2_use_nvidia_rect_flicker_workaround         #   rendering/quality/2d/use_pixel_snap         )   rendering/environment/default_environment          res://default_env.tres  