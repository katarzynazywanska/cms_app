PGDMP         7                {            postgres    15.1    15.1 '               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                        0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            !           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            "           1262    5    postgres    DATABASE     {   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Polish_Poland.1250';
    DROP DATABASE postgres;
                postgres    false            #           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    3362                        3079    16384 	   adminpack 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;
    DROP EXTENSION adminpack;
                   false            $           0    0    EXTENSION adminpack    COMMENT     M   COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';
                        false    2            �            1259    16469 	   kategorie    TABLE     y   CREATE TABLE public.kategorie (
    kategoria_id integer NOT NULL,
    kategoria_tytul character varying(30) NOT NULL
);
    DROP TABLE public.kategorie;
       public         heap    postgres    false            �            1259    16468    kategorie_kategoria_id_seq    SEQUENCE     �   CREATE SEQUENCE public.kategorie_kategoria_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.kategorie_kategoria_id_seq;
       public          postgres    false    220            %           0    0    kategorie_kategoria_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.kategorie_kategoria_id_seq OWNED BY public.kategorie.kategoria_id;
          public          postgres    false    219            �            1259    16489 
   komentarze    TABLE     �   CREATE TABLE public.komentarze (
    komentarz_id integer NOT NULL,
    komentarz_wpis_id integer,
    komentarz_data date,
    komentarz_zatwierdzony boolean DEFAULT false,
    komentarz_autor_id integer,
    komentarz_tresc character varying(500)
);
    DROP TABLE public.komentarze;
       public         heap    postgres    false            �            1259    16488    komentarze_komentarz_id_seq    SEQUENCE     �   CREATE SEQUENCE public.komentarze_komentarz_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.komentarze_komentarz_id_seq;
       public          postgres    false    222            &           0    0    komentarze_komentarz_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.komentarze_komentarz_id_seq OWNED BY public.komentarze.komentarz_id;
          public          postgres    false    221            �            1259    16440    uzytkownicy    TABLE     �   CREATE TABLE public.uzytkownicy (
    uzytkownik_id integer NOT NULL,
    uzytkownik_imie character varying(100),
    uzytkownik_nazwisko character varying(100),
    uzytkownik_email character varying(100),
    uzytkownik_haslo character varying(100)
);
    DROP TABLE public.uzytkownicy;
       public         heap    postgres    false            �            1259    16439    uzytkownicy_uzytkownik_id_seq    SEQUENCE     �   CREATE SEQUENCE public.uzytkownicy_uzytkownik_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.uzytkownicy_uzytkownik_id_seq;
       public          postgres    false    218            '           0    0    uzytkownicy_uzytkownik_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.uzytkownicy_uzytkownik_id_seq OWNED BY public.uzytkownicy.uzytkownik_id;
          public          postgres    false    217            �            1259    16427    wpisy    TABLE     �  CREATE TABLE public.wpisy (
    wpis_id integer NOT NULL,
    wpis_tytul character varying(100) NOT NULL,
    wpis_status character varying(100) NOT NULL,
    wpis_data_opublikowania date NOT NULL,
    wpis_odblokuj_komentarze boolean DEFAULT false,
    wpis_autor_id integer,
    wpis_kategoria_id integer,
    wpis_plik character varying(128),
    wpis_tresc character varying(5000)
);
    DROP TABLE public.wpisy;
       public         heap    postgres    false            �            1259    16426    wpisy_wpis_id_seq    SEQUENCE     �   CREATE SEQUENCE public.wpisy_wpis_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.wpisy_wpis_id_seq;
       public          postgres    false    216            (           0    0    wpisy_wpis_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.wpisy_wpis_id_seq OWNED BY public.wpisy.wpis_id;
          public          postgres    false    215            x           2604    16472    kategorie kategoria_id    DEFAULT     �   ALTER TABLE ONLY public.kategorie ALTER COLUMN kategoria_id SET DEFAULT nextval('public.kategorie_kategoria_id_seq'::regclass);
 E   ALTER TABLE public.kategorie ALTER COLUMN kategoria_id DROP DEFAULT;
       public          postgres    false    219    220    220            y           2604    16492    komentarze komentarz_id    DEFAULT     �   ALTER TABLE ONLY public.komentarze ALTER COLUMN komentarz_id SET DEFAULT nextval('public.komentarze_komentarz_id_seq'::regclass);
 F   ALTER TABLE public.komentarze ALTER COLUMN komentarz_id DROP DEFAULT;
       public          postgres    false    222    221    222            w           2604    16443    uzytkownicy uzytkownik_id    DEFAULT     �   ALTER TABLE ONLY public.uzytkownicy ALTER COLUMN uzytkownik_id SET DEFAULT nextval('public.uzytkownicy_uzytkownik_id_seq'::regclass);
 H   ALTER TABLE public.uzytkownicy ALTER COLUMN uzytkownik_id DROP DEFAULT;
       public          postgres    false    218    217    218            u           2604    16430    wpisy wpis_id    DEFAULT     n   ALTER TABLE ONLY public.wpisy ALTER COLUMN wpis_id SET DEFAULT nextval('public.wpisy_wpis_id_seq'::regclass);
 <   ALTER TABLE public.wpisy ALTER COLUMN wpis_id DROP DEFAULT;
       public          postgres    false    216    215    216                      0    16469 	   kategorie 
   TABLE DATA           B   COPY public.kategorie (kategoria_id, kategoria_tytul) FROM stdin;
    public          postgres    false    220   �.                 0    16489 
   komentarze 
   TABLE DATA           �   COPY public.komentarze (komentarz_id, komentarz_wpis_id, komentarz_data, komentarz_zatwierdzony, komentarz_autor_id, komentarz_tresc) FROM stdin;
    public          postgres    false    222   /                 0    16440    uzytkownicy 
   TABLE DATA           ~   COPY public.uzytkownicy (uzytkownik_id, uzytkownik_imie, uzytkownik_nazwisko, uzytkownik_email, uzytkownik_haslo) FROM stdin;
    public          postgres    false    218   �/                 0    16427    wpisy 
   TABLE DATA           �   COPY public.wpisy (wpis_id, wpis_tytul, wpis_status, wpis_data_opublikowania, wpis_odblokuj_komentarze, wpis_autor_id, wpis_kategoria_id, wpis_plik, wpis_tresc) FROM stdin;
    public          postgres    false    216   D1       )           0    0    kategorie_kategoria_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.kategorie_kategoria_id_seq', 36, true);
          public          postgres    false    219            *           0    0    komentarze_komentarz_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.komentarze_komentarz_id_seq', 15, true);
          public          postgres    false    221            +           0    0    uzytkownicy_uzytkownik_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.uzytkownicy_uzytkownik_id_seq', 25, true);
          public          postgres    false    217            ,           0    0    wpisy_wpis_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.wpisy_wpis_id_seq', 62, true);
          public          postgres    false    215            �           2606    16476    kategorie kategorie_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.kategorie
    ADD CONSTRAINT kategorie_pkey PRIMARY KEY (kategoria_id);
 B   ALTER TABLE ONLY public.kategorie DROP CONSTRAINT kategorie_pkey;
       public            postgres    false    220            �           2606    16494    komentarze komentarze_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.komentarze
    ADD CONSTRAINT komentarze_pkey PRIMARY KEY (komentarz_id);
 D   ALTER TABLE ONLY public.komentarze DROP CONSTRAINT komentarze_pkey;
       public            postgres    false    222            ~           2606    16445    uzytkownicy uzytkownicy_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.uzytkownicy
    ADD CONSTRAINT uzytkownicy_pkey PRIMARY KEY (uzytkownik_id);
 F   ALTER TABLE ONLY public.uzytkownicy DROP CONSTRAINT uzytkownicy_pkey;
       public            postgres    false    218            |           2606    16432    wpisy wpisy_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.wpisy
    ADD CONSTRAINT wpisy_pkey PRIMARY KEY (wpis_id);
 :   ALTER TABLE ONLY public.wpisy DROP CONSTRAINT wpisy_pkey;
       public            postgres    false    216            �           2606    16497 +   komentarze komentarz_autor_id_uzytkownik_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.komentarze
    ADD CONSTRAINT komentarz_autor_id_uzytkownik_id FOREIGN KEY (komentarz_autor_id) REFERENCES public.uzytkownicy(uzytkownik_id) NOT VALID;
 U   ALTER TABLE ONLY public.komentarze DROP CONSTRAINT komentarz_autor_id_uzytkownik_id;
       public          postgres    false    3198    222    218            �           2606    16502 $   komentarze komentarz_wpis_id_wpis_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.komentarze
    ADD CONSTRAINT komentarz_wpis_id_wpis_id FOREIGN KEY (komentarz_wpis_id) REFERENCES public.wpisy(wpis_id) NOT VALID;
 N   ALTER TABLE ONLY public.komentarze DROP CONSTRAINT komentarz_wpis_id_wpis_id;
       public          postgres    false    222    3196    216            �           2606    16446 !   wpisy wpis_autor_id_uzytkownik_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.wpisy
    ADD CONSTRAINT wpis_autor_id_uzytkownik_id FOREIGN KEY (wpis_autor_id) REFERENCES public.uzytkownicy(uzytkownik_id) NOT VALID;
 K   ALTER TABLE ONLY public.wpisy DROP CONSTRAINT wpis_autor_id_uzytkownik_id;
       public          postgres    false    3198    216    218            �           2606    16481 $   wpisy wpis_kategoria_id_kategoria_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.wpisy
    ADD CONSTRAINT wpis_kategoria_id_kategoria_id FOREIGN KEY (wpis_kategoria_id) REFERENCES public.kategorie(kategoria_id) NOT VALID;
 N   ALTER TABLE ONLY public.wpisy DROP CONSTRAINT wpis_kategoria_id_kategoria_id;
       public          postgres    false    216    3200    220               X   x�32��K-WHN,IM�/��22G�+�rY�E��,��!��!�adlbjfnai�el �4 .#T,�P	p�q:�+p��qqq �� P         �   x�m��
�0���S�&Kg�E=�)hA/cTQ�I�����N�h�I���B��'QL�`�s8V'u6��̨�Aɠe��u�f��P�mT��=o�Ҫk�=���(�܅�'�8 �~���d�h"�?�W��n��BYKS��ڪ�#�4��B��~�^4��c�|�.ZYW��I@��_�,�l�b�,�L�p��{�� ���oe         >  x�e��n�P@���9\��e��dj� XEӤ�e�[d��}��}�jӮܝouA&�P�C��=tp��@	T>ƻ�;]����̦��;��'l����ngs�pP�Ÿ��zi�!;��,�:�"��Ya�
J�f�n�P�\<�8�@/�������A*�͸|�䶎�IxX��Ն���gA���-��1umj8�!2 Cf���J(��'x~�!���4O*fk�d)i�)�F�\'�i�t�-Z0�.:�dTTa�\?�k���Dգq����ܻZq�"p,�K
����^�t��ayΨ�;���C,)��0�a�q�         �	  x��Y�R9}��
�y&���m<1/�xq�wm�1��� �!�ԍ�.�*	~���ړ����n����80�U��v�d*y1������?���V���y6ۛ�?�{�l6��l�������lta�׶4�O����Y^���|v8��}ooz�Zf����n�ީUӹ���}��V������Wq�E{Q�{�&�ه�9Q��O��ו�>k���-6KF7J=�eW�E��h�­�=̲uU��Mk*eW���3Ԟ�~����Mٴ��N�ʸ�*o����8�*]X��z�Li�36(c}W5�T+l�un[��)�T��F�6���Z+]�/^O�+�v�KUas5��k߹[k�O����|B�ie�x�o�ӝZ����[Ӷ8<�}�����v%}�Su,��+z��ܫ<(`�e��g:���W*ou=~(�_�����5�Zh��K:�M�)��Z:{�ga�ԭ/W�ig��zu��ne��-�����#rA8��e��l����ש�;��K���tʱ���l]�Ԫk
�TQ���M���@+]A-l
�г��(�������B@�2W�*��!��x=Z=U��:ǓJ;[��6�.����p�-`T	����<ϡ [���>�]�>_��������ϰ�BD���oW�e� �.M� �Sun�(S� f���c��R�u��M�	�Q��P��������y)������)���[DD���v��h9A���Sb�BضUNjr� ��gF�B�W޴+���j;M������.�`��#��`�qv�j�E�� q��8K�HɝX�R�:�؏J�@�R-Z,��dʧ�u!q^���H��hQ�M�t�����O��{�%Ţ��.��W=�~xf��2'�T�cJ
�"c�����ִV�8�q�S�*Į7�� ��Z��G�
2tB��<�KJ�ȡH����[ ��D/D�{�!"�is�˔%<g:Ҵ�N�a�8E���B��=�u�M!�?�*RR���@1^*����=2�Nu�$$�4�x�:�L:$r#S�v�һ�	Ey����G������H�8�3�u8�w�7x'`�t(� t�กq[Zԉ�� 3�5(�+��_be����TA�2>��َ3�;�08�� M�g�3mA�)�C`2Kʝ��o��gS������T��,,���v�j��iմ�v���e�9P���Z��՚xBG;������F�}?�J)���*�	���ވOh2�M�^^�6r����$R#Yő���ս,54t�B�.��h������k�O �ܨ�>��$��N�"����}?M�P�?��
 0A'��G 3R���H?�N���!�Ê3)0T|����%9�$�ԧw��j�n��J����crgm" JA����zRh+mrT�n\t��E�T��ƣ��rA��x������p��>�`o���@��0G�I���a�.Ц�"�!���mHSE���Z<��"�f�T��rU�H�8��@�A�����>@��"t[�Z�W!$��~����.�Hp�ޏ?�>5qC������\o���e��gS>�_� �ԅ(l�>z����-bl���M.��2��Y+�kz?���!t?��A�'��9�)�\1����/	��ka��
��Ͼ6w;j���{B$����J��� =T@�r�cgtB��q�_�l�b/{>��2k���E�99=�x�g��v�n���������g[Y�T���W��4���Ҷ=���Gu�Ώ�~:>U?<y*�y�T=9i�j���WC�ڻ�����xU�+�^ѷ'?�29��ΎO��}�������l���_�L泌U��jm�LV��~�d�O�:��-���y��×?O�D���ڽYp-kA��d�W������\[����C:S������ |˦�zmǡ:�e.;�D�~�[3�e?쬚k�,>n�9<���o������,���$�%��v�:���E�ٞ�g������<*Ue�Q��D���*�b
fd�cߗwn�!�l��8��zS�,1{����r����н��Zs��6 �� ��M�(�S���N�#R�=Ux������|��4��5�e�l/�"��[�$B��Њ� ���q<+T���q��;`���o��p�l"���;*�n�d����&�!_�w�>��K�胇�A�}����TJ��~�q�ǳ�x�J.@���^��`p?A��ײ�Hv����?��]����@�Jkjb*�g����4�3_�)�	��	)�oJ�yEj��yb����Yu�u�XTC3��W�-_�Is��Ak�}�?��%����!D��>�2���?�ެ���~x��yc S� ��!�����N��Ea%L�]��f�~#�
1'ƫ7���I/��p��.7��7�)��W�jpC�nm��Hq>(�B�6�o
�oܣDM�	���d��=�ƾ�b:�L��@!�     