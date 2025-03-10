PGDMP  &                    |         
   db_student    16.2    16.0 H    7           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            8           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            9           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            :           1262    16862 
   db_student    DATABASE     �   CREATE DATABASE db_student WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE db_student;
                postgres    false            ;           0    0    DATABASE db_student    ACL     q   REVOKE ALL ON DATABASE db_student FROM postgres;
GRANT ALL ON DATABASE db_student TO postgres WITH GRANT OPTION;
                   postgres    false    4922            �            1259    16864    tb_description    TABLE     �   CREATE TABLE public.tb_description (
    id_table_description bigint NOT NULL,
    description character varying(80) NOT NULL
);
 "   DROP TABLE public.tb_description;
       public         heap    postgres    false            �            1259    16871    tb_description_content    TABLE     �   CREATE TABLE public.tb_description_content (
    id_table_description_content bigint NOT NULL,
    id_table_description bigint NOT NULL,
    description character varying(80) NOT NULL,
    complement character varying(20) NOT NULL
);
 *   DROP TABLE public.tb_description_content;
       public         heap    postgres    false            �            1259    16870 7   tb_description_content_id_table_description_content_seq    SEQUENCE     �   CREATE SEQUENCE public.tb_description_content_id_table_description_content_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 N   DROP SEQUENCE public.tb_description_content_id_table_description_content_seq;
       public          postgres    false    218            <           0    0 7   tb_description_content_id_table_description_content_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.tb_description_content_id_table_description_content_seq OWNED BY public.tb_description_content.id_table_description_content;
          public          postgres    false    217            �            1259    16863 '   tb_description_id_table_description_seq    SEQUENCE     �   CREATE SEQUENCE public.tb_description_id_table_description_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.tb_description_id_table_description_seq;
       public          postgres    false    216            =           0    0 '   tb_description_id_table_description_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.tb_description_id_table_description_seq OWNED BY public.tb_description.id_table_description;
          public          postgres    false    215            �            1259    16878    tb_educational_institution    TABLE     �   CREATE TABLE public.tb_educational_institution (
    id_educational_institution bigint NOT NULL,
    description character varying(200) NOT NULL
);
 .   DROP TABLE public.tb_educational_institution;
       public         heap    postgres    false            �            1259    16877 9   tb_educational_institution_id_educational_institution_seq    SEQUENCE     �   CREATE SEQUENCE public.tb_educational_institution_id_educational_institution_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 P   DROP SEQUENCE public.tb_educational_institution_id_educational_institution_seq;
       public          postgres    false    220            >           0    0 9   tb_educational_institution_id_educational_institution_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.tb_educational_institution_id_educational_institution_seq OWNED BY public.tb_educational_institution.id_educational_institution;
          public          postgres    false    219            �            1259    16885    tb_permission    TABLE     �   CREATE TABLE public.tb_permission (
    id_permission integer NOT NULL,
    id_educational_institution bigint NOT NULL,
    id_user bigint NOT NULL,
    id_route integer NOT NULL
);
 !   DROP TABLE public.tb_permission;
       public         heap    postgres    false            �            1259    16884    tb_permission_id_permission_seq    SEQUENCE     �   CREATE SEQUENCE public.tb_permission_id_permission_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.tb_permission_id_permission_seq;
       public          postgres    false    222            ?           0    0    tb_permission_id_permission_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.tb_permission_id_permission_seq OWNED BY public.tb_permission.id_permission;
          public          postgres    false    221            �            1259    16892    tb_ra_educational_institution    TABLE     �   CREATE TABLE public.tb_ra_educational_institution (
    id_ra_educational_institution bigint NOT NULL,
    id_educational_institution bigint NOT NULL,
    ra character varying(20) NOT NULL
);
 1   DROP TABLE public.tb_ra_educational_institution;
       public         heap    postgres    false            �            1259    16891 ?   tb_ra_educational_institution_id_ra_educational_institution_seq    SEQUENCE     �   CREATE SEQUENCE public.tb_ra_educational_institution_id_ra_educational_institution_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 V   DROP SEQUENCE public.tb_ra_educational_institution_id_ra_educational_institution_seq;
       public          postgres    false    224            @           0    0 ?   tb_ra_educational_institution_id_ra_educational_institution_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.tb_ra_educational_institution_id_ra_educational_institution_seq OWNED BY public.tb_ra_educational_institution.id_ra_educational_institution;
          public          postgres    false    223            �            1259    16899    tb_route    TABLE     �   CREATE TABLE public.tb_route (
    id_route integer NOT NULL,
    id_method_type bigint NOT NULL,
    route character varying(244) NOT NULL,
    active boolean NOT NULL
);
    DROP TABLE public.tb_route;
       public         heap    postgres    false            �            1259    16898    tb_route_id_route_seq    SEQUENCE     �   CREATE SEQUENCE public.tb_route_id_route_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.tb_route_id_route_seq;
       public          postgres    false    226            A           0    0    tb_route_id_route_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.tb_route_id_route_seq OWNED BY public.tb_route.id_route;
          public          postgres    false    225            �            1259    16906 
   tb_student    TABLE     |   CREATE TABLE public.tb_student (
    id_student integer NOT NULL,
    id_user bigint NOT NULL,
    id_ra bigint NOT NULL
);
    DROP TABLE public.tb_student;
       public         heap    postgres    false            �            1259    16905    tb_student_id_student_seq    SEQUENCE     �   CREATE SEQUENCE public.tb_student_id_student_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.tb_student_id_student_seq;
       public          postgres    false    228            B           0    0    tb_student_id_student_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.tb_student_id_student_seq OWNED BY public.tb_student.id_student;
          public          postgres    false    227            �            1259    16913    tb_user    TABLE     W  CREATE TABLE public.tb_user (
    id_user bigint NOT NULL,
    id_user_type bigint NOT NULL,
    password character varying(500) NOT NULL,
    name character varying(500) NOT NULL,
    email character varying(244) NOT NULL,
    phonenumber character varying(14) NOT NULL,
    cpf character varying(11) NOT NULL,
    active boolean NOT NULL
);
    DROP TABLE public.tb_user;
       public         heap    postgres    false            �            1259    16912    tb_user_id_user_seq    SEQUENCE     |   CREATE SEQUENCE public.tb_user_id_user_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.tb_user_id_user_seq;
       public          postgres    false    230            C           0    0    tb_user_id_user_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.tb_user_id_user_seq OWNED BY public.tb_user.id_user;
          public          postgres    false    229            t           2604    16867 #   tb_description id_table_description    DEFAULT     �   ALTER TABLE ONLY public.tb_description ALTER COLUMN id_table_description SET DEFAULT nextval('public.tb_description_id_table_description_seq'::regclass);
 R   ALTER TABLE public.tb_description ALTER COLUMN id_table_description DROP DEFAULT;
       public          postgres    false    216    215    216            u           2604    16874 3   tb_description_content id_table_description_content    DEFAULT     �   ALTER TABLE ONLY public.tb_description_content ALTER COLUMN id_table_description_content SET DEFAULT nextval('public.tb_description_content_id_table_description_content_seq'::regclass);
 b   ALTER TABLE public.tb_description_content ALTER COLUMN id_table_description_content DROP DEFAULT;
       public          postgres    false    218    217    218            v           2604    16881 5   tb_educational_institution id_educational_institution    DEFAULT     �   ALTER TABLE ONLY public.tb_educational_institution ALTER COLUMN id_educational_institution SET DEFAULT nextval('public.tb_educational_institution_id_educational_institution_seq'::regclass);
 d   ALTER TABLE public.tb_educational_institution ALTER COLUMN id_educational_institution DROP DEFAULT;
       public          postgres    false    220    219    220            w           2604    16888    tb_permission id_permission    DEFAULT     �   ALTER TABLE ONLY public.tb_permission ALTER COLUMN id_permission SET DEFAULT nextval('public.tb_permission_id_permission_seq'::regclass);
 J   ALTER TABLE public.tb_permission ALTER COLUMN id_permission DROP DEFAULT;
       public          postgres    false    222    221    222            x           2604    16895 ;   tb_ra_educational_institution id_ra_educational_institution    DEFAULT     �   ALTER TABLE ONLY public.tb_ra_educational_institution ALTER COLUMN id_ra_educational_institution SET DEFAULT nextval('public.tb_ra_educational_institution_id_ra_educational_institution_seq'::regclass);
 j   ALTER TABLE public.tb_ra_educational_institution ALTER COLUMN id_ra_educational_institution DROP DEFAULT;
       public          postgres    false    224    223    224            y           2604    16902    tb_route id_route    DEFAULT     v   ALTER TABLE ONLY public.tb_route ALTER COLUMN id_route SET DEFAULT nextval('public.tb_route_id_route_seq'::regclass);
 @   ALTER TABLE public.tb_route ALTER COLUMN id_route DROP DEFAULT;
       public          postgres    false    226    225    226            z           2604    16909    tb_student id_student    DEFAULT     ~   ALTER TABLE ONLY public.tb_student ALTER COLUMN id_student SET DEFAULT nextval('public.tb_student_id_student_seq'::regclass);
 D   ALTER TABLE public.tb_student ALTER COLUMN id_student DROP DEFAULT;
       public          postgres    false    228    227    228            {           2604    16916    tb_user id_user    DEFAULT     r   ALTER TABLE ONLY public.tb_user ALTER COLUMN id_user SET DEFAULT nextval('public.tb_user_id_user_seq'::regclass);
 >   ALTER TABLE public.tb_user ALTER COLUMN id_user DROP DEFAULT;
       public          postgres    false    230    229    230            &          0    16864    tb_description 
   TABLE DATA           K   COPY public.tb_description (id_table_description, description) FROM stdin;
    public          postgres    false    216   �^       (          0    16871    tb_description_content 
   TABLE DATA           }   COPY public.tb_description_content (id_table_description_content, id_table_description, description, complement) FROM stdin;
    public          postgres    false    218   �^       *          0    16878    tb_educational_institution 
   TABLE DATA           ]   COPY public.tb_educational_institution (id_educational_institution, description) FROM stdin;
    public          postgres    false    220   K_       ,          0    16885    tb_permission 
   TABLE DATA           e   COPY public.tb_permission (id_permission, id_educational_institution, id_user, id_route) FROM stdin;
    public          postgres    false    222   w_       .          0    16892    tb_ra_educational_institution 
   TABLE DATA           v   COPY public.tb_ra_educational_institution (id_ra_educational_institution, id_educational_institution, ra) FROM stdin;
    public          postgres    false    224   �_       0          0    16899    tb_route 
   TABLE DATA           K   COPY public.tb_route (id_route, id_method_type, route, active) FROM stdin;
    public          postgres    false    226   `       2          0    16906 
   tb_student 
   TABLE DATA           @   COPY public.tb_student (id_student, id_user, id_ra) FROM stdin;
    public          postgres    false    228   ~`       4          0    16913    tb_user 
   TABLE DATA           i   COPY public.tb_user (id_user, id_user_type, password, name, email, phonenumber, cpf, active) FROM stdin;
    public          postgres    false    230   �`       D           0    0 7   tb_description_content_id_table_description_content_seq    SEQUENCE SET     f   SELECT pg_catalog.setval('public.tb_description_content_id_table_description_content_seq', 12, true);
          public          postgres    false    217            E           0    0 '   tb_description_id_table_description_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.tb_description_id_table_description_seq', 2, true);
          public          postgres    false    215            F           0    0 9   tb_educational_institution_id_educational_institution_seq    SEQUENCE SET     g   SELECT pg_catalog.setval('public.tb_educational_institution_id_educational_institution_seq', 2, true);
          public          postgres    false    219            G           0    0    tb_permission_id_permission_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.tb_permission_id_permission_seq', 12, true);
          public          postgres    false    221            H           0    0 ?   tb_ra_educational_institution_id_ra_educational_institution_seq    SEQUENCE SET     n   SELECT pg_catalog.setval('public.tb_ra_educational_institution_id_ra_educational_institution_seq', 25, true);
          public          postgres    false    223            I           0    0    tb_route_id_route_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.tb_route_id_route_seq', 6, true);
          public          postgres    false    225            J           0    0    tb_student_id_student_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.tb_student_id_student_seq', 8, true);
          public          postgres    false    227            K           0    0    tb_user_id_user_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.tb_user_id_user_seq', 29, true);
          public          postgres    false    229                       2606    16876 2   tb_description_content tb_description_content_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.tb_description_content
    ADD CONSTRAINT tb_description_content_pkey PRIMARY KEY (id_table_description_content);
 \   ALTER TABLE ONLY public.tb_description_content DROP CONSTRAINT tb_description_content_pkey;
       public            postgres    false    218            }           2606    16869 "   tb_description tb_description_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.tb_description
    ADD CONSTRAINT tb_description_pkey PRIMARY KEY (id_table_description);
 L   ALTER TABLE ONLY public.tb_description DROP CONSTRAINT tb_description_pkey;
       public            postgres    false    216            �           2606    16883 :   tb_educational_institution tb_educational_institution_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.tb_educational_institution
    ADD CONSTRAINT tb_educational_institution_pkey PRIMARY KEY (id_educational_institution);
 d   ALTER TABLE ONLY public.tb_educational_institution DROP CONSTRAINT tb_educational_institution_pkey;
       public            postgres    false    220            �           2606    16890     tb_permission tb_permission_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.tb_permission
    ADD CONSTRAINT tb_permission_pkey PRIMARY KEY (id_permission);
 J   ALTER TABLE ONLY public.tb_permission DROP CONSTRAINT tb_permission_pkey;
       public            postgres    false    222            �           2606    16897 @   tb_ra_educational_institution tb_ra_educational_institution_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.tb_ra_educational_institution
    ADD CONSTRAINT tb_ra_educational_institution_pkey PRIMARY KEY (id_ra_educational_institution);
 j   ALTER TABLE ONLY public.tb_ra_educational_institution DROP CONSTRAINT tb_ra_educational_institution_pkey;
       public            postgres    false    224            �           2606    16904    tb_route tb_route_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.tb_route
    ADD CONSTRAINT tb_route_pkey PRIMARY KEY (id_route);
 @   ALTER TABLE ONLY public.tb_route DROP CONSTRAINT tb_route_pkey;
       public            postgres    false    226            �           2606    16911    tb_student tb_student_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.tb_student
    ADD CONSTRAINT tb_student_pkey PRIMARY KEY (id_student);
 D   ALTER TABLE ONLY public.tb_student DROP CONSTRAINT tb_student_pkey;
       public            postgres    false    228            �           2606    16920    tb_user tb_user_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.tb_user
    ADD CONSTRAINT tb_user_pkey PRIMARY KEY (id_user);
 >   ALTER TABLE ONLY public.tb_user DROP CONSTRAINT tb_user_pkey;
       public            postgres    false    230            �           1259    16971 *   tb_ra_educational_institution_unique_index    INDEX     �   CREATE UNIQUE INDEX tb_ra_educational_institution_unique_index ON public.tb_ra_educational_institution USING btree (id_educational_institution, ra);
 >   DROP INDEX public.tb_ra_educational_institution_unique_index;
       public            postgres    false    224    224            �           2606    16947 (   tb_description_content fktb_descrip31922    FK CONSTRAINT     �   ALTER TABLE ONLY public.tb_description_content
    ADD CONSTRAINT fktb_descrip31922 FOREIGN KEY (id_table_description) REFERENCES public.tb_description(id_table_description);
 R   ALTER TABLE ONLY public.tb_description_content DROP CONSTRAINT fktb_descrip31922;
       public          postgres    false    4733    216    218            �           2606    16957     tb_permission fktb_permiss135525    FK CONSTRAINT     �   ALTER TABLE ONLY public.tb_permission
    ADD CONSTRAINT fktb_permiss135525 FOREIGN KEY (id_user) REFERENCES public.tb_user(id_user);
 J   ALTER TABLE ONLY public.tb_permission DROP CONSTRAINT fktb_permiss135525;
       public          postgres    false    4748    230    222            �           2606    16952    tb_permission fktb_permiss14241    FK CONSTRAINT     �   ALTER TABLE ONLY public.tb_permission
    ADD CONSTRAINT fktb_permiss14241 FOREIGN KEY (id_route) REFERENCES public.tb_route(id_route);
 I   ALTER TABLE ONLY public.tb_permission DROP CONSTRAINT fktb_permiss14241;
       public          postgres    false    222    4744    226            �           2606    16932     tb_permission fktb_permiss581700    FK CONSTRAINT     �   ALTER TABLE ONLY public.tb_permission
    ADD CONSTRAINT fktb_permiss581700 FOREIGN KEY (id_educational_institution) REFERENCES public.tb_educational_institution(id_educational_institution);
 J   ALTER TABLE ONLY public.tb_permission DROP CONSTRAINT fktb_permiss581700;
       public          postgres    false    4737    220    222            �           2606    16927 0   tb_ra_educational_institution fktb_ra_educ383140    FK CONSTRAINT     �   ALTER TABLE ONLY public.tb_ra_educational_institution
    ADD CONSTRAINT fktb_ra_educ383140 FOREIGN KEY (id_educational_institution) REFERENCES public.tb_educational_institution(id_educational_institution);
 Z   ALTER TABLE ONLY public.tb_ra_educational_institution DROP CONSTRAINT fktb_ra_educ383140;
       public          postgres    false    4737    224    220            �           2606    16937    tb_route fktb_route616465    FK CONSTRAINT     �   ALTER TABLE ONLY public.tb_route
    ADD CONSTRAINT fktb_route616465 FOREIGN KEY (id_method_type) REFERENCES public.tb_description_content(id_table_description_content);
 C   ALTER TABLE ONLY public.tb_route DROP CONSTRAINT fktb_route616465;
       public          postgres    false    226    218    4735            �           2606    16922    tb_student fktb_student407749    FK CONSTRAINT     �   ALTER TABLE ONLY public.tb_student
    ADD CONSTRAINT fktb_student407749 FOREIGN KEY (id_ra) REFERENCES public.tb_ra_educational_institution(id_ra_educational_institution);
 G   ALTER TABLE ONLY public.tb_student DROP CONSTRAINT fktb_student407749;
       public          postgres    false    228    4741    224            �           2606    16962    tb_student fktb_student584799    FK CONSTRAINT     �   ALTER TABLE ONLY public.tb_student
    ADD CONSTRAINT fktb_student584799 FOREIGN KEY (id_user) REFERENCES public.tb_user(id_user);
 G   ALTER TABLE ONLY public.tb_student DROP CONSTRAINT fktb_student584799;
       public          postgres    false    228    4748    230            �           2606    16942    tb_user fktb_user283760    FK CONSTRAINT     �   ALTER TABLE ONLY public.tb_user
    ADD CONSTRAINT fktb_user283760 FOREIGN KEY (id_user_type) REFERENCES public.tb_description_content(id_table_description_content);
 A   ALTER TABLE ONLY public.tb_user DROP CONSTRAINT fktb_user283760;
       public          postgres    false    4735    230    218                       826    16972    DEFAULT PRIVILEGES FOR TABLES    DEFAULT ACL     �   ALTER DEFAULT PRIVILEGES FOR ROLE postgres REVOKE ALL ON TABLES FROM postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT ALL ON TABLES TO postgres WITH GRANT OPTION;
                   postgres    false            &   0   x�3��,�WHIU(-.=��(3�ˈ���ʒ���b� ���=... "L"      (   Y   x�-�9�0k�cN%����"�@��bD���ab:|�%vm�k#��j����#R���Y��6�:�]?��t��LD�8 /Ć �      *      x�3�u�2���p������ +��      ,   ?   x�˻�@B�x^1�Ϫ���$\Pd(i��M�bl��������mt��K"��=��3p      .   @   x����0��x�^ ��]��%=d���b1���$�$䰔)����V]w#4���p �R�      0   X   x�3���/3�/-N-*�,�2��K*RC�b@!c�PjJirbIf~^b�g^qIfI)�T`�ih�b�)���o��5Ɍ���D� �(>      2      x�3�4�4�2�4��42����� �      4   �   x�U��N�0�g�)ؑ�؎g�i�'`d�Ёݩ�U<?�� �b/�?�Vx�<���׶n��z�^_>���6�owxA� �]4Ƙ��l�5gY�8&l)i1��{`�͖��K�Ec�d�B$���܋�|�	�c�5�|H� XE�B������JO^=��k���Lٹ���h��1֖,�d�8���_����7�i
����6O����JM     