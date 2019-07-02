PGDMP         0                 w           Gioielleria    11.3    11.3 4    I           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            J           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            K           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            L           1262    16400    Gioielleria    DATABASE     �   CREATE DATABASE "Gioielleria" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Italian_Italy.1252' LC_CTYPE = 'Italian_Italy.1252';
    DROP DATABASE "Gioielleria";
             postgres    false            M           0    0    DATABASE "Gioielleria"    COMMENT     R   COMMENT ON DATABASE "Gioielleria" IS 'Database che contiene i dati dei gioielli';
                  postgres    false    2892            �            1259    17230    anello    TABLE     �   CREATE TABLE public.anello (
    idprodotto integer NOT NULL,
    raggio double precision NOT NULL,
    pietra boolean NOT NULL
);
    DROP TABLE public.anello;
       public         postgres    false            �            1259    17238 	   bracciale    TABLE     �   CREATE TABLE public.bracciale (
    idprodotto integer NOT NULL,
    lunghezza double precision NOT NULL,
    spessore double precision NOT NULL,
    larghezza double precision NOT NULL
);
    DROP TABLE public.bracciale;
       public         postgres    false            �            1259    16985    cliente    TABLE     �   CREATE TABLE public.cliente (
    idcliente integer NOT NULL,
    nome character varying NOT NULL,
    cognome character varying NOT NULL,
    numerotelefono character varying
);
    DROP TABLE public.cliente;
       public         postgres    false            �            1259    16983    cliente_idcliente_seq    SEQUENCE     �   CREATE SEQUENCE public.cliente_idcliente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.cliente_idcliente_seq;
       public       postgres    false    197            N           0    0    cliente_idcliente_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.cliente_idcliente_seq OWNED BY public.cliente.idcliente;
            public       postgres    false    196            �            1259    25716    collana    TABLE     �   CREATE TABLE public.collana (
    idprodotto integer NOT NULL,
    lunghezza double precision NOT NULL,
    spessore double precision NOT NULL,
    ciondolo boolean NOT NULL
);
    DROP TABLE public.collana;
       public         postgres    false            �            1259    17393    fattura    TABLE       CREATE TABLE public.fattura (
    dataemissione character varying NOT NULL,
    importo double precision NOT NULL,
    idordine integer NOT NULL,
    idcliente integer NOT NULL,
    nomecliente character varying NOT NULL,
    nomeprodotto character varying
);
    DROP TABLE public.fattura;
       public         postgres    false            �            1259    17427    immagini    TABLE     �   CREATE TABLE public.immagini (
    idimmagine integer NOT NULL,
    immagine bytea NOT NULL,
    idprodotto integer NOT NULL
);
    DROP TABLE public.immagini;
       public         postgres    false            �            1259    17425    immagini_idimmagine_seq    SEQUENCE     �   CREATE SEQUENCE public.immagini_idimmagine_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.immagini_idimmagine_seq;
       public       postgres    false    206            O           0    0    immagini_idimmagine_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.immagini_idimmagine_seq OWNED BY public.immagini.idimmagine;
            public       postgres    false    205            �            1259    17312    ordine    TABLE       CREATE TABLE public.ordine (
    idordine integer NOT NULL,
    idprodotto integer,
    dataemissione character varying NOT NULL,
    datascadenza character varying NOT NULL,
    tipologia character varying NOT NULL,
    idcliente integer NOT NULL,
    descrizione text
);
    DROP TABLE public.ordine;
       public         postgres    false            �            1259    17310    ordine_idordine_seq    SEQUENCE     �   CREATE SEQUENCE public.ordine_idordine_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.ordine_idordine_seq;
       public       postgres    false    203            P           0    0    ordine_idordine_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.ordine_idordine_seq OWNED BY public.ordine.idordine;
            public       postgres    false    202            �            1259    25703 	   orecchino    TABLE     �   CREATE TABLE public.orecchino (
    idprodotto integer NOT NULL,
    spessore double precision NOT NULL,
    altezza double precision NOT NULL,
    tipologiaorecchino character varying NOT NULL
);
    DROP TABLE public.orecchino;
       public         postgres    false            �            1259    17220    prodotto    TABLE     x  CREATE TABLE public.prodotto (
    idprodotto integer NOT NULL,
    prezzo double precision NOT NULL,
    peso double precision NOT NULL,
    materiale character varying NOT NULL,
    genere character varying NOT NULL,
    venduto boolean DEFAULT false NOT NULL,
    nomegioiello character varying NOT NULL,
    nometabella character varying NOT NULL,
    descrizione text
);
    DROP TABLE public.prodotto;
       public         postgres    false            �            1259    17218    prodotto_idprodotto_seq    SEQUENCE     �   CREATE SEQUENCE public.prodotto_idprodotto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.prodotto_idprodotto_seq;
       public       postgres    false    199            Q           0    0    prodotto_idprodotto_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.prodotto_idprodotto_seq OWNED BY public.prodotto.idprodotto;
            public       postgres    false    198            �
           2604    16988    cliente idcliente    DEFAULT     v   ALTER TABLE ONLY public.cliente ALTER COLUMN idcliente SET DEFAULT nextval('public.cliente_idcliente_seq'::regclass);
 @   ALTER TABLE public.cliente ALTER COLUMN idcliente DROP DEFAULT;
       public       postgres    false    196    197    197            �
           2604    17430    immagini idimmagine    DEFAULT     z   ALTER TABLE ONLY public.immagini ALTER COLUMN idimmagine SET DEFAULT nextval('public.immagini_idimmagine_seq'::regclass);
 B   ALTER TABLE public.immagini ALTER COLUMN idimmagine DROP DEFAULT;
       public       postgres    false    206    205    206            �
           2604    17315    ordine idordine    DEFAULT     r   ALTER TABLE ONLY public.ordine ALTER COLUMN idordine SET DEFAULT nextval('public.ordine_idordine_seq'::regclass);
 >   ALTER TABLE public.ordine ALTER COLUMN idordine DROP DEFAULT;
       public       postgres    false    202    203    203            �
           2604    17223    prodotto idprodotto    DEFAULT     z   ALTER TABLE ONLY public.prodotto ALTER COLUMN idprodotto SET DEFAULT nextval('public.prodotto_idprodotto_seq'::regclass);
 B   ALTER TABLE public.prodotto ALTER COLUMN idprodotto DROP DEFAULT;
       public       postgres    false    198    199    199            >          0    17230    anello 
   TABLE DATA               <   COPY public.anello (idprodotto, raggio, pietra) FROM stdin;
    public       postgres    false    200   G<       ?          0    17238 	   bracciale 
   TABLE DATA               O   COPY public.bracciale (idprodotto, lunghezza, spessore, larghezza) FROM stdin;
    public       postgres    false    201   )C       ;          0    16985    cliente 
   TABLE DATA               K   COPY public.cliente (idcliente, nome, cognome, numerotelefono) FROM stdin;
    public       postgres    false    197   FC       F          0    25716    collana 
   TABLE DATA               L   COPY public.collana (idprodotto, lunghezza, spessore, ciondolo) FROM stdin;
    public       postgres    false    208   �C       B          0    17393    fattura 
   TABLE DATA               i   COPY public.fattura (dataemissione, importo, idordine, idcliente, nomecliente, nomeprodotto) FROM stdin;
    public       postgres    false    204   J       D          0    17427    immagini 
   TABLE DATA               D   COPY public.immagini (idimmagine, immagine, idprodotto) FROM stdin;
    public       postgres    false    206   pJ       A          0    17312    ordine 
   TABLE DATA               v   COPY public.ordine (idordine, idprodotto, dataemissione, datascadenza, tipologia, idcliente, descrizione) FROM stdin;
    public       postgres    false    203   �J       E          0    25703 	   orecchino 
   TABLE DATA               V   COPY public.orecchino (idprodotto, spessore, altezza, tipologiaorecchino) FROM stdin;
    public       postgres    false    207   K       =          0    17220    prodotto 
   TABLE DATA               �   COPY public.prodotto (idprodotto, prezzo, peso, materiale, genere, venduto, nomegioiello, nometabella, descrizione) FROM stdin;
    public       postgres    false    199   JK       R           0    0    cliente_idcliente_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.cliente_idcliente_seq', 577, true);
            public       postgres    false    196            S           0    0    immagini_idimmagine_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.immagini_idimmagine_seq', 64, true);
            public       postgres    false    205            T           0    0    ordine_idordine_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.ordine_idordine_seq', 31, true);
            public       postgres    false    202            U           0    0    prodotto_idprodotto_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.prodotto_idprodotto_seq', 2608, true);
            public       postgres    false    198            �
           2606    16993    cliente cliente_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (idcliente);
 >   ALTER TABLE ONLY public.cliente DROP CONSTRAINT cliente_pkey;
       public         postgres    false    197            �
           2606    25720    collana collana_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.collana
    ADD CONSTRAINT collana_pkey PRIMARY KEY (idprodotto);
 >   ALTER TABLE ONLY public.collana DROP CONSTRAINT collana_pkey;
       public         postgres    false    208            �
           2606    17400    fattura fattura_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.fattura
    ADD CONSTRAINT fattura_pkey PRIMARY KEY (idordine);
 >   ALTER TABLE ONLY public.fattura DROP CONSTRAINT fattura_pkey;
       public         postgres    false    204            �
           2606    17320    ordine ordine_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.ordine
    ADD CONSTRAINT ordine_pkey PRIMARY KEY (idordine);
 <   ALTER TABLE ONLY public.ordine DROP CONSTRAINT ordine_pkey;
       public         postgres    false    203            �
           2606    25710    orecchino orecchino_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.orecchino
    ADD CONSTRAINT orecchino_pkey PRIMARY KEY (idprodotto);
 B   ALTER TABLE ONLY public.orecchino DROP CONSTRAINT orecchino_pkey;
       public         postgres    false    207            �
           2606    17229    prodotto prodotto_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.prodotto
    ADD CONSTRAINT prodotto_pkey PRIMARY KEY (idprodotto);
 @   ALTER TABLE ONLY public.prodotto DROP CONSTRAINT prodotto_pkey;
       public         postgres    false    199            �
           2606    17233    anello anello_idprodotto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.anello
    ADD CONSTRAINT anello_idprodotto_fkey FOREIGN KEY (idprodotto) REFERENCES public.prodotto(idprodotto);
 G   ALTER TABLE ONLY public.anello DROP CONSTRAINT anello_idprodotto_fkey;
       public       postgres    false    199    200    2737            �
           2606    17241 #   bracciale bracciale_idprodotto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.bracciale
    ADD CONSTRAINT bracciale_idprodotto_fkey FOREIGN KEY (idprodotto) REFERENCES public.prodotto(idprodotto);
 M   ALTER TABLE ONLY public.bracciale DROP CONSTRAINT bracciale_idprodotto_fkey;
       public       postgres    false    199    2737    201            �
           2606    25721    collana collana_idprodotto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.collana
    ADD CONSTRAINT collana_idprodotto_fkey FOREIGN KEY (idprodotto) REFERENCES public.prodotto(idprodotto);
 I   ALTER TABLE ONLY public.collana DROP CONSTRAINT collana_idprodotto_fkey;
       public       postgres    false    199    208    2737            �
           2606    17434 !   immagini immagini_idprodotto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.immagini
    ADD CONSTRAINT immagini_idprodotto_fkey FOREIGN KEY (idprodotto) REFERENCES public.prodotto(idprodotto);
 K   ALTER TABLE ONLY public.immagini DROP CONSTRAINT immagini_idprodotto_fkey;
       public       postgres    false    199    206    2737            �
           2606    17326    ordine ordine_idcliente_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ordine
    ADD CONSTRAINT ordine_idcliente_fkey FOREIGN KEY (idcliente) REFERENCES public.cliente(idcliente);
 F   ALTER TABLE ONLY public.ordine DROP CONSTRAINT ordine_idcliente_fkey;
       public       postgres    false    197    203    2735            �
           2606    17321    ordine ordine_idprodotto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ordine
    ADD CONSTRAINT ordine_idprodotto_fkey FOREIGN KEY (idprodotto) REFERENCES public.prodotto(idprodotto);
 G   ALTER TABLE ONLY public.ordine DROP CONSTRAINT ordine_idprodotto_fkey;
       public       postgres    false    203    2737    199            �
           2606    25711 #   orecchino orecchino_idprodotto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.orecchino
    ADD CONSTRAINT orecchino_idprodotto_fkey FOREIGN KEY (idprodotto) REFERENCES public.prodotto(idprodotto);
 M   ALTER TABLE ONLY public.orecchino DROP CONSTRAINT orecchino_idprodotto_fkey;
       public       postgres    false    2737    199    207            >   �  x�=�K�d7ך�/)��������Pq��f�:����5��j�5�vҨ�i�z�֨ϩ�.�{���!9�C��Z��\C�xj������!w<k�O�����3�;�wLw<ߘ�x�1��֘�x5�;�9�;�5�;���=�;�g,w��X�x����]c�㫱��i,w|s,w|k,w|=��=��3��;�ױ�kt;���I��9�uZ�?���t����q���߿�����W]�vGո�Q�;j������x��; �q`<� ����0w ���x��; �u`�� ����0^w ���x��; �u`�� ����0>w ������; �s`|� ����0�r	d��Ш�5�Q�{��.AG]n��\u�@�rYs��ۀ��m�R�6p�r�T�`�ܶ��׾�����>w�����_��}�l�'��|�p�G� �|�t�g�`�|�xʇ���|�|ʧ��|���ǿ �|����`�|������� ���਼��#� ����3�`����C������S�੼��c� ����s�`���ʃ�����ʓ���n`U����#ݎ�y ��рU����F4`�G���X�h�*�DVy(��Kѵ��Vy+��cрU^���\4`����<X��h�*OFVy3�ʣ��O�� �<X��h�*GVy9���рUގ��x4`�ף�<X���_<�VyA��ҀUސ��4`�W��<#X�i�*IVyI��S�k?�n[��u`�[Ҁ%oI��%X�4`�[Ҁ%oI��%X�4`�[Ҁ%oI�~��X�4`�[Ҁ%oI��%X�4`�[Ҁ%oI��%���[�[�%���m���6oIo���voIo����oIo��4`�[Ҁ%oI��%�l]q`�[Ҁ%oI��%X�4`�[Ҁ%oI��%X�4`�[Ҁ%oI�ێ�X�4`�[Ҁ%oI��%X�4`�[Ҁ%oI�~[�=?���>�����O��~ќ��7�i���^�_�K�⒪��*.��K�⒪��*.��K�⒪��*.��K�⒪��*.��K�⒪��*.��K�⒪��*.��K�⒪��*.��K�⒪��*.��K�⒪��*.��K�⒪������)V)�*�X���b�R�R�UJ�J)V)�*�X���b�R�R�UJ�J)V)�*�X���b�R�R�UJ�J)V)�*�X���b�R�R�UJ�J)V)�*�X���b�R�R�UJ�J)V)�*�X���b�ұJ�X�t�R:V)���UJ�*�c��X%1VI�Uc��X%1VI�U��*��Jb���$�*��Jb���$�*��J���Jb���$�*��Jb���$�*��Jb�Rb��X%1VI�Uc��X%1VI�Uc��X%4�*��Jb���$�*��Jb���$�*��J��Uc��X%1VI�Uc��X%1VI�Uc�\U���$�*��Jb���$�*��Jb����rc��X%1VI�Uc��X%1VI�Uc��X%��$�*��Jb���$�*��Jb���$�*Y�X%1VI�Uc��X%1VI�Uc��X%1V���*��Jb���$�*��Jb���$�*��J�c���*5�Uj��<V�y�R�X��J�c���*5�Uj��<V�y�R�X��J�c���*5�Uj��<V�y�R�X��J�c���*5�Uj��<V�y�R�X��J�c���*5�Uj��<V�y�������?�C��      ?      x������ � �      ;   �   x�]�;
�0��Z{� �Crj��p�B�,�����-�kFx	k;j��k�����O��d3�d����8-��D"juZQ��	�9m�mjF��Ψ�Ԃ�8]P��2��NG�q�����ۻ��+��}��gb      F      x�Mڱ��VD��W�q��"ً�p��y %?{�b��r�Ǔ���*w�?��_�����h����Â��,(ʂ��,(ʂ��,x,x,x,x,x,x,x,x,x,x,x-x-x-x-x-x-x-x-x-x-hڂ��-hڂ��-hڂXbA,�� ĂX>>>>>>>>>>Ƃ�`,Ƃ�`,Ƃ�`-Xւ�`-Xւ�`-X΂��,8΂��,84�����������������������������������������������������y,������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������},������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������{,������������������������������������������������������������������������������������������������������������������������������������������������������}�����}���c|�ʂ��,(ʂ��,(ʂ��������������������ൠ-hڂ��-hڂ��-hbA,�� ĂXbA,�,�,�,�,�,�,�,�,�,�,Ƃ�`,Ƃ�`,Ƃ�`-Xւ�`-Xւ�`-8΂��,8΂��,84�4�4�4�4�4�4�4�4�4�4�4�4�4�4�4�4�4�4�4�4�4�4�4�4�4�4�4�4�4�4�4�4�4�4�4�4�4�4�4�4�4�4�4�4�4�4�4�u��Kl��.�]b��v���%�Kl��.�]b��v���%�Kl��.�]b��v���%�Kl��.�]b��v���%�Kl��.�]b��v���%�Kl��.�]b��v���%�Kl�s{����^��:�׹���un�s{����^��:�׹���un�s{����^��:�׹���un�s{����^��:�׹���un�s{����^��:�׹���un�s{����^��:�׹���un�s{�[[����hb41�M�&F����hb41�M�&F����hb41�M�&F��y,��hb41�M�&F����hb41�M�&F����hb41�M�&F����hb41�M�&F����hb41�M�&F����hb41�M�&F����hb41�M�&F����hb41�M�&F����hb41�M�&F�����W��_a��=���W��_a��=���W��_a������K�6      B   Y   x�30�50�520��46�46�46��t��L�+I���M5R�r����@|NǼԜ�|C3.�VC3N�>b��#k62�4�$Z�W� �33      D      x������ � �      A   y   x���;�0E�zf� �|�5;����K��,+EV�h�kλ�������b��J�dk�[��Vssr��'�x`m騕�9�ʥW���T��u��Q��α���f��pz ��uDa      E   $   x�3461�4#�����̼|��Ԣ�T�=... �`;      =      x���ͪ��q��������g(40��A8
1���	��To�]���x��)�ֱ�����y�3>���_�����������?����O�������_~�c��oߞo�����Ͽ��?�~��ݿ��������|�������|��/���������;`��l���x�a���d�Ǎ�>��6���|������`��Ǔ����'�6���Yң'��q���I��8Kz���?��=�O��GOz�,�ѓ^�	���I��Kz���~�%�=�u�`I{Oz�O���'��	�����x�%�=��O���'��I����w>ɒ����O���'�ד,i�I��$K:z��<ɒ���y�dIGO�ؓ,��I��$K:z�ǟɒ���g���'}�,��I��L�t���z&K:z�g?�%�-�x�g��r�{&.��g��2��?����Y,��} �ł���Xp���z.O��b���<�����+�>�%={�f�bIϞt�g�%={ҵ�m���I�z�Yҳ']��fIϞt�g�%={ҵ�m���I�z�Yҫ']��fI��t�g�%�zҵ�m���I�z�Yҫ']��aI��t�g�%�zҵ����I�zvXҫ']��aI��t�g�%�{ҵ����I�zvXһ']��aI�t�g�%�{ҵ��ˢ�=����eY�u-h���w�64{Yڻ�]+��,����^���yגf/���kK��%~zⵦ��"?=����e���y-jf,��3�M͌e~z浪���Oϼv53���ײf�2?=����X�����T��B����͌���c�3�呷�^k���_��J$oO�V=I�}-{6(��=�Z�lP(y{���٠T���k�Aӷ�~-}6h��ӯ��8�u�Z���Xױ���8�u�Z��Y����8�u#�Z �#YW���8�u'�Z�CY���5�(�Y���E�(�Yײ�U�(�Y���e�(�Y��u�(�Y7����(�YW����(�Yw����(�Y�����(�Y�����(�Y׳���(�Y�����(�Y����(�Y7���(�YW���(�Yw��%�(�Y���5�(�Y���=�(�Y״�E�(�Y���M�(�Y��U�(�Y7��]�(�YW��e�(�Yw��m�(�Y���u�(�Y���}�(�Y׵���(�Y�����(�Y����(�Y7����(�YW����(��?8[m�6i������ڜu�����u������u����
�u�����u����*�u����:�u����J�u����Z�u����j�u����z�u������u������u������u������u����ʝu����ڝu�����u������u����
�u�����u����*�u����:�u����J�u����Z�u����j�u����z�u������u������u������u������u����ʞu����ڞu��{���g]�����Y罼�*�{�}/��u��{���g]�����Y'���*J|֍/�u��{���g]�����Yg���*�|֝/:�u��{���g]�����Y����*J}֭/Z��֗�PE�ot��{���7���=TQ��������n}yU��F����*j}�[_�C��ѭ/Z��֗�PE�ot��{���7���=TQ��������n}yU��F����*j}�[_�C��ѭ/Z��֗�PE�ot��{���7���=TQ����������=T�/�u��{���ӿ�*��n}yU��q��������=T��u��{��_��֗�Pſ&׭/Q�[_�C��ѭ/Z��֗�PE�ot��{���7���=TQ��������n}yU��F����*j}�[_�C��ѭ/Z��֗�PE�ot��{���7���=TQ��������n}yU��F����*j}�[_�C��ѭ/Z��֗�PE�ot��{���7���=T���{������~��o����o?�_�?������;y�I����䀓&L:��d�I&N�09�d
�NNar��%L8)th��W�Є2�CvȄM�!:4a�L�Є2�CvȄM�!:4a�L�Є2�CvȄ-ء!th��CvhZ�CC�ЂB���:�`��С;4�-ء!th��Cvȅm�!:�a�\�Іr�Cvȅm�!:�a�\�Іr�Cvȅ�!:t`�B�Ё
�Cv(�ء:t`�B�Ё
�Cv(�ء:t`��w�_ء��v(y���J�!a��w�_ء��v(y���J�!a��w�_ء��v(��P
2ء)t�`���!��B�vh
2ء)t�`���!��B�vh
2ء)th�M�Cvh	�CK�ЀZB���:4`��С;��ء%th�-�Cvh	rء%t�a���!��B�vhrء-t�a���!��B�vhrء-t�a��С��B�v�
ء#t(`��С�:B�v�
ء#t(`��С�:B�vHpj�N=�v��Kpj�N��v��Kpj�N��v��Kpj�N��v��Kpj�N��v��Kpj�N��v��Kpj�N��v��Kpj�N��v��Kpj�N��v��Kpj�N��v��Kpj�N��v��Kpj�N��v��Kpj�N���!��Kpj�N��v��Kpj�N��v��Kpj�N��v��Kpj�N��v��Kpj�N��v��Kpj�N��v��Kpj�N��v��Kpj�N��v��Kpj�N��v��Kpj�N��v��Kpj�N��v��Kpj�N��v��Kp�N����Kp�N����Kp�N����Kp�N����Kp�N����Kp�N����Kp�N����Kp�N����Kp�N����Kp�N����Kp�N����Kp�N����A�I�CЩ����z	NЩ����z	NЩ����z	NЩ����z	NЩ����z	NЩ����z	NЩ����z	NЩ����z	NЩ����z	NЩ����z	NЩ����z	NЩ����z	NЩ����z	NЩ����zNЩ����zNЩ����zNЩ����zNЩ����zNЩ����zNЩ����zNЩ����zNЩ����zNЩ����zNЩ����zNЩ����zNЩ�:�zNЩ����zNЩ����zNЩ����zNЩ����zNЩ����zNЩ����zNЩ����zNЩ����zNЩ����zNЩ����zNЩ����zNЩ����zN�Щ���	�zN�Щ���	�zN�Щ���	�zN�Щ���	�zN�Щ���	�zN�Щ���	�zN�Щ���	�zN�Щ���	�zN�Щ���	�zN�Щ���	�zN�Щ���	�zN�Щ�����34)t:��:�So��:��:�So��:��:�So��:��:�So��:��:�So��:��:�So��:��:�So��:��:�So��:��:�So��:��:�So��:��:�So��:��:�So��:��:�So��:��:�S��:��:�S��:��:�S��:��:�S��:��:�S��:��:�S��:��:�S��:��:�S��:��:�S��:��:�S��:��:�S��:��:�S��:�B��S��:��:�S��:��:�S��:��:�S��:��:�S��:��:�S��:��:�S��:��:�S��:��:�S��:��:�S��:��:�S��:��:�S��:��:�S��'t�#8��N}��Щ���:��zB�>�SO��Gp�	��N=�S��'t�#8��N}��Щ���:��zB�>�SO��Gp�	��N=�S��'t�#8��N}��Щ���:��zB�>�SO��Gp�	��N}߾C�B��S��'t�#8��N}��Щ���:��zB�>�SO��Gp�	��N=�S��'t�#8��N}��Щ���    :��zB�>�SO��Gp�	��N=�S��'t�#8��N}��Щ���:��zB�>�SO��Gp�	��N=�S��'t�#8��N}��ȩ�+8�DN]�B��Sפ�!��5)t9uM
BN]�B��Sפ�!��5)t9uM
BN]�B��S�Wpꉜ�&�!��I�CȩkR�r�:���&�!��I�CȩkR�r�:���&�!����9uM
BN]�B��Sפ�!��5)t9uM
BN]�B��Sפ�!��5)t9uM
BN=^��'r�:���&�!��I�CȩkR�r�:���&�!��I�CȩkR�r�:��z��SO��5)t9uM
BN]�B��Sפ�!��5)t9uM
BN]�B��S�$��BN]��C9�x�^ȩk�wh!��Iޡ���&y�r��Zȩk�wh!��Iޡ���&y�r�:���&�!����9uM
BN]�B��Sפ�!��5)t9uM
BN]�B��Sפ�!��5)t9uM
BN=^��r�:4`��^ȩkR�r�:���&�!��I�CȩkR�r�:���&�!����9uM
BN]�B��Sפ�!��5)t9uM
BN]�B��Sפ�!��5)t9uM
BN=^��r�:���&�!��I�CȩkR�r�:���&�!��I�CȩkR�r�:���^ЩMp����^ЩMp����^ЩMp����^ЩMp����^ЩMp����^ЩMp����^ЩMp����^ЩMp����^ЩMp����^ЩMp����^ЩMp����^Щm�Nm�S/��&8��Nm�S/��&8��Nm�S/��&8��Nm�S/��&8��Nm�S/��&8��Nm�S/��&8��Nm�S/��&8��Nm�S/��&8��Nm�S/��&8��Nm�S/��&8��Nm�S/��&8��Nm�S/��&8��Nm�����������1�W��|��F�$}�y{��=z�??c�>��׿&����|�������e��A����5�/~�����ϟ���/��k=�K�4���c����/���g|}�el=�Z���l=�ڄ��l=�Z���l=��{��l=�Zw�m=��r�%=zҵ�:Kz��k�u��ܓ�U�Yң']���GO��`I��t����=�ZS�%=zҵ�Kz��k)���I�.,i�I�
,i�I��,i�I����{ҵgK�{ҵ^&K�{ҵU&K�{ҵL&K�{ҵC&K�{ҵ:&K�{ҵ1&K:zҵ(&K:zҵ&K:zҵ&K:zҵ&��t-��%=���&K:zҵ�M�t��kӛ,��Iׂ7Y�ѓ��n���']��dIgKz��3Y�9��=�%���3Y�}��E����,�t�>��bI���Y,��}`=�%���g����γXҳ']��bIϞt�s�%={ҵ�-���I�>�Yҳ']�ܦ{wO���͒�=���6Kz��k��,�ٓ�}n��WO���͒^=���6Kz��k��,�Փ�}n��WO���Ò^=���Kz��k�;�Փ�}WO���Ò^=���Kz��k�;,�ݓ�}wO���Ò�=���Kz��k��|<��D�����b_O��k��|��D�V���`_O��k��|���D������^_��{޵�}>��z�^k��c��'z��}>��z�G^���c��'z��}>��z�g^���c��'z��}>��z�g^���c��'z��}>��z�g~��J��}h#:ǲ��~��z���h#;%��+�F*w�f�w��T���/E�䩝�ߊ6R�S>��m����v/�H�O��b��J�;Z��QK�	��ӯ�ϸ�uL��״�i�V?��Am��g\�:��Z���ZG�Q�qU�6j4�j�F-��e��ڨ5Ш�YǵQ��Q]��k�VA��f�F-�F��:��Z��ud�U6��6j%4�l֡m�RhTڬSۨ�Ш�YǶQ��Qm��m�VC��f�F-�F��:��Z���ut� U7��6jE4�n��mԒhTެ�ۨ5Ѩ�YǷQ{�Q}��o�E��f�Fm�F�:��}? ��w��+U8�7jY4�p�!nԶhT�SܨuѨ�YǸQ��Q���q�F�g�Fm�FE�:ɍZ���u��3U9�,7ji4�r�an��	)M�Ӝ��h�����hT����h�����hT����h��#���hT�3���h��C���hT�S���h��c���hT�s���������kk4*v���kk4jv���kk4�v���kk4�v���kk4*w���kk4jw���kk4�w���kk4�w��kk4*x�	�kk4jx�����M�3���h��C���hT�S���h��c���hT�s���h�󬃞��hT������h�������hT������h���Þ��hT��Ӟ���M���C�=���PEu�:��=TQ޳�{~U�����C>����PE��:��=TQ�n|~U���#��CE>����PE��:��=TQ��|~U���C��C�>����PE��:��=TQ�n}~U��F�>��*j}�[��C�n\�>��*j}�[��C��ѭ�Z�����PE�ot���7��7k���=TQ��������n}~U��F�>��*j}�[��C��ѭ�Z�����PE�ot��ϝj�~�>�\���w���-j�~�>�\���w��Ͻi�~�>�\���w���Mi�~�>�\��ߥ���F������R4M�[��C�F]�>��*���n}~U�[u���������=T�o�u��{���7���=TQ��������n}~U��F�>��*j}�[��C��ѭ�Z�����PE�ot��{���7���=TQ��������n}~U��F�>��*j}�[��C��ѭ�Z�����PE�ot��{���7���=TQ��������n}~U��F�>�x�؅��^/�z�׋C�^<����x�8���^/�z�׋C�^<����x�8���^/�z�׋C�^<����x�8���^/�z�׋C�^<����x�8���^/�z�׋C�^<����x�8���^/�z�׋C�^<����x�8���^/�z�׋C�^<����x�8���^/�z�׋C�^<����x�8���^/�z�׋C�^<����x�8���^/�z�׋C�^<����x�8���^/�z�׋C�^<����x�8���^/�z�׋C�^<����x�8���^/�L��`����g0Cx��3�!<������t�f�`:|3�g0>��3����L��`����g0Cx��3�!<������t�f�`:|3�g0>��3����L��`����g0Cx��3�!<������t�f�`:|3�g0>��3���y4)t>��3����L��`����g0Cx��3�!<������t�f�`:|3�g0>��3����L��`����g0Cx��3�!<������t�f�`:|3�g0>��3����L��`����g0Cx��3�!<������t�f�`:|3�g0>��3�����:uN�ЩSpj�N��S;t��ڡS����:�v��)8�C�N��:u
N�ЩSpj�N��S;t��ڡS����:�v��)8�C�N��:u
N�ЩSpj�N��S;t��ڡS����:�v��)8�C�N��:u�CЩSpj�N��S;t��ڡS����:�v��)8�C�N��:u
N�ЩSpj�N��S;t��ڡS����:�v��)8�C�N��:u
N�ЩSpj�N��S;t��ڡS����:�v��)8�C�N��:u
N�ЩSp�N��St��:�S����:���)8u@�N��:u
NЩSp�N��St��:�S����:���)8u@�N��:u
NЩSp�N��St��:�S����:���)8u@�N��:u
N}���&�A�N��:u
NЩSp�N��St��:�S����:���)8u@�N��:u
NЩSp�N��St��:�S����:���)8u@�N��:u
NЩSp�N��St��:�S����:���)8u@�N� M   �:u
NЩSp�N=���Sp�N=���Sp�N=���Sp�N=���Sp�N=�����O�}�����_�     