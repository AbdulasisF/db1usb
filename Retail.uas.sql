PGDMP     7    &                z            retail1    15.1    15.1                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16510    retail1    DATABASE     ~   CREATE DATABASE retail1 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_Indonesia.1252';
    DROP DATABASE retail1;
                postgres    false            ?            1259    16516    barang    TABLE     ?   CREATE TABLE public.barang (
    id_barang integer NOT NULL,
    nama_barang character varying(30) NOT NULL,
    harga_barang integer,
    stock_barang integer,
    id_supplier integer
);
    DROP TABLE public.barang;
       public         heap    postgres    false            ?            1259    16531 
   pembayaran    TABLE     ?   CREATE TABLE public.pembayaran (
    id_pembayaran integer NOT NULL,
    tanggal_bayar date,
    total_bayar integer,
    id_transaksi integer
);
    DROP TABLE public.pembayaran;
       public         heap    postgres    false            ?            1259    16521    pembeli    TABLE     ?   CREATE TABLE public.pembeli (
    id_pembeli integer NOT NULL,
    nama_pembeli character varying(30) NOT NULL,
    jenis_kelamin character(1),
    no_telpon character(15),
    alamat character varying(15)
);
    DROP TABLE public.pembeli;
       public         heap    postgres    false            ?            1259    16511    supplier    TABLE     ?   CREATE TABLE public.supplier (
    id_supplier integer NOT NULL,
    nama_supplier character varying(30) NOT NULL,
    no_telpon character(15),
    alamat character varying(100)
);
    DROP TABLE public.supplier;
       public         heap    postgres    false            ?            1259    16526 	   transaksi    TABLE     ?   CREATE TABLE public.transaksi (
    id_transaksi integer NOT NULL,
    id_barang integer,
    id_pembeli integer,
    tanggal date,
    ket character varying(100)
);
    DROP TABLE public.transaksi;
       public         heap    postgres    false                      0    16516    barang 
   TABLE DATA           a   COPY public.barang (id_barang, nama_barang, harga_barang, stock_barang, id_supplier) FROM stdin;
    public          postgres    false    215   ?                 0    16531 
   pembayaran 
   TABLE DATA           ]   COPY public.pembayaran (id_pembayaran, tanggal_bayar, total_bayar, id_transaksi) FROM stdin;
    public          postgres    false    218   ~                 0    16521    pembeli 
   TABLE DATA           ]   COPY public.pembeli (id_pembeli, nama_pembeli, jenis_kelamin, no_telpon, alamat) FROM stdin;
    public          postgres    false    216                    0    16511    supplier 
   TABLE DATA           Q   COPY public.supplier (id_supplier, nama_supplier, no_telpon, alamat) FROM stdin;
    public          postgres    false    214   (                 0    16526 	   transaksi 
   TABLE DATA           V   COPY public.transaksi (id_transaksi, id_barang, id_pembeli, tanggal, ket) FROM stdin;
    public          postgres    false    217   ?       w           2606    16520    barang barang_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.barang
    ADD CONSTRAINT barang_pkey PRIMARY KEY (id_barang);
 <   ALTER TABLE ONLY public.barang DROP CONSTRAINT barang_pkey;
       public            postgres    false    215            }           2606    16535    pembayaran pembayaran_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.pembayaran
    ADD CONSTRAINT pembayaran_pkey PRIMARY KEY (id_pembayaran);
 D   ALTER TABLE ONLY public.pembayaran DROP CONSTRAINT pembayaran_pkey;
       public            postgres    false    218            y           2606    16525    pembeli pembeli_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.pembeli
    ADD CONSTRAINT pembeli_pkey PRIMARY KEY (id_pembeli);
 >   ALTER TABLE ONLY public.pembeli DROP CONSTRAINT pembeli_pkey;
       public            postgres    false    216            u           2606    16515    supplier supplier_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.supplier
    ADD CONSTRAINT supplier_pkey PRIMARY KEY (id_supplier);
 @   ALTER TABLE ONLY public.supplier DROP CONSTRAINT supplier_pkey;
       public            postgres    false    214            {           2606    16530    transaksi transaksi_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.transaksi
    ADD CONSTRAINT transaksi_pkey PRIMARY KEY (id_transaksi);
 B   ALTER TABLE ONLY public.transaksi DROP CONSTRAINT transaksi_pkey;
       public            postgres    false    217                       2606    16541    transaksi fk_barang_transaksi    FK CONSTRAINT     ?   ALTER TABLE ONLY public.transaksi
    ADD CONSTRAINT fk_barang_transaksi FOREIGN KEY (id_barang) REFERENCES public.barang(id_barang) ON DELETE CASCADE;
 G   ALTER TABLE ONLY public.transaksi DROP CONSTRAINT fk_barang_transaksi;
       public          postgres    false    217    3191    215            ?           2606    16546    transaksi fk_pembeli_transaksi    FK CONSTRAINT     ?   ALTER TABLE ONLY public.transaksi
    ADD CONSTRAINT fk_pembeli_transaksi FOREIGN KEY (id_pembeli) REFERENCES public.pembeli(id_pembeli) ON DELETE CASCADE;
 H   ALTER TABLE ONLY public.transaksi DROP CONSTRAINT fk_pembeli_transaksi;
       public          postgres    false    3193    216    217            ~           2606    16536    barang fk_supplier_barang    FK CONSTRAINT     ?   ALTER TABLE ONLY public.barang
    ADD CONSTRAINT fk_supplier_barang FOREIGN KEY (id_supplier) REFERENCES public.supplier(id_supplier) ON DELETE CASCADE;
 C   ALTER TABLE ONLY public.barang DROP CONSTRAINT fk_supplier_barang;
       public          postgres    false    215    214    3189            ?           2606    16551 "   pembayaran fk_transaksi_pembayaran    FK CONSTRAINT     ?   ALTER TABLE ONLY public.pembayaran
    ADD CONSTRAINT fk_transaksi_pembayaran FOREIGN KEY (id_transaksi) REFERENCES public.transaksi(id_transaksi) ON DELETE CASCADE;
 L   ALTER TABLE ONLY public.pembayaran DROP CONSTRAINT fk_transaksi_pembayaran;
       public          postgres    false    3195    218    217               w   x?m?9?0D??}?նY?2?H???Sd???*x?7E????O????AL?q?G?#=9????L??6??\j????}t|?O?ObЯC?o?~??v???]???"K?Zd&r?Y~????UI?         ?   x?E??C1?3?%k???K??#ABh?n?.?>??9??n???}?f??W?2???G{??<?lOS?'?۷i?o???)??m??[~???1=??H?ߙ"?B?w?~????^&<qzսL|???{?x???{?x?9>?1???<?         ?   x?}??N?0???{?,?ڜ$< ӆ?4i?~P???][V? 9?'?[??7:????X(D4??.jr=?D??UL?lNg?٦??i???/L??a??R*R$G?Q\z)q6:/v?????AD%?Wa6????_ R'Mj?????p??f?Q?P̉?#B??׬??khC???^?????/I?d?|??^??N?j???cۘ??H~j???a7(?~??J?d?<?F?ّ??d?e?e?i???%I????         ?   x?u?;?0??>'@????K???"ADB?ۃQ?,?;??i?A@5?g? ??Q?JUw
4hÝ??????q?d????k?{?b?H?6?????kˬ?Xwe??3????̎'^?=???T?뒐???rd?8r??"??Z???         ?   x?E?;
?0D?Zڋ?FO߽?MH???\???d?t???????(?K???||r+?\?j??`4?am?m?f????n??a????i]?]?eݬ??}?J?\??_???F\ȭ?V?r+??hą?Jn%q!??[?F\ȭt???r?_]E\?     