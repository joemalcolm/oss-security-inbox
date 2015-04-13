X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6904" "Monday" "13" "April" "2015" "13:44:04" "+0800" "=?UTF-8?B?572X5aSn6b6Z?=" "luodalongde@gmail.com" "<CAPcZBq7YrwpZDJNZ58yQjcYHTZ43qoQWCoUAet9Eb7Dn2sruBQ@mail.gmail.com>" "374" "[oss-security] net-snmp snmp_pdu_parse() function incompletely initializaition vulnerability" nil nil nil "4" "2015041305:44:04" "[oss-security] net-snmp snmp_pdu_parse() function incompletely initializaition vulnerability" (number mark "        luodalongde@ Apr 13  374/6904  " thread-indent "\"[oss-security] net-snmp snmp_pdu_parse() function incompletely initializaition vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21715 invoked by uid 550); 13 Apr 2015 05:59:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 14176 invoked from network); 13 Apr 2015 05:44:15 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:content-type;
        bh=gmF0iZ0I2emczHmd3SC1rxdd/bLYnx487sjE++laEbk=;
        b=xjNhEvHtzGlvu1NKL3Ov2No+ocMKajhIDs9XB+qa4H9rRvXVuDAyvmu/vszStW7nFJ
         YufI8OPBrtR401/H/1WHAyUzuu6zF8FVZjUijzUh27ChDc4+Ywa1L/vlK9PC8/CbfIXK
         a9hoEIdm1E/B1L09Su+Z+x1ZVWUcnnsjdCNy6jlJGIc81Pd1qlTqUvCsyVwCgLDWfTT2
         PMelW3h77A4A53yMS6dfuHfrfVC90eE3aZQZUuMR/0E1Q/MHVurfZhznTu7F+zTnd7Pv
         LS+4c1V7c+P5fKmPh0ktbAaJX7uUR2angjqrrbtrScAGzJdVCFKj90F/CMWIV0At+z49
         LG2Q==
MIME-Version: 1.0
X-Received: by 10.194.170.226 with SMTP id ap2mr23942637wjc.126.1428903844358;
 Sun, 12 Apr 2015 22:44:04 -0700 (PDT)
Message-ID: <CAPcZBq7YrwpZDJNZ58yQjcYHTZ43qoQWCoUAet9Eb7Dn2sruBQ@mail.gmail.com>
Content-Type: multipart/alternative; boundary=089e013c63740fb0f10513949af2
Date: Mon, 13 Apr 2015 13:44:04 +0800
From: =?UTF-8?B?572X5aSn6b6Z?= <luodalongde@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] net-snmp snmp_pdu_parse() function incompletely initializaition vulnerability
To: oss-security@lists.openwall.com

--089e013c63740fb0f10513949af2
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

HI there,



Greeting! This is Qinghao Tang from QIHU 360  company, China. I am a
security researcher there.

I'm writing to apply for a CVE ID, for a 0day vulnerability in net-snmp.
Please refer to below report.





[requester info]

         name: Qinghao Tang

         company: QIHU 360  company, China

         email: tangqinghao@360.cn



[vendor info]

         name: net-snmp

         email: net-snmp-users@lists.sourceforge.net

         website: http://www.net-snmp.org/



[vulnerable net-snmp version]

All version



[vulnerability Description]

Incompletely initialized vulnerability exists in the function
=E2=80=98snmp_pdu_parse()=E2=80=99 of =E2=80=98snmp_api.c', and remote atta=
ckers can cause memory
leak, DOS and possible command executions by sending malicious packets.

Since the vulnerability occurs when parsing the packets, it could have
broader impacts. Currently we have find 12 remote DOS methods in the latest
version of net-snmp client software. I think this vulnerability could cause
even more severe risks.



[vulnerability resaon]

In the function =E2=80=98snmp_pdu_parse()=E2=80=99 of =E2=80=98snmp_api.c',=
 the structure of
=E2=80=98netsnmp_variable_list is initialized incompletely, thus the malici=
ous
packets can cause =E2=80=98snmp_parse_var_op()=E2=80=99 returning ERROR. Wh=
en using the
uninitialized data=EF=BC=88type=EF=BC=8Cval=EF=BC=8Cname_loc=EF=BC=8Cbuf=EF=
=BC=89 in structure =E2=80=98
netsnmp_variable_list=E2=80=99, it will cause memory leak, DOS and possible=
 command
executions.



int

snmp_pdu_parse(netsnmp_pdu *pdu, u_char * data, size_t * length)

{

                   =E2=80=A6.

netsnmp_variable_list *vptemp;

        vptemp =3D (netsnmp_variable_list *) malloc(sizeof(*vptemp));

        if (NULL =3D=3D vptemp) {

            return -1;

        }

        if (NULL =3D=3D vp) {

            pdu->variables =3D vptemp;

        } else {

            vp->next_variable =3D vptemp;

        }

        vp =3D vptemp;



        vp->next_variable =3D NULL;

        vp->val.string =3D NULL;

        vp->name_length =3D MAX_OID_LEN;

        vp->name =3D NULL;

        vp->index =3D 0;

        vp->data =3D NULL;

        vp->dataFreeHook =3D NULL;

        DEBUGDUMPSECTION("recv", "VarBind");

        data =3D snmp_parse_var_op(data, objid, &vp->name_length, &vp->type,

                                 &vp->val_len, &var_val, length);

        if (data =3D=3D NULL)

            return -1;

                  =E2=80=A6=E2=80=A6

}

typedef struct variable_list netsnmp_variable_list;

struct variable_list {

   /** NULL for last variable */

   struct variable_list *next_variable;

   /** Object identifier of variable */

   oid            *name;

   /** number of subid's in name */

   size_t          name_length;

   /** ASN type of variable */

   u_char          type;

   /** value of variable */

    netsnmp_vardata val;

   /** the length of the value to be copied into buf */

   size_t          val_len;

   /** 90 percentile < 24. */

   oid             name_loc[MAX_OID_LEN];

   /** 90 percentile < 40. */

   u_char          buf[40];

   /** (Opaque) hook for additional data */

   void           *data;

   /** callback to free above */

   void            (*dataFreeHook)(void *);

   int             index;

};



typedef union {

   long           *integer;

   u_char         *string;

   oid            *objid;

   u_char         *bitstring;

   struct counter64 *counter64;

#ifdef OPAQUE_SPECIAL_TYPES

   float          *floatVal;

   double         *doubleVal;

   /*

    * t_union *unionVal;

    */

#endif                          /* OPAQUE_SPECIAL_TYPES */

} netsnmp_vardata;







[crash info from /var/log/messages]

sprint_realloc_integer

snmpget:0x290a3

overview:Feb 22 11:37:48 localhost kernel: snmpget[24260]: segfault at 0 ip
00007f00cbff20a3 sp 00007fff7bf08620 error 4 in
libnetsnmp.so.30.0.3[7f00cbfc9000+ac000]





asn_realloc_rbuild_int

snmpget:0x4ac0a

overview:Feb 22 14:38:10 localhost kernel: snmpget[26825]: segfault at 0 ip
00007f2cbc089c0a sp 00007fff294221f0 error 4 in
libnetsnmp.so.30.0.3[7f2cbc03f000+ac000]



asn_realloc_rbuild_unsigned_int

snmpget:0x4a5e7

overview:Feb 22 18:06:53 localhost kernel: snmpget[29948]: segfault at 0 ip
00007f6bb7a8e5e7 sp 00007fffc6863bc0 error 4 in
libnetsnmp.so.30.0.3[7f6bb7a44000+ac000]



asn_realloc_rbuild_unsigned_int64

snmpget:0x49832

overview:Feb 22 20:00:22 localhost kernel: snmpget[31802]: segfault at 0 ip
00007f93cb91d832 sp 00007fff7b93f970 error 4 in
libnetsnmp.so.30.0.3[7f93cb8d4000+ac000]



sprint_realloc_counter

snmpget:0x2877b

overview:Feb 23 09:31:45 localhost kernel: snmpget[44108]: segfault at 0 ip
00007f1e2fd8477b sp 00007fffe0abf9a0 error 4 in
libnetsnmp.so.30.0.3[7f1e2fd5c000+ac000]



sprint_realloc_uinteger

snmpget:0x28c30

overview:Feb 13 09:54:03 localhost kernel: snmpget[64595]: segfault at 0 ip
00007f29f970dc30 sp 00007fff8c89a0e0 error 4 in
libnetsnmp.so.30.0.3[7f29f96e5000+ac000]





printI64

snmpget:0x5273e

overview:Feb 13 10:52:42 localhost kernel: snmpget[3863]: segfault at 0 ip
00007fe314e4773e sp 00007fff782fcba0 error 4 in
libnetsnmp.so.30.0.3[7fe314df5000+ac000]



sprint_realloc_gauge

snmpget:0x28a73

overview:Feb 13 11:24:17 localhost kernel: snmpget[4879]: segfault at 0 ip
00007fb3f0852a73 sp 00007fffc43f7b10 error 4 in
libnetsnmp.so.30.0.3[7fb3f082a000+ac000]



sprint_realloc_timeticks

snmpget:0x29277

overview:Feb 13 12:10:08 localhost kernel: snmpget[6623]: segfault at 0 ip
00007f171c1ad277 sp 00007fff9fad9720 error 4 in
libnetsnmp.so.30.0.3[7f171c184000+ac000]



printU64

snmpget:0x52675

overview:Feb 13 13:48:11 localhost kernel: snmpget[9878]: segfault at 0 ip
00007fc3b04ed675 sp 00007fff4d0a3cb0 error 4 in
libnetsnmp.so.30.0.3[7fc3b049b000+ac000]



sprint_realloc_float

snmpget:0x29c57

overview:Feb 18 23:31:41 localhost kernel: snmpget[57217]: segfault at 0 ip
00007f625c50ac57 sp 00007fffe60ebdb0 error 4 in
libnetsnmp.so.30.0.3[7f625c4e1000+ac000]



asn_realloc_rbuild_signed_int64

snmpget:0x4934d

overview:Feb 21 18:21:13 localhost kernel: snmpget[9149]: segfault at 0 ip
00007f431746e34d sp 00007fffbcac3ed0 error 4 in
libnetsnmp.so.30.0.3[7f4317425000+ac000]





[patch]

--- snmp_api.c 2014-12-09 04:23:22.000000000 +0800

+++ snmp_api.c.patch     2015-03-04 10:44:03.896001377 +0800

@@ -4518,6 +4518,9 @@

         vp->index =3D 0;

         vp->data =3D NULL;

         vp->dataFreeHook =3D NULL;

+       vp->type =3D 0;

+       vp->name_loc =3D 0;

+       vp->buf =3D 0;

         DEBUGDUMPSECTION("recv", "VarBind");

         data =3D snmp_parse_var_op(data, objid, &vp->name_length, &vp->typ=
e,

                                  &vp->val_len, &var_val, length)

--089e013c63740fb0f10513949af2--
