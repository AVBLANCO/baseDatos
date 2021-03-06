PGDMP                         y            proyectoUfps    13.3    13.3               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                        0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            !           1262    16397    proyectoUfps    DATABASE     m   CREATE DATABASE "proyectoUfps" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Colombia.1252';
    DROP DATABASE "proyectoUfps";
                postgres    false            "           0    0    DATABASE "proyectoUfps"    COMMENT     D   COMMENT ON DATABASE "proyectoUfps" IS 'Proyecto de extension Ufps';
                   postgres    false    3361            ?            1259    16884    coautor    TABLE     "  CREATE TABLE public.coautor (
    "idCoautor" integer NOT NULL,
    "nombreCoinvestigador" character varying(45)[],
    "fechaNacimiento" date,
    "idDocumentoIdentidad" integer,
    "numeroDocumentoIdentidad" integer,
    "lugarExpedicionDocumento" character varying(20)[],
    "numeroTelefonicoCoinvestigador" character varying(20)[],
    "idestadoCivil" integer,
    "direccionResideniaCoautor" character varying(30)[],
    "correoElectronicoCoautor" character varying(30)[],
    "idvinculacionTipo" integer,
    "codigoInstitucional" integer,
    "idunidadAcademica" integer,
    idfacultad integer,
    "idgrupoInvestigacion" integer,
    "identidadesParticipantes" integer,
    "idnivelEscolaridad" integer,
    idsexo integer,
    idescolaridad integer,
    "dedicacionHoraProyecto" integer
);
    DROP TABLE public.coautor;
       public         heap    postgres    false            ?            1259    16882    coautor_idCoautor_seq    SEQUENCE     ?   CREATE SEQUENCE public."coautor_idCoautor_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public."coautor_idCoautor_seq";
       public          postgres    false    253            #           0    0    coautor_idCoautor_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."coautor_idCoautor_seq" OWNED BY public.coautor."idCoautor";
          public          postgres    false    252            ?            1259    16430    departamento    TABLE     t   CREATE TABLE public.departamento (
    iddepartamento integer NOT NULL,
    "nombreDepartamento" character(50)[]
);
     DROP TABLE public.departamento;
       public         heap    postgres    false            ?            1259    16428    departamento_iddepartamento_seq    SEQUENCE     ?   CREATE SEQUENCE public.departamento_iddepartamento_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.departamento_iddepartamento_seq;
       public          postgres    false    207            $           0    0    departamento_iddepartamento_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.departamento_iddepartamento_seq OWNED BY public.departamento.iddepartamento;
          public          postgres    false    206            ?            1259    16823    directorProyecto    TABLE       CREATE TABLE public."directorProyecto" (
    "idDirectorProyecto" integer NOT NULL,
    "fechaNacimientoDirector" date,
    "idDocumentoIdentidad" integer,
    "numeroDocumentoIdentiddad" integer,
    "lugarExpedicionDocumento" character varying(20)[],
    "fechaExpedicionDocumento" date,
    "telefonoInvestigador" character varying(20)[],
    "idestadoCivil" integer,
    "direccionResidencia" character varying[],
    "correoElectronico" character varying(30)[],
    "idvinculacionTipo" integer,
    "codigoInstitucional" character varying(20)[],
    "idunidadAcademica" integer,
    idfacultad integer,
    "idgrupoInvestigacion" integer,
    "idnivelEscolaridad" integer,
    "idPoyecto" integer,
    idsexo integer,
    idescolaridad integer,
    "idprogramaAcademico" integer
);
 &   DROP TABLE public."directorProyecto";
       public         heap    postgres    false            ?            1259    16821 '   directorProyecto_idDirectorProyecto_seq    SEQUENCE     ?   CREATE SEQUENCE public."directorProyecto_idDirectorProyecto_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public."directorProyecto_idDirectorProyecto_seq";
       public          postgres    false    251            %           0    0 '   directorProyecto_idDirectorProyecto_seq    SEQUENCE OWNED BY     y   ALTER SEQUENCE public."directorProyecto_idDirectorProyecto_seq" OWNED BY public."directorProyecto"."idDirectorProyecto";
          public          postgres    false    250            ?            1259    16655    documentoIdentidad    TABLE     ?   CREATE TABLE public."documentoIdentidad" (
    "idDocumentoIdentidad" integer NOT NULL,
    "descripcionDocumento" character varying(45)[],
    "nemotecnicoDocumento" character varying(4)[]
);
 (   DROP TABLE public."documentoIdentidad";
       public         heap    postgres    false            ?            1259    16653 +   documentoIdentidad_idDocumentoIdentidad_seq    SEQUENCE     ?   CREATE SEQUENCE public."documentoIdentidad_idDocumentoIdentidad_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 D   DROP SEQUENCE public."documentoIdentidad_idDocumentoIdentidad_seq";
       public          postgres    false    226            &           0    0 +   documentoIdentidad_idDocumentoIdentidad_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public."documentoIdentidad_idDocumentoIdentidad_seq" OWNED BY public."documentoIdentidad"."idDocumentoIdentidad";
          public          postgres    false    225            ?            1259    16598    entidadesparticipantes    TABLE     ?   CREATE TABLE public.entidadesparticipantes (
    identidadesparticipantes integer NOT NULL,
    idtipoentidad integer NOT NULL,
    nombreentidad character varying(50) NOT NULL
);
 *   DROP TABLE public.entidadesparticipantes;
       public         heap    postgres    false            ?            1259    16596 3   entidadesparticipantes_identidadesparticipantes_seq    SEQUENCE     ?   CREATE SEQUENCE public.entidadesparticipantes_identidadesparticipantes_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 J   DROP SEQUENCE public.entidadesparticipantes_identidadesparticipantes_seq;
       public          postgres    false    217            '           0    0 3   entidadesparticipantes_identidadesparticipantes_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.entidadesparticipantes_identidadesparticipantes_seq OWNED BY public.entidadesparticipantes.identidadesparticipantes;
          public          postgres    false    216            ?            1259    16684    estadoCivil    TABLE     ?   CREATE TABLE public."estadoCivil" (
    "idestadoCivil" integer NOT NULL,
    "descripcionEstadoCivil" character varying(45)[]
);
 !   DROP TABLE public."estadoCivil";
       public         heap    postgres    false            ?            1259    16682    estadoCivil_idestadoCivil_seq    SEQUENCE     ?   CREATE SEQUENCE public."estadoCivil_idestadoCivil_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public."estadoCivil_idestadoCivil_seq";
       public          postgres    false    230            (           0    0    estadoCivil_idestadoCivil_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public."estadoCivil_idestadoCivil_seq" OWNED BY public."estadoCivil"."idestadoCivil";
          public          postgres    false    229                        1259    16942 
   estudiante    TABLE       CREATE TABLE public.estudiante (
    idestudiante integer NOT NULL,
    "nombreEstudiante" character varying[],
    "fechaNacimientoEstudiante" date,
    "idDocumentoIdentidad" integer,
    "numeroIdentificacion" integer,
    "fechaExpedicionDocumentoEst" date,
    "lugarExpedicionEst" character varying[],
    "telefonoEstudiante" character varying(20)[],
    "idestadoCivil" integer,
    "direccionResidenciaEst" character varying(30)[],
    "correoElectronicoEst" character varying(30)[],
    "codigoInstitucionalEst" character varying(30)[],
    "idprogramaAcademico" integer NOT NULL,
    idfacultad integer,
    "idgrupoInvestigacion" integer,
    "identidadesParticipantes" integer,
    idescolaridad integer,
    idsexo integer,
    "idnivelEscolaridad" integer,
    idpais integer
);
    DROP TABLE public.estudiante;
       public         heap    postgres    false            ?            1259    16938    estudiante_idestudiante_seq    SEQUENCE     ?   CREATE SEQUENCE public.estudiante_idestudiante_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.estudiante_idestudiante_seq;
       public          postgres    false    256            )           0    0    estudiante_idestudiante_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.estudiante_idestudiante_seq OWNED BY public.estudiante.idestudiante;
          public          postgres    false    254            ?            1259    16940 "   estudiante_idprogramaAcademico_seq    SEQUENCE     ?   CREATE SEQUENCE public."estudiante_idprogramaAcademico_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public."estudiante_idprogramaAcademico_seq";
       public          postgres    false    256            *           0    0 "   estudiante_idprogramaAcademico_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public."estudiante_idprogramaAcademico_seq" OWNED BY public.estudiante."idprogramaAcademico";
          public          postgres    false    255            ?            1259    16463    facultad    TABLE     u   CREATE TABLE public.facultad (
    idfacultad integer NOT NULL,
    "descripcionFacultad" character varying(45)[]
);
    DROP TABLE public.facultad;
       public         heap    postgres    false            ?            1259    16461    facultad_idfacultad_seq    SEQUENCE     ?   CREATE SEQUENCE public.facultad_idfacultad_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.facultad_idfacultad_seq;
       public          postgres    false    213            +           0    0    facultad_idfacultad_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.facultad_idfacultad_seq OWNED BY public.facultad.idfacultad;
          public          postgres    false    212            ?            1259    16419    fuenteFinanciacion    TABLE     ?   CREATE TABLE public."fuenteFinanciacion" (
    "idfuenteFinanciacion" integer NOT NULL,
    "descripcionFuenteFinanciacion" character varying(50)[],
    "valorFuenteFinanciacioncol" integer
);
 (   DROP TABLE public."fuenteFinanciacion";
       public         heap    postgres    false            ?            1259    16417 +   fuenteFinanciacion_idfuenteFinanciacion_seq    SEQUENCE     ?   CREATE SEQUENCE public."fuenteFinanciacion_idfuenteFinanciacion_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 D   DROP SEQUENCE public."fuenteFinanciacion_idfuenteFinanciacion_seq";
       public          postgres    false    205            ,           0    0 +   fuenteFinanciacion_idfuenteFinanciacion_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public."fuenteFinanciacion_idfuenteFinanciacion_seq" OWNED BY public."fuenteFinanciacion"."idfuenteFinanciacion";
          public          postgres    false    204            ?            1259    16706    grupoInvestigacion    TABLE     ?   CREATE TABLE public."grupoInvestigacion" (
    "idgrupoInvestigacion" integer NOT NULL,
    "descripcionGrupoInvestigacion" character varying(40)[]
);
 (   DROP TABLE public."grupoInvestigacion";
       public         heap    postgres    false            ?            1259    16704 +   grupoInvestigacion_idgrupoInvestigacion_seq    SEQUENCE     ?   CREATE SEQUENCE public."grupoInvestigacion_idgrupoInvestigacion_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 D   DROP SEQUENCE public."grupoInvestigacion_idgrupoInvestigacion_seq";
       public          postgres    false    234            -           0    0 +   grupoInvestigacion_idgrupoInvestigacion_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public."grupoInvestigacion_idgrupoInvestigacion_seq" OWNED BY public."grupoInvestigacion"."idgrupoInvestigacion";
          public          postgres    false    233            ?            1259    16632    impactoProyecto    TABLE       CREATE TABLE public."impactoProyecto" (
    "idimpactoProyecto" integer NOT NULL,
    "descripcionImpacto" character varying(45)[],
    "plazoDeAccion" character varying(45)[],
    "indicadorVerificacble" character varying(45)[],
    supuesto character varying(45)[]
);
 %   DROP TABLE public."impactoProyecto";
       public         heap    postgres    false            ?            1259    16630 %   impactoProyecto_idimpactoProyecto_seq    SEQUENCE     ?   CREATE SEQUENCE public."impactoProyecto_idimpactoProyecto_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public."impactoProyecto_idimpactoProyecto_seq";
       public          postgres    false    222            .           0    0 %   impactoProyecto_idimpactoProyecto_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public."impactoProyecto_idimpactoProyecto_seq" OWNED BY public."impactoProyecto"."idimpactoProyecto";
          public          postgres    false    221            ?            1259    16441 	   municipio    TABLE     x   CREATE TABLE public.municipio (
    idmunicipio integer NOT NULL,
    "descripcionMunicipio" character varying(50)[]
);
    DROP TABLE public.municipio;
       public         heap    postgres    false            ?            1259    16439    municipio_idmunicipio_seq    SEQUENCE     ?   CREATE SEQUENCE public.municipio_idmunicipio_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.municipio_idmunicipio_seq;
       public          postgres    false    209            /           0    0    municipio_idmunicipio_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.municipio_idmunicipio_seq OWNED BY public.municipio.idmunicipio;
          public          postgres    false    208            ?            1259    16643    nivelEscolaridad    TABLE     ?   CREATE TABLE public."nivelEscolaridad" (
    "idnivelEscolaridad" integer NOT NULL,
    "descripcionEscolaridad" character varying(45)[],
    "nemotecnicoEscolaridad" character varying(5)[]
);
 &   DROP TABLE public."nivelEscolaridad";
       public         heap    postgres    false            ?            1259    16641 '   nivelEscolaridad_idnivelEscolaridad_seq    SEQUENCE     ?   CREATE SEQUENCE public."nivelEscolaridad_idnivelEscolaridad_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public."nivelEscolaridad_idnivelEscolaridad_seq";
       public          postgres    false    224            0           0    0 '   nivelEscolaridad_idnivelEscolaridad_seq    SEQUENCE OWNED BY     y   ALTER SEQUENCE public."nivelEscolaridad_idnivelEscolaridad_seq" OWNED BY public."nivelEscolaridad"."idnivelEscolaridad";
          public          postgres    false    223            ?            1259    16452    pais    TABLE     d   CREATE TABLE public.pais (
    idpais integer NOT NULL,
    "nombrePais" character varying(30)[]
);
    DROP TABLE public.pais;
       public         heap    postgres    false            ?            1259    16450    pais_idpais_seq    SEQUENCE     ?   CREATE SEQUENCE public.pais_idpais_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.pais_idpais_seq;
       public          postgres    false    211            1           0    0    pais_idpais_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.pais_idpais_seq OWNED BY public.pais.idpais;
          public          postgres    false    210            ?            1259    16728    poblacionBeneficiaria    TABLE     ?   CREATE TABLE public."poblacionBeneficiaria" (
    "idpoblacionBeneficiaria" integer NOT NULL,
    "poblacionBeneficiariacol" character varying[]
);
 +   DROP TABLE public."poblacionBeneficiaria";
       public         heap    postgres    false            ?            1259    16726 1   poblacionBeneficiaria_idpoblacionBeneficiaria_seq    SEQUENCE     ?   CREATE SEQUENCE public."poblacionBeneficiaria_idpoblacionBeneficiaria_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 J   DROP SEQUENCE public."poblacionBeneficiaria_idpoblacionBeneficiaria_seq";
       public          postgres    false    238            2           0    0 1   poblacionBeneficiaria_idpoblacionBeneficiaria_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public."poblacionBeneficiaria_idpoblacionBeneficiaria_seq" OWNED BY public."poblacionBeneficiaria"."idpoblacionBeneficiaria";
          public          postgres    false    237            ?            1259    16615    presupuestoProyecto    TABLE     v  CREATE TABLE public."presupuestoProyecto" (
    "idpresupuestoProyecto" integer NOT NULL,
    "rubroPresupuesto" character varying(30)[],
    "totalRubro" integer,
    "subtotalRubro" integer,
    "identidadesParticipantes" integer NOT NULL,
    desembolso character varying(40)[],
    especie character varying(40)[],
    "detalladoPresupuesto" character varying(100)[]
);
 )   DROP TABLE public."presupuestoProyecto";
       public         heap    postgres    false            ?            1259    16613 0   presupuestoProyecto_identidadesParticipantes_seq    SEQUENCE     ?   CREATE SEQUENCE public."presupuestoProyecto_identidadesParticipantes_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 I   DROP SEQUENCE public."presupuestoProyecto_identidadesParticipantes_seq";
       public          postgres    false    220            3           0    0 0   presupuestoProyecto_identidadesParticipantes_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public."presupuestoProyecto_identidadesParticipantes_seq" OWNED BY public."presupuestoProyecto"."identidadesParticipantes";
          public          postgres    false    219            ?            1259    16611 -   presupuestoProyecto_idpresupuestoProyecto_seq    SEQUENCE     ?   CREATE SEQUENCE public."presupuestoProyecto_idpresupuestoProyecto_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 F   DROP SEQUENCE public."presupuestoProyecto_idpresupuestoProyecto_seq";
       public          postgres    false    220            4           0    0 -   presupuestoProyecto_idpresupuestoProyecto_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public."presupuestoProyecto_idpresupuestoProyecto_seq" OWNED BY public."presupuestoProyecto"."idpresupuestoProyecto";
          public          postgres    false    218            ?            1259    16695    programaAcademico    TABLE     ?   CREATE TABLE public."programaAcademico" (
    "idprogramaAcademico" integer NOT NULL,
    "descripcionProgramaAcademico" character varying(45)[]
);
 '   DROP TABLE public."programaAcademico";
       public         heap    postgres    false            ?            1259    16693 )   programaAcademico_idprogramaAcademico_seq    SEQUENCE     ?   CREATE SEQUENCE public."programaAcademico_idprogramaAcademico_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 B   DROP SEQUENCE public."programaAcademico_idprogramaAcademico_seq";
       public          postgres    false    232            5           0    0 )   programaAcademico_idprogramaAcademico_seq    SEQUENCE OWNED BY     }   ALTER SEQUENCE public."programaAcademico_idprogramaAcademico_seq" OWNED BY public."programaAcademico"."idprogramaAcademico";
          public          postgres    false    231            ?            1259    16757    proyecto    TABLE     ?  CREATE TABLE public.proyecto (
    "idPoyecto" integer NOT NULL,
    "codigoProyecto" character varying(30)[],
    "nombreProyecto" character varying(45)[],
    "descripcionProyecto" character varying(45)[],
    "valorProyecto" character varying(40)[],
    "numeroConvenio" character varying(30)[],
    "semestreProyecto" character varying[],
    "idtipoProyecto" integer NOT NULL,
    "anioProyecto" integer,
    "idunidadAcademica" integer NOT NULL,
    idfacultad integer NOT NULL,
    "duracionProyecto" integer,
    "fechaInicioProyecto" date[],
    "fechaFinalizacionProyecto" date[],
    "resumenProyecto" character varying(200)[],
    "costoProyecto" integer,
    "idfuenteFinanciacion" integer NOT NULL,
    iddepartamento integer NOT NULL,
    idmunicipio integer NOT NULL,
    idpais integer NOT NULL,
    "montoSolicitadoEntidades" integer,
    "fichaTecnicaDocumento" character varying(100)[],
    "idpresupuestoProyecto" integer NOT NULL,
    "idimpactoProyecto" integer NOT NULL
);
    DROP TABLE public.proyecto;
       public         heap    postgres    false                       1259    16997 "   proyecto_has_poblacionBeneficiaria    TABLE     ?   CREATE TABLE public."proyecto_has_poblacionBeneficiaria" (
    "idPoyecto" integer NOT NULL,
    "idpoblacionBeneficiaria" integer NOT NULL,
    "cantidadPobllacionBeneficiar" integer
);
 8   DROP TABLE public."proyecto_has_poblacionBeneficiaria";
       public         heap    postgres    false            ?            1259    16737    proyecto_idPoyecto_seq    SEQUENCE     ?   CREATE SEQUENCE public."proyecto_idPoyecto_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."proyecto_idPoyecto_seq";
       public          postgres    false    249            6           0    0    proyecto_idPoyecto_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."proyecto_idPoyecto_seq" OWNED BY public.proyecto."idPoyecto";
          public          postgres    false    239            ?            1259    16747    proyecto_iddepartamento_seq    SEQUENCE     ?   CREATE SEQUENCE public.proyecto_iddepartamento_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.proyecto_iddepartamento_seq;
       public          postgres    false    249            7           0    0    proyecto_iddepartamento_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.proyecto_iddepartamento_seq OWNED BY public.proyecto.iddepartamento;
          public          postgres    false    244            ?            1259    16743    proyecto_idfacultad_seq    SEQUENCE     ?   CREATE SEQUENCE public.proyecto_idfacultad_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.proyecto_idfacultad_seq;
       public          postgres    false    249            8           0    0    proyecto_idfacultad_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.proyecto_idfacultad_seq OWNED BY public.proyecto.idfacultad;
          public          postgres    false    242            ?            1259    16745 !   proyecto_idfuenteFinanciacion_seq    SEQUENCE     ?   CREATE SEQUENCE public."proyecto_idfuenteFinanciacion_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public."proyecto_idfuenteFinanciacion_seq";
       public          postgres    false    249            9           0    0 !   proyecto_idfuenteFinanciacion_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public."proyecto_idfuenteFinanciacion_seq" OWNED BY public.proyecto."idfuenteFinanciacion";
          public          postgres    false    243            ?            1259    16755    proyecto_idimpactoProyecto_seq    SEQUENCE     ?   CREATE SEQUENCE public."proyecto_idimpactoProyecto_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public."proyecto_idimpactoProyecto_seq";
       public          postgres    false    249            :           0    0    proyecto_idimpactoProyecto_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public."proyecto_idimpactoProyecto_seq" OWNED BY public.proyecto."idimpactoProyecto";
          public          postgres    false    248            ?            1259    16749    proyecto_idmunicipio_seq    SEQUENCE     ?   CREATE SEQUENCE public.proyecto_idmunicipio_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.proyecto_idmunicipio_seq;
       public          postgres    false    249            ;           0    0    proyecto_idmunicipio_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.proyecto_idmunicipio_seq OWNED BY public.proyecto.idmunicipio;
          public          postgres    false    245            ?            1259    16751    proyecto_idpais_seq    SEQUENCE     ?   CREATE SEQUENCE public.proyecto_idpais_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.proyecto_idpais_seq;
       public          postgres    false    249            <           0    0    proyecto_idpais_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.proyecto_idpais_seq OWNED BY public.proyecto.idpais;
          public          postgres    false    246            ?            1259    16753 "   proyecto_idpresupuestoProyecto_seq    SEQUENCE     ?   CREATE SEQUENCE public."proyecto_idpresupuestoProyecto_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public."proyecto_idpresupuestoProyecto_seq";
       public          postgres    false    249            =           0    0 "   proyecto_idpresupuestoProyecto_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public."proyecto_idpresupuestoProyecto_seq" OWNED BY public.proyecto."idpresupuestoProyecto";
          public          postgres    false    247            ?            1259    16739    proyecto_idtipoProyecto_seq    SEQUENCE     ?   CREATE SEQUENCE public."proyecto_idtipoProyecto_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public."proyecto_idtipoProyecto_seq";
       public          postgres    false    249            >           0    0    proyecto_idtipoProyecto_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public."proyecto_idtipoProyecto_seq" OWNED BY public.proyecto."idtipoProyecto";
          public          postgres    false    240            ?            1259    16741    proyecto_idunidadAcademica_seq    SEQUENCE     ?   CREATE SEQUENCE public."proyecto_idunidadAcademica_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public."proyecto_idunidadAcademica_seq";
       public          postgres    false    249            ?           0    0    proyecto_idunidadAcademica_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public."proyecto_idunidadAcademica_seq" OWNED BY public.proyecto."idunidadAcademica";
          public          postgres    false    241                       1259    17015    resultadoProyecto    TABLE       CREATE TABLE public."resultadoProyecto" (
    "idresultadoProyecto" integer NOT NULL,
    "descripcionResultado" character varying(45)[],
    "indicardorResultado" character varying(45)[],
    beneficiario character varying(45)[],
    "idPoyecto" integer
);
 '   DROP TABLE public."resultadoProyecto";
       public         heap    postgres    false                       1259    17013 )   resultadoProyecto_idresultadoProyecto_seq    SEQUENCE     ?   CREATE SEQUENCE public."resultadoProyecto_idresultadoProyecto_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 B   DROP SEQUENCE public."resultadoProyecto_idresultadoProyecto_seq";
       public          postgres    false    259            @           0    0 )   resultadoProyecto_idresultadoProyecto_seq    SEQUENCE OWNED BY     }   ALTER SEQUENCE public."resultadoProyecto_idresultadoProyecto_seq" OWNED BY public."resultadoProyecto"."idresultadoProyecto";
          public          postgres    false    258            ?            1259    16666    sexo    TABLE     ?   CREATE TABLE public.sexo (
    idsexo integer NOT NULL,
    "descripcionSexo" character varying(45)[],
    "nemotecnicoSexo" "char"
);
    DROP TABLE public.sexo;
       public         heap    postgres    false            ?            1259    16664    sexo_idsexo_seq    SEQUENCE     ?   CREATE SEQUENCE public.sexo_idsexo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.sexo_idsexo_seq;
       public          postgres    false    228            A           0    0    sexo_idsexo_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.sexo_idsexo_seq OWNED BY public.sexo.idsexo;
          public          postgres    false    227            ?            1259    16474    tipoEntidad    TABLE     ?   CREATE TABLE public."tipoEntidad" (
    "idtipoEntidad" integer NOT NULL,
    "descripcionTipoEntidad" character varying(25)[]
);
 !   DROP TABLE public."tipoEntidad";
       public         heap    postgres    false            ?            1259    16472    tipoEntidad_idtipoEntidad_seq    SEQUENCE     ?   CREATE SEQUENCE public."tipoEntidad_idtipoEntidad_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public."tipoEntidad_idtipoEntidad_seq";
       public          postgres    false    215            B           0    0    tipoEntidad_idtipoEntidad_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public."tipoEntidad_idtipoEntidad_seq" OWNED BY public."tipoEntidad"."idtipoEntidad";
          public          postgres    false    214            ?            1259    16400    tipoProyecto    TABLE     ?   CREATE TABLE public."tipoProyecto" (
    "idtipoProyecto" integer NOT NULL,
    "codipoProyecto" character varying(30)[],
    "descripcionTipoProyecto" character varying(50)[]
);
 "   DROP TABLE public."tipoProyecto";
       public         heap    postgres    false            ?            1259    16398    tipoProyecto_idtipoProyecto_seq    SEQUENCE     ?   CREATE SEQUENCE public."tipoProyecto_idtipoProyecto_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public."tipoProyecto_idtipoProyecto_seq";
       public          postgres    false    201            C           0    0    tipoProyecto_idtipoProyecto_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public."tipoProyecto_idtipoProyecto_seq" OWNED BY public."tipoProyecto"."idtipoProyecto";
          public          postgres    false    200            ?            1259    16411    unidadAcademica    TABLE     ?   CREATE TABLE public."unidadAcademica" (
    "idunidadAcademica" integer NOT NULL,
    "descripcionUnidadAcademica" character varying(45)
);
 %   DROP TABLE public."unidadAcademica";
       public         heap    postgres    false            ?            1259    16409 %   unidadAcademica_idunidadAcademica_seq    SEQUENCE     ?   CREATE SEQUENCE public."unidadAcademica_idunidadAcademica_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public."unidadAcademica_idunidadAcademica_seq";
       public          postgres    false    203            D           0    0 %   unidadAcademica_idunidadAcademica_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public."unidadAcademica_idunidadAcademica_seq" OWNED BY public."unidadAcademica"."idunidadAcademica";
          public          postgres    false    202            ?            1259    16717    vinculacionTipo    TABLE     ?   CREATE TABLE public."vinculacionTipo" (
    "idvinculacionTipo" integer NOT NULL,
    "descripcionTipoVinculacion" character varying[]
);
 %   DROP TABLE public."vinculacionTipo";
       public         heap    postgres    false            ?            1259    16715 %   vinculacionTipo_idvinculacionTipo_seq    SEQUENCE     ?   CREATE SEQUENCE public."vinculacionTipo_idvinculacionTipo_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public."vinculacionTipo_idvinculacionTipo_seq";
       public          postgres    false    236            E           0    0 %   vinculacionTipo_idvinculacionTipo_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public."vinculacionTipo_idvinculacionTipo_seq" OWNED BY public."vinculacionTipo"."idvinculacionTipo";
          public          postgres    false    235            ?           2604    16887    coautor idCoautor    DEFAULT     z   ALTER TABLE ONLY public.coautor ALTER COLUMN "idCoautor" SET DEFAULT nextval('public."coautor_idCoautor_seq"'::regclass);
 B   ALTER TABLE public.coautor ALTER COLUMN "idCoautor" DROP DEFAULT;
       public          postgres    false    252    253    253            ?           2604    16433    departamento iddepartamento    DEFAULT     ?   ALTER TABLE ONLY public.departamento ALTER COLUMN iddepartamento SET DEFAULT nextval('public.departamento_iddepartamento_seq'::regclass);
 J   ALTER TABLE public.departamento ALTER COLUMN iddepartamento DROP DEFAULT;
       public          postgres    false    207    206    207            ?           2604    16826 #   directorProyecto idDirectorProyecto    DEFAULT     ?   ALTER TABLE ONLY public."directorProyecto" ALTER COLUMN "idDirectorProyecto" SET DEFAULT nextval('public."directorProyecto_idDirectorProyecto_seq"'::regclass);
 V   ALTER TABLE public."directorProyecto" ALTER COLUMN "idDirectorProyecto" DROP DEFAULT;
       public          postgres    false    250    251    251            ?           2604    16658 '   documentoIdentidad idDocumentoIdentidad    DEFAULT     ?   ALTER TABLE ONLY public."documentoIdentidad" ALTER COLUMN "idDocumentoIdentidad" SET DEFAULT nextval('public."documentoIdentidad_idDocumentoIdentidad_seq"'::regclass);
 Z   ALTER TABLE public."documentoIdentidad" ALTER COLUMN "idDocumentoIdentidad" DROP DEFAULT;
       public          postgres    false    226    225    226            ?           2604    16601 /   entidadesparticipantes identidadesparticipantes    DEFAULT     ?   ALTER TABLE ONLY public.entidadesparticipantes ALTER COLUMN identidadesparticipantes SET DEFAULT nextval('public.entidadesparticipantes_identidadesparticipantes_seq'::regclass);
 ^   ALTER TABLE public.entidadesparticipantes ALTER COLUMN identidadesparticipantes DROP DEFAULT;
       public          postgres    false    217    216    217            ?           2604    16687    estadoCivil idestadoCivil    DEFAULT     ?   ALTER TABLE ONLY public."estadoCivil" ALTER COLUMN "idestadoCivil" SET DEFAULT nextval('public."estadoCivil_idestadoCivil_seq"'::regclass);
 L   ALTER TABLE public."estadoCivil" ALTER COLUMN "idestadoCivil" DROP DEFAULT;
       public          postgres    false    229    230    230            ?           2604    16945    estudiante idestudiante    DEFAULT     ?   ALTER TABLE ONLY public.estudiante ALTER COLUMN idestudiante SET DEFAULT nextval('public.estudiante_idestudiante_seq'::regclass);
 F   ALTER TABLE public.estudiante ALTER COLUMN idestudiante DROP DEFAULT;
       public          postgres    false    254    256    256            ?           2604    16946    estudiante idprogramaAcademico    DEFAULT     ?   ALTER TABLE ONLY public.estudiante ALTER COLUMN "idprogramaAcademico" SET DEFAULT nextval('public."estudiante_idprogramaAcademico_seq"'::regclass);
 O   ALTER TABLE public.estudiante ALTER COLUMN "idprogramaAcademico" DROP DEFAULT;
       public          postgres    false    255    256    256            ?           2604    16466    facultad idfacultad    DEFAULT     z   ALTER TABLE ONLY public.facultad ALTER COLUMN idfacultad SET DEFAULT nextval('public.facultad_idfacultad_seq'::regclass);
 B   ALTER TABLE public.facultad ALTER COLUMN idfacultad DROP DEFAULT;
       public          postgres    false    212    213    213            ?           2604    16422 '   fuenteFinanciacion idfuenteFinanciacion    DEFAULT     ?   ALTER TABLE ONLY public."fuenteFinanciacion" ALTER COLUMN "idfuenteFinanciacion" SET DEFAULT nextval('public."fuenteFinanciacion_idfuenteFinanciacion_seq"'::regclass);
 Z   ALTER TABLE public."fuenteFinanciacion" ALTER COLUMN "idfuenteFinanciacion" DROP DEFAULT;
       public          postgres    false    205    204    205            ?           2604    16709 '   grupoInvestigacion idgrupoInvestigacion    DEFAULT     ?   ALTER TABLE ONLY public."grupoInvestigacion" ALTER COLUMN "idgrupoInvestigacion" SET DEFAULT nextval('public."grupoInvestigacion_idgrupoInvestigacion_seq"'::regclass);
 Z   ALTER TABLE public."grupoInvestigacion" ALTER COLUMN "idgrupoInvestigacion" DROP DEFAULT;
       public          postgres    false    234    233    234            ?           2604    16635 !   impactoProyecto idimpactoProyecto    DEFAULT     ?   ALTER TABLE ONLY public."impactoProyecto" ALTER COLUMN "idimpactoProyecto" SET DEFAULT nextval('public."impactoProyecto_idimpactoProyecto_seq"'::regclass);
 T   ALTER TABLE public."impactoProyecto" ALTER COLUMN "idimpactoProyecto" DROP DEFAULT;
       public          postgres    false    221    222    222            ?           2604    16444    municipio idmunicipio    DEFAULT     ~   ALTER TABLE ONLY public.municipio ALTER COLUMN idmunicipio SET DEFAULT nextval('public.municipio_idmunicipio_seq'::regclass);
 D   ALTER TABLE public.municipio ALTER COLUMN idmunicipio DROP DEFAULT;
       public          postgres    false    209    208    209            ?           2604    16646 #   nivelEscolaridad idnivelEscolaridad    DEFAULT     ?   ALTER TABLE ONLY public."nivelEscolaridad" ALTER COLUMN "idnivelEscolaridad" SET DEFAULT nextval('public."nivelEscolaridad_idnivelEscolaridad_seq"'::regclass);
 V   ALTER TABLE public."nivelEscolaridad" ALTER COLUMN "idnivelEscolaridad" DROP DEFAULT;
       public          postgres    false    224    223    224            ?           2604    16455    pais idpais    DEFAULT     j   ALTER TABLE ONLY public.pais ALTER COLUMN idpais SET DEFAULT nextval('public.pais_idpais_seq'::regclass);
 :   ALTER TABLE public.pais ALTER COLUMN idpais DROP DEFAULT;
       public          postgres    false    210    211    211            ?           2604    16731 -   poblacionBeneficiaria idpoblacionBeneficiaria    DEFAULT     ?   ALTER TABLE ONLY public."poblacionBeneficiaria" ALTER COLUMN "idpoblacionBeneficiaria" SET DEFAULT nextval('public."poblacionBeneficiaria_idpoblacionBeneficiaria_seq"'::regclass);
 `   ALTER TABLE public."poblacionBeneficiaria" ALTER COLUMN "idpoblacionBeneficiaria" DROP DEFAULT;
       public          postgres    false    238    237    238            ?           2604    16618 )   presupuestoProyecto idpresupuestoProyecto    DEFAULT     ?   ALTER TABLE ONLY public."presupuestoProyecto" ALTER COLUMN "idpresupuestoProyecto" SET DEFAULT nextval('public."presupuestoProyecto_idpresupuestoProyecto_seq"'::regclass);
 \   ALTER TABLE public."presupuestoProyecto" ALTER COLUMN "idpresupuestoProyecto" DROP DEFAULT;
       public          postgres    false    218    220    220            ?           2604    16619 ,   presupuestoProyecto identidadesParticipantes    DEFAULT     ?   ALTER TABLE ONLY public."presupuestoProyecto" ALTER COLUMN "identidadesParticipantes" SET DEFAULT nextval('public."presupuestoProyecto_identidadesParticipantes_seq"'::regclass);
 _   ALTER TABLE public."presupuestoProyecto" ALTER COLUMN "identidadesParticipantes" DROP DEFAULT;
       public          postgres    false    219    220    220            ?           2604    16698 %   programaAcademico idprogramaAcademico    DEFAULT     ?   ALTER TABLE ONLY public."programaAcademico" ALTER COLUMN "idprogramaAcademico" SET DEFAULT nextval('public."programaAcademico_idprogramaAcademico_seq"'::regclass);
 X   ALTER TABLE public."programaAcademico" ALTER COLUMN "idprogramaAcademico" DROP DEFAULT;
       public          postgres    false    232    231    232            ?           2604    16760    proyecto idPoyecto    DEFAULT     |   ALTER TABLE ONLY public.proyecto ALTER COLUMN "idPoyecto" SET DEFAULT nextval('public."proyecto_idPoyecto_seq"'::regclass);
 C   ALTER TABLE public.proyecto ALTER COLUMN "idPoyecto" DROP DEFAULT;
       public          postgres    false    239    249    249            ?           2604    16761    proyecto idtipoProyecto    DEFAULT     ?   ALTER TABLE ONLY public.proyecto ALTER COLUMN "idtipoProyecto" SET DEFAULT nextval('public."proyecto_idtipoProyecto_seq"'::regclass);
 H   ALTER TABLE public.proyecto ALTER COLUMN "idtipoProyecto" DROP DEFAULT;
       public          postgres    false    240    249    249            ?           2604    16762    proyecto idunidadAcademica    DEFAULT     ?   ALTER TABLE ONLY public.proyecto ALTER COLUMN "idunidadAcademica" SET DEFAULT nextval('public."proyecto_idunidadAcademica_seq"'::regclass);
 K   ALTER TABLE public.proyecto ALTER COLUMN "idunidadAcademica" DROP DEFAULT;
       public          postgres    false    241    249    249            ?           2604    16763    proyecto idfacultad    DEFAULT     z   ALTER TABLE ONLY public.proyecto ALTER COLUMN idfacultad SET DEFAULT nextval('public.proyecto_idfacultad_seq'::regclass);
 B   ALTER TABLE public.proyecto ALTER COLUMN idfacultad DROP DEFAULT;
       public          postgres    false    242    249    249            ?           2604    16764    proyecto idfuenteFinanciacion    DEFAULT     ?   ALTER TABLE ONLY public.proyecto ALTER COLUMN "idfuenteFinanciacion" SET DEFAULT nextval('public."proyecto_idfuenteFinanciacion_seq"'::regclass);
 N   ALTER TABLE public.proyecto ALTER COLUMN "idfuenteFinanciacion" DROP DEFAULT;
       public          postgres    false    249    243    249            ?           2604    16765    proyecto iddepartamento    DEFAULT     ?   ALTER TABLE ONLY public.proyecto ALTER COLUMN iddepartamento SET DEFAULT nextval('public.proyecto_iddepartamento_seq'::regclass);
 F   ALTER TABLE public.proyecto ALTER COLUMN iddepartamento DROP DEFAULT;
       public          postgres    false    244    249    249            ?           2604    16766    proyecto idmunicipio    DEFAULT     |   ALTER TABLE ONLY public.proyecto ALTER COLUMN idmunicipio SET DEFAULT nextval('public.proyecto_idmunicipio_seq'::regclass);
 C   ALTER TABLE public.proyecto ALTER COLUMN idmunicipio DROP DEFAULT;
       public          postgres    false    245    249    249            ?           2604    16767    proyecto idpais    DEFAULT     r   ALTER TABLE ONLY public.proyecto ALTER COLUMN idpais SET DEFAULT nextval('public.proyecto_idpais_seq'::regclass);
 >   ALTER TABLE public.proyecto ALTER COLUMN idpais DROP DEFAULT;
       public          postgres    false    249    246    249            ?           2604    16768    proyecto idpresupuestoProyecto    DEFAULT     ?   ALTER TABLE ONLY public.proyecto ALTER COLUMN "idpresupuestoProyecto" SET DEFAULT nextval('public."proyecto_idpresupuestoProyecto_seq"'::regclass);
 O   ALTER TABLE public.proyecto ALTER COLUMN "idpresupuestoProyecto" DROP DEFAULT;
       public          postgres    false    249    247    249            ?           2604    16769    proyecto idimpactoProyecto    DEFAULT     ?   ALTER TABLE ONLY public.proyecto ALTER COLUMN "idimpactoProyecto" SET DEFAULT nextval('public."proyecto_idimpactoProyecto_seq"'::regclass);
 K   ALTER TABLE public.proyecto ALTER COLUMN "idimpactoProyecto" DROP DEFAULT;
       public          postgres    false    248    249    249            ?           2604    17018 %   resultadoProyecto idresultadoProyecto    DEFAULT     ?   ALTER TABLE ONLY public."resultadoProyecto" ALTER COLUMN "idresultadoProyecto" SET DEFAULT nextval('public."resultadoProyecto_idresultadoProyecto_seq"'::regclass);
 X   ALTER TABLE public."resultadoProyecto" ALTER COLUMN "idresultadoProyecto" DROP DEFAULT;
       public          postgres    false    259    258    259            ?           2604    16669    sexo idsexo    DEFAULT     j   ALTER TABLE ONLY public.sexo ALTER COLUMN idsexo SET DEFAULT nextval('public.sexo_idsexo_seq'::regclass);
 :   ALTER TABLE public.sexo ALTER COLUMN idsexo DROP DEFAULT;
       public          postgres    false    227    228    228            ?           2604    16477    tipoEntidad idtipoEntidad    DEFAULT     ?   ALTER TABLE ONLY public."tipoEntidad" ALTER COLUMN "idtipoEntidad" SET DEFAULT nextval('public."tipoEntidad_idtipoEntidad_seq"'::regclass);
 L   ALTER TABLE public."tipoEntidad" ALTER COLUMN "idtipoEntidad" DROP DEFAULT;
       public          postgres    false    214    215    215            ?           2604    16403    tipoProyecto idtipoProyecto    DEFAULT     ?   ALTER TABLE ONLY public."tipoProyecto" ALTER COLUMN "idtipoProyecto" SET DEFAULT nextval('public."tipoProyecto_idtipoProyecto_seq"'::regclass);
 N   ALTER TABLE public."tipoProyecto" ALTER COLUMN "idtipoProyecto" DROP DEFAULT;
       public          postgres    false    201    200    201            ?           2604    16414 !   unidadAcademica idunidadAcademica    DEFAULT     ?   ALTER TABLE ONLY public."unidadAcademica" ALTER COLUMN "idunidadAcademica" SET DEFAULT nextval('public."unidadAcademica_idunidadAcademica_seq"'::regclass);
 T   ALTER TABLE public."unidadAcademica" ALTER COLUMN "idunidadAcademica" DROP DEFAULT;
       public          postgres    false    202    203    203            ?           2604    16720 !   vinculacionTipo idvinculacionTipo    DEFAULT     ?   ALTER TABLE ONLY public."vinculacionTipo" ALTER COLUMN "idvinculacionTipo" SET DEFAULT nextval('public."vinculacionTipo_idvinculacionTipo_seq"'::regclass);
 T   ALTER TABLE public."vinculacionTipo" ALTER COLUMN "idvinculacionTipo" DROP DEFAULT;
       public          postgres    false    236    235    236                      0    16884    coautor 
   TABLE DATA           ?  COPY public.coautor ("idCoautor", "nombreCoinvestigador", "fechaNacimiento", "idDocumentoIdentidad", "numeroDocumentoIdentidad", "lugarExpedicionDocumento", "numeroTelefonicoCoinvestigador", "idestadoCivil", "direccionResideniaCoautor", "correoElectronicoCoautor", "idvinculacionTipo", "codigoInstitucional", "idunidadAcademica", idfacultad, "idgrupoInvestigacion", "identidadesParticipantes", "idnivelEscolaridad", idsexo, idescolaridad, "dedicacionHoraProyecto") FROM stdin;
    public          postgres    false    253   l      ?          0    16430    departamento 
   TABLE DATA           L   COPY public.departamento (iddepartamento, "nombreDepartamento") FROM stdin;
    public          postgres    false    207   5l                0    16823    directorProyecto 
   TABLE DATA           ?  COPY public."directorProyecto" ("idDirectorProyecto", "fechaNacimientoDirector", "idDocumentoIdentidad", "numeroDocumentoIdentiddad", "lugarExpedicionDocumento", "fechaExpedicionDocumento", "telefonoInvestigador", "idestadoCivil", "direccionResidencia", "correoElectronico", "idvinculacionTipo", "codigoInstitucional", "idunidadAcademica", idfacultad, "idgrupoInvestigacion", "idnivelEscolaridad", "idPoyecto", idsexo, idescolaridad, "idprogramaAcademico") FROM stdin;
    public          postgres    false    251   Rl      ?          0    16655    documentoIdentidad 
   TABLE DATA           v   COPY public."documentoIdentidad" ("idDocumentoIdentidad", "descripcionDocumento", "nemotecnicoDocumento") FROM stdin;
    public          postgres    false    226   ol      ?          0    16598    entidadesparticipantes 
   TABLE DATA           h   COPY public.entidadesparticipantes (identidadesparticipantes, idtipoentidad, nombreentidad) FROM stdin;
    public          postgres    false    217   ?l      ?          0    16684    estadoCivil 
   TABLE DATA           R   COPY public."estadoCivil" ("idestadoCivil", "descripcionEstadoCivil") FROM stdin;
    public          postgres    false    230   ?l                0    16942 
   estudiante 
   TABLE DATA           ?  COPY public.estudiante (idestudiante, "nombreEstudiante", "fechaNacimientoEstudiante", "idDocumentoIdentidad", "numeroIdentificacion", "fechaExpedicionDocumentoEst", "lugarExpedicionEst", "telefonoEstudiante", "idestadoCivil", "direccionResidenciaEst", "correoElectronicoEst", "codigoInstitucionalEst", "idprogramaAcademico", idfacultad, "idgrupoInvestigacion", "identidadesParticipantes", idescolaridad, idsexo, "idnivelEscolaridad", idpais) FROM stdin;
    public          postgres    false    256   ?l      ?          0    16463    facultad 
   TABLE DATA           E   COPY public.facultad (idfacultad, "descripcionFacultad") FROM stdin;
    public          postgres    false    213   ?l      ?          0    16419    fuenteFinanciacion 
   TABLE DATA           ?   COPY public."fuenteFinanciacion" ("idfuenteFinanciacion", "descripcionFuenteFinanciacion", "valorFuenteFinanciacioncol") FROM stdin;
    public          postgres    false    205    m                0    16706    grupoInvestigacion 
   TABLE DATA           g   COPY public."grupoInvestigacion" ("idgrupoInvestigacion", "descripcionGrupoInvestigacion") FROM stdin;
    public          postgres    false    234   m      ?          0    16632    impactoProyecto 
   TABLE DATA           ?   COPY public."impactoProyecto" ("idimpactoProyecto", "descripcionImpacto", "plazoDeAccion", "indicadorVerificacble", supuesto) FROM stdin;
    public          postgres    false    222   :m      ?          0    16441 	   municipio 
   TABLE DATA           H   COPY public.municipio (idmunicipio, "descripcionMunicipio") FROM stdin;
    public          postgres    false    209   Wm      ?          0    16643    nivelEscolaridad 
   TABLE DATA           v   COPY public."nivelEscolaridad" ("idnivelEscolaridad", "descripcionEscolaridad", "nemotecnicoEscolaridad") FROM stdin;
    public          postgres    false    224   tm      ?          0    16452    pais 
   TABLE DATA           4   COPY public.pais (idpais, "nombrePais") FROM stdin;
    public          postgres    false    211   ?m                0    16728    poblacionBeneficiaria 
   TABLE DATA           h   COPY public."poblacionBeneficiaria" ("idpoblacionBeneficiaria", "poblacionBeneficiariacol") FROM stdin;
    public          postgres    false    238   ?m      ?          0    16615    presupuestoProyecto 
   TABLE DATA           ?   COPY public."presupuestoProyecto" ("idpresupuestoProyecto", "rubroPresupuesto", "totalRubro", "subtotalRubro", "identidadesParticipantes", desembolso, especie, "detalladoPresupuesto") FROM stdin;
    public          postgres    false    220   ?m                 0    16695    programaAcademico 
   TABLE DATA           d   COPY public."programaAcademico" ("idprogramaAcademico", "descripcionProgramaAcademico") FROM stdin;
    public          postgres    false    232   ?m                0    16757    proyecto 
   TABLE DATA           ?  COPY public.proyecto ("idPoyecto", "codigoProyecto", "nombreProyecto", "descripcionProyecto", "valorProyecto", "numeroConvenio", "semestreProyecto", "idtipoProyecto", "anioProyecto", "idunidadAcademica", idfacultad, "duracionProyecto", "fechaInicioProyecto", "fechaFinalizacionProyecto", "resumenProyecto", "costoProyecto", "idfuenteFinanciacion", iddepartamento, idmunicipio, idpais, "montoSolicitadoEntidades", "fichaTecnicaDocumento", "idpresupuestoProyecto", "idimpactoProyecto") FROM stdin;
    public          postgres    false    249   n                0    16997 "   proyecto_has_poblacionBeneficiaria 
   TABLE DATA           ?   COPY public."proyecto_has_poblacionBeneficiaria" ("idPoyecto", "idpoblacionBeneficiaria", "cantidadPobllacionBeneficiar") FROM stdin;
    public          postgres    false    257   "n                0    17015    resultadoProyecto 
   TABLE DATA           ?   COPY public."resultadoProyecto" ("idresultadoProyecto", "descripcionResultado", "indicardorResultado", beneficiario, "idPoyecto") FROM stdin;
    public          postgres    false    259   ?n      ?          0    16666    sexo 
   TABLE DATA           L   COPY public.sexo (idsexo, "descripcionSexo", "nemotecnicoSexo") FROM stdin;
    public          postgres    false    228   \n      ?          0    16474    tipoEntidad 
   TABLE DATA           R   COPY public."tipoEntidad" ("idtipoEntidad", "descripcionTipoEntidad") FROM stdin;
    public          postgres    false    215   yn      ?          0    16400    tipoProyecto 
   TABLE DATA           g   COPY public."tipoProyecto" ("idtipoProyecto", "codipoProyecto", "descripcionTipoProyecto") FROM stdin;
    public          postgres    false    201   ?n      ?          0    16411    unidadAcademica 
   TABLE DATA           ^   COPY public."unidadAcademica" ("idunidadAcademica", "descripcionUnidadAcademica") FROM stdin;
    public          postgres    false    203   ?n                0    16717    vinculacionTipo 
   TABLE DATA           ^   COPY public."vinculacionTipo" ("idvinculacionTipo", "descripcionTipoVinculacion") FROM stdin;
    public          postgres    false    236   ?n      F           0    0    coautor_idCoautor_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."coautor_idCoautor_seq"', 1, false);
          public          postgres    false    252            G           0    0    departamento_iddepartamento_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.departamento_iddepartamento_seq', 1, false);
          public          postgres    false    206            H           0    0 '   directorProyecto_idDirectorProyecto_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public."directorProyecto_idDirectorProyecto_seq"', 1, false);
          public          postgres    false    250            I           0    0 +   documentoIdentidad_idDocumentoIdentidad_seq    SEQUENCE SET     \   SELECT pg_catalog.setval('public."documentoIdentidad_idDocumentoIdentidad_seq"', 1, false);
          public          postgres    false    225            J           0    0 3   entidadesparticipantes_identidadesparticipantes_seq    SEQUENCE SET     b   SELECT pg_catalog.setval('public.entidadesparticipantes_identidadesparticipantes_seq', 1, false);
          public          postgres    false    216            K           0    0    estadoCivil_idestadoCivil_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public."estadoCivil_idestadoCivil_seq"', 1, false);
          public          postgres    false    229            L           0    0    estudiante_idestudiante_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.estudiante_idestudiante_seq', 1, false);
          public          postgres    false    254            M           0    0 "   estudiante_idprogramaAcademico_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public."estudiante_idprogramaAcademico_seq"', 1, false);
          public          postgres    false    255            N           0    0    facultad_idfacultad_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.facultad_idfacultad_seq', 1, false);
          public          postgres    false    212            O           0    0 +   fuenteFinanciacion_idfuenteFinanciacion_seq    SEQUENCE SET     \   SELECT pg_catalog.setval('public."fuenteFinanciacion_idfuenteFinanciacion_seq"', 1, false);
          public          postgres    false    204            P           0    0 +   grupoInvestigacion_idgrupoInvestigacion_seq    SEQUENCE SET     \   SELECT pg_catalog.setval('public."grupoInvestigacion_idgrupoInvestigacion_seq"', 1, false);
          public          postgres    false    233            Q           0    0 %   impactoProyecto_idimpactoProyecto_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public."impactoProyecto_idimpactoProyecto_seq"', 1, false);
          public          postgres    false    221            R           0    0    municipio_idmunicipio_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.municipio_idmunicipio_seq', 1, false);
          public          postgres    false    208            S           0    0 '   nivelEscolaridad_idnivelEscolaridad_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public."nivelEscolaridad_idnivelEscolaridad_seq"', 1, false);
          public          postgres    false    223            T           0    0    pais_idpais_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.pais_idpais_seq', 1, false);
          public          postgres    false    210            U           0    0 1   poblacionBeneficiaria_idpoblacionBeneficiaria_seq    SEQUENCE SET     b   SELECT pg_catalog.setval('public."poblacionBeneficiaria_idpoblacionBeneficiaria_seq"', 1, false);
          public          postgres    false    237            V           0    0 0   presupuestoProyecto_identidadesParticipantes_seq    SEQUENCE SET     a   SELECT pg_catalog.setval('public."presupuestoProyecto_identidadesParticipantes_seq"', 1, false);
          public          postgres    false    219            W           0    0 -   presupuestoProyecto_idpresupuestoProyecto_seq    SEQUENCE SET     ^   SELECT pg_catalog.setval('public."presupuestoProyecto_idpresupuestoProyecto_seq"', 1, false);
          public          postgres    false    218            X           0    0 )   programaAcademico_idprogramaAcademico_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('public."programaAcademico_idprogramaAcademico_seq"', 1, false);
          public          postgres    false    231            Y           0    0    proyecto_idPoyecto_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."proyecto_idPoyecto_seq"', 1, false);
          public          postgres    false    239            Z           0    0    proyecto_iddepartamento_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.proyecto_iddepartamento_seq', 1, false);
          public          postgres    false    244            [           0    0    proyecto_idfacultad_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.proyecto_idfacultad_seq', 1, false);
          public          postgres    false    242            \           0    0 !   proyecto_idfuenteFinanciacion_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public."proyecto_idfuenteFinanciacion_seq"', 1, false);
          public          postgres    false    243            ]           0    0    proyecto_idimpactoProyecto_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public."proyecto_idimpactoProyecto_seq"', 1, false);
          public          postgres    false    248            ^           0    0    proyecto_idmunicipio_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.proyecto_idmunicipio_seq', 1, false);
          public          postgres    false    245            _           0    0    proyecto_idpais_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.proyecto_idpais_seq', 1, false);
          public          postgres    false    246            `           0    0 "   proyecto_idpresupuestoProyecto_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public."proyecto_idpresupuestoProyecto_seq"', 1, false);
          public          postgres    false    247            a           0    0    proyecto_idtipoProyecto_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public."proyecto_idtipoProyecto_seq"', 1, false);
          public          postgres    false    240            b           0    0    proyecto_idunidadAcademica_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public."proyecto_idunidadAcademica_seq"', 1, false);
          public          postgres    false    241            c           0    0 )   resultadoProyecto_idresultadoProyecto_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('public."resultadoProyecto_idresultadoProyecto_seq"', 1, false);
          public          postgres    false    258            d           0    0    sexo_idsexo_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.sexo_idsexo_seq', 1, false);
          public          postgres    false    227            e           0    0    tipoEntidad_idtipoEntidad_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public."tipoEntidad_idtipoEntidad_seq"', 1, false);
          public          postgres    false    214            f           0    0    tipoProyecto_idtipoProyecto_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public."tipoProyecto_idtipoProyecto_seq"', 1, false);
          public          postgres    false    200            g           0    0 %   unidadAcademica_idunidadAcademica_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public."unidadAcademica_idunidadAcademica_seq"', 1, false);
          public          postgres    false    202            h           0    0 %   vinculacionTipo_idvinculacionTipo_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public."vinculacionTipo_idvinculacionTipo_seq"', 1, false);
          public          postgres    false    235            ,           2606    16892    coautor coautor_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.coautor
    ADD CONSTRAINT coautor_pkey PRIMARY KEY ("idCoautor");
 >   ALTER TABLE ONLY public.coautor DROP CONSTRAINT coautor_pkey;
       public            postgres    false    253                       2606    16438    departamento departamento_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.departamento
    ADD CONSTRAINT departamento_pkey PRIMARY KEY (iddepartamento);
 H   ALTER TABLE ONLY public.departamento DROP CONSTRAINT departamento_pkey;
       public            postgres    false    207            *           2606    16831 &   directorProyecto directorProyecto_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public."directorProyecto"
    ADD CONSTRAINT "directorProyecto_pkey" PRIMARY KEY ("idDirectorProyecto");
 T   ALTER TABLE ONLY public."directorProyecto" DROP CONSTRAINT "directorProyecto_pkey";
       public            postgres    false    251                       2606    16663 *   documentoIdentidad documentoIdentidad_pkey 
   CONSTRAINT     ?   ALTER TABLE ONLY public."documentoIdentidad"
    ADD CONSTRAINT "documentoIdentidad_pkey" PRIMARY KEY ("idDocumentoIdentidad");
 X   ALTER TABLE ONLY public."documentoIdentidad" DROP CONSTRAINT "documentoIdentidad_pkey";
       public            postgres    false    226                       2606    16605 ?   entidadesparticipantes entidadesparticipantes_nombreentidad_key 
   CONSTRAINT     ?   ALTER TABLE ONLY public.entidadesparticipantes
    ADD CONSTRAINT entidadesparticipantes_nombreentidad_key UNIQUE (nombreentidad);
 i   ALTER TABLE ONLY public.entidadesparticipantes DROP CONSTRAINT entidadesparticipantes_nombreentidad_key;
       public            postgres    false    217                       2606    16603 2   entidadesparticipantes entidadesparticipantes_pkey 
   CONSTRAINT     ?   ALTER TABLE ONLY public.entidadesparticipantes
    ADD CONSTRAINT entidadesparticipantes_pkey PRIMARY KEY (identidadesparticipantes);
 \   ALTER TABLE ONLY public.entidadesparticipantes DROP CONSTRAINT entidadesparticipantes_pkey;
       public            postgres    false    217                       2606    16692    estadoCivil estadoCivil_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public."estadoCivil"
    ADD CONSTRAINT "estadoCivil_pkey" PRIMARY KEY ("idestadoCivil");
 J   ALTER TABLE ONLY public."estadoCivil" DROP CONSTRAINT "estadoCivil_pkey";
       public            postgres    false    230            .           2606    16951    estudiante estudiante_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.estudiante
    ADD CONSTRAINT estudiante_pkey PRIMARY KEY (idestudiante);
 D   ALTER TABLE ONLY public.estudiante DROP CONSTRAINT estudiante_pkey;
       public            postgres    false    256                       2606    16471    facultad facultad_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.facultad
    ADD CONSTRAINT facultad_pkey PRIMARY KEY (idfacultad);
 @   ALTER TABLE ONLY public.facultad DROP CONSTRAINT facultad_pkey;
       public            postgres    false    213                       2606    16427 *   fuenteFinanciacion fuenteFinanciacion_pkey 
   CONSTRAINT     ?   ALTER TABLE ONLY public."fuenteFinanciacion"
    ADD CONSTRAINT "fuenteFinanciacion_pkey" PRIMARY KEY ("idfuenteFinanciacion");
 X   ALTER TABLE ONLY public."fuenteFinanciacion" DROP CONSTRAINT "fuenteFinanciacion_pkey";
       public            postgres    false    205            "           2606    16714 *   grupoInvestigacion grupoInvestigacion_pkey 
   CONSTRAINT     ?   ALTER TABLE ONLY public."grupoInvestigacion"
    ADD CONSTRAINT "grupoInvestigacion_pkey" PRIMARY KEY ("idgrupoInvestigacion");
 X   ALTER TABLE ONLY public."grupoInvestigacion" DROP CONSTRAINT "grupoInvestigacion_pkey";
       public            postgres    false    234                       2606    16640 $   impactoProyecto impactoProyecto_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY public."impactoProyecto"
    ADD CONSTRAINT "impactoProyecto_pkey" PRIMARY KEY ("idimpactoProyecto");
 R   ALTER TABLE ONLY public."impactoProyecto" DROP CONSTRAINT "impactoProyecto_pkey";
       public            postgres    false    222                       2606    16449    municipio municipio_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.municipio
    ADD CONSTRAINT municipio_pkey PRIMARY KEY (idmunicipio);
 B   ALTER TABLE ONLY public.municipio DROP CONSTRAINT municipio_pkey;
       public            postgres    false    209                       2606    16651 &   nivelEscolaridad nivelEscolaridad_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public."nivelEscolaridad"
    ADD CONSTRAINT "nivelEscolaridad_pkey" PRIMARY KEY ("idnivelEscolaridad");
 T   ALTER TABLE ONLY public."nivelEscolaridad" DROP CONSTRAINT "nivelEscolaridad_pkey";
       public            postgres    false    224            
           2606    16460    pais pais_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.pais
    ADD CONSTRAINT pais_pkey PRIMARY KEY (idpais);
 8   ALTER TABLE ONLY public.pais DROP CONSTRAINT pais_pkey;
       public            postgres    false    211            &           2606    16736 0   poblacionBeneficiaria poblacionBeneficiaria_pkey 
   CONSTRAINT     ?   ALTER TABLE ONLY public."poblacionBeneficiaria"
    ADD CONSTRAINT "poblacionBeneficiaria_pkey" PRIMARY KEY ("idpoblacionBeneficiaria");
 ^   ALTER TABLE ONLY public."poblacionBeneficiaria" DROP CONSTRAINT "poblacionBeneficiaria_pkey";
       public            postgres    false    238                       2606    16624 ,   presupuestoProyecto presupuestoProyecto_pkey 
   CONSTRAINT     ?   ALTER TABLE ONLY public."presupuestoProyecto"
    ADD CONSTRAINT "presupuestoProyecto_pkey" PRIMARY KEY ("idpresupuestoProyecto");
 Z   ALTER TABLE ONLY public."presupuestoProyecto" DROP CONSTRAINT "presupuestoProyecto_pkey";
       public            postgres    false    220                        2606    16703 (   programaAcademico programaAcademico_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY public."programaAcademico"
    ADD CONSTRAINT "programaAcademico_pkey" PRIMARY KEY ("idprogramaAcademico");
 V   ALTER TABLE ONLY public."programaAcademico" DROP CONSTRAINT "programaAcademico_pkey";
       public            postgres    false    232            1           2606    17001 J   proyecto_has_poblacionBeneficiaria proyecto_has_poblacionBeneficiaria_pkey 
   CONSTRAINT     ?   ALTER TABLE ONLY public."proyecto_has_poblacionBeneficiaria"
    ADD CONSTRAINT "proyecto_has_poblacionBeneficiaria_pkey" PRIMARY KEY ("idPoyecto", "idpoblacionBeneficiaria");
 x   ALTER TABLE ONLY public."proyecto_has_poblacionBeneficiaria" DROP CONSTRAINT "proyecto_has_poblacionBeneficiaria_pkey";
       public            postgres    false    257    257            (           2606    16774    proyecto proyecto_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.proyecto
    ADD CONSTRAINT proyecto_pkey PRIMARY KEY ("idPoyecto");
 @   ALTER TABLE ONLY public.proyecto DROP CONSTRAINT proyecto_pkey;
       public            postgres    false    249            3           2606    17023 (   resultadoProyecto resultadoProyecto_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY public."resultadoProyecto"
    ADD CONSTRAINT "resultadoProyecto_pkey" PRIMARY KEY ("idresultadoProyecto");
 V   ALTER TABLE ONLY public."resultadoProyecto" DROP CONSTRAINT "resultadoProyecto_pkey";
       public            postgres    false    259                       2606    16674    sexo sexo_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.sexo
    ADD CONSTRAINT sexo_pkey PRIMARY KEY (idsexo);
 8   ALTER TABLE ONLY public.sexo DROP CONSTRAINT sexo_pkey;
       public            postgres    false    228                       2606    16482    tipoEntidad tipoEntidad_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public."tipoEntidad"
    ADD CONSTRAINT "tipoEntidad_pkey" PRIMARY KEY ("idtipoEntidad");
 J   ALTER TABLE ONLY public."tipoEntidad" DROP CONSTRAINT "tipoEntidad_pkey";
       public            postgres    false    215                        2606    16408    tipoProyecto tipoProyecto_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public."tipoProyecto"
    ADD CONSTRAINT "tipoProyecto_pkey" PRIMARY KEY ("idtipoProyecto");
 L   ALTER TABLE ONLY public."tipoProyecto" DROP CONSTRAINT "tipoProyecto_pkey";
       public            postgres    false    201                       2606    16416 $   unidadAcademica unidadAcademica_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY public."unidadAcademica"
    ADD CONSTRAINT "unidadAcademica_pkey" PRIMARY KEY ("idunidadAcademica");
 R   ALTER TABLE ONLY public."unidadAcademica" DROP CONSTRAINT "unidadAcademica_pkey";
       public            postgres    false    203            $           2606    16725 $   vinculacionTipo vinculacionTipo_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY public."vinculacionTipo"
    ADD CONSTRAINT "vinculacionTipo_pkey" PRIMARY KEY ("idvinculacionTipo");
 R   ALTER TABLE ONLY public."vinculacionTipo" DROP CONSTRAINT "vinculacionTipo_pkey";
       public            postgres    false    236            /           1259    17007    fki_fk_poblacionBeneficiaria    INDEX     v   CREATE INDEX "fki_fk_poblacionBeneficiaria" ON public."proyecto_has_poblacionBeneficiaria" USING btree ("idPoyecto");
 2   DROP INDEX public."fki_fk_poblacionBeneficiaria";
       public            postgres    false    257            9           2606    16791    proyecto fk_departamento    FK CONSTRAINT     ?   ALTER TABLE ONLY public.proyecto
    ADD CONSTRAINT fk_departamento FOREIGN KEY ("idPoyecto") REFERENCES public.departamento(iddepartamento) NOT VALID;
 B   ALTER TABLE ONLY public.proyecto DROP CONSTRAINT fk_departamento;
       public          postgres    false    207    249    3078            @           2606    16837 &   directorProyecto fk_documentoIdentidad    FK CONSTRAINT     ?   ALTER TABLE ONLY public."directorProyecto"
    ADD CONSTRAINT "fk_documentoIdentidad" FOREIGN KEY ("idDirectorProyecto") REFERENCES public."documentoIdentidad"("idDocumentoIdentidad") NOT VALID;
 T   ALTER TABLE ONLY public."directorProyecto" DROP CONSTRAINT "fk_documentoIdentidad";
       public          postgres    false    3098    251    226            I           2606    16893    coautor fk_documentoIdentidad    FK CONSTRAINT     ?   ALTER TABLE ONLY public.coautor
    ADD CONSTRAINT "fk_documentoIdentidad" FOREIGN KEY ("idCoautor") REFERENCES public."documentoIdentidad"("idDocumentoIdentidad") NOT VALID;
 I   ALTER TABLE ONLY public.coautor DROP CONSTRAINT "fk_documentoIdentidad";
       public          postgres    false    3098    253    226            S           2606    16957     estudiante fk_documentoIdentidad    FK CONSTRAINT     ?   ALTER TABLE ONLY public.estudiante
    ADD CONSTRAINT "fk_documentoIdentidad" FOREIGN KEY (idestudiante) REFERENCES public."documentoIdentidad"("idDocumentoIdentidad") NOT VALID;
 L   ALTER TABLE ONLY public.estudiante DROP CONSTRAINT "fk_documentoIdentidad";
       public          postgres    false    226    256    3098            Q           2606    16933 !   coautor fk_entidadesParticipantes    FK CONSTRAINT     ?   ALTER TABLE ONLY public.coautor
    ADD CONSTRAINT "fk_entidadesParticipantes" FOREIGN KEY ("idCoautor") REFERENCES public.entidadesparticipantes(identidadesparticipantes) NOT VALID;
 M   ALTER TABLE ONLY public.coautor DROP CONSTRAINT "fk_entidadesParticipantes";
       public          postgres    false    217    253    3090            Y           2606    16987 $   estudiante fk_entidadesParticipantes    FK CONSTRAINT     ?   ALTER TABLE ONLY public.estudiante
    ADD CONSTRAINT "fk_entidadesParticipantes" FOREIGN KEY (idestudiante) REFERENCES public.entidadesparticipantes(identidadesparticipantes) NOT VALID;
 P   ALTER TABLE ONLY public.estudiante DROP CONSTRAINT "fk_entidadesParticipantes";
       public          postgres    false    256    217    3090            C           2606    16852    directorProyecto fk_estadoCivil    FK CONSTRAINT     ?   ALTER TABLE ONLY public."directorProyecto"
    ADD CONSTRAINT "fk_estadoCivil" FOREIGN KEY ("idDirectorProyecto") REFERENCES public."estadoCivil"("idestadoCivil") NOT VALID;
 M   ALTER TABLE ONLY public."directorProyecto" DROP CONSTRAINT "fk_estadoCivil";
       public          postgres    false    251    230    3102            L           2606    16908    coautor fk_estadoCivil    FK CONSTRAINT     ?   ALTER TABLE ONLY public.coautor
    ADD CONSTRAINT "fk_estadoCivil" FOREIGN KEY ("idCoautor") REFERENCES public."estadoCivil"("idestadoCivil") NOT VALID;
 B   ALTER TABLE ONLY public.coautor DROP CONSTRAINT "fk_estadoCivil";
       public          postgres    false    253    3102    230            V           2606    16972    estudiante fk_estadoCivil    FK CONSTRAINT     ?   ALTER TABLE ONLY public.estudiante
    ADD CONSTRAINT "fk_estadoCivil" FOREIGN KEY (idestudiante) REFERENCES public."estadoCivil"("idestadoCivil") NOT VALID;
 E   ALTER TABLE ONLY public.estudiante DROP CONSTRAINT "fk_estadoCivil";
       public          postgres    false    256    230    3102            <           2606    16806    proyecto fk_facultad    FK CONSTRAINT     ?   ALTER TABLE ONLY public.proyecto
    ADD CONSTRAINT fk_facultad FOREIGN KEY ("idPoyecto") REFERENCES public.facultad(idfacultad) NOT VALID;
 >   ALTER TABLE ONLY public.proyecto DROP CONSTRAINT fk_facultad;
       public          postgres    false    249    3084    213            H           2606    16877    directorProyecto fk_facultad    FK CONSTRAINT     ?   ALTER TABLE ONLY public."directorProyecto"
    ADD CONSTRAINT fk_facultad FOREIGN KEY ("idDirectorProyecto") REFERENCES public.facultad(idfacultad) NOT VALID;
 H   ALTER TABLE ONLY public."directorProyecto" DROP CONSTRAINT fk_facultad;
       public          postgres    false    213    3084    251            O           2606    16923    coautor fk_facultad    FK CONSTRAINT     ?   ALTER TABLE ONLY public.coautor
    ADD CONSTRAINT fk_facultad FOREIGN KEY ("idCoautor") REFERENCES public.facultad(idfacultad) NOT VALID;
 =   ALTER TABLE ONLY public.coautor DROP CONSTRAINT fk_facultad;
       public          postgres    false    213    3084    253            W           2606    16977    estudiante fk_facultad    FK CONSTRAINT     ?   ALTER TABLE ONLY public.estudiante
    ADD CONSTRAINT fk_facultad FOREIGN KEY (idestudiante) REFERENCES public.facultad(idfacultad) NOT VALID;
 @   ALTER TABLE ONLY public.estudiante DROP CONSTRAINT fk_facultad;
       public          postgres    false    256    213    3084            8           2606    16786    proyecto fk_fuenteFinanciacion    FK CONSTRAINT     ?   ALTER TABLE ONLY public.proyecto
    ADD CONSTRAINT "fk_fuenteFinanciacion" FOREIGN KEY ("idPoyecto") REFERENCES public."fuenteFinanciacion"("idfuenteFinanciacion") NOT VALID;
 J   ALTER TABLE ONLY public.proyecto DROP CONSTRAINT "fk_fuenteFinanciacion";
       public          postgres    false    3076    249    205            E           2606    16862 &   directorProyecto fk_grupoInvestigacion    FK CONSTRAINT     ?   ALTER TABLE ONLY public."directorProyecto"
    ADD CONSTRAINT "fk_grupoInvestigacion" FOREIGN KEY ("idDirectorProyecto") REFERENCES public."grupoInvestigacion"("idgrupoInvestigacion") NOT VALID;
 T   ALTER TABLE ONLY public."directorProyecto" DROP CONSTRAINT "fk_grupoInvestigacion";
       public          postgres    false    3106    234    251            P           2606    16928    coautor fk_grupoInvestigacion    FK CONSTRAINT     ?   ALTER TABLE ONLY public.coautor
    ADD CONSTRAINT "fk_grupoInvestigacion" FOREIGN KEY ("idCoautor") REFERENCES public."grupoInvestigacion"("idgrupoInvestigacion") NOT VALID;
 I   ALTER TABLE ONLY public.coautor DROP CONSTRAINT "fk_grupoInvestigacion";
       public          postgres    false    234    3106    253            Z           2606    16992     estudiante fk_grupoInvestigacion    FK CONSTRAINT     ?   ALTER TABLE ONLY public.estudiante
    ADD CONSTRAINT "fk_grupoInvestigacion" FOREIGN KEY (idestudiante) REFERENCES public."grupoInvestigacion"("idgrupoInvestigacion") NOT VALID;
 L   ALTER TABLE ONLY public.estudiante DROP CONSTRAINT "fk_grupoInvestigacion";
       public          postgres    false    3106    256    234            ]           2606    17024    resultadoProyecto fk_idPoyecto    FK CONSTRAINT     ?   ALTER TABLE ONLY public."resultadoProyecto"
    ADD CONSTRAINT "fk_idPoyecto" FOREIGN KEY ("idresultadoProyecto") REFERENCES public.proyecto("idPoyecto") NOT VALID;
 L   ALTER TABLE ONLY public."resultadoProyecto" DROP CONSTRAINT "fk_idPoyecto";
       public          postgres    false    249    259    3112            5           2606    16625 /   presupuestoProyecto fk_identidadesParticipantes    FK CONSTRAINT     ?   ALTER TABLE ONLY public."presupuestoProyecto"
    ADD CONSTRAINT "fk_identidadesParticipantes" FOREIGN KEY ("idpresupuestoProyecto") REFERENCES public.entidadesparticipantes(identidadesparticipantes) NOT VALID;
 ]   ALTER TABLE ONLY public."presupuestoProyecto" DROP CONSTRAINT "fk_identidadesParticipantes";
       public          postgres    false    3090    220    217            4           2606    16606 '   entidadesparticipantes fk_idtipoEntidad    FK CONSTRAINT     ?   ALTER TABLE ONLY public.entidadesparticipantes
    ADD CONSTRAINT "fk_idtipoEntidad" FOREIGN KEY (identidadesparticipantes) REFERENCES public."tipoEntidad"("idtipoEntidad") NOT VALID;
 S   ALTER TABLE ONLY public.entidadesparticipantes DROP CONSTRAINT "fk_idtipoEntidad";
       public          postgres    false    3086    215    217            >           2606    16816    proyecto fk_impactoProyecto    FK CONSTRAINT     ?   ALTER TABLE ONLY public.proyecto
    ADD CONSTRAINT "fk_impactoProyecto" FOREIGN KEY ("idPoyecto") REFERENCES public."impactoProyecto"("idimpactoProyecto") NOT VALID;
 G   ALTER TABLE ONLY public.proyecto DROP CONSTRAINT "fk_impactoProyecto";
       public          postgres    false    249    3094    222            A           2606    16842 )   directorProyecto fk_investigador_proyecto    FK CONSTRAINT     ?   ALTER TABLE ONLY public."directorProyecto"
    ADD CONSTRAINT fk_investigador_proyecto FOREIGN KEY ("idDirectorProyecto") REFERENCES public.proyecto("idPoyecto") NOT VALID;
 U   ALTER TABLE ONLY public."directorProyecto" DROP CONSTRAINT fk_investigador_proyecto;
       public          postgres    false    249    251    3112            :           2606    16796    proyecto fk_municipio    FK CONSTRAINT     ?   ALTER TABLE ONLY public.proyecto
    ADD CONSTRAINT fk_municipio FOREIGN KEY ("idPoyecto") REFERENCES public.municipio(idmunicipio) NOT VALID;
 ?   ALTER TABLE ONLY public.proyecto DROP CONSTRAINT fk_municipio;
       public          postgres    false    3080    209    249            ?           2606    16832 $   directorProyecto fk_nivelEscolaridad    FK CONSTRAINT     ?   ALTER TABLE ONLY public."directorProyecto"
    ADD CONSTRAINT "fk_nivelEscolaridad" FOREIGN KEY ("idDirectorProyecto") REFERENCES public."nivelEscolaridad"("idnivelEscolaridad") NOT VALID;
 R   ALTER TABLE ONLY public."directorProyecto" DROP CONSTRAINT "fk_nivelEscolaridad";
       public          postgres    false    3096    224    251            J           2606    16898    coautor fk_nivelEscolaridad    FK CONSTRAINT     ?   ALTER TABLE ONLY public.coautor
    ADD CONSTRAINT "fk_nivelEscolaridad" FOREIGN KEY ("idCoautor") REFERENCES public."nivelEscolaridad"("idnivelEscolaridad") NOT VALID;
 G   ALTER TABLE ONLY public.coautor DROP CONSTRAINT "fk_nivelEscolaridad";
       public          postgres    false    224    253    3096            U           2606    16967    estudiante fk_nivelEscolaridad    FK CONSTRAINT     ?   ALTER TABLE ONLY public.estudiante
    ADD CONSTRAINT "fk_nivelEscolaridad" FOREIGN KEY (idestudiante) REFERENCES public."nivelEscolaridad"("idnivelEscolaridad") NOT VALID;
 J   ALTER TABLE ONLY public.estudiante DROP CONSTRAINT "fk_nivelEscolaridad";
       public          postgres    false    3096    256    224            ;           2606    16801    proyecto fk_pais    FK CONSTRAINT     ?   ALTER TABLE ONLY public.proyecto
    ADD CONSTRAINT fk_pais FOREIGN KEY ("idPoyecto") REFERENCES public.pais(idpais) NOT VALID;
 :   ALTER TABLE ONLY public.proyecto DROP CONSTRAINT fk_pais;
       public          postgres    false    3082    211    249            X           2606    16982    estudiante fk_pais    FK CONSTRAINT     ?   ALTER TABLE ONLY public.estudiante
    ADD CONSTRAINT fk_pais FOREIGN KEY (idestudiante) REFERENCES public.pais(idpais) NOT VALID;
 <   ALTER TABLE ONLY public.estudiante DROP CONSTRAINT fk_pais;
       public          postgres    false    3082    256    211            [           2606    17002 ;   proyecto_has_poblacionBeneficiaria fk_poblacionBeneficiaria    FK CONSTRAINT     ?   ALTER TABLE ONLY public."proyecto_has_poblacionBeneficiaria"
    ADD CONSTRAINT "fk_poblacionBeneficiaria" FOREIGN KEY ("idPoyecto") REFERENCES public."poblacionBeneficiaria"("idpoblacionBeneficiaria") NOT VALID;
 i   ALTER TABLE ONLY public."proyecto_has_poblacionBeneficiaria" DROP CONSTRAINT "fk_poblacionBeneficiaria";
       public          postgres    false    3110    238    257            =           2606    16811    proyecto fk_presupuestoProyecto    FK CONSTRAINT     ?   ALTER TABLE ONLY public.proyecto
    ADD CONSTRAINT "fk_presupuestoProyecto" FOREIGN KEY ("idPoyecto") REFERENCES public."presupuestoProyecto"("idpresupuestoProyecto") NOT VALID;
 K   ALTER TABLE ONLY public.proyecto DROP CONSTRAINT "fk_presupuestoProyecto";
       public          postgres    false    249    3092    220            D           2606    16857 %   directorProyecto fk_programaAcademico    FK CONSTRAINT     ?   ALTER TABLE ONLY public."directorProyecto"
    ADD CONSTRAINT "fk_programaAcademico" FOREIGN KEY ("idDirectorProyecto") REFERENCES public."programaAcademico"("idprogramaAcademico") NOT VALID;
 S   ALTER TABLE ONLY public."directorProyecto" DROP CONSTRAINT "fk_programaAcademico";
       public          postgres    false    251    232    3104            R           2606    16952    estudiante fk_programaAcademico    FK CONSTRAINT     ?   ALTER TABLE ONLY public.estudiante
    ADD CONSTRAINT "fk_programaAcademico" FOREIGN KEY (idestudiante) REFERENCES public."programaAcademico"("idprogramaAcademico") NOT VALID;
 K   ALTER TABLE ONLY public.estudiante DROP CONSTRAINT "fk_programaAcademico";
       public          postgres    false    3104    256    232            \           2606    17008 .   proyecto_has_poblacionBeneficiaria fk_proyecto    FK CONSTRAINT     ?   ALTER TABLE ONLY public."proyecto_has_poblacionBeneficiaria"
    ADD CONSTRAINT fk_proyecto FOREIGN KEY ("idPoyecto") REFERENCES public.proyecto("idPoyecto") NOT VALID;
 Z   ALTER TABLE ONLY public."proyecto_has_poblacionBeneficiaria" DROP CONSTRAINT fk_proyecto;
       public          postgres    false    249    3112    257            B           2606    16847    directorProyecto fk_sexo    FK CONSTRAINT     ?   ALTER TABLE ONLY public."directorProyecto"
    ADD CONSTRAINT fk_sexo FOREIGN KEY ("idDirectorProyecto") REFERENCES public.sexo(idsexo) NOT VALID;
 D   ALTER TABLE ONLY public."directorProyecto" DROP CONSTRAINT fk_sexo;
       public          postgres    false    3100    228    251            K           2606    16903    coautor fk_sexo    FK CONSTRAINT        ALTER TABLE ONLY public.coautor
    ADD CONSTRAINT fk_sexo FOREIGN KEY ("idCoautor") REFERENCES public.sexo(idsexo) NOT VALID;
 9   ALTER TABLE ONLY public.coautor DROP CONSTRAINT fk_sexo;
       public          postgres    false    3100    228    253            T           2606    16962    estudiante fk_sexo    FK CONSTRAINT     ?   ALTER TABLE ONLY public.estudiante
    ADD CONSTRAINT fk_sexo FOREIGN KEY (idestudiante) REFERENCES public.sexo(idsexo) NOT VALID;
 <   ALTER TABLE ONLY public.estudiante DROP CONSTRAINT fk_sexo;
       public          postgres    false    3100    228    256            6           2606    16776    proyecto fk_tipoProyecto    FK CONSTRAINT     ?   ALTER TABLE ONLY public.proyecto
    ADD CONSTRAINT "fk_tipoProyecto" FOREIGN KEY ("idPoyecto") REFERENCES public."tipoProyecto"("idtipoProyecto") NOT VALID;
 D   ALTER TABLE ONLY public.proyecto DROP CONSTRAINT "fk_tipoProyecto";
       public          postgres    false    201    3072    249            7           2606    16781    proyecto fk_unidadAcademica    FK CONSTRAINT     ?   ALTER TABLE ONLY public.proyecto
    ADD CONSTRAINT "fk_unidadAcademica" FOREIGN KEY ("idPoyecto") REFERENCES public."unidadAcademica"("idunidadAcademica") NOT VALID;
 G   ALTER TABLE ONLY public.proyecto DROP CONSTRAINT "fk_unidadAcademica";
       public          postgres    false    203    249    3074            F           2606    16867 #   directorProyecto fk_unidadAcademica    FK CONSTRAINT     ?   ALTER TABLE ONLY public."directorProyecto"
    ADD CONSTRAINT "fk_unidadAcademica" FOREIGN KEY ("idDirectorProyecto") REFERENCES public."unidadAcademica"("idunidadAcademica") NOT VALID;
 Q   ALTER TABLE ONLY public."directorProyecto" DROP CONSTRAINT "fk_unidadAcademica";
       public          postgres    false    251    203    3074            N           2606    16918    coautor fk_unidadAcademica    FK CONSTRAINT     ?   ALTER TABLE ONLY public.coautor
    ADD CONSTRAINT "fk_unidadAcademica" FOREIGN KEY ("idCoautor") REFERENCES public."unidadAcademica"("idunidadAcademica") NOT VALID;
 F   ALTER TABLE ONLY public.coautor DROP CONSTRAINT "fk_unidadAcademica";
       public          postgres    false    3074    253    203            G           2606    16872 #   directorProyecto fk_vinculacionTipo    FK CONSTRAINT     ?   ALTER TABLE ONLY public."directorProyecto"
    ADD CONSTRAINT "fk_vinculacionTipo" FOREIGN KEY ("idDirectorProyecto") REFERENCES public."vinculacionTipo"("idvinculacionTipo") NOT VALID;
 Q   ALTER TABLE ONLY public."directorProyecto" DROP CONSTRAINT "fk_vinculacionTipo";
       public          postgres    false    236    3108    251            M           2606    16913    coautor fk_vinculacionTipo    FK CONSTRAINT     ?   ALTER TABLE ONLY public.coautor
    ADD CONSTRAINT "fk_vinculacionTipo" FOREIGN KEY ("idCoautor") REFERENCES public."vinculacionTipo"("idvinculacionTipo") NOT VALID;
 F   ALTER TABLE ONLY public.coautor DROP CONSTRAINT "fk_vinculacionTipo";
       public          postgres    false    236    3108    253                  x?????? ? ?      ?      x?????? ? ?            x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?            x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?            x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?            x?????? ? ?      ?      x?????? ? ?             x?????? ? ?            x?????? ? ?            x?????? ? ?            x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?            x?????? ? ?     