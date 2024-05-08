PGDMP       (    /        	        |            test_django_db    14.11    14.11 �    )           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            *           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            +           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ,           1262    16395    test_django_db    DATABASE     r   CREATE DATABASE test_django_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE test_django_db;
                test_db_user    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                postgres    false            -           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   postgres    false    3            �            1259    16562    brands    TABLE     �   CREATE TABLE public.brands (
    brand_id integer NOT NULL,
    brand_name character varying(50) NOT NULL,
    brand_image character varying(100)
);
    DROP TABLE public.brands;
       public         heap    test_db_user    false    3            �            1259    16561    app_test_db_brands_brand_id_seq    SEQUENCE     �   CREATE SEQUENCE public.app_test_db_brands_brand_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.app_test_db_brands_brand_id_seq;
       public          test_db_user    false    3    229            .           0    0    app_test_db_brands_brand_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.app_test_db_brands_brand_id_seq OWNED BY public.brands.brand_id;
          public          test_db_user    false    228            �            1259    16657 
   cart_items    TABLE     �   CREATE TABLE public.cart_items (
    item_id integer NOT NULL,
    quantity integer,
    cart_id integer,
    sku_id integer
);
    DROP TABLE public.cart_items;
       public         heap    test_db_user    false    3            �            1259    16656 "   app_test_db_cart_items_item_id_seq    SEQUENCE     �   CREATE SEQUENCE public.app_test_db_cart_items_item_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.app_test_db_cart_items_item_id_seq;
       public          test_db_user    false    249    3            /           0    0 "   app_test_db_cart_items_item_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.app_test_db_cart_items_item_id_seq OWNED BY public.cart_items.item_id;
          public          test_db_user    false    248            �            1259    16650    carts    TABLE     d   CREATE TABLE public.carts (
    cart_id integer NOT NULL,
    total integer,
    user_id integer
);
    DROP TABLE public.carts;
       public         heap    test_db_user    false    3            �            1259    16649    app_test_db_carts_cart_id_seq    SEQUENCE     �   CREATE SEQUENCE public.app_test_db_carts_cart_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.app_test_db_carts_cart_id_seq;
       public          test_db_user    false    247    3            0           0    0    app_test_db_carts_cart_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.app_test_db_carts_cart_id_seq OWNED BY public.carts.cart_id;
          public          test_db_user    false    246            �            1259    16772    library_images    TABLE     �   CREATE TABLE public.library_images (
    image_id integer NOT NULL,
    image character varying(100) NOT NULL,
    motorbike_id integer
);
 "   DROP TABLE public.library_images;
       public         heap    test_db_user    false    3            �            1259    16771 '   app_test_db_library_images_image_id_seq    SEQUENCE     �   CREATE SEQUENCE public.app_test_db_library_images_image_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.app_test_db_library_images_image_id_seq;
       public          test_db_user    false    251    3            1           0    0 '   app_test_db_library_images_image_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.app_test_db_library_images_image_id_seq OWNED BY public.library_images.image_id;
          public          test_db_user    false    250            �            1259    16571    motor_types    TABLE     p   CREATE TABLE public.motor_types (
    type_id integer NOT NULL,
    type_name character varying(50) NOT NULL
);
    DROP TABLE public.motor_types;
       public         heap    test_db_user    false    3            �            1259    16570 #   app_test_db_motor_types_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.app_test_db_motor_types_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.app_test_db_motor_types_type_id_seq;
       public          test_db_user    false    231    3            2           0    0 #   app_test_db_motor_types_type_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.app_test_db_motor_types_type_id_seq OWNED BY public.motor_types.type_id;
          public          test_db_user    false    230            �            1259    16580    motorbike_attributes    TABLE     1  CREATE TABLE public.motorbike_attributes (
    attribute_id integer NOT NULL,
    attribute_type character varying(10) NOT NULL,
    value character varying(50) NOT NULL,
    color_1 character varying(10) NOT NULL,
    color_2 character varying(10) NOT NULL,
    color_3 character varying(10) NOT NULL
);
 (   DROP TABLE public.motorbike_attributes;
       public         heap    test_db_user    false    3            �            1259    16579 1   app_test_db_motorbike_attributes_attribute_id_seq    SEQUENCE     �   CREATE SEQUENCE public.app_test_db_motorbike_attributes_attribute_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 H   DROP SEQUENCE public.app_test_db_motorbike_attributes_attribute_id_seq;
       public          test_db_user    false    233    3            3           0    0 1   app_test_db_motorbike_attributes_attribute_id_seq    SEQUENCE OWNED BY     {   ALTER SEQUENCE public.app_test_db_motorbike_attributes_attribute_id_seq OWNED BY public.motorbike_attributes.attribute_id;
          public          test_db_user    false    232                       1259    16817    motorbike_feature_images    TABLE     �   CREATE TABLE public.motorbike_feature_images (
    image_id integer NOT NULL,
    image character varying(100) NOT NULL,
    feature_id integer,
    motorbike_id integer,
    description character varying(200) NOT NULL
);
 ,   DROP TABLE public.motorbike_feature_images;
       public         heap    test_db_user    false    3                        1259    16816 1   app_test_db_motorbike_feature_images_image_id_seq    SEQUENCE     �   CREATE SEQUENCE public.app_test_db_motorbike_feature_images_image_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 H   DROP SEQUENCE public.app_test_db_motorbike_feature_images_image_id_seq;
       public          test_db_user    false    257    3            4           0    0 1   app_test_db_motorbike_feature_images_image_id_seq    SEQUENCE OWNED BY     {   ALTER SEQUENCE public.app_test_db_motorbike_feature_images_image_id_seq OWNED BY public.motorbike_feature_images.image_id;
          public          test_db_user    false    256            �            1259    16791    motorbike_features    TABLE     ~   CREATE TABLE public.motorbike_features (
    feature_id integer NOT NULL,
    feature_type character varying(100) NOT NULL
);
 &   DROP TABLE public.motorbike_features;
       public         heap    test_db_user    false    3            �            1259    16790 -   app_test_db_motorbike_features_feature_id_seq    SEQUENCE     �   CREATE SEQUENCE public.app_test_db_motorbike_features_feature_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 D   DROP SEQUENCE public.app_test_db_motorbike_features_feature_id_seq;
       public          test_db_user    false    3    253            5           0    0 -   app_test_db_motorbike_features_feature_id_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.app_test_db_motorbike_features_feature_id_seq OWNED BY public.motorbike_features.feature_id;
          public          test_db_user    false    252            �            1259    16587    motorbike_skus    TABLE     �   CREATE TABLE public.motorbike_skus (
    sku_id integer NOT NULL,
    year integer NOT NULL,
    price numeric(9,0) NOT NULL,
    color_id integer,
    motorbike_id integer,
    option_id integer,
    sku_image character varying(100)
);
 "   DROP TABLE public.motorbike_skus;
       public         heap    test_db_user    false    3            �            1259    16586 %   app_test_db_motorbike_skus_sku_id_seq    SEQUENCE     �   CREATE SEQUENCE public.app_test_db_motorbike_skus_sku_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.app_test_db_motorbike_skus_sku_id_seq;
       public          test_db_user    false    235    3            6           0    0 %   app_test_db_motorbike_skus_sku_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.app_test_db_motorbike_skus_sku_id_seq OWNED BY public.motorbike_skus.sku_id;
          public          test_db_user    false    234            �            1259    16808    motorbike_specs    TABLE     �  CREATE TABLE public.motorbike_specs (
    spec_id integer NOT NULL,
    mass_ifself double precision NOT NULL,
    length integer NOT NULL,
    width integer NOT NULL,
    height integer NOT NULL,
    wheel_hub_spacing integer NOT NULL,
    saddle_height integer NOT NULL,
    ground_clearance integer NOT NULL,
    fuel_tank_capacity integer NOT NULL,
    front_layer_sizes character varying(100) NOT NULL,
    rear_layer_sizes character varying(100) NOT NULL,
    front_fork character varying(100) NOT NULL,
    rear_fork character varying(100) NOT NULL,
    engine_type character varying(100) NOT NULL,
    max_power character varying(100) NOT NULL,
    machine_viscosity_capacity character varying(100) NOT NULL,
    fuel_consumption character varying(100) NOT NULL,
    gearbox character varying(100) NOT NULL,
    drive_type character varying(100) NOT NULL,
    start_up_system character varying(100) NOT NULL,
    max_moment character varying(100) NOT NULL,
    cylinder_capacity double precision NOT NULL,
    diameter_plunger_stroke character varying(100) NOT NULL,
    compression_ratio character varying(100) NOT NULL,
    motorbike_id integer
);
 #   DROP TABLE public.motorbike_specs;
       public         heap    test_db_user    false    3            �            1259    16807 '   app_test_db_motorbike_specs_spec_id_seq    SEQUENCE     �   CREATE SEQUENCE public.app_test_db_motorbike_specs_spec_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.app_test_db_motorbike_specs_spec_id_seq;
       public          test_db_user    false    255    3            7           0    0 '   app_test_db_motorbike_specs_spec_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.app_test_db_motorbike_specs_spec_id_seq OWNED BY public.motorbike_specs.spec_id;
          public          test_db_user    false    254            �            1259    16629 
   motorbikes    TABLE       CREATE TABLE public.motorbikes (
    motorbike_id integer NOT NULL,
    model character varying(100) NOT NULL,
    description character varying(2000),
    brand_id integer,
    type_id integer,
    image character varying(100),
    banner_image character varying(100)
);
    DROP TABLE public.motorbikes;
       public         heap    test_db_user    false    3            �            1259    16628 '   app_test_db_motorbikes_motorbike_id_seq    SEQUENCE     �   CREATE SEQUENCE public.app_test_db_motorbikes_motorbike_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.app_test_db_motorbikes_motorbike_id_seq;
       public          test_db_user    false    245    3            8           0    0 '   app_test_db_motorbikes_motorbike_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.app_test_db_motorbikes_motorbike_id_seq OWNED BY public.motorbikes.motorbike_id;
          public          test_db_user    false    244            �            1259    16594    order_details    TABLE     m   CREATE TABLE public.order_details (
    order_id integer NOT NULL,
    total integer,
    user_id integer
);
 !   DROP TABLE public.order_details;
       public         heap    test_db_user    false    3            �            1259    16593 &   app_test_db_order_details_order_id_seq    SEQUENCE     �   CREATE SEQUENCE public.app_test_db_order_details_order_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.app_test_db_order_details_order_id_seq;
       public          test_db_user    false    3    237            9           0    0 &   app_test_db_order_details_order_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.app_test_db_order_details_order_id_seq OWNED BY public.order_details.order_id;
          public          test_db_user    false    236            �            1259    16617    order_items    TABLE     �   CREATE TABLE public.order_items (
    item_id integer NOT NULL,
    quantity integer,
    order_id integer,
    sku_id integer
);
    DROP TABLE public.order_items;
       public         heap    test_db_user    false    3            �            1259    16616 #   app_test_db_order_items_item_id_seq    SEQUENCE     �   CREATE SEQUENCE public.app_test_db_order_items_item_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.app_test_db_order_items_item_id_seq;
       public          test_db_user    false    243    3            :           0    0 #   app_test_db_order_items_item_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.app_test_db_order_items_item_id_seq OWNED BY public.order_items.item_id;
          public          test_db_user    false    242            �            1259    16610    payment_details    TABLE     �   CREATE TABLE public.payment_details (
    payment_id integer NOT NULL,
    payment_type character varying(20) NOT NULL,
    order_id integer
);
 #   DROP TABLE public.payment_details;
       public         heap    test_db_user    false    3            �            1259    16609 *   app_test_db_payment_details_payment_id_seq    SEQUENCE     �   CREATE SEQUENCE public.app_test_db_payment_details_payment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE public.app_test_db_payment_details_payment_id_seq;
       public          test_db_user    false    241    3            ;           0    0 *   app_test_db_payment_details_payment_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.app_test_db_payment_details_payment_id_seq OWNED BY public.payment_details.payment_id;
          public          test_db_user    false    240            �            1259    16601    users    TABLE     �   CREATE TABLE public.users (
    user_id integer NOT NULL,
    phone numeric(15,0) NOT NULL,
    full_name character varying(100) NOT NULL,
    address character varying(500) NOT NULL,
    email character varying(254)
);
    DROP TABLE public.users;
       public         heap    test_db_user    false    3            �            1259    16600    app_test_db_users_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.app_test_db_users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.app_test_db_users_user_id_seq;
       public          test_db_user    false    239    3            <           0    0    app_test_db_users_user_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.app_test_db_users_user_id_seq OWNED BY public.users.user_id;
          public          test_db_user    false    238            �            1259    16422 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    test_db_user    false    3            �            1259    16421    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          test_db_user    false    216    3            =           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          test_db_user    false    215            �            1259    16431    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    test_db_user    false    3            �            1259    16430    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          test_db_user    false    218    3            >           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          test_db_user    false    217            �            1259    16415    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    test_db_user    false    3            �            1259    16414    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          test_db_user    false    214    3            ?           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          test_db_user    false    213            �            1259    16438 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         heap    test_db_user    false    3            �            1259    16447    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    test_db_user    false    3            �            1259    16446    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          test_db_user    false    3    222            @           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          test_db_user    false    221            �            1259    16437    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          test_db_user    false    3    220            A           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          test_db_user    false    219            �            1259    16454    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    test_db_user    false    3            �            1259    16453 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          test_db_user    false    224    3            B           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          test_db_user    false    223            �            1259    16513    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap    test_db_user    false    3            �            1259    16512    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          test_db_user    false    3    226            C           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          test_db_user    false    225            �            1259    16406    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    test_db_user    false    3            �            1259    16405    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          test_db_user    false    212    3            D           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          test_db_user    false    211            �            1259    16397    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    test_db_user    false    3            �            1259    16396    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          test_db_user    false    3    210            E           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          test_db_user    false    209            �            1259    16542    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    test_db_user    false    3            �           2604    16425    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          test_db_user    false    216    215    216            �           2604    16434    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          test_db_user    false    217    218    218            �           2604    16418    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          test_db_user    false    214    213    214            �           2604    16441    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          test_db_user    false    219    220    220            �           2604    16450    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          test_db_user    false    222    221    222            �           2604    16457    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          test_db_user    false    224    223    224            �           2604    16565    brands brand_id    DEFAULT     ~   ALTER TABLE ONLY public.brands ALTER COLUMN brand_id SET DEFAULT nextval('public.app_test_db_brands_brand_id_seq'::regclass);
 >   ALTER TABLE public.brands ALTER COLUMN brand_id DROP DEFAULT;
       public          test_db_user    false    229    228    229            �           2604    16660    cart_items item_id    DEFAULT     �   ALTER TABLE ONLY public.cart_items ALTER COLUMN item_id SET DEFAULT nextval('public.app_test_db_cart_items_item_id_seq'::regclass);
 A   ALTER TABLE public.cart_items ALTER COLUMN item_id DROP DEFAULT;
       public          test_db_user    false    249    248    249            �           2604    16653    carts cart_id    DEFAULT     z   ALTER TABLE ONLY public.carts ALTER COLUMN cart_id SET DEFAULT nextval('public.app_test_db_carts_cart_id_seq'::regclass);
 <   ALTER TABLE public.carts ALTER COLUMN cart_id DROP DEFAULT;
       public          test_db_user    false    247    246    247            �           2604    16516    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          test_db_user    false    226    225    226            �           2604    16409    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          test_db_user    false    212    211    212            �           2604    16400    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          test_db_user    false    209    210    210            �           2604    16775    library_images image_id    DEFAULT     �   ALTER TABLE ONLY public.library_images ALTER COLUMN image_id SET DEFAULT nextval('public.app_test_db_library_images_image_id_seq'::regclass);
 F   ALTER TABLE public.library_images ALTER COLUMN image_id DROP DEFAULT;
       public          test_db_user    false    250    251    251            �           2604    16574    motor_types type_id    DEFAULT     �   ALTER TABLE ONLY public.motor_types ALTER COLUMN type_id SET DEFAULT nextval('public.app_test_db_motor_types_type_id_seq'::regclass);
 B   ALTER TABLE public.motor_types ALTER COLUMN type_id DROP DEFAULT;
       public          test_db_user    false    230    231    231            �           2604    16583 !   motorbike_attributes attribute_id    DEFAULT     �   ALTER TABLE ONLY public.motorbike_attributes ALTER COLUMN attribute_id SET DEFAULT nextval('public.app_test_db_motorbike_attributes_attribute_id_seq'::regclass);
 P   ALTER TABLE public.motorbike_attributes ALTER COLUMN attribute_id DROP DEFAULT;
       public          test_db_user    false    233    232    233            �           2604    16820 !   motorbike_feature_images image_id    DEFAULT     �   ALTER TABLE ONLY public.motorbike_feature_images ALTER COLUMN image_id SET DEFAULT nextval('public.app_test_db_motorbike_feature_images_image_id_seq'::regclass);
 P   ALTER TABLE public.motorbike_feature_images ALTER COLUMN image_id DROP DEFAULT;
       public          test_db_user    false    257    256    257            �           2604    16794    motorbike_features feature_id    DEFAULT     �   ALTER TABLE ONLY public.motorbike_features ALTER COLUMN feature_id SET DEFAULT nextval('public.app_test_db_motorbike_features_feature_id_seq'::regclass);
 L   ALTER TABLE public.motorbike_features ALTER COLUMN feature_id DROP DEFAULT;
       public          test_db_user    false    253    252    253            �           2604    16590    motorbike_skus sku_id    DEFAULT     �   ALTER TABLE ONLY public.motorbike_skus ALTER COLUMN sku_id SET DEFAULT nextval('public.app_test_db_motorbike_skus_sku_id_seq'::regclass);
 D   ALTER TABLE public.motorbike_skus ALTER COLUMN sku_id DROP DEFAULT;
       public          test_db_user    false    234    235    235            �           2604    16811    motorbike_specs spec_id    DEFAULT     �   ALTER TABLE ONLY public.motorbike_specs ALTER COLUMN spec_id SET DEFAULT nextval('public.app_test_db_motorbike_specs_spec_id_seq'::regclass);
 F   ALTER TABLE public.motorbike_specs ALTER COLUMN spec_id DROP DEFAULT;
       public          test_db_user    false    255    254    255            �           2604    16632    motorbikes motorbike_id    DEFAULT     �   ALTER TABLE ONLY public.motorbikes ALTER COLUMN motorbike_id SET DEFAULT nextval('public.app_test_db_motorbikes_motorbike_id_seq'::regclass);
 F   ALTER TABLE public.motorbikes ALTER COLUMN motorbike_id DROP DEFAULT;
       public          test_db_user    false    244    245    245            �           2604    16597    order_details order_id    DEFAULT     �   ALTER TABLE ONLY public.order_details ALTER COLUMN order_id SET DEFAULT nextval('public.app_test_db_order_details_order_id_seq'::regclass);
 E   ALTER TABLE public.order_details ALTER COLUMN order_id DROP DEFAULT;
       public          test_db_user    false    237    236    237            �           2604    16620    order_items item_id    DEFAULT     �   ALTER TABLE ONLY public.order_items ALTER COLUMN item_id SET DEFAULT nextval('public.app_test_db_order_items_item_id_seq'::regclass);
 B   ALTER TABLE public.order_items ALTER COLUMN item_id DROP DEFAULT;
       public          test_db_user    false    242    243    243            �           2604    16613    payment_details payment_id    DEFAULT     �   ALTER TABLE ONLY public.payment_details ALTER COLUMN payment_id SET DEFAULT nextval('public.app_test_db_payment_details_payment_id_seq'::regclass);
 I   ALTER TABLE public.payment_details ALTER COLUMN payment_id DROP DEFAULT;
       public          test_db_user    false    241    240    241            �           2604    16604    users user_id    DEFAULT     z   ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.app_test_db_users_user_id_seq'::regclass);
 <   ALTER TABLE public.users ALTER COLUMN user_id DROP DEFAULT;
       public          test_db_user    false    239    238    239            �          0    16422 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          test_db_user    false    216   �Q      �          0    16431    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          test_db_user    false    218   �Q      �          0    16415    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          test_db_user    false    214   �Q                0    16438 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          test_db_user    false    220   d                0    16447    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          test_db_user    false    222   �d                0    16454    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          test_db_user    false    224   �d      
          0    16562    brands 
   TABLE DATA           C   COPY public.brands (brand_id, brand_name, brand_image) FROM stdin;
    public          test_db_user    false    229   	e                0    16657 
   cart_items 
   TABLE DATA           H   COPY public.cart_items (item_id, quantity, cart_id, sku_id) FROM stdin;
    public          test_db_user    false    249   �e                0    16650    carts 
   TABLE DATA           8   COPY public.carts (cart_id, total, user_id) FROM stdin;
    public          test_db_user    false    247   
f                0    16513    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          test_db_user    false    226   f      �          0    16406    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          test_db_user    false    212   �      �          0    16397    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          test_db_user    false    210   a                0    16542    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          test_db_user    false    227   p$                 0    16772    library_images 
   TABLE DATA           G   COPY public.library_images (image_id, image, motorbike_id) FROM stdin;
    public          test_db_user    false    251   �'                0    16571    motor_types 
   TABLE DATA           9   COPY public.motor_types (type_id, type_name) FROM stdin;
    public          test_db_user    false    231   =(                0    16580    motorbike_attributes 
   TABLE DATA           n   COPY public.motorbike_attributes (attribute_id, attribute_type, value, color_1, color_2, color_3) FROM stdin;
    public          test_db_user    false    233   �(      &          0    16817    motorbike_feature_images 
   TABLE DATA           j   COPY public.motorbike_feature_images (image_id, image, feature_id, motorbike_id, description) FROM stdin;
    public          test_db_user    false    257   �2      "          0    16791    motorbike_features 
   TABLE DATA           F   COPY public.motorbike_features (feature_id, feature_type) FROM stdin;
    public          test_db_user    false    253   �3                0    16587    motorbike_skus 
   TABLE DATA           k   COPY public.motorbike_skus (sku_id, year, price, color_id, motorbike_id, option_id, sku_image) FROM stdin;
    public          test_db_user    false    235   C4      $          0    16808    motorbike_specs 
   TABLE DATA           �  COPY public.motorbike_specs (spec_id, mass_ifself, length, width, height, wheel_hub_spacing, saddle_height, ground_clearance, fuel_tank_capacity, front_layer_sizes, rear_layer_sizes, front_fork, rear_fork, engine_type, max_power, machine_viscosity_capacity, fuel_consumption, gearbox, drive_type, start_up_system, max_moment, cylinder_capacity, diameter_plunger_stroke, compression_ratio, motorbike_id) FROM stdin;
    public          test_db_user    false    255   Ka                0    16629 
   motorbikes 
   TABLE DATA           n   COPY public.motorbikes (motorbike_id, model, description, brand_id, type_id, image, banner_image) FROM stdin;
    public          test_db_user    false    245   `a                0    16594    order_details 
   TABLE DATA           A   COPY public.order_details (order_id, total, user_id) FROM stdin;
    public          test_db_user    false    237   �n                0    16617    order_items 
   TABLE DATA           J   COPY public.order_items (item_id, quantity, order_id, sku_id) FROM stdin;
    public          test_db_user    false    243   �n                0    16610    payment_details 
   TABLE DATA           M   COPY public.payment_details (payment_id, payment_type, order_id) FROM stdin;
    public          test_db_user    false    241   �n                0    16601    users 
   TABLE DATA           J   COPY public.users (user_id, phone, full_name, address, email) FROM stdin;
    public          test_db_user    false    239   �n      F           0    0    app_test_db_brands_brand_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.app_test_db_brands_brand_id_seq', 5, true);
          public          test_db_user    false    228            G           0    0 "   app_test_db_cart_items_item_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.app_test_db_cart_items_item_id_seq', 1, false);
          public          test_db_user    false    248            H           0    0    app_test_db_carts_cart_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.app_test_db_carts_cart_id_seq', 1, false);
          public          test_db_user    false    246            I           0    0 '   app_test_db_library_images_image_id_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.app_test_db_library_images_image_id_seq', 1, true);
          public          test_db_user    false    250            J           0    0 #   app_test_db_motor_types_type_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.app_test_db_motor_types_type_id_seq', 4, true);
          public          test_db_user    false    230            K           0    0 1   app_test_db_motorbike_attributes_attribute_id_seq    SEQUENCE SET     `   SELECT pg_catalog.setval('public.app_test_db_motorbike_attributes_attribute_id_seq', 76, true);
          public          test_db_user    false    232            L           0    0 1   app_test_db_motorbike_feature_images_image_id_seq    SEQUENCE SET     _   SELECT pg_catalog.setval('public.app_test_db_motorbike_feature_images_image_id_seq', 3, true);
          public          test_db_user    false    256            M           0    0 -   app_test_db_motorbike_features_feature_id_seq    SEQUENCE SET     [   SELECT pg_catalog.setval('public.app_test_db_motorbike_features_feature_id_seq', 3, true);
          public          test_db_user    false    252            N           0    0 %   app_test_db_motorbike_skus_sku_id_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.app_test_db_motorbike_skus_sku_id_seq', 187, true);
          public          test_db_user    false    234            O           0    0 '   app_test_db_motorbike_specs_spec_id_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public.app_test_db_motorbike_specs_spec_id_seq', 1, false);
          public          test_db_user    false    254            P           0    0 '   app_test_db_motorbikes_motorbike_id_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public.app_test_db_motorbikes_motorbike_id_seq', 32, true);
          public          test_db_user    false    244            Q           0    0 &   app_test_db_order_details_order_id_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.app_test_db_order_details_order_id_seq', 1, false);
          public          test_db_user    false    236            R           0    0 #   app_test_db_order_items_item_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.app_test_db_order_items_item_id_seq', 1, false);
          public          test_db_user    false    242            S           0    0 *   app_test_db_payment_details_payment_id_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('public.app_test_db_payment_details_payment_id_seq', 1, false);
          public          test_db_user    false    240            T           0    0    app_test_db_users_user_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.app_test_db_users_user_id_seq', 1, false);
          public          test_db_user    false    238            U           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          test_db_user    false    215            V           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          test_db_user    false    217            W           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 92, true);
          public          test_db_user    false    213            X           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          test_db_user    false    221            Y           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);
          public          test_db_user    false    219            Z           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          test_db_user    false    223            [           0    0    django_admin_log_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 381, true);
          public          test_db_user    false    225            \           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 23, true);
          public          test_db_user    false    211            ]           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 45, true);
          public          test_db_user    false    209                       2606    16569 (   brands app_test_db_brands_brand_name_key 
   CONSTRAINT     i   ALTER TABLE ONLY public.brands
    ADD CONSTRAINT app_test_db_brands_brand_name_key UNIQUE (brand_name);
 R   ALTER TABLE ONLY public.brands DROP CONSTRAINT app_test_db_brands_brand_name_key;
       public            test_db_user    false    229                       2606    16567    brands app_test_db_brands_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.brands
    ADD CONSTRAINT app_test_db_brands_pkey PRIMARY KEY (brand_id);
 H   ALTER TABLE ONLY public.brands DROP CONSTRAINT app_test_db_brands_pkey;
       public            test_db_user    false    229            D           2606    16662 &   cart_items app_test_db_cart_items_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.cart_items
    ADD CONSTRAINT app_test_db_cart_items_pkey PRIMARY KEY (item_id);
 P   ALTER TABLE ONLY public.cart_items DROP CONSTRAINT app_test_db_cart_items_pkey;
       public            test_db_user    false    249            @           2606    16655    carts app_test_db_carts_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.carts
    ADD CONSTRAINT app_test_db_carts_pkey PRIMARY KEY (cart_id);
 F   ALTER TABLE ONLY public.carts DROP CONSTRAINT app_test_db_carts_pkey;
       public            test_db_user    false    247            H           2606    16777 .   library_images app_test_db_library_images_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.library_images
    ADD CONSTRAINT app_test_db_library_images_pkey PRIMARY KEY (image_id);
 X   ALTER TABLE ONLY public.library_images DROP CONSTRAINT app_test_db_library_images_pkey;
       public            test_db_user    false    251            !           2606    16576 (   motor_types app_test_db_motor_types_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.motor_types
    ADD CONSTRAINT app_test_db_motor_types_pkey PRIMARY KEY (type_id);
 R   ALTER TABLE ONLY public.motor_types DROP CONSTRAINT app_test_db_motor_types_pkey;
       public            test_db_user    false    231            $           2606    16578 1   motor_types app_test_db_motor_types_type_name_key 
   CONSTRAINT     q   ALTER TABLE ONLY public.motor_types
    ADD CONSTRAINT app_test_db_motor_types_type_name_key UNIQUE (type_name);
 [   ALTER TABLE ONLY public.motor_types DROP CONSTRAINT app_test_db_motor_types_type_name_key;
       public            test_db_user    false    231            &           2606    16585 :   motorbike_attributes app_test_db_motorbike_attributes_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.motorbike_attributes
    ADD CONSTRAINT app_test_db_motorbike_attributes_pkey PRIMARY KEY (attribute_id);
 d   ALTER TABLE ONLY public.motorbike_attributes DROP CONSTRAINT app_test_db_motorbike_attributes_pkey;
       public            test_db_user    false    233            Q           2606    16822 B   motorbike_feature_images app_test_db_motorbike_feature_images_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.motorbike_feature_images
    ADD CONSTRAINT app_test_db_motorbike_feature_images_pkey PRIMARY KEY (image_id);
 l   ALTER TABLE ONLY public.motorbike_feature_images DROP CONSTRAINT app_test_db_motorbike_feature_images_pkey;
       public            test_db_user    false    257            J           2606    16796 6   motorbike_features app_test_db_motorbike_features_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.motorbike_features
    ADD CONSTRAINT app_test_db_motorbike_features_pkey PRIMARY KEY (feature_id);
 `   ALTER TABLE ONLY public.motorbike_features DROP CONSTRAINT app_test_db_motorbike_features_pkey;
       public            test_db_user    false    253            +           2606    16592 .   motorbike_skus app_test_db_motorbike_skus_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.motorbike_skus
    ADD CONSTRAINT app_test_db_motorbike_skus_pkey PRIMARY KEY (sku_id);
 X   ALTER TABLE ONLY public.motorbike_skus DROP CONSTRAINT app_test_db_motorbike_skus_pkey;
       public            test_db_user    false    235            M           2606    16815 0   motorbike_specs app_test_db_motorbike_specs_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public.motorbike_specs
    ADD CONSTRAINT app_test_db_motorbike_specs_pkey PRIMARY KEY (spec_id);
 Z   ALTER TABLE ONLY public.motorbike_specs DROP CONSTRAINT app_test_db_motorbike_specs_pkey;
       public            test_db_user    false    255            ;           2606    16638 +   motorbikes app_test_db_motorbikes_model_key 
   CONSTRAINT     g   ALTER TABLE ONLY public.motorbikes
    ADD CONSTRAINT app_test_db_motorbikes_model_key UNIQUE (model);
 U   ALTER TABLE ONLY public.motorbikes DROP CONSTRAINT app_test_db_motorbikes_model_key;
       public            test_db_user    false    245            =           2606    16636 &   motorbikes app_test_db_motorbikes_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.motorbikes
    ADD CONSTRAINT app_test_db_motorbikes_pkey PRIMARY KEY (motorbike_id);
 P   ALTER TABLE ONLY public.motorbikes DROP CONSTRAINT app_test_db_motorbikes_pkey;
       public            test_db_user    false    245            -           2606    16599 ,   order_details app_test_db_order_details_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.order_details
    ADD CONSTRAINT app_test_db_order_details_pkey PRIMARY KEY (order_id);
 V   ALTER TABLE ONLY public.order_details DROP CONSTRAINT app_test_db_order_details_pkey;
       public            test_db_user    false    237            6           2606    16622 (   order_items app_test_db_order_items_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.order_items
    ADD CONSTRAINT app_test_db_order_items_pkey PRIMARY KEY (item_id);
 R   ALTER TABLE ONLY public.order_items DROP CONSTRAINT app_test_db_order_items_pkey;
       public            test_db_user    false    243            3           2606    16615 0   payment_details app_test_db_payment_details_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.payment_details
    ADD CONSTRAINT app_test_db_payment_details_pkey PRIMARY KEY (payment_id);
 Z   ALTER TABLE ONLY public.payment_details DROP CONSTRAINT app_test_db_payment_details_pkey;
       public            test_db_user    false    241            0           2606    16608    users app_test_db_users_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.users
    ADD CONSTRAINT app_test_db_users_pkey PRIMARY KEY (user_id);
 F   ALTER TABLE ONLY public.users DROP CONSTRAINT app_test_db_users_pkey;
       public            test_db_user    false    239            �           2606    16540    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            test_db_user    false    216            �           2606    16470 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            test_db_user    false    218    218                       2606    16436 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            test_db_user    false    218            �           2606    16427    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            test_db_user    false    216            �           2606    16461 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            test_db_user    false    214    214            �           2606    16420 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            test_db_user    false    214            	           2606    16452 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            test_db_user    false    222                       2606    16485 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            test_db_user    false    222    222                       2606    16443    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            test_db_user    false    220                       2606    16459 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            test_db_user    false    224                       2606    16499 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            test_db_user    false    224    224                       2606    16535     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            test_db_user    false    220                       2606    16521 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            test_db_user    false    226            �           2606    16413 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            test_db_user    false    212    212            �           2606    16411 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            test_db_user    false    212            �           2606    16404 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            test_db_user    false    210                       2606    16548 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            test_db_user    false    227                       1259    16663 +   app_test_db_brands_brand_name_319ca42c_like    INDEX     x   CREATE INDEX app_test_db_brands_brand_name_319ca42c_like ON public.brands USING btree (brand_name varchar_pattern_ops);
 ?   DROP INDEX public.app_test_db_brands_brand_name_319ca42c_like;
       public            test_db_user    false    229            B           1259    16721 '   app_test_db_cart_items_cart_id_b3ec4fd0    INDEX     a   CREATE INDEX app_test_db_cart_items_cart_id_b3ec4fd0 ON public.cart_items USING btree (cart_id);
 ;   DROP INDEX public.app_test_db_cart_items_cart_id_b3ec4fd0;
       public            test_db_user    false    249            E           1259    16722 &   app_test_db_cart_items_sku_id_d4f1d20c    INDEX     _   CREATE INDEX app_test_db_cart_items_sku_id_d4f1d20c ON public.cart_items USING btree (sku_id);
 :   DROP INDEX public.app_test_db_cart_items_sku_id_d4f1d20c;
       public            test_db_user    false    249            A           1259    16710 "   app_test_db_carts_user_id_92e1cd26    INDEX     W   CREATE INDEX app_test_db_carts_user_id_92e1cd26 ON public.carts USING btree (user_id);
 6   DROP INDEX public.app_test_db_carts_user_id_92e1cd26;
       public            test_db_user    false    247            F           1259    16789 0   app_test_db_library_images_motorbike_id_8a8af66d    INDEX     s   CREATE INDEX app_test_db_library_images_motorbike_id_8a8af66d ON public.library_images USING btree (motorbike_id);
 D   DROP INDEX public.app_test_db_library_images_motorbike_id_8a8af66d;
       public            test_db_user    false    251            "           1259    16664 /   app_test_db_motor_types_type_name_c1644e64_like    INDEX     �   CREATE INDEX app_test_db_motor_types_type_name_c1644e64_like ON public.motor_types USING btree (type_name varchar_pattern_ops);
 C   DROP INDEX public.app_test_db_motor_types_type_name_c1644e64_like;
       public            test_db_user    false    231            N           1259    16839 8   app_test_db_motorbike_feature_images_feature_id_765eaa5b    INDEX     �   CREATE INDEX app_test_db_motorbike_feature_images_feature_id_765eaa5b ON public.motorbike_feature_images USING btree (feature_id);
 L   DROP INDEX public.app_test_db_motorbike_feature_images_feature_id_765eaa5b;
       public            test_db_user    false    257            O           1259    16840 :   app_test_db_motorbike_feature_images_motorbike_id_2374ff32    INDEX     �   CREATE INDEX app_test_db_motorbike_feature_images_motorbike_id_2374ff32 ON public.motorbike_feature_images USING btree (motorbike_id);
 N   DROP INDEX public.app_test_db_motorbike_feature_images_motorbike_id_2374ff32;
       public            test_db_user    false    257            '           1259    16670 ,   app_test_db_motorbike_skus_color_id_33cd256f    INDEX     k   CREATE INDEX app_test_db_motorbike_skus_color_id_33cd256f ON public.motorbike_skus USING btree (color_id);
 @   DROP INDEX public.app_test_db_motorbike_skus_color_id_33cd256f;
       public            test_db_user    false    235            (           1259    16703 0   app_test_db_motorbike_skus_motorbike_id_fcb5a1ef    INDEX     s   CREATE INDEX app_test_db_motorbike_skus_motorbike_id_fcb5a1ef ON public.motorbike_skus USING btree (motorbike_id);
 D   DROP INDEX public.app_test_db_motorbike_skus_motorbike_id_fcb5a1ef;
       public            test_db_user    false    235            )           1259    16704 -   app_test_db_motorbike_skus_option_id_2ae996e5    INDEX     m   CREATE INDEX app_test_db_motorbike_skus_option_id_2ae996e5 ON public.motorbike_skus USING btree (option_id);
 A   DROP INDEX public.app_test_db_motorbike_skus_option_id_2ae996e5;
       public            test_db_user    false    235            K           1259    16828 1   app_test_db_motorbike_specs_motorbike_id_e131d029    INDEX     u   CREATE INDEX app_test_db_motorbike_specs_motorbike_id_e131d029 ON public.motorbike_specs USING btree (motorbike_id);
 E   DROP INDEX public.app_test_db_motorbike_specs_motorbike_id_e131d029;
       public            test_db_user    false    255            8           1259    16701 (   app_test_db_motorbikes_brand_id_dc8b42a5    INDEX     c   CREATE INDEX app_test_db_motorbikes_brand_id_dc8b42a5 ON public.motorbikes USING btree (brand_id);
 <   DROP INDEX public.app_test_db_motorbikes_brand_id_dc8b42a5;
       public            test_db_user    false    245            9           1259    16700 *   app_test_db_motorbikes_model_dbee2aa6_like    INDEX     v   CREATE INDEX app_test_db_motorbikes_model_dbee2aa6_like ON public.motorbikes USING btree (model varchar_pattern_ops);
 >   DROP INDEX public.app_test_db_motorbikes_model_dbee2aa6_like;
       public            test_db_user    false    245            >           1259    16702 '   app_test_db_motorbikes_type_id_0579c969    INDEX     a   CREATE INDEX app_test_db_motorbikes_type_id_0579c969 ON public.motorbikes USING btree (type_id);
 ;   DROP INDEX public.app_test_db_motorbikes_type_id_0579c969;
       public            test_db_user    false    245            .           1259    16689 *   app_test_db_order_details_user_id_e0197f40    INDEX     g   CREATE INDEX app_test_db_order_details_user_id_e0197f40 ON public.order_details USING btree (user_id);
 >   DROP INDEX public.app_test_db_order_details_user_id_e0197f40;
       public            test_db_user    false    237            4           1259    16687 )   app_test_db_order_items_order_id_336f31aa    INDEX     e   CREATE INDEX app_test_db_order_items_order_id_336f31aa ON public.order_items USING btree (order_id);
 =   DROP INDEX public.app_test_db_order_items_order_id_336f31aa;
       public            test_db_user    false    243            7           1259    16688 '   app_test_db_order_items_sku_id_3df9c778    INDEX     a   CREATE INDEX app_test_db_order_items_sku_id_3df9c778 ON public.order_items USING btree (sku_id);
 ;   DROP INDEX public.app_test_db_order_items_sku_id_3df9c778;
       public            test_db_user    false    243            1           1259    16676 -   app_test_db_payment_details_order_id_ff593fce    INDEX     m   CREATE INDEX app_test_db_payment_details_order_id_ff593fce ON public.payment_details USING btree (order_id);
 A   DROP INDEX public.app_test_db_payment_details_order_id_ff593fce;
       public            test_db_user    false    241            �           1259    16541    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            test_db_user    false    216            �           1259    16481 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            test_db_user    false    218            �           1259    16482 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            test_db_user    false    218            �           1259    16467 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            test_db_user    false    214                       1259    16497 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            test_db_user    false    222            
           1259    16496 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            test_db_user    false    222                       1259    16511 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            test_db_user    false    224                       1259    16510 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            test_db_user    false    224                       1259    16536     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            test_db_user    false    220                       1259    16532 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            test_db_user    false    226                       1259    16533 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            test_db_user    false    226                       1259    16550 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            test_db_user    false    227                       1259    16549 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            test_db_user    false    227            e           2606    16711 =   cart_items app_test_db_cart_ite_cart_id_b3ec4fd0_fk_app_test_    FK CONSTRAINT     �   ALTER TABLE ONLY public.cart_items
    ADD CONSTRAINT app_test_db_cart_ite_cart_id_b3ec4fd0_fk_app_test_ FOREIGN KEY (cart_id) REFERENCES public.carts(cart_id) DEFERRABLE INITIALLY DEFERRED;
 g   ALTER TABLE ONLY public.cart_items DROP CONSTRAINT app_test_db_cart_ite_cart_id_b3ec4fd0_fk_app_test_;
       public          test_db_user    false    3392    249    247            f           2606    16724 <   cart_items app_test_db_cart_ite_sku_id_d4f1d20c_fk_app_test_    FK CONSTRAINT     �   ALTER TABLE ONLY public.cart_items
    ADD CONSTRAINT app_test_db_cart_ite_sku_id_d4f1d20c_fk_app_test_ FOREIGN KEY (sku_id) REFERENCES public.motorbike_skus(sku_id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY public.cart_items DROP CONSTRAINT app_test_db_cart_ite_sku_id_d4f1d20c_fk_app_test_;
       public          test_db_user    false    235    3371    249            d           2606    16729 E   carts app_test_db_carts_user_id_92e1cd26_fk_app_test_db_users_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.carts
    ADD CONSTRAINT app_test_db_carts_user_id_92e1cd26_fk_app_test_db_users_user_id FOREIGN KEY (user_id) REFERENCES public.users(user_id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.carts DROP CONSTRAINT app_test_db_carts_user_id_92e1cd26_fk_app_test_db_users_user_id;
       public          test_db_user    false    247    239    3376            g           2606    16797 F   library_images app_test_db_library__motorbike_id_8a8af66d_fk_app_test_    FK CONSTRAINT     �   ALTER TABLE ONLY public.library_images
    ADD CONSTRAINT app_test_db_library__motorbike_id_8a8af66d_fk_app_test_ FOREIGN KEY (motorbike_id) REFERENCES public.motorbikes(motorbike_id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public.library_images DROP CONSTRAINT app_test_db_library__motorbike_id_8a8af66d_fk_app_test_;
       public          test_db_user    false    3389    245    251            b           2606    16744 >   motorbikes app_test_db_motorbik_brand_id_dc8b42a5_fk_app_test_    FK CONSTRAINT     �   ALTER TABLE ONLY public.motorbikes
    ADD CONSTRAINT app_test_db_motorbik_brand_id_dc8b42a5_fk_app_test_ FOREIGN KEY (brand_id) REFERENCES public.brands(brand_id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY public.motorbikes DROP CONSTRAINT app_test_db_motorbik_brand_id_dc8b42a5_fk_app_test_;
       public          test_db_user    false    245    3359    229            i           2606    16829 N   motorbike_feature_images app_test_db_motorbik_feature_id_765eaa5b_fk_app_test_    FK CONSTRAINT     �   ALTER TABLE ONLY public.motorbike_feature_images
    ADD CONSTRAINT app_test_db_motorbik_feature_id_765eaa5b_fk_app_test_ FOREIGN KEY (feature_id) REFERENCES public.motorbike_features(feature_id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.motorbike_feature_images DROP CONSTRAINT app_test_db_motorbik_feature_id_765eaa5b_fk_app_test_;
       public          test_db_user    false    253    257    3402            j           2606    16834 P   motorbike_feature_images app_test_db_motorbik_motorbike_id_2374ff32_fk_app_test_    FK CONSTRAINT     �   ALTER TABLE ONLY public.motorbike_feature_images
    ADD CONSTRAINT app_test_db_motorbik_motorbike_id_2374ff32_fk_app_test_ FOREIGN KEY (motorbike_id) REFERENCES public.motorbikes(motorbike_id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.motorbike_feature_images DROP CONSTRAINT app_test_db_motorbik_motorbike_id_2374ff32_fk_app_test_;
       public          test_db_user    false    3389    245    257            h           2606    16823 G   motorbike_specs app_test_db_motorbik_motorbike_id_e131d029_fk_app_test_    FK CONSTRAINT     �   ALTER TABLE ONLY public.motorbike_specs
    ADD CONSTRAINT app_test_db_motorbik_motorbike_id_e131d029_fk_app_test_ FOREIGN KEY (motorbike_id) REFERENCES public.motorbikes(motorbike_id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.motorbike_specs DROP CONSTRAINT app_test_db_motorbik_motorbike_id_e131d029_fk_app_test_;
       public          test_db_user    false    245    3389    255            [           2606    16802 F   motorbike_skus app_test_db_motorbik_motorbike_id_fcb5a1ef_fk_app_test_    FK CONSTRAINT     �   ALTER TABLE ONLY public.motorbike_skus
    ADD CONSTRAINT app_test_db_motorbik_motorbike_id_fcb5a1ef_fk_app_test_ FOREIGN KEY (motorbike_id) REFERENCES public.motorbikes(motorbike_id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public.motorbike_skus DROP CONSTRAINT app_test_db_motorbik_motorbike_id_fcb5a1ef_fk_app_test_;
       public          test_db_user    false    235    245    3389            c           2606    16749 =   motorbikes app_test_db_motorbik_type_id_0579c969_fk_app_test_    FK CONSTRAINT     �   ALTER TABLE ONLY public.motorbikes
    ADD CONSTRAINT app_test_db_motorbik_type_id_0579c969_fk_app_test_ FOREIGN KEY (type_id) REFERENCES public.motor_types(type_id) DEFERRABLE INITIALLY DEFERRED;
 g   ALTER TABLE ONLY public.motorbikes DROP CONSTRAINT app_test_db_motorbik_type_id_0579c969_fk_app_test_;
       public          test_db_user    false    245    231    3361            ^           2606    16754 @   order_details app_test_db_order_de_user_id_e0197f40_fk_app_test_    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_details
    ADD CONSTRAINT app_test_db_order_de_user_id_e0197f40_fk_app_test_ FOREIGN KEY (user_id) REFERENCES public.users(user_id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.order_details DROP CONSTRAINT app_test_db_order_de_user_id_e0197f40_fk_app_test_;
       public          test_db_user    false    3376    239    237            `           2606    16677 ?   order_items app_test_db_order_it_order_id_336f31aa_fk_app_test_    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_items
    ADD CONSTRAINT app_test_db_order_it_order_id_336f31aa_fk_app_test_ FOREIGN KEY (order_id) REFERENCES public.order_details(order_id) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY public.order_items DROP CONSTRAINT app_test_db_order_it_order_id_336f31aa_fk_app_test_;
       public          test_db_user    false    243    237    3373            a           2606    16759 =   order_items app_test_db_order_it_sku_id_3df9c778_fk_app_test_    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_items
    ADD CONSTRAINT app_test_db_order_it_sku_id_3df9c778_fk_app_test_ FOREIGN KEY (sku_id) REFERENCES public.motorbike_skus(sku_id) DEFERRABLE INITIALLY DEFERRED;
 g   ALTER TABLE ONLY public.order_items DROP CONSTRAINT app_test_db_order_it_sku_id_3df9c778_fk_app_test_;
       public          test_db_user    false    235    3371    243            _           2606    16671 C   payment_details app_test_db_payment__order_id_ff593fce_fk_app_test_    FK CONSTRAINT     �   ALTER TABLE ONLY public.payment_details
    ADD CONSTRAINT app_test_db_payment__order_id_ff593fce_fk_app_test_ FOREIGN KEY (order_id) REFERENCES public.order_details(order_id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY public.payment_details DROP CONSTRAINT app_test_db_payment__order_id_ff593fce_fk_app_test_;
       public          test_db_user    false    237    241    3373            T           2606    16476 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          test_db_user    false    3318    214    218            S           2606    16471 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          test_db_user    false    216    3323    218            R           2606    16462 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          test_db_user    false    212    3313    214            V           2606    16491 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          test_db_user    false    3323    222    216            U           2606    16486 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          test_db_user    false    222    3331    220            X           2606    16505 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          test_db_user    false    3318    224    214            W           2606    16500 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          test_db_user    false    220    3331    224            Y           2606    16522 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          test_db_user    false    226    3313    212            Z           2606    16527 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          test_db_user    false    3331    220    226            \           2606    16845 <   motorbike_skus motorbike_skus_color_id_3d194d97_fk_motorbike    FK CONSTRAINT     �   ALTER TABLE ONLY public.motorbike_skus
    ADD CONSTRAINT motorbike_skus_color_id_3d194d97_fk_motorbike FOREIGN KEY (color_id) REFERENCES public.motorbike_attributes(attribute_id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY public.motorbike_skus DROP CONSTRAINT motorbike_skus_color_id_3d194d97_fk_motorbike;
       public          test_db_user    false    3366    233    235            ]           2606    16850 =   motorbike_skus motorbike_skus_option_id_231acccf_fk_motorbike    FK CONSTRAINT     �   ALTER TABLE ONLY public.motorbike_skus
    ADD CONSTRAINT motorbike_skus_option_id_231acccf_fk_motorbike FOREIGN KEY (option_id) REFERENCES public.motorbike_attributes(attribute_id) DEFERRABLE INITIALLY DEFERRED;
 g   ALTER TABLE ONLY public.motorbike_skus DROP CONSTRAINT motorbike_skus_option_id_231acccf_fk_motorbike;
       public          test_db_user    false    3366    235    233            �      \.


      �      \.


      �   #   1	Can add log entry	1	add_logentry
 )   2	Can change log entry	1	change_logentry
 )   3	Can delete log entry	1	delete_logentry
 %   4	Can view log entry	1	view_logentry
 &   5	Can add permission	2	add_permission
 ,   6	Can change permission	2	change_permission
 ,   7	Can delete permission	2	delete_permission
 (   8	Can view permission	2	view_permission
    9	Can add group	3	add_group
 #   10	Can change group	3	change_group
 #   11	Can delete group	3	delete_group
    12	Can view group	3	view_group
    13	Can add user	4	add_user
 !   14	Can change user	4	change_user
 !   15	Can delete user	4	delete_user
    16	Can view user	4	view_user
 *   17	Can add content type	5	add_contenttype
 0   18	Can change content type	5	change_contenttype
 0   19	Can delete content type	5	delete_contenttype
 ,   20	Can view content type	5	view_contenttype
 !   21	Can add session	6	add_session
 '   22	Can change session	6	change_session
 '   23	Can delete session	6	delete_session
 #   24	Can view session	6	view_session
 '   25	Can add test_table	7	add_test_table
 -   26	Can change test_table	7	change_test_table
 -   27	Can delete test_table	7	delete_test_table
 )   28	Can view test_table	7	view_test_table
 )   29	Can add motor_types	8	add_motor_types
 /   30	Can change motor_types	8	change_motor_types
 /   31	Can delete motor_types	8	delete_motor_types
 +   32	Can view motor_types	8	view_motor_types
 ;   33	Can add motorbike_attributes	9	add_motorbike_attributes
 A   34	Can change motorbike_attributes	9	change_motorbike_attributes
 A   35	Can delete motorbike_attributes	9	delete_motorbike_attributes
 =   36	Can view motorbike_attributes	9	view_motorbike_attributes
 0   37	Can add motorbike_skus	10	add_motorbike_skus
 6   38	Can change motorbike_skus	10	change_motorbike_skus
 6   39	Can delete motorbike_skus	10	delete_motorbike_skus
 2   40	Can view motorbike_skus	10	view_motorbike_skus
 (   41	Can add motorbikes	11	add_motorbikes
 .   42	Can change motorbikes	11	change_motorbikes
 .   43	Can delete motorbikes	11	delete_motorbikes
 *   44	Can view motorbikes	11	view_motorbikes
     45	Can add brands	12	add_brands
 &   46	Can change brands	12	change_brands
 &   47	Can delete brands	12	delete_brands
 "   48	Can view brands	12	view_brands
 *   49	Can add order_items	13	add_order_items
 0   50	Can change order_items	13	change_order_items
 0   51	Can delete order_items	13	delete_order_items
 ,   52	Can view order_items	13	view_order_items
 (   53	Can add cart_items	14	add_cart_items
 .   54	Can change cart_items	14	change_cart_items
 .   55	Can delete cart_items	14	delete_cart_items
 *   56	Can view cart_items	14	view_cart_items
    57	Can add carts	15	add_carts
 $   58	Can change carts	15	change_carts
 $   59	Can delete carts	15	delete_carts
     60	Can view carts	15	view_carts
 2   61	Can add payment_details	16	add_payment_details
 8   62	Can change payment_details	16	change_payment_details
 8   63	Can delete payment_details	16	delete_payment_details
 4   64	Can view payment_details	16	view_payment_details
    65	Can add users	17	add_users
 $   66	Can change users	17	change_users
 $   67	Can delete users	17	delete_users
     68	Can view users	17	view_users
 .   69	Can add order_details	18	add_order_details
 4   70	Can change order_details	18	change_order_details
 4   71	Can delete order_details	18	delete_order_details
 0   72	Can view order_details	18	view_order_details
 4   73	Can add image_table_test	19	add_image_table_test
 :   74	Can change image_table_test	19	change_image_table_test
 :   75	Can delete image_table_test	19	delete_image_table_test
 6   76	Can view image_table_test	19	view_image_table_test
 0   77	Can add library_images	20	add_library_images
 6   78	Can change library_images	20	change_library_images
 6   79	Can delete library_images	20	delete_library_images
 2   80	Can view library_images	20	view_library_images
 8   81	Can add motorbike_features	21	add_motorbike_features
 >   82	Can change motorbike_features	21	change_motorbike_features
 >   83	Can delete motorbike_features	21	delete_motorbike_features
 :   84	Can view motorbike_features	21	view_motorbike_features
 2   85	Can add motorbike_specs	22	add_motorbike_specs
 8   86	Can change motorbike_specs	22	change_motorbike_specs
 8   87	Can delete motorbike_specs	22	delete_motorbike_specs
 4   88	Can view motorbike_specs	22	view_motorbike_specs
 D   89	Can add motorbike_feature_images	23	add_motorbike_feature_images
 J   90	Can change motorbike_feature_images	23	change_motorbike_feature_images
 J   91	Can delete motorbike_feature_images	23	delete_motorbike_feature_images
 F   92	Can view motorbike_feature_images	23	view_motorbike_feature_images
    \.


         �   1	pbkdf2_sha256$216000$Y4kvXlyncPb7$Lq0eeWcIVMvgY5qQDvB4IBF7uM2WOFEotyxOzMwc4hg=	2024-05-06 22:59:02.860681+07	t	admin			admin@admin.com	t	t	2024-05-03 23:54:54.122821+07
    \.


            \.


            \.


      
   &   4	suzuki	brand_images/suzuki-logo.png
     3	sym	brand_images/sym-logo.png
 &   2	yamaha	brand_images/yamaha-logo.png
 $   1	honda	brand_images/honda-logo.png
 .   5	xe khác	brand_images/other-branch-logo.png
    \.


            \.


            \.


         N   1	2024-05-04 19:50:02.415039+07	1	test_table object (1)	1	[{"added": {}}]	7	1
 N   2	2024-05-04 19:54:01.664099+07	2	test_table object (2)	1	[{"added": {}}]	7	1
 g   3	2024-05-04 20:33:38.250554+07	1	test_table object (1)	2	[{"changed": {"fields": ["Type name"]}}]	7	1
 M   4	2024-05-04 20:36:54.73357+07	3	test_table object (3)	1	[{"added": {}}]	7	1
 N   5	2024-05-04 20:37:00.023867+07	4	test_table object (4)	1	[{"added": {}}]	7	1
 K   6	2024-05-05 15:27:34.453689+07	1	brands object (1)	1	[{"added": {}}]	12	1
 K   7	2024-05-05 15:27:42.373849+07	2	brands object (2)	1	[{"added": {}}]	12	1
 K   8	2024-05-05 15:27:46.146715+07	3	brands object (3)	1	[{"added": {}}]	12	1
 J   9	2024-05-05 15:27:51.77497+07	4	brands object (4)	1	[{"added": {}}]	12	1
 L   10	2024-05-05 15:27:57.704546+07	5	brands object (5)	1	[{"added": {}}]	12	1
 O   11	2024-05-05 15:44:45.43026+07	1	motor_types object (1)	1	[{"added": {}}]	8	1
 P   12	2024-05-05 15:44:52.285444+07	2	motor_types object (2)	1	[{"added": {}}]	8	1
 O   13	2024-05-05 15:44:57.27068+07	3	motor_types object (3)	1	[{"added": {}}]	8	1
 A   14	2024-05-05 15:45:39.858372+07	4	xe 50cc	1	[{"added": {}}]	8	1
 T   15	2024-05-05 16:42:27.941703+07	1	Tiêu chuẩn CBS - option	1	[{"added": {}}]	9	1
 P   16	2024-05-05 16:42:41.589024+07	2	Cao cấp ABS - option	1	[{"added": {}}]	9	1
 S   17	2024-05-05 16:42:53.666662+07	3	Đặc biệt ABS - color	1	[{"added": {}}]	9	1
 P   18	2024-05-05 16:43:03.70528+07	4	Thể thao ABS - option	1	[{"added": {}}]	9	1
 r   19	2024-05-05 16:43:12.672804+07	3	Đặc biệt ABS - option	2	[{"changed": {"fields": ["Attribute type"]}}]	9	1
 N   20	2024-05-05 16:43:44.583012+07	5	Trắng Đen - color	1	[{"added": {}}]	9	1
 L   21	2024-05-05 16:43:51.303442+07	6	Đỏ Đen - color	1	[{"added": {}}]	9	1
 F   22	2024-05-05 16:43:55.688058+07	7	Đen - color	1	[{"added": {}}]	9	1
 L   23	2024-05-05 16:44:00.932464+07	8	Đỏ Đen - color	1	[{"added": {}}]	9	1
 N   24	2024-05-05 16:44:06.617233+07	9	Trắng Đen - color	1	[{"added": {}}]	9	1
 G   25	2024-05-05 16:44:10.911188+07	10	Đen - color	1	[{"added": {}}]	9	1
 L   26	2024-05-05 16:44:16.875671+07	11	Xám Đen - color	1	[{"added": {}}]	9	1
 V   27	2024-05-05 17:46:50.262894+07	1	image_table_test object (1)	1	[{"added": {}}]	19	1
 T   28	2024-05-05 21:12:26.684144+07	1	library_images object (1)	1	[{"added": {}}]	20	1
 A   29	2024-05-05 21:18:15.091483+07	1	SH160i	1	[{"added": {}}]	11	1
 �   30	2024-05-05 21:18:50.733119+07	1	SH160i - Trắng Đen - color - Tiêu chuẩn CBS - option - 120000000	1	[{"added": {}}]	10	1
 m   31	2024-05-05 21:25:28.878158+07	1	library_images object (1)	2	[{"changed": {"fields": ["Motorbike"]}}]	20	1
 A   32	2024-05-06 23:01:41.989902+07	1	design	1	[{"added": {}}]	21	1
 L   33	2024-05-06 23:02:08.743895+07	2	engine_technology	1	[{"added": {}}]	21	1
 J   34	2024-05-06 23:02:26.55306+07	3	utilities_safety	1	[{"added": {}}]	21	1
 E   35	2024-05-06 23:07:18.615404+07	1	SH160i - 1	1	[{"added": {}}]	23	1
 E   36	2024-05-06 23:12:29.678634+07	2	SH160i - 2	1	[{"added": {}}]	23	1
 E   37	2024-05-06 23:13:01.560736+07	3	SH160i - 3	1	[{"added": {}}]	23	1
 V   38	2024-05-06 23:19:01.364593+07	1	SH160i	2	[{"changed": {"fields": ["Image"]}}]	11	1
 n   39	2024-05-06 23:43:41.352424+07	11	Xám Đen - color	2	[{"changed": {"fields": ["Color 1", "Color 2"]}}]	9	1
 ^   40	2024-05-06 23:43:51.113714+07	10	Đen - color	2	[{"changed": {"fields": ["Color 1"]}}]	9	1
 p   41	2024-05-06 23:44:06.677714+07	9	Trắng Đen - color	2	[{"changed": {"fields": ["Color 1", "Color 2"]}}]	9	1
 �   42	2024-05-06 23:44:49.712427+07	1	SH160i - Trắng Đen - color - Tiêu chuẩn CBS - option - 120000000	2	[{"changed": {"fields": ["Sku image"]}}]	10	1
 [   43	2024-05-07 19:59:40.758978+07	5	other	2	[{"changed": {"fields": ["Brand image"]}}]	12	1
 [   44	2024-05-07 20:01:50.50767+07	4	suzuki	2	[{"changed": {"fields": ["Brand image"]}}]	12	1
 Y   45	2024-05-07 20:01:58.607039+07	3	sym	2	[{"changed": {"fields": ["Brand image"]}}]	12	1
 \   46	2024-05-07 20:02:19.391436+07	2	yamaha	2	[{"changed": {"fields": ["Brand image"]}}]	12	1
 [   47	2024-05-07 20:02:29.166398+07	1	honda	2	[{"changed": {"fields": ["Brand image"]}}]	12	1
 z   48	2024-05-07 20:03:56.194297+07	5	xe khác	2	[{"changed": {"fields": ["T\\u00ean th\\u01b0\\u01a1ng hi\\u1ec7u"]}}]	12	1
    49	2024-05-07 20:20:46.491443+07	2	SH160i - Đỏ Đen - color - Tiêu chuẩn CBS - option - 120000000	1	[{"added": {}}]	10	1
 �   50	2024-05-07 20:21:24.760982+07	1	SH160i - Trắng Đen - color - Tiêu chuẩn CBS - option - 93000000	2	[{"changed": {"fields": ["Gi\\u00e1"]}}]	10	1
 �   51	2024-05-07 20:21:32.98084+07	2	SH160i - Đỏ Đen - color - Tiêu chuẩn CBS - option - 93000000	2	[{"changed": {"fields": ["Gi\\u00e1"]}}]	10	1
 x   52	2024-05-07 20:23:24.523591+07	3	SH160i - Đen - color - Tiêu chuẩn CBS - option - 93000000	1	[{"added": {}}]	10	1
 {   53	2024-05-07 20:24:13.748671+07	4	SH160i - Đỏ Đen - color - Cao cấp ABS - option - 101000000	1	[{"added": {}}]	10	1
 }   54	2024-05-07 20:25:06.656832+07	5	SH160i - Trắng Đen - color - Cao cấp ABS - option - 104000000	1	[{"added": {}}]	10	1
 y   55	2024-05-07 20:25:49.925827+07	6	SH160i - Đen - color - Đặc biệt ABS - option - 101000000	1	[{"added": {}}]	10	1
 {   56	2024-05-07 20:26:59.020093+07	7	SH160i - Xám Đen - color - Thể thao ABS - option - 103000000	1	[{"added": {}}]	10	1
 K   57	2024-05-07 20:32:20.480585+07	2	WAVE RSX FI 2024	1	[{"added": {}}]	11	1
 Q   58	2024-05-07 20:34:14.851435+07	12	Tiêu chuẩn - option	1	[{"added": {}}]	9	1
 Q   59	2024-05-07 20:34:22.485682+07	13	Đặc biệt - option	1	[{"added": {}}]	9	1
 N   60	2024-05-07 20:34:28.808674+07	14	Thể thao - option	1	[{"added": {}}]	9	1
 M   61	2024-05-07 21:18:34.190072+07	15	Đen bạc - color	1	[{"added": {}}]	9	1
 W   62	2024-05-07 21:20:26.272312+07	16	Trắng, đen, bạc - color	1	[{"added": {}}]	9	1
 w   63	2024-05-07 21:20:36.68737+07	16	Trắng đen bạc - color	2	[{"changed": {"fields": ["Gi\\u00e1 tr\\u1ecb"]}}]	9	1
 T   64	2024-05-07 21:20:53.110411+07	17	Xanh, đen, bạc - color	1	[{"added": {}}]	9	1
 t   65	2024-05-07 21:20:59.67018+07	17	Xanh đen bạc - color	2	[{"changed": {"fields": ["Gi\\u00e1 tr\\u1ecb"]}}]	9	1
 S   66	2024-05-07 21:21:24.044172+07	18	Đỏ đen bạc - color	1	[{"added": {}}]	9	1
 o   67	2024-05-07 21:21:51.339401+07	17	Xanh đen - color	2	[{"changed": {"fields": ["Gi\\u00e1 tr\\u1ecb"]}}]	9	1
 F   68	2024-05-07 21:21:57.334649+07	16	Trắng đen bạc - color	3		9	1
 �   69	2024-05-07 21:22:29.413411+07	5	Trắng Đen - color	2	[{"changed": {"fields": ["M\\u00e0u s\\u1eafc 1 - m\\u00e0u ch\\u00ednh", "M\\u00e0u s\\u1eafc 2 - m\\u00e0u ph\\u1ee5"]}}]	9	1
 ?   70	2024-05-07 21:22:48.677536+07	9	Trắng Đen - color	3		9	1
 �   71	2024-05-07 21:22:59.685246+07	5	Trắng Đen - color	2	[{"changed": {"fields": ["M\\u00e0u s\\u1eafc 1 - m\\u00e0u ch\\u00ednh", "M\\u00e0u s\\u1eafc 2 - m\\u00e0u ph\\u1ee5"]}}]	9	1
 �   72	2024-05-07 21:23:09.843987+07	18	Đỏ đen bạc - color	2	[{"changed": {"fields": ["M\\u00e0u s\\u1eafc 1 - m\\u00e0u ch\\u00ednh", "M\\u00e0u s\\u1eafc 2 - m\\u00e0u ph\\u1ee5"]}}]	9	1
 p   73	2024-05-07 21:23:16.523441+07	18	Đỏ đen - color	2	[{"changed": {"fields": ["Gi\\u00e1 tr\\u1ecb"]}}]	9	1
 �   74	2024-05-07 21:23:29.081256+07	17	Xanh đen - color	2	[{"changed": {"fields": ["M\\u00e0u s\\u1eafc 1 - m\\u00e0u ch\\u00ednh"]}}]	9	1
 >   75	2024-05-07 21:23:43.362394+07	15	Đen bạc - color	3		9	1
 �   76	2024-05-07 21:24:26.289807+07	8	Đỏ Đen - color	2	[{"changed": {"fields": ["M\\u00e0u s\\u1eafc 1 - m\\u00e0u ch\\u00ednh", "M\\u00e0u s\\u1eafc 2 - m\\u00e0u ph\\u1ee5"]}}]	9	1
 >   77	2024-05-07 21:24:30.667526+07	18	Đỏ đen - color	3		9	1
 �   78	2024-05-07 21:24:49.606637+07	6	Đỏ Đen - color	2	[{"changed": {"fields": ["M\\u00e0u s\\u1eafc 1 - m\\u00e0u ch\\u00ednh", "M\\u00e0u s\\u1eafc 2 - m\\u00e0u ph\\u1ee5"]}}]	9	1
 =   79	2024-05-07 21:24:53.423968+07	8	Đỏ Đen - color	3		9	1
 8   80	2024-05-07 21:24:59.802104+07	10	Đen - color	3		9	1
 �   81	2024-05-07 21:25:17.996057+07	7	Đen - color	2	[{"changed": {"fields": ["M\\u00e0u s\\u1eafc 1 - m\\u00e0u ch\\u00ednh"]}}]	9	1
 �   82	2024-05-07 21:26:48.722624+07	8	WAVE RSX FI 2024 - Đỏ Đen - color - Tiêu chuẩn - option - 22500000	1	[{"added": {}}]	10	1
 ~   83	2024-05-07 21:27:55.810817+07	9	WAVE RSX FI 2024 - Đen - color - Đặc biệt - option - 23500000	1	[{"added": {}}]	10	1
 �   84	2024-05-07 21:28:42.144159+07	10	WAVE RSX FI 2024 - Trắng Đen - color - Thể thao - option - 25500000	1	[{"added": {}}]	10	1
 �   85	2024-05-07 21:29:19.521722+07	11	WAVE RSX FI 2024 - Xanh đen - color - Thể thao - option - 25000000	1	[{"added": {}}]	10	1
 �   86	2024-05-07 21:30:20.206033+07	12	WAVE RSX FI 2024 - Đỏ Đen - color - Thể thao ABS - option - 25000000	1	[{"added": {}}]	10	1
 �   87	2024-05-07 21:30:55.354838+07	11	WAVE RSX FI 2024 - Xanh đen - color - Thể thao - option - 25500000	2	[{"changed": {"fields": ["Gi\\u00e1"]}}]	10	1
 �   88	2024-05-07 21:31:03.520363+07	12	WAVE RSX FI 2024 - Đỏ Đen - color - Thể thao ABS - option - 25500000	2	[{"changed": {"fields": ["Gi\\u00e1"]}}]	10	1
 B   89	2024-05-07 21:32:36.219717+07	3	CBR150R	1	[{"added": {}}]	11	1
 M   90	2024-05-07 21:33:17.010692+07	19	Đỏ đen - color	1	[{"added": {}}]	9	1
 |   91	2024-05-07 21:34:35.631004+07	13	CBR150R - Đỏ Đen - color - Tiêu chuẩn - option - 65000000	1	[{"added": {}}]	10	1
    92	2024-05-07 21:35:20.653761+07	14	WAVE RSX FI 2024 - Đen - color - Đặc biệt - option - 65000000	1	[{"added": {}}]	10	1
 x   93	2024-05-07 21:36:29.81872+07	15	CBR150R - Đỏ Đen - color - Thể thao - option - 66500000	1	[{"added": {}}]	10	1
 �   94	2024-05-07 21:36:54.620903+07	14	CBR150R - Đen - color - Đặc biệt - option - 66000000	2	[{"changed": {"fields": ["Model xe", "Gi\\u00e1"]}}]	10	1
 I   95	2024-05-07 21:39:37.514571+07	4	SUPER CUB C125	1	[{"added": {}}]	11	1
 >   96	2024-05-07 21:40:34.946795+07	19	Đỏ đen - color	3		9	1
 O   97	2024-05-07 21:41:07.94843+07	20	Đỏ trắng - color	1	[{"added": {}}]	9	1
 T   98	2024-05-07 21:42:13.647354+07	21	Xanh xám trắng - color	1	[{"added": {}}]	9	1
 O   99	2024-05-07 21:42:40.432808+07	22	Xanh trắng - color	1	[{"added": {}}]	9	1
 �   100	2024-05-07 21:44:19.556546+07	16	SUPER CUB C125 - Đỏ trắng - color - Tiêu chuẩn - option - 95000000	1	[{"added": {}}]	10	1
 z   101	2024-05-07 21:44:22.122636+07	16	SUPER CUB C125 - Đỏ trắng - color - Tiêu chuẩn - option - 95000000	2	[]	10	1
 �   102	2024-05-07 21:44:59.703932+07	17	SUPER CUB C125 - Xanh xám trắng - color - Tiêu chuẩn - option - 95000000	1	[{"added": {}}]	10	1
 z   103	2024-05-07 21:45:11.222062+07	21	Xanh ngọc trắng - color	2	[{"changed": {"fields": ["Gi\\u00e1 tr\\u1ecb"]}}]	9	1
 �   104	2024-05-07 21:45:49.090116+07	18	SUPER CUB C125 - Xanh trắng - color - Tiêu chuẩn - option - 95000000	1	[{"added": {}}]	10	1
    105	2024-05-07 21:46:25.713421+07	19	SUPER CUB C125 - Đen - color - Đặc biệt - option - 120000000	1	[{"added": {}}]	10	1
 ^   106	2024-05-07 21:55:06.779961+07	1	SH160i	2	[{"changed": {"fields": ["Banner image"]}}]	11	1
 h   107	2024-05-07 21:55:25.001698+07	2	WAVE RSX FI 2024	2	[{"changed": {"fields": ["Banner image"]}}]	11	1
 _   108	2024-05-07 21:55:41.411793+07	3	CBR150R	2	[{"changed": {"fields": ["Banner image"]}}]	11	1
 f   109	2024-05-07 21:55:55.637204+07	4	SUPER CUB C125	2	[{"changed": {"fields": ["Banner image"]}}]	11	1
 I   110	2024-05-07 21:58:20.005602+07	5	WINNER X 2024	1	[{"added": {}}]	11	1
 N   111	2024-05-07 21:59:52.829934+07	23	Bạc Đen - color	1	[{"added": {}}]	9	1
 V   112	2024-05-07 22:03:58.607107+07	24	Đỏ Đen Trắng - color	1	[{"added": {}}]	9	1
 �   113	2024-05-07 22:07:32.875019+07	20	WINNER X 2024 - Trắng Đen - color - Tiêu chuẩn - option - 35000000	1	[{"added": {}}]	10	1
 �   114	2024-05-07 22:08:21.300468+07	21	WINNER X 2024 - Đỏ Đen - color - Tiêu chuẩn - option - 35000000	1	[{"added": {}}]	10	1
 �   115	2024-05-07 22:08:58.563685+07	22	WAVE RSX FI 2024 - Bạc Đen - color - Tiêu chuẩn - option - 35000000	1	[{"added": {}}]	10	1
 �   116	2024-05-07 22:09:21.712982+07	23	Đen Bạc - color	2	[{"changed": {"fields": ["M\\u00e0u s\\u1eafc 1 - m\\u00e0u ch\\u00ednh", "M\\u00e0u s\\u1eafc 2 - m\\u00e0u ph\\u1ee5 1", "Gi\\u00e1 tr\\u1ecb"]}}]	9	1
 �   117	2024-05-07 22:10:02.407246+07	23	WINNER X 2024 - Đen - color - Đặc biệt ABS - option - 41000000	1	[{"added": {}}]	10	1
 �   118	2024-05-07 22:10:26.843374+07	24	WINNER X 2024 - Đỏ Đen - color - Đặc biệt ABS - option - 41000000	1	[{"added": {}}]	10	1
 �   119	2024-05-07 22:11:06.169119+07	25	WINNER X 2024 - Đen Bạc - color - Thể thao ABS - option - 41000000	1	[{"added": {}}]	10	1
 �   120	2024-05-07 22:11:40.748583+07	26	WINNER X 2024 - Đỏ Đen Trắng - color - Thể thao ABS - option - 41000000	1	[{"added": {}}]	10	1
 H   121	2024-05-07 22:34:42.705303+07	25	Xanh - color	1	[{"added": {}}]	9	1
 I   122	2024-05-07 22:35:22.186613+07	26	Đỏ - color	1	[{"added": {}}]	9	1
 M   123	2024-05-07 22:35:35.380156+07	27	Đen Xám - color	1	[{"added": {}}]	9	1
 I   124	2024-05-07 22:37:01.196459+07	6	SH MODE 125cc	1	[{"added": {}}]	11	1
 �   125	2024-05-07 22:37:48.858781+07	27	SH MODE 125cc - Xanh - color - Tiêu chuẩn CBS - option - 58500000	1	[{"added": {}}]	10	1
 �   126	2024-05-07 22:38:21.852204+07	28	SH MODE 125cc - Đỏ - color - Tiêu chuẩn CBS - option - 58500000	1	[{"added": {}}]	10	1
 �   127	2024-05-07 22:38:54.444918+07	29	SH MODE 125cc - Trắng Đen - color - Tiêu chuẩn CBS - option - 60000000	1	[{"added": {}}]	10	1
 �   128	2024-05-07 22:39:29.626801+07	30	SH MODE 125cc - Xanh đen - color - Cao cấp ABS - option - 63000000	1	[{"added": {}}]	10	1
    129	2024-05-07 22:40:06.813407+07	31	SH MODE 125cc - Đỏ Đen - color - Đỏ Đen - color - 63000000	1	[{"added": {}}]	10	1
 �   130	2024-05-07 22:40:34.119217+07	32	SH MODE 125cc - Đen Xám - color - Thể thao ABS - option - 65500000	1	[{"added": {}}]	10	1
 s   131	2024-05-07 22:41:19.382633+07	33	SH MODE 125cc - Đen - color - Đen - color - 66000000	1	[{"added": {}}]	10	1
 �   132	2024-05-07 22:41:52.676779+07	34	SH MODE 125cc - Đen Bạc - color - Đặc biệt ABS - option - 66000000	1	[{"added": {}}]	10	1
 B   133	2024-05-07 22:46:10.046351+07	7	SH125i	1	[{"added": {}}]	11	1
 z   134	2024-05-07 22:47:32.415487+07	35	SH125i - Đen - color - Tiêu chuẩn CBS - option - 74000000	1	[{"added": {}}]	10	1
 �   135	2024-05-07 22:48:08.114545+07	36	SH125i - Đỏ Đen - color - Tiêu chuẩn CBS - option - 74000000	1	[{"added": {}}]	10	1
 }   136	2024-05-07 22:48:48.09932+07	37	SH125i - Trắng Đen - color - Cao cấp ABS - option - 74000000	1	[{"added": {}}]	10	1
 |   137	2024-05-07 22:49:16.517256+07	38	SH125i - Đỏ Đen - color - Cao cấp ABS - option - 84000000	1	[{"added": {}}]	10	1
 ~   138	2024-05-07 22:50:25.073184+07	39	SH125i - Trắng Đen - color - Cao cấp ABS - option - 84000000	1	[{"added": {}}]	10	1
 z   139	2024-05-07 22:50:47.866114+07	40	SH125i - Đen - color - Đặc biệt ABS - option - 83000000	1	[{"added": {}}]	10	1
 |   140	2024-05-07 22:51:20.844551+07	41	SH125i - Đen Xám - color - Thể thao ABS - option - 84000000	1	[{"added": {}}]	10	1
 R   141	2024-05-07 22:55:14.11916+07	28	Xanh Đen Bạc - color	1	[{"added": {}}]	9	1
 T   142	2024-05-07 22:55:36.118891+07	29	Đỏ Đen Bạc - color	1	[{"added": {}}]	9	1
 S   143	2024-05-07 22:56:04.539937+07	30	Xám Đen Bạc - color	1	[{"added": {}}]	9	1
 E   144	2024-05-07 22:57:50.711054+07	8	VARIO 160	1	[{"added": {}}]	11	1
 �   145	2024-05-07 23:01:36.853971+07	42	VARIO 160 - Đen Bạc - color - Tiêu chuẩn CBS - option - 40000000	1	[{"added": {}}]	10	1
 R   146	2024-05-07 23:03:00.585705+07	31	Cao cấp CBS - option	1	[{"added": {}}]	9	1
 ~   147	2024-05-07 23:03:55.561056+07	43	VARIO 160 - Đen Xám - color - Cao cấp CBS - option - 40000000	1	[{"added": {}}]	10	1
 �   148	2024-05-07 23:04:29.323384+07	44	VARIO 160 - Đỏ Đen Bạc - color - Đặc biệt ABS - option - 44000000	1	[{"added": {}}]	10	1
 �   149	2024-05-07 23:05:04.512525+07	45	VARIO 160 - Xám Đen Bạc - color - Thể thao ABS - option - 44500000	1	[{"added": {}}]	10	1
 \   150	2024-05-07 23:15:59.960301+07	32	Tiêu Chuẩn 125cc CBS - option	1	[{"added": {}}]	9	1
 \   151	2024-05-07 23:16:07.570331+07	33	Đặc Biệt 125cc CBS - option	1	[{"added": {}}]	9	1
 \   152	2024-05-07 23:16:15.504132+07	34	Tiêu Chuẩn 160cc ABS - option	1	[{"added": {}}]	9	1
 \   153	2024-05-07 23:16:32.912399+07	35	Đặc Biệt 160cc ABS - option	1	[{"added": {}}]	9	1
 M   154	2024-05-07 23:19:09.084795+07	9	AIR BLADE 125/160	1	[{"added": {}}]	11	1
 N   155	2024-05-07 23:21:21.453038+07	36	Đen Vàng - color	1	[{"added": {}}]	9	1
 M   156	2024-05-07 23:22:19.935795+07	37	Xanh Xám - color	1	[{"added": {}}]	9	1
 N   157	2024-05-07 23:22:45.699453+07	38	Đỏ xám - color	1	[{"added": {}}]	9	1
 R   158	2024-05-07 23:23:10.530612+07	39	Xanh Xám Đen - color	1	[{"added": {}}]	9	1
 �   159	2024-05-07 23:24:03.731251+07	46	AIR BLADE 125/160 - Xanh đen - color - Tiêu Chuẩn 125cc CBS - option - 42500000	1	[{"added": {}}]	10	1
 �   160	2024-05-07 23:24:39.607534+07	47	AIR BLADE 125/160 - Đỏ Đen - color - Tiêu Chuẩn 125cc CBS - option - 42500000	1	[{"added": {}}]	10	1
 �   161	2024-05-07 23:26:15.565852+07	48	AIR BLADE 125/160 - Đen Vàng - color - Đặc Biệt 125cc CBS - option - 43500000	1	[{"added": {}}]	10	1
 �   162	2024-05-07 23:27:38.660703+07	49	AIR BLADE 125/160 - Xám Đen - color - Tiêu Chuẩn 160cc ABS - option - 56000000	1	[{"added": {}}]	10	1
 �   163	2024-05-07 23:28:19.954127+07	50	AIR BLADE 125/160 - Xanh Xám - color - Tiêu Chuẩn 160cc ABS - option - 56000000	1	[{"added": {}}]	10	1
 �   164	2024-05-07 23:28:48.368866+07	51	AIR BLADE 125/160 - Đỏ xám - color - Tiêu Chuẩn 160cc ABS - option - 56000000	1	[{"added": {}}]	10	1
 �   165	2024-05-07 23:29:18.849823+07	52	AIR BLADE 125/160 - Xanh Xám Đen - color - Đặc Biệt 160cc ABS - option - 58000000	1	[{"added": {}}]	10	1
 I   166	2024-05-07 23:31:26.070775+07	40	Bạc - color	1	[{"added": {}}]	9	1
 G   167	2024-05-07 23:35:25.877463+07	10	LEAD 125cc	1	[{"added": {}}]	11	1
 �   168	2024-05-07 23:38:21.301412+07	53	LEAD 125cc - Trắng Đen - color - Tiêu chuẩn - option - 38000000	1	[{"added": {}}]	10	1
 {   169	2024-05-07 23:39:06.523814+07	54	LEAD 125cc - Đỏ - color - Cao cấp ABS - option - 41500000	1	[{"added": {}}]	10	1
 N   170	2024-05-07 23:39:24.874299+07	41	Cao cấp - option	1	[{"added": {}}]	9	1
 �   171	2024-05-07 23:39:59.571605+07	54	LEAD 125cc - Đỏ - color - Cao cấp - option - 41500000	2	[{"changed": {"fields": ["C\\u1ea5u h\\u00ecnh"]}}]	10	1
 v   172	2024-05-07 23:40:42.083671+07	55	LEAD 125cc - Xanh - color - Cao cấp - option - 41500000	1	[{"added": {}}]	10	1
 z   173	2024-05-07 23:41:10.465996+07	56	LEAD 125cc - Đen - color - Đặc biệt - option - 42500000	1	[{"added": {}}]	10	1
 {   174	2024-05-07 23:41:41.996475+07	57	LEAD 125cc - Bạc - color - Đặc biệt - option - 42500000	1	[{"added": {}}]	10	1
 C   175	2024-05-08 00:26:01.314193+07	11	VISION	1	[{"added": {}}]	11	1
 Q   176	2024-05-08 00:26:29.148597+07	42	Cổ điển - option	1	[{"added": {}}]	9	1
 T   177	2024-05-08 00:26:52.815147+07	43	Vàng Đen Bạc - color	1	[{"added": {}}]	9	1
 v   178	2024-05-08 00:29:47.248622+07	58	VISION - Đen - color - Tiêu chuẩn - option - 31500000	1	[{"added": {}}]	10	1
 z   179	2024-05-08 00:30:48.391551+07	59	VISION - Trắng Đen - color - Cao cấp - option - 32800000	1	[{"added": {}}]	10	1
 �   180	2024-05-08 00:30:57.198601+07	58	VISION - Đen - color - Tiêu chuẩn - option - 31500000	2	[{"changed": {"fields": ["Sku image"]}}]	10	1
 x   181	2024-05-08 00:31:33.547795+07	60	VISION - Đỏ Đen - color - Cao cấp - option - 32800000	1	[{"added": {}}]	10	1
 {   182	2024-05-08 00:32:15.925034+07	61	VISION - Xanh đen - color - Đặc biệt - option - 35000000	1	[{"added": {}}]	10	1
 x   183	2024-05-08 00:32:44.688775+07	62	VISION - Xám Đen - color - Thể thao - option - 39500000	1	[{"added": {}}]	10	1
 w   184	2024-05-08 00:33:25.643123+07	63	LEAD 125cc - Đen - color - Thể thao - option - 39500000	1	[{"added": {}}]	10	1
 �   185	2024-05-08 00:33:53.83314+07	64	VISION - Vàng Đen Bạc - color - Cổ điển - option - 40000000	1	[{"added": {}}]	10	1
 �   186	2024-05-08 00:34:23.388394+07	65	LEAD 125cc - Xanh Đen Bạc - color - Cổ điển - option - 40000000	1	[{"added": {}}]	10	1
 C   187	2024-05-08 00:36:59.411797+07	12	SH350i	1	[{"added": {}}]	11	1
 {   188	2024-05-08 00:38:20.943216+07	66	SH350i - Trắng Đen - color - Cao cấp - option - 136000000	1	[{"added": {}}]	10	1
 y   189	2024-05-08 00:38:59.535647+07	67	SH350i - Đỏ Đen - color - Cao cấp - option - 136000000	1	[{"added": {}}]	10	1
 w   190	2024-05-08 00:39:36.108433+07	68	SH350i - Đen - color - Đặc biệt - option - 140000000	1	[{"added": {}}]	10	1
 }   191	2024-05-08 00:40:06.445603+07	69	SH350i - Đen Bạc - color - Đặc biệt - option - 140000000	1	[{"added": {}}]	10	1
 y   192	2024-05-08 00:40:46.864211+07	70	SH350i - Đen Xám - color - Thể thao - option - 140000000	1	[{"added": {}}]	10	1
 L   193	2024-05-08 00:47:35.263103+07	13	FUTURE 125cc Fi	1	[{"added": {}}]	11	1
 k   194	2024-05-08 00:48:17.211973+07	44	Tiêu chuẩn (Phanh đĩa, vành nan) - option	1	[{"added": {}}]	9	1
 i   195	2024-05-08 00:48:23.988705+07	45	Cao cấp (Phanh đĩa, vành đúc) - option	1	[{"added": {}}]	9	1
 m   196	2024-05-08 00:48:34.516567+07	46	Đặc biệt (Phanh đĩa, vành đúc) - option	1	[{"added": {}}]	9	1
 �   197	2024-05-08 00:50:44.247868+07	71	FUTURE 125cc Fi - Xanh đen - color - Tiêu chuẩn (Phanh đĩa, vành nan) - option - 33500000	1	[{"added": {}}]	10	1
 �   198	2024-05-08 00:51:51.028097+07	72	FUTURE 125cc Fi - Đỏ Đen - color - Tiêu chuẩn (Phanh đĩa, vành nan) - option - 33500000	1	[{"added": {}}]	10	1
 �   199	2024-05-08 00:52:24.883377+07	73	FUTURE 125cc Fi - Trắng Đen - color - Cao cấp (Phanh đĩa, vành đúc) - option - 35000000	1	[{"added": {}}]	10	1
 �   200	2024-05-08 00:52:53.795549+07	74	FUTURE 125cc Fi - Xanh đen - color - Cao cấp (Phanh đĩa, vành đúc) - option - 35000000	1	[{"added": {}}]	10	1
 �   201	2024-05-08 00:53:18.643235+07	75	FUTURE 125cc Fi - Đỏ Đen - color - Cao cấp (Phanh đĩa, vành đúc) - option - 35000000	1	[{"added": {}}]	10	1
 �   202	2024-05-08 00:54:01.621588+07	76	FUTURE 125cc Fi - Đen - color - Đặc biệt (Phanh đĩa, vành đúc) - option - 35500000	1	[{"added": {}}]	10	1
 �   203	2024-05-08 00:54:39.40642+07	77	FUTURE 125cc Fi - Xanh Xám Đen - color - Đặc biệt (Phanh đĩa, vành đúc) - option - 35500000	1	[{"added": {}}]	10	1
 X   204	2024-05-08 00:56:53.597238+07	47	Phanh cơ/vành nan - option	1	[{"added": {}}]	9	1
 Z   205	2024-05-08 00:56:59.512156+07	48	Phanh đĩa/vành nan - option	1	[{"added": {}}]	9	1
 \   206	2024-05-08 00:57:09.785148+07	49	Phanh đĩa/vành đúc - option	1	[{"added": {}}]	9	1
 M   207	2024-05-08 00:58:20.39586+07	14	WAVE RSX FI 110cc	1	[{"added": {}}]	11	1
 �   208	2024-05-08 01:00:28.320344+07	78	WAVE RSX FI 110cc - Đỏ Đen - color - Phanh cơ/vành nan - option - 22000000	1	[{"added": {}}]	10	1
 �   209	2024-05-08 01:00:58.484521+07	79	WAVE RSX FI 110cc - Đen - color - Phanh đĩa/vành nan - option - 23000000	1	[{"added": {}}]	10	1
 �   210	2024-05-08 01:01:29.291394+07	80	WAVE RSX FI 110cc - Đỏ Đen - color - Phanh đĩa/vành đúc - option - 25500000	1	[{"added": {}}]	10	1
 �   211	2024-05-08 01:02:10.982526+07	79	WAVE RSX FI 110cc - Đen - color - Phanh đĩa/vành nan - option - 23000000	2	[{"changed": {"fields": ["N\\u0103m s\\u1ea3n xu\\u1ea5t"]}}]	10	1
 �   212	2024-05-08 01:02:57.249508+07	81	WAVE RSX FI 110cc - Phanh đĩa/vành đúc - option - Trắng Đen - color - 25500000	1	[{"added": {}}]	10	1
 �   213	2024-05-08 01:03:31.285762+07	82	WAVE RSX FI 110cc - Xanh đen - color - Phanh đĩa/vành nan - option - 25500000	1	[{"added": {}}]	10	1
 �   214	2024-05-08 01:04:39.369894+07	81	WAVE RSX FI 110cc - Trắng Đen - color - Phanh đĩa/vành đúc - option - 25500000	2	[{"changed": {"fields": ["Phi\\u00ean b\\u1ea3n m\\u00e0u", "C\\u1ea5u h\\u00ecnh"]}}]	10	1
 B   215	2024-05-08 01:07:37.014053+07	15	BLADE	1	[{"added": {}}]	11	1
 W   216	2024-05-08 01:08:39.642682+07	15	BLADE	2	[{"changed": {"fields": ["Image"]}}]	11	1
 {   217	2024-05-08 01:11:13.662344+07	83	BLADE - Đỏ Đen - color - Tiêu chuẩn - option - 19500000	1	[{"added": {}}]	10	1
 z   218	2024-05-08 01:11:53.011997+07	84	BLADE - Xanh đen - color - Tiêu chuẩn - option - 19500000	1	[{"added": {}}]	10	1
 u   219	2024-05-08 01:12:24.231811+07	85	BLADE - Đen - color - Đặc biệt - option - 20500000	1	[{"added": {}}]	10	1
 w   220	2024-05-08 01:13:14.518315+07	86	BLADE - Xanh đen - color - Thể thao - option - 22500000	1	[{"added": {}}]	10	1
 x   221	2024-05-08 01:13:43.395252+07	87	BLADE - Đỏ Đen - color - Thể thao - option - 22500000	1	[{"added": {}}]	10	1
 w   222	2024-05-08 01:14:10.359511+07	88	BLADE - Xanh đen - color - Thể thao - option - 22500000	1	[{"added": {}}]	10	1
 O   223	2024-05-08 01:22:06.653565+07	50	Đỏ Bạc - color	1	[{"added": {}}]	9	1
 Q   224	2024-05-08 01:22:21.582389+07	51	Trắng Bạc - color	1	[{"added": {}}]	9	1
 N   225	2024-05-08 01:22:48.243489+07	52	Xanh Bạc - color	1	[{"added": {}}]	9	1
 Q   226	2024-05-08 01:23:02.481192+07	53	Vàng Trắng - color	1	[{"added": {}}]	9	1
 P   227	2024-05-08 01:23:24.665266+07	54	Xám Trắng - color	1	[{"added": {}}]	9	1
 M   228	2024-05-08 01:24:48.244606+07	16	WAVE ALPHA 110cc	1	[{"added": {}}]	11	1
 �   229	2024-05-08 01:25:45.279439+07	89	WAVE ALPHA 110cc - Đỏ Bạc - color - Tiêu chuẩn - option - 19500000	1	[{"added": {}}]	10	1
 �   230	2024-05-08 01:26:13.278511+07	90	WAVE ALPHA 110cc - Trắng Bạc - color - Tiêu chuẩn - option - 19500000	1	[{"added": {}}]	10	1
 �   231	2024-05-08 01:26:46.98901+07	91	WAVE ALPHA 110cc - Xanh Bạc - color - Tiêu chuẩn - option - 19500000	1	[{"added": {}}]	10	1
 �   232	2024-05-08 01:27:51.617906+07	92	WAVE ALPHA 110cc - Vàng Trắng - color - Cổ điển - option - 20500000	1	[{"added": {}}]	10	1
 M   233	2024-05-08 01:28:39.758287+07	55	Đen mờ - color	1	[{"added": {}}]	9	1
 �   234	2024-05-08 01:28:41.416381+07	93	WAVE ALPHA 110cc - Xám Trắng - color - Cổ điển - option - 20500000	1	[{"added": {}}]	10	1
 �   235	2024-05-08 01:29:07.854877+07	94	WAVE ALPHA 110cc - Đen mờ - color - Đặc biệt - option - 20500000	1	[{"added": {}}]	10	1
 A   236	2024-05-08 01:45:02.430556+07	17	PG-1	1	[{"added": {}}]	11	1
 P   237	2024-05-08 01:46:08.851342+07	56	Xanh dương - color	1	[{"added": {}}]	9	1
 P   238	2024-05-08 01:46:29.818736+07	57	Vàng - Đen - color	1	[{"added": {}}]	9	1
 O   239	2024-05-08 01:46:47.744478+07	58	Cam - Bạc - color	1	[{"added": {}}]	9	1
 M   240	2024-05-08 01:47:13.967646+07	59	Nâu cát - color	1	[{"added": {}}]	9	1
 T   241	2024-05-08 01:47:37.173428+07	60	Xanh rêu - Đen - color	1	[{"added": {}}]	9	1
 |   242	2024-05-08 01:52:17.881701+07	95	PG-1 - Xanh dương - color - Tiêu chuẩn - option - 32000000	1	[{"added": {}}]	10	1
 |   243	2024-05-08 01:52:41.381871+07	96	PG-1 - Vàng - Đen - color - Tiêu chuẩn - option - 32000000	1	[{"added": {}}]	10	1
 {   244	2024-05-08 01:53:05.780656+07	97	PG-1 - Cam - Bạc - color - Tiêu chuẩn - option - 32000000	1	[{"added": {}}]	10	1
 y   245	2024-05-08 01:53:45.782065+07	98	PG-1 - Nâu cát - color - Tiêu chuẩn - option - 32000000	1	[{"added": {}}]	10	1
 �   246	2024-05-08 01:54:07.795868+07	99	PG-1 - Xanh rêu - Đen - color - Tiêu chuẩn - option - 32000000	1	[{"added": {}}]	10	1
 P   247	2024-05-08 01:57:48.614892+07	61	Bạc - Xám - color	1	[{"added": {}}]	9	1
 I   248	2024-05-08 01:58:58.827442+07	18	Yamaha Janus	1	[{"added": {}}]	11	1
 Q   249	2024-05-08 01:59:19.573342+07	62	Đen - Hồng - color	1	[{"added": {}}]	9	1
 }   250	2024-05-08 18:18:26.946001+07	100	Yamaha Janus - Đen - color - Tiêu chuẩn - option - 29500000	1	[{"added": {}}]	10	1
 �   251	2024-05-08 18:18:49.859511+07	101	Yamaha Janus - Đỏ Đen - color - Tiêu chuẩn - option - 29500000	1	[{"added": {}}]	10	1
 �   252	2024-05-08 18:20:00.699958+07	102	Yamaha Janus - Bạc - Xám - color - Tiêu chuẩn - option - 29500000	1	[{"added": {}}]	10	1
 �   253	2024-05-08 18:21:34.638774+07	103	Yamaha Janus - Xanh đen - color - Tiêu chuẩn - option - 29500000	1	[{"added": {}}]	10	1
 }   254	2024-05-08 18:21:58.813988+07	104	Yamaha Janus - Đen - color - Đặc biệt - option - 32000000	1	[{"added": {}}]	10	1
 �   255	2024-05-08 18:22:20.355367+07	105	Yamaha Janus - Đỏ Đen - color - Đặc biệt - option - 32000000	1	[{"added": {}}]	10	1
 �   256	2024-05-08 18:23:01.522125+07	106	Yamaha Janus - Bạc - Xám - color - Đặc biệt - option - 32000000	1	[{"added": {}}]	10	1
 �   257	2024-05-08 18:23:31.292198+07	107	Yamaha Janus - Xanh đen - color - Đặc biệt - option - 32000000	1	[{"added": {}}]	10	1
 N   316	2024-05-08 22:21:25.041777+07	24	Yamaha Jupiter FI	1	[{"added": {}}]	11	1
 �   258	2024-05-08 18:24:05.422153+07	108	Yamaha Janus - Đen - Hồng - color - Phanh đĩa/vành đúc - option - 32000000	1	[{"added": {}}]	10	1
 Q   259	2024-05-08 18:24:41.697507+07	63	Giới hạn - option	1	[{"added": {}}]	9	1
 �   260	2024-05-08 18:24:57.964115+07	108	Yamaha Janus - Đen - Hồng - color - Giới hạn - option - 32000000	2	[{"changed": {"fields": ["C\\u1ea5u h\\u00ecnh"]}}]	10	1
 �   261	2024-05-08 18:25:27.90804+07	109	Yamaha Janus - Xanh đen - color - Giới hạn - option - 32000000	1	[{"added": {}}]	10	1
 �   262	2024-05-08 18:26:02.328687+07	110	Yamaha Janus - Xám Trắng - color - Giới hạn - option - 32000000	1	[{"added": {}}]	10	1
 �   263	2024-05-08 18:26:23.421024+07	111	Yamaha Janus - Đỏ Đen - color - Giới hạn - option - 32000000	1	[{"added": {}}]	10	1
 v   264	2024-05-08 18:28:44.871059+07	27	Đen Xám giữ - color	2	[{"changed": {"fields": ["Gi\\u00e1 tr\\u1ecb"]}}]	9	1
 u   265	2024-05-08 18:29:03.106673+07	11	Xám Đen xóa - color	2	[{"changed": {"fields": ["Gi\\u00e1 tr\\u1ecb"]}}]	9	1
 p   266	2024-05-08 18:31:24.086756+07	11	Xám Đen - color	2	[{"changed": {"fields": ["Gi\\u00e1 tr\\u1ecb"]}}]	9	1
 �   267	2024-05-08 18:32:40.777153+07	7	SH160i - Đen Xám giữ - color - Thể thao ABS - option - 103000000	2	[{"changed": {"fields": ["Phi\\u00ean b\\u1ea3n m\\u00e0u"]}}]	10	1
 �   268	2024-05-08 18:33:13.636422+07	49	AIR BLADE 125/160 - Đen Xám giữ - color - Tiêu Chuẩn 160cc ABS - option - 56000000	2	[{"changed": {"fields": ["Phi\\u00ean b\\u1ea3n m\\u00e0u"]}}]	10	1
 �   269	2024-05-08 18:33:32.435484+07	62	VISION - Đen Xám giữ - color - Thể thao - option - 39500000	2	[{"changed": {"fields": ["Phi\\u00ean b\\u1ea3n m\\u00e0u"]}}]	10	1
 >   270	2024-05-08 18:33:46.737544+07	11	Xám Đen - color	3		9	1
 p   271	2024-05-08 18:34:02.274479+07	27	Đen Xám - color	2	[{"changed": {"fields": ["Gi\\u00e1 tr\\u1ecb"]}}]	9	1
 I   272	2024-05-08 18:41:18.421534+07	19	Yamaha MT-15	1	[{"added": {}}]	11	1
 �   273	2024-05-08 18:42:04.317903+07	112	Yamaha MT-15 - Xanh Xám - color - Tiêu chuẩn - option - 70000000	1	[{"added": {}}]	10	1
 �   274	2024-05-08 18:43:50.23819+07	113	Yamaha MT-15 - Đen Xám - color - Tiêu chuẩn - option - 70000000	1	[{"added": {}}]	10	1
 H   275	2024-05-08 18:49:15.733368+07	64	Xám - color	1	[{"added": {}}]	9	1
 O   276	2024-05-08 18:50:06.328143+07	20	YAMAHA NVX 155 VVA	1	[{"added": {}}]	11	1
 �   277	2024-05-08 18:51:19.157252+07	114	YAMAHA NVX 155 VVA - Đen - color - Tiêu chuẩn - option - 53000000	1	[{"added": {}}]	10	1
 �   278	2024-05-08 18:54:34.576382+07	115	YAMAHA NVX 155 VVA - Xám - color - Tiêu chuẩn - option - 53000000	1	[{"added": {}}]	10	1
 �   279	2024-05-08 18:55:07.302716+07	116	YAMAHA NVX 155 VVA - Bạc - color - Tiêu chuẩn - option - 53000000	1	[{"added": {}}]	10	1
 �   280	2024-05-08 18:55:49.247511+07	117	YAMAHA NVX 155 VVA - Xanh trắng - color - Tiêu chuẩn - option - 53000000	1	[{"added": {}}]	10	1
 �   281	2024-05-08 18:56:40.030804+07	118	YAMAHA NVX 155 VVA - Đen Xám - color - Tiêu chuẩn - option - 53000000	1	[{"added": {}}]	10	1
 K   282	2024-05-08 21:24:59.837764+07	65	Trắng - color	1	[{"added": {}}]	9	1
 I   283	2024-05-08 21:26:37.697794+07	21	Yamaha Latte	1	[{"added": {}}]	11	1
 �   284	2024-05-08 21:33:47.808022+07	119	Yamaha Latte - Xanh dương - color - Tiêu chuẩn - option - 36000000	1	[{"added": {}}]	10	1
 �   285	2024-05-08 21:35:31.5871+07	27	SH MODE 125cc - Xanh dương - color - Tiêu chuẩn CBS - option - 58500000	2	[{"changed": {"fields": ["Phi\\u00ean b\\u1ea3n m\\u00e0u"]}}]	10	1
 �   286	2024-05-08 21:37:27.193399+07	55	LEAD 125cc - Xanh dương - color - Cao cấp - option - 41500000	2	[{"changed": {"fields": ["Phi\\u00ean b\\u1ea3n m\\u00e0u"]}}]	10	1
 8   287	2024-05-08 21:37:36.71206+07	25	Xanh - color	3		9	1
 �   288	2024-05-08 21:38:22.792073+07	120	Yamaha Latte - Trắng - color - Tiêu chuẩn - option - 36000000	1	[{"added": {}}]	10	1
 }   289	2024-05-08 21:39:13.600495+07	121	Yamaha Latte - Đen - color - Tiêu chuẩn - option - 36000000	1	[{"added": {}}]	10	1
 �   290	2024-05-08 21:40:02.345193+07	122	Yamaha Latte - Đen Xám - color - Giới hạn - option - 35500000	1	[{"added": {}}]	10	1
 ~   291	2024-05-08 21:40:44.728537+07	123	Yamaha Latte - Đỏ - color - Tiêu chuẩn - option - 36000000	1	[{"added": {}}]	10	1
 U   292	2024-05-08 21:50:10.481537+07	66	Xanh lục - Đen - color	1	[{"added": {}}]	9	1
 J   293	2024-05-08 21:52:19.773923+07	22	Yamaha Freego	1	[{"added": {}}]	11	1
 �   294	2024-05-08 21:53:32.435122+07	124	Yamaha Freego - Đỏ Đen - color - Tiêu chuẩn - option - 31500000	1	[{"added": {}}]	10	1
 �   295	2024-05-08 21:54:06.340859+07	125	Yamaha Freego - Trắng Đen - color - Tiêu chuẩn - option - 31500000	1	[{"added": {}}]	10	1
 ~   296	2024-05-08 21:55:27.655024+07	126	Yamaha Freego - Đen - color - Tiêu chuẩn - option - 31500000	1	[{"added": {}}]	10	1
 �   297	2024-05-08 21:56:01.049287+07	127	Yamaha Freego - Đỏ Đen - color - Đặc biệt - option - 38000000	1	[{"added": {}}]	10	1
 �   298	2024-05-08 21:57:01.023784+07	128	Yamaha Freego - Xanh đen - color - Đặc biệt - option - 38000000	1	[{"added": {}}]	10	1
 �   299	2024-05-08 21:57:30.514772+07	128	Yamaha Freego - Đen Xám - color - Đặc biệt - option - 38000000	2	[{"changed": {"fields": ["Phi\\u00ean b\\u1ea3n m\\u00e0u"]}}]	10	1
 �   300	2024-05-08 21:58:37.705697+07	129	Yamaha Freego - Xanh lục - Đen - color - Đặc biệt - option - 38000000	1	[{"added": {}}]	10	1
 �   301	2024-05-08 21:59:14.130878+07	130	Yamaha Freego - Xanh đen - color - Đặc biệt - option - 38000000	1	[{"added": {}}]	10	1
 V   302	2024-05-08 22:03:12.461747+07	67	Xanh ngọc - Đen - color	1	[{"added": {}}]	9	1
 W   303	2024-05-08 22:03:51.478819+07	68	Hồng ánh đồng - color	1	[{"added": {}}]	9	1
 J   304	2024-05-08 22:06:58.669257+07	23	Yamaha Grande	1	[{"added": {}}]	11	1
 �   305	2024-05-08 22:12:39.205273+07	131	Yamaha Grande - Đỏ Đen - color - Tiêu chuẩn - option - 46000000	1	[{"added": {}}]	10	1
 �   306	2024-05-08 22:13:02.700961+07	132	Yamaha Grande - Trắng Đen - color - Tiêu chuẩn - option - 46000000	1	[{"added": {}}]	10	1
 ~   307	2024-05-08 22:13:34.439371+07	133	Yamaha Grande - Đen - color - Tiêu chuẩn - option - 46000000	1	[{"added": {}}]	10	1
 �   308	2024-05-08 22:13:55.001243+07	134	Yamaha Grande - Đỏ Đen - color - Đặc biệt - option - 50500000	1	[{"added": {}}]	10	1
 �   309	2024-05-08 22:14:23.182376+07	135	Yamaha Grande - Trắng Đen - color - Đặc biệt - option - 50500000	1	[{"added": {}}]	10	1
 ~   310	2024-05-08 22:14:46.030703+07	136	Yamaha Grande - Đen - color - Đặc biệt - option - 50500000	1	[{"added": {}}]	10	1
 �   311	2024-05-08 22:15:15.986975+07	137	Yamaha Grande - Xanh ngọc - Đen - color - Đặc biệt - option - 50500000	1	[{"added": {}}]	10	1
 �   312	2024-05-08 22:15:51.637699+07	138	Yamaha Grande - Hồng ánh đồng - color - Giới hạn - option - 51000000	1	[{"added": {}}]	10	1
 �   313	2024-05-08 22:16:18.119897+07	139	Yamaha Grande - Đen Bạc - color - Giới hạn - option - 51000000	1	[{"added": {}}]	10	1
 �   314	2024-05-08 22:16:46.612295+07	140	Yamaha Grande - Đen Xám - color - Giới hạn - option - 51000000	1	[{"added": {}}]	10	1
 �   315	2024-05-08 22:17:17.874493+07	141	Yamaha Grande - Xanh đen - color - Giới hạn - option - 51000000	1	[{"added": {}}]	10	1
 �   317	2024-05-08 22:22:29.440443+07	142	Yamaha Jupiter FI - Đen - color - Tiêu chuẩn - option - 30000000	1	[{"added": {}}]	10	1
 �   318	2024-05-08 22:22:59.497485+07	143	Yamaha Jupiter FI - Đỏ - color - Tiêu chuẩn - option - 30000000	1	[{"added": {}}]	10	1
 �   319	2024-05-08 22:23:39.907377+07	144	Yamaha Jupiter FI - Xám - color - Tiêu chuẩn - option - 30000000	1	[{"added": {}}]	10	1
 �   320	2024-05-08 22:24:08.515252+07	145	Yamaha Jupiter FI - Đen - color - Giới hạn - option - 30500000	1	[{"added": {}}]	10	1
 �   321	2024-05-08 22:24:42.855953+07	146	Yamaha Jupiter FI - Đen - color - Giới hạn - option - 30500000	1	[{"added": {}}]	10	1
 �   322	2024-05-08 22:25:13.908274+07	147	Yamaha Jupiter FI - Xám - color - Giới hạn - option - 30500000	1	[{"added": {}}]	10	1
 �   323	2024-05-08 22:25:48.059443+07	148	Yamaha Jupiter FI - Bạc - color - Giới hạn - option - 30500000	1	[{"added": {}}]	10	1
 �   324	2024-05-08 22:27:39.487973+07	149	Yamaha Jupiter FI - Đỏ - color - Giới hạn - option - 30500000	1	[{"added": {}}]	10	1
 I   325	2024-05-08 22:34:07.274172+07	69	Vàng - color	1	[{"added": {}}]	9	1
 P   326	2024-05-08 22:35:21.482515+07	25	Yamaha Jupiter Finn	1	[{"added": {}}]	11	1
 �   327	2024-05-08 22:36:42.994682+07	150	Yamaha Jupiter Finn - Xanh Xám - color - Tiêu chuẩn - option - 27500000	1	[{"added": {}}]	10	1
 �   328	2024-05-08 22:40:13.898621+07	151	Yamaha Jupiter Finn - Đỏ Đen - color - Tiêu chuẩn - option - 27500000	1	[{"added": {}}]	10	1
 �   329	2024-05-08 22:40:50.000045+07	152	Yamaha Jupiter Finn - Đen Xám - color - Tiêu chuẩn - option - 27500000	1	[{"added": {}}]	10	1
 �   330	2024-05-08 22:41:42.692261+07	153	Yamaha Jupiter Finn - Bạc - color - Cao cấp ABS - option - 28000000	1	[{"added": {}}]	10	1
 �   331	2024-05-08 22:42:19.266914+07	153	Yamaha Jupiter Finn - Bạc - color - Cao cấp - option - 28000000	2	[{"changed": {"fields": ["C\\u1ea5u h\\u00ecnh"]}}]	10	1
 �   332	2024-05-08 22:42:58.147499+07	154	Yamaha Jupiter Finn - Xanh dương - color - Cao cấp - option - 28000000	1	[{"added": {}}]	10	1
 �   333	2024-05-08 22:43:36.941557+07	155	Yamaha Jupiter Finn - Xám - color - Cao cấp - option - 28000000	1	[{"added": {}}]	10	1
 �   334	2024-05-08 22:44:05.365377+07	156	Yamaha Jupiter Finn - Vàng - color - Cao cấp - option - 28000000	1	[{"added": {}}]	10	1
 E   335	2024-05-08 22:54:49.72077+07	70	RC - color	1	[{"added": {}}]	9	1
 F   336	2024-05-08 22:54:57.24354+07	71	GP - option	1	[{"added": {}}]	9	1
 w   337	2024-05-08 22:55:16.361453+07	70	RC - option	2	[{"changed": {"fields": ["Ki\\u1ec3u ph\\u00e2n lo\\u1ea1i"]}}]	9	1
 N   338	2024-05-08 22:56:21.245464+07	72	Xanh lục - color	1	[{"added": {}}]	9	1
 Q   339	2024-05-08 22:56:50.238479+07	73	Xám đen cam - color	1	[{"added": {}}]	9	1
 Q   340	2024-05-08 23:22:28.158939+07	26	Yamaha Exciter 150cc	1	[{"added": {}}]	11	1
 z   341	2024-05-08 23:24:37.523707+07	157	Yamaha Exciter 150cc - Đen - color - RC - option - 45000000	1	[{"added": {}}]	10	1
 �   342	2024-05-08 23:25:05.825602+07	158	Yamaha Exciter 150cc - Đỏ Đen - color - RC - option - 45000000	1	[{"added": {}}]	10	1
 �   343	2024-05-08 23:25:40.461567+07	159	Yamaha Exciter 150cc - Xám đen cam - color - RC - option - 45000000	1	[{"added": {}}]	10	1
 �   344	2024-05-08 23:27:05.90343+07	160	Yamaha Exciter 150cc - Đỏ trắng - color - RC - option - 45000000	1	[{"added": {}}]	10	1
 �   345	2024-05-08 23:27:36.726806+07	161	Yamaha Exciter 150cc - Xanh dương - color - GP - option - 45500000	1	[{"added": {}}]	10	1
 z   346	2024-05-08 23:28:29.076875+07	162	Yamaha Exciter 150cc - Xám - color - GP - option - 45500000	1	[{"added": {}}]	10	1
 �   347	2024-05-08 23:28:50.883913+07	163	Yamaha Exciter 150cc - Bạc - Xám - color - GP - option - 45500000	1	[{"added": {}}]	10	1
 �   348	2024-05-08 23:29:15.166556+07	164	Yamaha Exciter 150cc - Xanh lục - color - GP - option - 45500000	1	[{"added": {}}]	10	1
 �   349	2024-05-08 23:29:38.545341+07	165	Yamaha Exciter 150cc - Trắng Đen - color - Giới hạn - option - 46000000	1	[{"added": {}}]	10	1
 �   350	2024-05-08 23:30:26.769606+07	166	Yamaha Exciter 150cc - Đen Xám - color - Giới hạn - option - 46000000	1	[{"added": {}}]	10	1
 �   351	2024-05-08 23:31:03.716455+07	167	Yamaha Exciter 150cc - Xanh ngọc - Đen - color - Giới hạn - option - 46000000	1	[{"added": {}}]	10	1
 �   352	2024-05-08 23:31:29.686854+07	168	Yamaha Exciter 150cc - Xanh đen - color - Giới hạn - option - 46000000	1	[{"added": {}}]	10	1
 G   353	2024-05-09 00:22:22.297101+07	27	SHARK 50cc	1	[{"added": {}}]	11	1
 G   354	2024-05-09 00:23:09.574311+07	28	ATILA 50cc	1	[{"added": {}}]	11	1
 H   355	2024-05-09 00:23:52.60401+07	29	PASSING 50cc	1	[{"added": {}}]	11	1
 H   356	2024-05-09 00:24:45.295462+07	30	ANGELA 50cc	1	[{"added": {}}]	11	1
 E   357	2024-05-09 00:25:40.465608+07	31	GSX S150	1	[{"added": {}}]	11	1
 E   358	2024-05-09 00:26:35.458435+07	32	GSX R150	1	[{"added": {}}]	11	1
 �   359	2024-05-09 00:30:41.628656+07	169	SHARK 50cc - Trắng Đen - color - Tiêu chuẩn - option - 24500000	1	[{"added": {}}]	10	1
 {   360	2024-05-09 00:31:05.379751+07	170	SHARK 50cc - Xám - color - Tiêu chuẩn - option - 24500000	1	[{"added": {}}]	10	1
 �   361	2024-05-09 00:31:44.583547+07	171	SHARK 50cc - Xanh dương - color - Tiêu chuẩn - option - 24500000	1	[{"added": {}}]	10	1
 O   362	2024-05-09 00:32:29.822966+07	74	Sơn bóng - option	1	[{"added": {}}]	9	1
 N   363	2024-05-09 00:32:36.755788+07	75	Sơn mờ - option	1	[{"added": {}}]	9	1
 x   364	2024-05-09 00:34:16.339614+07	172	ATILA 50cc - Đen - color - Sơn bóng - option - 26700000	1	[{"added": {}}]	10	1
 k   365	2024-05-09 00:34:24.449521+07	172	ATILA 50cc - Đen - color - Sơn bóng - option - 26700000	2	[]	10	1
 {   366	2024-05-09 00:34:54.762493+07	173	ATILA 50cc - Đen - color - Tiêu chuẩn - option - 26700000	1	[{"added": {}}]	10	1
 �   367	2024-05-09 00:35:26.129341+07	174	ATILA 50cc - Trắng Đen - color - Tiêu chuẩn - option - 26700000	1	[{"added": {}}]	10	1
 S   368	2024-05-09 00:36:48.824327+07	76	Xám đỏ đen - color	1	[{"added": {}}]	9	1
 �   369	2024-05-09 00:37:13.658032+07	175	ATILA 50cc - Xám đỏ đen - color - Sơn mờ - option - 27200000	1	[{"added": {}}]	10	1
 �   370	2024-05-09 00:38:15.828636+07	176	PASSING 50cc - Đen Xám - color - Tiêu chuẩn - option - 24700000	1	[{"added": {}}]	10	1
 y   371	2024-05-09 00:39:00.175357+07	177	PASSING 50cc - Đen - color - Sơn mờ - option - 24700000	1	[{"added": {}}]	10	1
 ~   372	2024-05-09 00:39:39.083398+07	178	PASSING 50cc - Đen Xám - color - Sơn mờ - option - 24700000	1	[{"added": {}}]	10	1
 �   373	2024-05-09 00:40:33.785223+07	179	ANGELA 50cc - Xanh ngọc trắng - color - Tiêu chuẩn - option - 18800000	1	[{"added": {}}]	10	1
 �   374	2024-05-09 00:40:53.349364+07	180	ANGELA 50cc - Xanh trắng - color - Tiêu chuẩn - option - 18800000	1	[{"added": {}}]	10	1
 �   375	2024-05-09 00:43:16.749546+07	181	ANGELA 50cc - Xám Trắng - color - Tiêu chuẩn - option - 18800000	1	[{"added": {}}]	10	1
    376	2024-05-09 00:44:05.638756+07	182	GSX S150 - Đỏ Đen - color - Tiêu chuẩn - option - 69000000	1	[{"added": {}}]	10	1
 y   377	2024-05-09 00:44:29.108652+07	183	GSX S150 - Đen - color - Tiêu chuẩn - option - 69000000	1	[{"added": {}}]	10	1
 ~   378	2024-05-09 00:45:09.835896+07	184	GSX S150 - Xanh đen - color - Tiêu chuẩn - option - 69000000	1	[{"added": {}}]	10	1
    379	2024-05-09 00:46:00.019491+07	185	GSX R150 - Đỏ Đen - color - Tiêu chuẩn - option - 75000000	1	[{"added": {}}]	10	1
 ~   380	2024-05-09 00:46:24.145141+07	186	GSX R150 - Xanh đen - color - Tiêu chuẩn - option - 75000000	1	[{"added": {}}]	10	1
 y   381	2024-05-09 00:46:54.614049+07	187	GSX R150 - Đen - color - Tiêu chuẩn - option - 75000000	1	[{"added": {}}]	10	1
    \.


      �      1	admin	logentry
    2	auth	permission
    3	auth	group
    4	auth	user
    5	contenttypes	contenttype
    6	sessions	session
    7	app_test_db	test_table
    8	app_test_db	motor_types
 #   9	app_test_db	motorbike_attributes
    10	app_test_db	motorbike_skus
    11	app_test_db	motorbikes
    12	app_test_db	brands
    13	app_test_db	order_items
    14	app_test_db	cart_items
    15	app_test_db	carts
    16	app_test_db	payment_details
    17	app_test_db	users
    18	app_test_db	order_details
     19	app_test_db	image_table_test
    20	app_test_db	library_images
 "   21	app_test_db	motorbike_features
    22	app_test_db	motorbike_specs
 (   23	app_test_db	motorbike_feature_images
    \.


      �   :   1	contenttypes	0001_initial	2024-05-03 23:47:35.248683+07
 2   2	auth	0001_initial	2024-05-03 23:47:35.315368+07
 3   3	admin	0001_initial	2024-05-03 23:47:35.377538+07
 D   4	admin	0002_logentry_remove_auto_add	2024-05-03 23:47:35.390225+07
 L   5	admin	0003_logentry_add_action_flag_choices	2024-05-03 23:47:35.397964+07
 K   6	contenttypes	0002_remove_content_type_name	2024-05-03 23:47:35.415645+07
 K   7	auth	0002_alter_permission_name_max_length	2024-05-03 23:47:35.421899+07
 F   8	auth	0003_alter_user_email_max_length	2024-05-03 23:47:35.430254+07
 C   9	auth	0004_alter_user_username_opts	2024-05-03 23:47:35.436726+07
 F   10	auth	0005_alter_user_last_login_null	2024-05-03 23:47:35.441703+07
 E   11	auth	0006_require_contenttypes_0002	2024-05-03 23:47:35.443711+07
 O   12	auth	0007_alter_validators_add_error_messages	2024-05-03 23:47:35.452134+07
 J   13	auth	0008_alter_user_username_max_length	2024-05-03 23:47:35.463813+07
 K   14	auth	0009_alter_user_last_name_max_length	2024-05-03 23:47:35.470655+07
 G   15	auth	0010_alter_group_name_max_length	2024-05-03 23:47:35.476938+07
 D   16	auth	0011_update_proxy_permissions	2024-05-03 23:47:35.487159+07
 L   17	auth	0012_alter_user_first_name_max_length	2024-05-03 23:47:35.493619+07
 7   18	sessions	0001_initial	2024-05-03 23:47:35.503448+07
 :   19	app_test_db	0001_initial	2024-05-04 13:20:34.575726+07
 C   20	app_test_db	0002_auto_20240505_1206	2024-05-05 12:07:06.4556+07
 E   21	app_test_db	0003_auto_20240505_1517	2024-05-05 15:17:35.961643+07
 E   22	app_test_db	0004_auto_20240505_1520	2024-05-05 15:20:59.314502+07
 D   23	app_test_db	0005_auto_20240505_1527	2024-05-05 15:27:05.54254+07
 E   24	app_test_db	0006_auto_20240505_1704	2024-05-05 17:04:55.731205+07
 E   25	app_test_db	0007_auto_20240505_1711	2024-05-05 17:11:57.732577+07
 C   26	app_test_db	0008_image_table_test	2024-05-05 17:45:36.527726+07
 A   27	app_test_db	0009_library_images	2024-05-05 21:10:05.893803+07
 E   28	app_test_db	0010_auto_20240505_2112	2024-05-05 21:12:11.027699+07
 K   29	app_test_db	0011_library_images_motorbike	2024-05-05 21:23:15.059237+07
 E   30	app_test_db	0012_auto_20240505_2218	2024-05-05 22:18:41.007121+07
 E   31	app_test_db	0013_auto_20240506_2256	2024-05-06 22:56:27.920431+07
 V   32	app_test_db	0014_motorbike_feature_images_description	2024-05-06 23:04:16.00442+07
 E   33	app_test_db	0015_auto_20240506_2304	2024-05-06 23:04:44.211637+07
 E   34	app_test_db	0016_auto_20240506_2305	2024-05-06 23:05:23.603587+07
 D   35	app_test_db	0017_auto_20240506_2316	2024-05-06 23:16:51.93608+07
 E   36	app_test_db	0018_auto_20240506_2325	2024-05-06 23:26:00.094237+07
 E   37	app_test_db	0019_auto_20240507_0102	2024-05-07 01:04:05.569631+07
 E   38	app_test_db	0020_auto_20240507_0126	2024-05-07 01:26:23.359916+07
 E   39	app_test_db	0021_auto_20240507_1956	2024-05-07 19:56:38.047913+07
 E   40	app_test_db	0022_auto_20240507_2011	2024-05-07 20:11:40.078473+07
 J   41	app_test_db	0023_motorbikes_banner_image	2024-05-07 21:52:35.876175+07
 E   42	app_test_db	0024_auto_20240507_2201	2024-05-07 22:01:30.700284+07
 E   43	app_test_db	0025_auto_20240508_0138	2024-05-08 01:38:41.854148+07
 E   44	app_test_db	0026_auto_20240508_0140	2024-05-08 01:40:02.859678+07
 E   45	app_test_db	0027_auto_20240508_2326	2024-05-08 23:26:20.880293+07
    \.


           figov0uwoz2hnxr9uq9rwwyince2r415	.eJxVjE0OwiAYBe_C2hChlKJL9z0D-f6QqoGktCvj3Q1JF7p9M_PeKsK-5bg3WePC6qqMOv1uCPSU0gE_oNyrplq2dUHdFX3QpufK8rod7t9BhpZ7bR2RTwnBiR08sBBeHKHwhBM47zykgX0aA0kwwsFyMgFRzmn0TKA-XzJOOhU:1s2wH0:aRZ8RvFcodVfPJDH8CmE9mb_pL0usj5XFLJ6uvgmBlk	2024-05-18 00:00:38.485781+07
   u28w9klvm68py6p9a6f10b5k50qw1u0o	.eJxVjE0OwiAYBe_C2hChlKJL9z0D-f6QqoGktCvj3Q1JF7p9M_PeKsK-5bg3WePC6qqMOv1uCPSU0gE_oNyrplq2dUHdFX3QpufK8rod7t9BhpZ7bR2RTwnBiR08sBBeHKHwhBM47zykgX0aA0kwwsFyMgFRzmn0TKA-XzJOOhU:1s38mv:tRXPh-56ke4sI4qlPfvaC6JxBtedUSHRrjVQY7-Wj_I	2024-05-18 13:22:25.717908+07
   0756hv5i8uimekwzsj5v2e1bwzrfl9q4	.eJxVjE0OwiAYBe_C2hChlKJL9z0D-f6QqoGktCvj3Q1JF7p9M_PeKsK-5bg3WePC6qqMOv1uCPSU0gE_oNyrplq2dUHdFX3QpufK8rod7t9BhpZ7bR2RTwnBiR08sBBeHKHwhBM47zykgX0aA0kwwsFyMgFRzmn0TKA-XzJOOhU:1s40k2:6DtfwYirOjVWOQihYoKyu-0DcxACPX0SCyd_Y7gEgGM	2024-05-20 22:59:02.866142+07
    \.


          2   1	library_images/Remove-bg.ai_1714417655421.png	1
    \.


            1	xe ga
 
   2	xe số
    3	xe côn tay
 
   4	xe 50cc
    \.


            1	option	Tiêu chuẩn CBS			
    2	option	Cao cấp ABS			
    4	option	Thể thao ABS			
    3	option	Đặc biệt ABS			
    12	option	Tiêu chuẩn			
    13	option	Đặc biệt			
    14	option	Thể thao			
 "   5	color	Trắng Đen	white	black	
 #   17	color	Xanh đen	lightblue	Đen	
    6	color	Đỏ Đen	red	black	
    7	color	Đen	black		
 "   20	color	Đỏ trắng	red	white	
 '   22	color	Xanh trắng	lightblue	white	
 )   21	color	Xanh ngọc trắng	aqua	white	
 ,   24	color	Đỏ Đen Trắng	red	black	white
 "   23	color	Đen Bạc	black	silver	
    26	color	Đỏ	red		
 0   28	color	Xanh Đen Bạc	lightblue	black	silver
 +   29	color	Đỏ Đen Bạc	red	black	silver
 +   30	color	Xám Đen Bạc	gray	black	sliver
    31	option	Cao cấp CBS			
 %   32	option	Tiêu Chuẩn 125cc CBS			
 %   33	option	Đặc Biệt 125cc CBS			
 %   34	option	Tiêu Chuẩn 160cc ABS			
 %   35	option	Đặc Biệt 160cc ABS			
 "   36	color	Đen Vàng	black	yellow	
 #   37	color	Xanh Xám	lightblue	gray	
    38	color	Đỏ xám	red	gray	
 -   39	color	Xanh Xám Đen	darkgreen	gray	black
    40	color	Bạc	silver		
    41	option	Cao cấp			
    42	option	Cổ điển			
 .   43	color	Vàng Đen Bạc	yellow	black	silver
 4   44	option	Tiêu chuẩn (Phanh đĩa, vành nan)			
 2   45	option	Cao cấp (Phanh đĩa, vành đúc)			
 6   46	option	Đặc biệt (Phanh đĩa, vành đúc)			
 !   47	option	Phanh cơ/vành nan			
 #   48	option	Phanh đĩa/vành nan			
 %   49	option	Phanh đĩa/vành đúc			
 !   50	color	Đỏ Bạc	red	silver	
 %   51	color	Trắng Bạc	white	silver	
 &   52	color	Xanh Bạc	lightblue	silver	
 %   53	color	Vàng Trắng	yellow	white	
 "   54	color	Xám Trắng	gray	white	
    55	color	Đen mờ	black		
    56	color	Xanh dương	cyan		
 $   57	color	Vàng - Đen	yellow	black	
 $   58	color	Cam - Bạc	orange	silver	
    59	color	Nâu cát	brown		
 '   60	color	Xanh rêu - Đen	green	black	
 #   61	color	Bạc - Xám	silver	gray	
 #   62	color	Đen - Hồng	black	pink	
    63	option	Giới hạn			
    27	color	Đen Xám	black	gray	
    64	color	Xám	gray		
    65	color	Trắng	white		
 ,   66	color	Xanh lục - Đen	darkgreen	black	
 (   67	color	Xanh ngọc - Đen	aqua	black	
 '   68	color	Hồng ánh đồng	#a56a26		
    69	color	Vàng	yellow		
    71	option	GP			
    70	option	RC			
     72	color	Xanh lục	darkgreen		
 )   73	color	Xám đen cam	gray	black	orange
    74	option	Sơn bóng			
    75	option	Sơn mờ			
 (   76	color	Xám đỏ đen	gray	red	black
    \.


      &   b   1	feature_images/dien-mao-SH-scaled.jpeg	1	1	Diện mạo mới sang trọng và thời thượng
 \   2	feature_images/dong-co-sh160.jpeg	2	1	Động cơ eSP+ 4 van thông minh thế hệ mới
 W   3	feature_images/abs-sh160-scaled.jpeg	3	1	Hệ thống chống bó cứng phanh (ABS)
    \.


      "   	   1	design
    2	engine_technology
    3	utilities_safety
    \.


         =   71	2024	33500000	17	13	44	sku_images/xanh-den-tieu-chuan.png
 :   1	2024	93000000	5	1	1	sku_images/sh160i-trang-cao-cap.png
 >   2	2024	93000000	6	1	1	sku_images/sh160i-do-den-tieu-chuan.png
 ;   3	2024	93000000	7	1	1	sku_images/sh160i-den-tieu-chuan.png
 <   4	2024	101000000	6	1	2	sku_images/SH160i-do-den-cao-cap.png
 C   5	2024	104000000	5	1	2	sku_images/sh160i-trang-cao-cap_lkyPO3S.png
 :   6	2024	101000000	7	1	3	sku_images/sh160i-den-dac-biet.png
 =   8	2024	22500000	6	2	12	sku_images/gKa9cU00hv1JiyQiGVEq_1.png
 ;   9	2024	23500000	7	2	13	sku_images/GZxuAoXd6O0zJQCqeGAy.png
 <   10	2024	25500000	5	2	14	sku_images/sgVlyabRnXMMrvE6XmyL.png
 =   11	2024	25500000	17	2	14	sku_images/jia5etJBQ6JnwZpOBL2Z.png
 ;   12	2024	25500000	6	2	4	sku_images/NcnkClK5XhDj3GpnmKW6.png
 ;   13	2024	65000000	6	3	12	sku_images/den-do-compressed_1.jpg
 ;   15	2024	66500000	6	3	14	sku_images/the-thao-compressed.jpg
 ;   14	2024	66000000	7	3	13	sku_images/dac-biet-compressed.jpg
 >   16	2024	95000000	20	4	12	sku_images/do-trang-tieu-chuan_1.png
 C   17	2024	95000000	21	4	12	sku_images/xanh-ngoc-trang-tieu-chuan.png
 >   18	2024	95000000	22	4	12	sku_images/xanh-trang-tieu-chuan.png
 ;   19	2024	120000000	7	4	13	sku_images/dden-ddawcj-bieetj.png
 =   20	2024	35000000	5	5	12	sku_images/tieu-chuan-trang-den.jpeg
 :   21	2024	35000000	6	5	12	sku_images/tieu-chuan-do-den.jpeg
 ;   22	2024	35000000	23	2	12	sku_images/tieu-chuan-den-bac.jpg
 4   23	2024	41000000	7	5	3	sku_images/dac-biet-den.jpeg
 7   24	2024	41000000	6	5	3	sku_images/dac-biet-do-den.jpeg
 9   25	2024	41000000	23	5	4	sku_images/dac-biet-bac-den.jpeg
 >   26	2024	41000000	24	5	4	sku_images/the-thao-do-den-trang.jpeg
 7   28	2024	58500000	26	6	1	sku_images/do-tieu-chuan-1.png
 ;   29	2024	60000000	5	6	1	sku_images/trang-tieu-chuan-1-1.png
 :   30	2024	63000000	17	6	2	sku_images/cao-cap-xanh-den-1.png
 7   31	2024	63000000	6	6	6	sku_images/cao-cap-do-den-1.png
 :   32	2024	65500000	27	6	4	sku_images/xam-den-the-thao-1.png
 7   33	2024	66000000	7	6	7	sku_images/den-dac-biet-1-2.png
 :   34	2024	66000000	23	6	3	sku_images/bac-den-dac-biet-1.png
 ;   35	2024	74000000	7	7	1	sku_images/125-den-tieu-chuan_1.png
 >   36	2024	74000000	6	7	1	sku_images/125-do-den-tieu-chuan-1.png
 ?   37	2024	74000000	5	7	2	sku_images/125-trang-den-tieu-chuan.png
 9   38	2024	84000000	6	7	2	sku_images/125-do-den-cao-cap.png
 <   39	2024	84000000	5	7	2	sku_images/125-trang-den-cao-cap.png
 7   40	2024	83000000	7	7	3	sku_images/125-den-dac-biet.png
 <   41	2024	84000000	27	7	4	sku_images/125-xam-den-the-thao.png
 <   42	2024	40000000	23	8	1	sku_images/den-bac-tieu-chuan_1.png
 =   43	2024	40000000	27	8	31	sku_images/xanh-den-bac-cao-cap.png
 ;   44	2024	44000000	29	8	3	sku_images/do-den-bac-dac-biet.png
 <   45	2024	44500000	30	8	4	sku_images/xam-den-bac-the-thao.png
 @   46	2024	42500000	17	9	32	sku_images/125-xanh-den-tieu-chuan.png
 =   47	2024	42500000	6	9	32	sku_images/125-do-den-tieu-chuan.png
 >   48	2024	43500000	36	9	33	sku_images/125-den-vang-dac-biet.png
 @   50	2024	56000000	37	9	34	sku_images/160-xanh-xam-tieu-chuan.png
 >   51	2024	56000000	38	9	34	sku_images/160-do-xam-tieu-chuan.png
 B   52	2024	58000000	39	9	35	sku_images/160-xanh-xam-den-dac-biet.png
 ;   53	2024	38000000	5	10	12	sku_images/trang-tieu-chuan-1.png
 6   54	2024	41500000	26	10	41	sku_images/do-cao-cap-1.png
 9   56	2024	42500000	7	10	13	sku_images/den-dac-biet-1-1.png
 8   57	2024	42500000	40	10	13	sku_images/bac-dac-biet-1.png
 :   59	2024	32800000	5	11	41	sku_images/trang-den-cao-cap.jpg
 9   58	2024	31500000	7	11	12	sku_images/den-tieu-chuan_1.jpg
 7   60	2024	32800000	6	11	41	sku_images/do-den-cao-cap.jpg
 ;   61	2024	35000000	17	11	13	sku_images/xanh-den-dac-biet.jpg
 =   63	2024	39500000	7	10	14	sku_images/den-the-thao_7p5Eimq.jpg
 @   64	2024	40000000	43	11	42	sku_images/VISIONcodienvangdenbac.png
 @   65	2024	40000000	28	10	42	sku_images/VISIONcodienxanhdenbac.png
 ?   66	2024	136000000	5	12	41	sku_images/trang-den-cao-cap-1_1.png
 9   67	2024	136000000	6	12	41	sku_images/do-den-cao-caos.png
 8   68	2024	140000000	7	12	13	sku_images/den-dac-biet-1.png
 ;   69	2024	140000000	23	12	13	sku_images/bac-den-dac-biet.png
 ;   70	2024	140000000	27	12	14	sku_images/xam-den-dac-biet.png
 :   72	2024	33500000	6	13	44	sku_images/do-den-tieu-chuan.png
 :   73	2024	35000000	5	13	45	sku_images/trang-den-cao-cap.png
 :   74	2024	35000000	17	13	45	sku_images/xanh-den-cao-cap.png
 7   75	2024	35000000	6	13	45	sku_images/do-den-cao-cap.png
 5   76	2024	35500000	7	13	46	sku_images/den-dac-biet.png
 ;   77	2024	35500000	39	13	46	sku_images/xanh-den-dac-biet.png
 <   78	2023	22000000	6	14	47	sku_images/do-den-phanh-co-1_1.png
 :   80	2023	25500000	6	14	49	sku_images/do-den-vanh-duc-1.png
 8   79	2023	23000000	7	14	48	sku_images/den-phanh-dia-1.png
 =   82	2023	25500000	17	14	48	sku_images/xanh-den-vanh-duc-1.png
 =   81	2023	25500000	5	14	49	sku_images/trags-den-vanh-duc-1.png
 4   83	2024	19500000	6	15	12	sku_images/den-do-tc_1.png
 5   84	2024	19500000	17	15	12	sku_images/den-xanh-tc.png
 ,   85	2024	20500000	7	15	13	sku_images/den.png
 2   86	2023	22500000	17	15	14	sku_images/den-xanh.png
 ?   49	2024	56000000	27	9	34	sku_images/160-den-xam-tieu-chuan.png
 :   62	2024	39500000	27	11	14	sku_images/xam-den-the-thao.jpg
 ;   27	2024	58500000	56	6	1	sku_images/xanh-tieu-chuan-1_1.png
 8   55	2024	41500000	56	10	41	sku_images/xanh-cao-cap-1.png
 /   87	2024	22500000	6	15	14	sku_images/den-do.png
 6   88	2024	22500000	17	15	14	sku_images/den-the-thao.png
 @   89	2024	19500000	50	16	12	sku_images/egQdQH8QNTZsVzC85trX_1.png
 >   90	2024	19500000	51	16	12	sku_images/EYpeXY7cdjjbQl2BZPed.png
 >   91	2024	19500000	52	16	12	sku_images/I3SKQlbvUZWapIxUlAZe.png
 @   92	2024	20500000	53	16	42	sku_images/WAVEbancodienvangtrang.png
 ?   93	2024	20500000	54	16	42	sku_images/WAVEbancodienxamtrang.png
 >   94	2024	20500000	55	16	13	sku_images/FGTa8tJ5LqpxS3s7OnZH.png
 6   95	2024	32000000	56	17	12	sku_images/PG1-Cyan-004.png
 8   96	2024	32000000	57	17	12	sku_images/PG1-yellow-004.png
 8   97	2024	32000000	58	17	12	sku_images/PG1-orange-004.png
 7   98	2024	32000000	59	17	12	sku_images/PG1-milky-004.png
 >   99	2024	32000000	60	17	12	sku_images/PG1-Green-Pastel-004.png
 4   100	2024	29500000	7	18	12	sku_images/tc-den-3_1.png
 5   101	2024	29500000	6	18	12	sku_images/tc-do-den-2.png
 5   102	2024	29500000	61	18	12	sku_images/tc-bac-xam.png
 6   103	2024	29500000	17	18	12	sku_images/tc-xanh-den.png
 0   104	2024	32000000	7	18	13	sku_images/db-den.png
 5   105	2024	32000000	6	18	13	sku_images/db-do-den-1.png
 5   106	2024	32000000	61	18	13	sku_images/db-bac-xam.png
 6   107	2024	32000000	17	18	13	sku_images/db-xanh-dne.png
 <   108	2024	32000000	62	18	63	sku_images/gioi-han-den-hong.png
 <   109	2024	32000000	17	18	63	sku_images/gioi-han-xanh-den.png
 =   110	2024	32000000	54	18	63	sku_images/gioi-han-trang-xam.png
 9   111	2024	32000000	6	18	63	sku_images/gioi-han-do-den.png
 ?   7	2024	103000000	27	1	4	sku_images/sh160i-xam-den-the-thao.png
 5   112	2024	70000000	37	19	12	sku_images/xanh-xam_1.png
 4   113	2024	70000000	27	19	12	sku_images/xam-den-2.png
 8   114	2024	53000000	7	20	12	sku_images/nvx-den-vang_1.png
 2   115	2024	53000000	64	20	12	sku_images/nvx-xam.png
 ;   116	2024	53000000	40	20	12	sku_images/NVX-bac-den-vang.png
 9   117	2024	53000000	22	20	12	sku_images/NVX-trang-xanh.png
 6   118	2024	53000000	27	20	12	sku_images/NVX-xam-den.png
 2   119	2024	36000000	56	21	12	sku_images/tc-xanh.png
 3   120	2024	36000000	65	21	12	sku_images/tc-trang.png
 2   121	2024	36000000	7	21	12	sku_images/tc-den-2.png
 ;   122	2024	35500000	27	21	63	sku_images/gioi-han-xam-den.png
 0   123	2024	36000000	26	21	12	sku_images/tc-do.png
 5   124	2024	31500000	6	22	12	sku_images/tc-do-den-1.png
 8   125	2024	31500000	5	22	12	sku_images/tc-trang-den-1.png
 2   126	2024	31500000	7	22	12	sku_images/tc-den-1.png
 3   127	2024	38000000	6	22	13	sku_images/db-do-den.png
 5   128	2024	38000000	27	22	13	sku_images/db-xam-den.png
 6   129	2024	38000000	66	22	13	sku_images/db-xanh-den.png
 ;   130	2024	38000000	17	22	13	sku_images/db-xnh-duong-den.png
 3   131	2024	46000000	6	23	12	sku_images/tc-do-den.png
 6   132	2024	46000000	5	23	12	sku_images/tc-trang-den.png
 0   133	2024	46000000	7	23	12	sku_images/tc-den.png
 9   134	2024	50500000	6	23	13	sku_images/dac-biet-do-den.png
 <   135	2024	50500000	5	23	13	sku_images/dac-biet-trang-den.png
 6   136	2024	50500000	7	23	13	sku_images/dac-biet-den.png
 <   137	2024	50500000	67	23	13	sku_images/dac-biet-xanh-den.png
 3   138	2024	51000000	68	23	63	sku_images/lmt-hong.png
 6   139	2024	51000000	23	23	63	sku_images/lmt-bac-den.png
 6   140	2024	51000000	27	23	63	sku_images/lmt-xam-den.png
 8   141	2024	51000000	17	23	63	sku_images/lmt-xanhd-den.png
 2   142	2024	30000000	7	24	12	sku_images/rc-den_1.png
 0   143	2024	30000000	26	24	12	sku_images/rc-do.png
 1   144	2024	30000000	64	24	12	sku_images/rc-xam.png
 1   145	2024	30500000	7	24	63	sku_images/ltd-den.png
 1   146	2024	30500000	7	24	63	sku_images/ltd-xam.png
 :   147	2024	30500000	64	24	63	sku_images/ltd-xam_Yxyw98v.png
 2   148	2024	30500000	40	24	63	sku_images/ltd-bac.png
 1   149	2024	30500000	26	24	63	sku_images/ltd-do.png
 @   150	2024	27500000	37	25	12	sku_images/tieu-chuan-xanh-xam_1.png
 ;   151	2024	27500000	6	25	12	sku_images/tieu-chuan-do-den.png
 =   152	2024	27500000	27	25	12	sku_images/tieu-chuan-den-xam.png
 6   153	2024	28000000	40	25	41	sku_images/cao-cap-bac.png
 7   154	2024	28000000	56	25	41	sku_images/cao-cap-xanh.png
 6   155	2024	28000000	64	25	41	sku_images/cao-cap-xam.png
 7   156	2024	28000000	69	25	41	sku_images/cao-cap-vang.png
 5   157	2024	45000000	7	26	70	sku_images/rc-den-vang.png
 3   158	2024	45000000	6	26	70	sku_images/rc-do-den.png
 9   159	2024	45000000	73	26	70	sku_images/rc-xam-den-cam.png
 :   160	2024	45000000	20	26	70	sku_images/rc-trang-do-den.png
 B   161	2024	45500000	56	26	71	sku_images/ban-gioi-han-xanh-duong.png
 @   162	2024	45500000	64	26	71	sku_images/ban-gioi-han-xanh-xam.png
 ;   163	2024	45500000	61	26	71	sku_images/ban-gioi-han-bac.png
 @   164	2024	45500000	72	26	71	sku_images/ban-gioi-han-xanh-luc.png
 3   165	2024	46000000	5	26	63	sku_images/trang-den.png
 2   166	2024	46000000	27	26	63	sku_images/xam-den.png
 ;   167	2024	46000000	67	26	63	sku_images/xam-anh-xanh-den.png
 3   168	2024	46000000	17	26	63	sku_images/xanh-den.png
 1   169	2024	24500000	5	27	12	sku_images/trang_1.jpg
 /   170	2024	24500000	64	27	12	sku_images/xam1.png
 3   171	2024	24500000	56	27	12	sku_images/xanh-den.jpg
 /   172	2024	26700000	7	28	74	sku_images/den_1.jpg
 0   173	2024	26700000	7	28	12	sku_images/do-den.jpg
 3   174	2024	26700000	5	28	12	sku_images/trang-den.jpg
 8   175	2024	27200000	76	28	75	sku_images/xam-do-den-mo.jpg
 4   176	2024	24700000	27	29	12	sku_images/den-xam_1.png
 2   177	2024	24700000	7	29	75	sku_images/den-mo-1.jpg
 1   178	2024	24700000	27	29	75	sku_images/xam-mo.png
 @   179	2024	18800000	21	30	12	sku_images/sym-xanh-ngoc-trang_1.jpg
 9   180	2024	18800000	22	30	12	sku_images/sym-xanh-trang.jpg
 =   181	2024	18800000	54	30	12	sku_images/untitled_design_40.png
 4   182	2024	69000000	6	31	12	sku_images/mau-den-do.jpg
 1   183	2024	69000000	7	31	12	sku_images/mau-den.jpg
 5   184	2024	69000000	17	31	12	sku_images/xanh-den-1.jpg
 4   185	2024	75000000	6	32	12	sku_images/do-den-1_1.png
 1   186	2024	75000000	17	32	12	sku_images/xanh-1.png
 5   187	2024	75000000	7	32	12	sku_images/den-vanh-do.png
    \.


      $      \.


         _   1	SH160i	nothing	1	1	default_images/sh160i-trang-cao-cap.png	banner_images/Anh-bia-sh160i.jpeg
 u   2	WAVE RSX FI 2024	nothing	1	2	default_images/gKa9cU00hv1JiyQiGVEq.png	banner_images/cCycimkfsC0yPedFZ7fO-scaled.jpg
 i   3	CBR150R	nothing	1	3	default_images/den-do-compressed.jpg	banner_images/XhNQ54yFln2AoXzLg3du-scaled.jpg
 k   4	SUPER CUB C125	nothing	1	2	default_images/do-trang-tieu-chuan.png	banner_images/DBSFFeIyA2rDz3ymUWDL.jpg
 g   5	WINNER X 2024	nothing	1	3	default_images/tieu-chuan-trang-den.jpeg	banner_images/anh-bia-scaled.jpeg
 l   6	SH MODE 125cc	nothing	1	1	default_images/xanh-tieu-chuan-1_1.png	banner_images/kM7RoUxwnzSATM0OxIqp-1.jpg
 V   7	SH125i	nothing	1	1	default_images/125-den-tieu-chuan.png	banner_images/banner-1.png
 Y   8	VARIO 160	nothing	1	1	default_images/den-bac-tieu-chuan.png	banner_images/banner-2.jpg
 r   9	AIR BLADE 125/160	nothing	1	1	default_images/125-xanh-den-tieu-chuan.png	banner_images/L3b54cTddCQUatsGE8wv.jpg
 a   10	LEAD 125cc	nothing	1	1	default_images/trang-tieu-chuan-1.png	banner_images/bannner-scaled.jpg
 S   11	VISION	nothing	1	1	default_images/den-tieu-chuan.jpg	banner_images/banner-1.jpg
 d   12	SH350i	nothing	1	1	default_images/trang-den-cao-cap-1.png	banner_images/TmKg2s72XmE2GNeptPlC.jpg
 _   13	FUTURE 125cc Fi	nothing	1	2	default_images/xanh-den-tieu-chuan.png	banner_images/banner.jpg
 m   14	WAVE RSX FI 110cc	nothing	1	2	default_images/do-den-phanh-co-1.png	banner_images/R9qpquvMkTBX7Qxl94rD.jpg
 `   15	BLADE	nothing	1	2	default_images/den-do-tc.png	banner_images/yz2Q98Hbz8mYfxcrxZr5-scaled.jpg
 o   16	WAVE ALPHA 110cc	nothing	1	2	default_images/egQdQH8QNTZsVzC85trX.png	banner_images/ruKI9SSepxqGtMtDfBiZ.jpg
 T   17	PG-1	nothing	2	3	default_images/PG1-Cyan-004.png	banner_images/DJI_0177-copy.jpg
 m   18	Yamaha Janus	nothing	2	1	default_images/tc-den-3.png	banner_images/Poster-Janus-2018-A1-01-1024x731-1.jpg
 S   19	Yamaha MT-15	nothing	2	3	default_images/xanh-xam.png	banner_images/timthumb.jpg
 �   20	YAMAHA NVX 155 VVA	nothing	2	1	default_images/nvx-den-vang.png	banner_images/nvx-x30-poster-60cm-x-84cm-fa-10-31-20-01_1604312356-scaled.jpg
 P   21	Yamaha Latte	nothing	2	1	default_images/tc-xanh.png	banner_images/banner.gif
 e   22	Yamaha Freego	nothing	2	1	default_images/tc-do-den-1_1.png	banner_images/xe-ga-nam-gia-re-min.png
 e   23	Yamaha Grande	nothing	2	1	default_images/tc-do-den_1.png	banner_images/Poster-01-1-1024x780-1.png
 f   24	Yamaha Jupiter FI	nothing	2	2	default_images/rc-den.png	banner_images/resize-Banner-No_1-03-2.webp
 s   25	Yamaha Jupiter Finn	nothing	2	2	default_images/tieu-chuan-xanh-xam.png	banner_images/banner-xe-may-2-scaled.jpg
 �   26	Yamaha Exciter 150cc	nothing	2	3	default_images/rc-den-vang.png	banner_images/can-canh-exciter-150-2019-phien-ban-dac-biet-vua-d-7aab.jpg
 K   27	SHARK 50cc	nothing	3	4	default_images/trang.jpg	banner_images/cover.png
 N   28	ATILA 50cc	nothing	3	4	default_images/den.jpg	banner_images/banner-1-1.jpg
 _   29	PASSING 50cc	nothing	3	4	default_images/den-xam.png	banner_images/banner-web-1920x818-1.png
 g   30	ANGELA 50cc	nothing	3	4	default_images/sym-xanh-ngoc-trang.jpg	banner_images/untitled_design_42.png
 N   31	GSX S150	nothing	4	3	default_images/mau-den.jpg	banner_images/banner-6.jpg
 O   32	GSX R150	nothing	4	3	default_images/do-den-1.png	banner_images/banner-5.jpg
    \.


            \.


            \.


            \.


            \.


     