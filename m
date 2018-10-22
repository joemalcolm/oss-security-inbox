X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["29134" "Monday" "22" "October" "2018" "15:07:55" "+0000" "Andrew Sandoval" "ASandoval@webroot.com" "<DM5PR13MB14208A0909CAD197E6D1BADEAEF40@DM5PR13MB1420.namprd13.prod.outlook.com>" "698" "[oss-security] GCC Compiler Induced Vulnerability - affects programs compiled with GCC 7 and 8 containing nested functions" "^Date:" nil nil "10" "2018102215:07:55" "[oss-security] GCC Compiler Induced Vulnerability - affects programs compiled with GCC 7 and 8 containing nested functions" (number mark "        ASandoval@we Oct 22  698/29134 " thread-indent "\"[oss-security] GCC Compiler Induced Vulnerability - affects programs compiled with GCC 7 and 8 containing nested functions\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13412 invoked by uid 550); 22 Oct 2018 19:23:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 14313 invoked from network); 22 Oct 2018 15:08:24 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=webroot.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KsF4vzorngvuX9sQJsYk7Oco9a9xIBddFNvK5jqYEmc=;
 b=s3SlFt4DWIJrEawThLGOAZhGtW4FMr321QWV3xtBrg/6QqYpdLPvTaaIlLM4MFynFmp506lC5MY8Xex1yXnnp9on2RQqBAGqsgeA3twHdFRG99WH7yqCuZRJa4vRWL9uIHeEMWEbK5tFCVY6Nu1fg6ql1vOBU8iz4H0vDgKf5wk=
Thread-Topic: GCC Compiler Induced Vulnerability - affects programs compiled
 with GCC 7 and 8 containing nested functions
Thread-Index: AdRqGO8YBX809AYgSj+ApG48CJfxTA==
Message-ID: 
 <DM5PR13MB14208A0909CAD197E6D1BADEAEF40@DM5PR13MB1420.namprd13.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [12.217.69.15]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 
 1;DM5PR13MB1562;20:UQKdNm66OWdne8gdn0P9zJSBZs/KWXMUS0MLlQ6E2WDlRYyeWVxd19SkNl//OYYx3uTWN3wwAmP2grUG2ENPgH4DExs/PgNX9MlT0XH51/TvMzG5fESkqAkuA3Fc6SXHkp+tFfMe8e/z3mjZBdDcCHYOcKdqWVET0Bq8PZQKj0o=
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-ms-office365-filtering-correlation-id: 100a3712-1f7a-42b8-3ce7-08d638302578
x-microsoft-antispam: 
 BCL:0;PCL:0;RULEID:(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600074)(711020)(2017052603328)(7153060)(7193020);SRVR:DM5PR13MB1562;
x-ms-traffictypediagnostic: DM5PR13MB1562:
x-microsoft-antispam-prvs: 
 <DM5PR13MB15628FC6E1CDA38E0AE1A907AEF40@DM5PR13MB1562.namprd13.prod.outlook.com>
x-exchange-antispam-report-test: 
 UriScan:(192374486261705)(163750095850)(278428928389397)(21748063052155)(28532068793085)(190501279198761)(227612066756510);
x-ms-exchange-senderadcheck: 1
x-exchange-antispam-report-cfa-test: 
 BCL:0;PCL:0;RULEID:(6040522)(2401047)(5005006)(8121501046)(10201501046)(3231355)(944501410)(52105095)(3002001)(93006095)(93001095)(148016)(149066)(150057)(6041310)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123558120)(20161123562045)(20161123564045)(20161123560045)(201708071742011)(7699051)(76991095);SRVR:DM5PR13MB1562;BCL:0;PCL:0;RULEID:;SRVR:DM5PR13MB1562;
x-forefront-prvs: 08331F819E
x-forefront-antispam-report: 
 SFV:NSPM;SFS:(10019020)(366004)(376002)(39850400004)(346002)(136003)(396003)(66684002)(199004)(189003)(86362001)(53946003)(6306002)(54896002)(99286004)(16200700003)(5640700003)(486006)(9686003)(14454004)(256004)(3846002)(186003)(102836004)(14444005)(55016002)(53936002)(476003)(6116002)(790700001)(25786009)(8676002)(5250100002)(2501003)(26005)(6346003)(33656002)(74316002)(6506007)(7736002)(6436002)(7696005)(2900100001)(71200400001)(71190400001)(97736004)(8936002)(81156014)(4744004)(81166006)(2351001)(105586002)(6916009)(66574009)(106356001)(80792005)(316002)(68736007)(478600001)(5660300001)(19627235002)(66066001)(2906002)(72206003)(579004)(569006);DIR:OUT;SFP:1102;SCL:1;SRVR:DM5PR13MB1562;H:DM5PR13MB1420.namprd13.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: webroot.com does not designate
 permitted sender hosts)
x-microsoft-antispam-message-info: 
 CeJWvDIXqdzK7hlELDFGoaQI9CdOT7WdUcciZDC9KZris7xp7KBxmwqj3zo6wjsCDA7Jdz1xVz3Avlz/lTya43liMTN694gnsP6x/v6bKL4TwpWxOcote1RmGWwOdEOyW0HkQ28RPLhcR2kbuQuoz0+ChUIQbFkeFylD9PC/NrMxK/RQFH0lf8Jfp9EqXcYcwOZcirfcfSYapMKeni4EZQnJckaOfEjA3quLIGXCcH3Y+G74NQlotSEYevSzqMV5p5K+ajPeWO4n19g4JDffozvrOtGS0JHyXhb7Kz3HtpKPiOc4LM+2k7ju4ohwHZLFiCavYnVm733g3IyueOzWmAeO4M6luLaAUAcUGS5ARXo=
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
Content-Type: multipart/alternative;
	boundary="_000_DM5PR13MB14208A0909CAD197E6D1BADEAEF40DM5PR13MB1420namp_"
MIME-Version: 1.0
X-OriginatorOrg: webroot.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 100a3712-1f7a-42b8-3ce7-08d638302578
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Oct 2018 15:07:55.6945
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a8de2475-7798-48c9-8035-6b83f89691c4
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR13MB1562
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:,, definitions=2018-10-22_11:,,
 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1011 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1807170000 definitions=main-1810220129
Date: Mon, 22 Oct 2018 15:07:55 +0000
From: Andrew Sandoval <ASandoval@webroot.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] GCC Compiler Induced Vulnerability - affects programs compiled with
 GCC 7 and 8 containing nested functions
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>

--_000_DM5PR13MB14208A0909CAD197E6D1BADEAEF40DM5PR13MB1420namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Introduction to GCC Compiler Induced Vulnerability
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Hal Lonas
11 October 2018

INTRODUCTION
Webroot engineers recently discovered a vulnerability with Linux and Windows
executables produced by the Gnu C Compiler, commonly known as GCC.

Technical Description of the vulnerability
When nested C functions are compiled by GCC, code is generated which causes=
 the
call stack of the currently executing thread to be made executable prior to=
 the
call to a nested function and for the duration of the thread's lifetime.  T=
his
is essentially the equivalent of disabling Data Execution Prevention (DEP).
A stack overflow, etc., that is able to place instructions on the page(s) of
memory made executable has the potential of gaining execution and running
malware, etc.  This places the process at substantial risk of being exploit=
ed.

How was the vulnerability found?
Engineers using anti-exploit tools developed at Webroot found this
vulnerability in commonly used tools such as:
* Git for Windows Installer
* Cygwin Installer
* MinTTY
* Git Bash Shell
* ...and other similar tools

What versions of GCC have we tested?
We have found the vulnerability to be produced when using the following
versions of GCC:
* 8.1
* 7.3
* 7.1

These were the only versions we tested and all produced the vulnerability in
output executables.  No other GCC versions were tested.

Why this communication?
We are taking this opportunity to inform the custodians of GCC so that the
vulnerability might be addressed before it becomes public knowledge.

Will Webroot communicate this to the public?
Webroot believes in responsible disclosure and will work with third parties=
 to
ensure that the vulnerability is addressed before a public announcement. We
are happy to work with your communications team on announcement timing.

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D
DETAILED DISCLOSURE FOLLOWS
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D

Webroot Security Vulnerability Disclosure
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Software compiled with various versions of GCC on Windows and Linux may con=
tain a serious security vulnerability.  The
vulnerability will exist when C code with nested functions are compiled.  E=
xamples of vulnerable software include Cygwin
Bash, MinTTY, and similar tools included with Git for Windows, and other Un=
ix-like tools on Windows, etc.

On x86 / x64 Linux based systems (and possibly other Unix systems) any tool=
 compiled with GCC which utilizes nested C
functions is vulnerable.

Vulnerability
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
When nested C functions are compiled by GCC, code is generated which causes=
 the call stack of the currently executing
thread to be made executable prior to the call to a nested function and for=
 the duration of the thread's lifetime.
This is essentially the equivalent of disabling Data Execution Prevention (=
DEP).  A stack overflow, etc., that is able
to place instructions on the page(s) of memory made executable has the pote=
ntial of gaining execution and running
malware, etc.  This places the process at substantial risk of being exploit=
ed.

Windows Example
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
The following simple C program, when compiled by GCC, generates code that h=
as an executable stack shortly after main()
is entered:

#include <stdio.h>
#include <Windows.h>

int main()
{
       BOOL CALLBACK EnumWindowsCB(HWND hWnd, LPARAM lp)
       {
              printf("Window: %p\n", hWnd);
       }
       printf("Enum'd Windows:\n");
       EnumWindows(EnumWindowsCB, 0);
       return 0;
}

When compiled as an x86_64 binary, main looks like this:

.text:000000000040157B ; =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D S U =
B R O U T I N E =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
.text:000000000040157B
.text:000000000040157B ; Attributes: bp-based frame
.text:000000000040157B
.text:000000000040157B ; int __cdecl main(int argc, const char **argv, cons=
t char **envp)
.text:000000000040157B                 public main
.text:000000000040157B main            proc near               ; CODE XREF:=
 __tmainCRTStartup+242p
.text:000000000040157B                                         ; DATA XREF:=
 .pdata:000000000040506Co ...
.text:000000000040157B
.text:000000000040157B var_30          =3D byte ptr -30h
.text:000000000040157B var_10          =3D qword ptr -10h
.text:000000000040157B arg_0           =3D byte ptr  10h
.text:000000000040157B
.text:000000000040157B                 push    rbp
.text:000000000040157C                 mov     rbp, rsp
.text:000000000040157F                 sub     rsp, 50h
.text:0000000000401583                 call    __main
.text:0000000000401588                 lea     rax, [rbp+arg_0]
.text:000000000040158C                 mov     [rbp+var_10], rax
.text:0000000000401590                 lea     rax, [rbp+var_30]
.text:0000000000401594                 lea     rdx, [rbp+var_30]
.text:0000000000401598                 mov     word ptr [rax], 0BB49h
.text:000000000040159D                 lea     rcx, EnumWindowsCB_84527
.text:00000000004015A4                 mov     [rax+2], rcx
.text:00000000004015A8                 mov     word ptr [rax+0Ah], 0BA49h
.text:00000000004015AE                 mov     [rax+0Ch], rdx
.text:00000000004015B2                 mov     dword ptr [rax+14h], 90E3FF4=
9h
.text:00000000004015B9                 mov     rcx, rax
.text:00000000004015BC                 call    __enable_execute_stack
.text:00000000004015C1                 lea     rcx, aEnumDWindows ; "Enum'd=
 Windows:"
.text:00000000004015C8                 call    puts
.text:00000000004015CD                 lea     rax, [rbp+var_30]
.text:00000000004015D1                 mov     edx, 0
.text:00000000004015D6                 mov     rcx, rax
.text:00000000004015D9                 mov     rax, cs:__imp_EnumWindows
.text:00000000004015E0                 call    rax ; __imp_EnumWindows
.text:00000000004015E2                 mov     eax, 0
.text:00000000004015E7                 add     rsp, 50h
.text:00000000004015EB                 pop     rbp
.text:00000000004015EC                 retn
.text:00000000004015EC main            endp
.text:00000000004015EC
.text:00000000004015EC ; --------------------------------------------------=
-------------------------

The nested function "EnumWindowsCB" is referenced in the lea instruction at=
 address 40159D.  It looks like this (which
is essentially the same as it would look as a non-nested function):

.text:0000000000401550 ; =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D S U =
B R O U T I N E =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
.text:0000000000401550
.text:0000000000401550 ; Attributes: bp-based frame
.text:0000000000401550
.text:0000000000401550 EnumWindowsCB_84527 proc near           ; DATA XREF:=
 main+22o
.text:0000000000401550                                         ; .pdata:000=
000000040506Co
.text:0000000000401550
.text:0000000000401550 var_8           =3D qword ptr -8
.text:0000000000401550 arg_0           =3D qword ptr  10h
.text:0000000000401550 arg_8           =3D qword ptr  18h
.text:0000000000401550
.text:0000000000401550                 push    rbp
.text:0000000000401551                 mov     rbp, rsp
.text:0000000000401554                 sub     rsp, 30h
.text:0000000000401558                 mov     [rbp+arg_0], rcx
.text:000000000040155C                 mov     [rbp+arg_8], rdx
.text:0000000000401560                 mov     [rbp+var_8], r10
.text:0000000000401564                 mov     rdx, [rbp+arg_0]
.text:0000000000401568                 lea     rcx, aWindowP   ; "Window: %=
p\n"
.text:000000000040156F                 call    printf
.text:0000000000401574                 nop
.text:0000000000401575                 add     rsp, 30h
.text:0000000000401579                 pop     rbp
.text:000000000040157A                 retn
.text:000000000040157A EnumWindowsCB_84527 endp

Despite the fact that EnumWindowsCB does not need to access any local varia=
bles in main(), the code in main() between
401590 and 4015BC sets up stack variables that would make this possible, an=
d then the CALL at address 4015BC makes the
call stack itself at least partially executable, by passing the address of =
the context structure [var_30] to
__enable_execute_stack, which looks like this:

.text:0000000000402AB0 ; =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D S U =
B R O U T I N E =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
.text:0000000000402AB0
.text:0000000000402AB0
.text:0000000000402AB0                 public __enable_execute_stack
.text:0000000000402AB0 __enable_execute_stack proc near        ; CODE XREF:=
 main+41p
.text:0000000000402AB0                                         ; DATA XREF:=
 .pdata:0000000000405228o
.text:0000000000402AB0
.text:0000000000402AB0 dwLength        =3D qword ptr -38h
.text:0000000000402AB0 flNewProtect    =3D dword ptr -20h
.text:0000000000402AB0
.text:0000000000402AB0                 push    rbx
.text:0000000000402AB1                 sub     rsp, 50h
.text:0000000000402AB5                 mov     r8d, 30h
.text:0000000000402ABB                 lea     rbx, [rsp+58h+dwLength]
.text:0000000000402AC0                 mov     rdx, rbx        ; dwLength
.text:0000000000402AC3                 call    cs:__imp_VirtualQuery
.text:0000000000402AC9                 test    rax, rax
.text:0000000000402ACC                 jz      __enable_execute_stack_cold_0
.text:0000000000402AD2                 mov     rdx, qword ptr [rsp+58h+flNe=
wProtect] ; flNewProtect
.text:0000000000402AD7                 lea     r9, [rbx+24h]
.text:0000000000402ADB                 mov     r8d, 40h
.text:0000000000402AE1                 mov     rcx, [rsp+58h+dwLength] ; lp=
flOldProtect
.text:0000000000402AE6                 call    cs:__imp_VirtualProtect
.text:0000000000402AEC                 nop
.text:0000000000402AED                 add     rsp, 50h
.text:0000000000402AF1                 pop     rbx
.text:0000000000402AF2                 retn
.text:0000000000402AF2 __enable_execute_stack endp

The code in __enable_execute_stack() calls VirtualQuery() to find out the R=
egionSize and the BaseAddress of the
structure [var_30].  It then calls VirtualProtect to make this entire regio=
n PAGE_EXECUTE_READWRITE.  At a minimum
one whole page (0x1000 bytes) of stack memory is made executable.  Potentia=
lly many more pages of stack memory could
be made executable by the function, depending upon the results of the call =
to VirtualQuery (which will return a
RegionSize for all pages from BaseAddress onward that have matching State, =
Type, and Protect bits).  Different
functions are likely to return larger RegionSize results further extending =
the amount of memory placed at risk.

It is also important to notice that the stack is made executable sometime b=
efore the context variable is even used in
the call to EnumWindows() which utilizes the nested C function.  This is ob=
vious by the code start at address 4015C1
in main():

.text:00000000004015BC                 call    __enable_execute_stack ; <--=
 Stack is made executable here <--
.text:00000000004015C1                 lea     rcx, aEnumDWindows ; "Enum'd=
 Windows:"
.text:00000000004015C8                 call    puts                   ; <--=
 puts definitely does not need an executable stack <--
.text:00000000004015CD                 lea     rax, [rbp+var_30]
.text:00000000004015D1                 mov     edx, 0
.text:00000000004015D6                 mov     rcx, rax
.text:00000000004015D9                 mov     rax, cs:__imp_EnumWindows
.text:00000000004015E0                 call    rax ; __imp_EnumWindows ; <-=
- Nested C function called <--
.text:00000000004015E2                 mov     eax, 0
.text:00000000004015E7                 add     rsp, 50h
.text:00000000004015EB                 pop     rbp
.text:00000000004015EC                 retn
.text:00000000004015EC main            endp

The call to printf("Enum'd Windows:\n") from our code in main() runs AFTER =
the stack is made executable, but BEFORE
EnumWindows() is called.

This means that not only is the call to EnumWindows() and its (nested) call=
back function EnumWindowsCB() potentially
capable of intentionally or unintentionally placing exploit instructions or=
 shell code upon the stack, but so also is
every other function called within main(), before or after use of the neste=
d function.

Furthermore, this executable stack memory is leaked as executable.  There i=
s no code generated that restores the
original page protections after the nested C function has been utilized for=
 the last time.  For the lifetime of the
program, anything that is able to cause a stack overflow (etc.) and cause e=
xecution to occur on the stack in the
executable page(s), will not raise an access violation and therefore the pr=
ocess will remain exploitable for the
duration of the current thread.

This flaw in GCC could allow an attacker to gain execution in the same way =
in which they would if Data Execution
Prevent (DEP) had been disabled on a 32-bit system.  Worse, the Windows Tas=
k Manager will not show that DEP is
(essentially) disabled, and 64-bit processes (where DEP cannot normally be =
disabled) are made vulnerable to data
execution by this flaw in GCC generated code.

Note that nested C functions appear to be particular to code compiled with =
GCC.  Most if not all C++ compilers are
able to produce code from lambdas (similar to nested functions) without com=
promising the call stack.

Linux Example
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Below is a similar C program with a nested C function written to run on Lin=
ux / Unix:

#include <stdio.h>
#include <string.h>
#include <sys/types.h>
#include <unistd.h>

//
// DumpMapsStackEntry is a utility function that finds and prints the call =
stack
// identified by [stack] in the procfs maps file for the current process
void DumpMapsStackEntry()
{
       char szMapsFile[1024];
       sprintf(&szMapsFile[0], "/proc/%u/maps", getpid());

       FILE *pfMaps =3D fopen(&szMapsFile[0], "rt");
       char szLine[1024];
       while(NULL !=3D fgets(&szLine[0], sizeof(szLine) - 1, pfMaps))
       {
              if(NULL =3D=3D strstr(&szLine[0], "[stack]"))
              {
                     continue;
              }
              printf("%s\n", &szLine[0]);
       }
       fclose(pfMaps);
}

//
// EnumerateViaCallback is a "API" that invokes the callback function
void EnumerateViaCallback(void (*pfnCB)(int, const char *),
       const char *pszPassThrough)
{
       for(int i =3D 0; i < 10; ++i)
       {
              pfnCB(i, pszPassThrough);
       }
}

#ifndef VULN_TEST_FORCEFULLY_OMIT_CODE
//
// Note: Testing shows that just having this function present causes
// the stack to be executable from main() onward...  Even if VulnTest is
// never invoked or even referenced!  The ifdef above may be defined
// demonstrate this assertion.
//
void VulnTest(int iTest)
{
       if(0 =3D=3D iTest)
       {
              printf("Nested Function Omitted\n");
              return;
       }

       //
       // Nested C function:
       void EnumCallback(int iN, const char *pszPassThrough)
       {
              printf("N =3D %i, pass through: %s\n",
                     iN,
                     pszPassThrough);
              if(5 =3D=3D iN)
              {
                     printf("Check memory protections of stack pages near %=
p\n",
                           __builtin_frame_address(0));
                     DumpMapsStackEntry();
                     printf("Press enter to continue\n");
                     getchar();
              }
       }

       //
       // Call the thing that invokes the nested function...
       printf("Enumerate 1 - 10\n");
       EnumerateViaCallback(EnumCallback, "Test");
}
#endif

int main(int iArgc, const char *ppszArgv[])
{
       printf("Current Process: %u\n", getpid());
       DumpMapsStackEntry();

#ifdef VULN_TEST_FORCEFULLY_OMIT
       printf("Nested function #ifdef'd out!\n");
#else
       VulnTest((iArgc > 1) ? 0 : 1);
#endif

       printf("Done with callback press Enter to exit\n");
       DumpMapsStackEntry();
       getchar();
       return 0;
}

Though substantially longer than the simple Windows example, this example c=
ode is essentially the same other than that
EnumerateViaCallback() was written instead of using a system API that requi=
red a callback, and DumpMapsStackEntry() is
called frequently to show whether or not the current call stack is executab=
le.

This code was saved in the file nested.c, and then compiled with three diff=
erent sets of options as shown below:
  * gcc nested.c -o nested_test
  * gcc nested.c -o nested_test_ifdefd -DVULN_TEST_FORCEFULLY_OMIT
        o This disables the call to VulnTest causing it to be unreferenced
  * gcc nested.c -o nested_test_ifdefd_code -DVULN_TEST_FORCEFULLY_OMIT -DV=
ULN_TEST_FORCEFULLY_OMIT_CODE
        o This completely removes VulnTest and of course ensures that it is=
 not referenced

The results from running each version are shown below, with the resulting s=
tack memory protections highlighted:
asandoval@ubuntu:~$ gcc nested.c -o nested_test_ifdefd -DVULN_TEST_FORCEFUL=
LY_OMIT
asandoval@ubuntu:~$ gcc nested.c -o nested_test_ifdefd_code -DVULN_TEST_FOR=
CEFULLY_OMIT -DVULN_TEST_FORCEFULLY_OMIT_CODE
asandoval@ubuntu:~$ gcc nested.c -o nested_test
asandoval@ubuntu:~$ ./nested_test
Current Process: 29793
7ffc7cb3f000-7ffc7cb60000 rwxp 00000000 00:00 0                          [s=
tack]

Enumerate 1 - 10
N =3D 0, pass through: Test
N =3D 1, pass through: Test
N =3D 2, pass through: Test
N =3D 3, pass through: Test
N =3D 4, pass through: Test
N =3D 5, pass through: Test
Check memory protections of stack pages near 0x7ffc7cb5e2c0
7ffc7cb3f000-7ffc7cb60000 rwxp 00000000 00:00 0                          [s=
tack]

Press enter to continue

N =3D 6, pass through: Test
N =3D 7, pass through: Test
N =3D 8, pass through: Test
N =3D 9, pass through: Test
Done with callback press Enter to exit
7ffc7cb3f000-7ffc7cb60000 rwxp 00000000 00:00 0                          [s=
tack]

asandoval@ubuntu:~$ ./nested_test_ifdefd
Current Process: 29794
7ffec66dd000-7ffec66fe000 rwxp 00000000 00:00 0                          [s=
tack]

Nested function #ifdef'd out!
Done with callback press Enter to exit
7ffec66dd000-7ffec66fe000 rwxp 00000000 00:00 0                          [s=
tack]


asandoval@ubuntu:~$ ./nested_test_ifdefd_code
Current Process: 29796
7ffda444f000-7ffda4470000 rw-p 00000000 00:00 0                          [s=
tack]

Nested function #ifdef'd out!
Done with callback press Enter to exit
7ffda444f000-7ffda4470000 rw-p 00000000 00:00 0                          [s=
tack]


asandoval@ubuntu:~$

In the first two cases, where the nested C function was present, whether re=
ferenced or not, the stack is executable,
making the process vulnerable and essentially disabling DEP for the stack. =
 Only the last instance of the program where
the nested C function is completely compiled out has a non-executable stack.

Additionally, the presence of the nested C function causes the stack to be =
executable throughout the life of the
program, from start to finish - which is even more risky than the behavior =
seen on Windows.
The reason for this is evident from the ELF program header for each version=
 of the program.  Notice the GNU_STACK
section pointed which is boxed off for highlighting purposes:

asandoval@ubuntu:~$ readelf -l nested_test

Elf file type is DYN (Shared object file)
Entry point 0x7e0
There are 9 program headers, starting at offset 64

Program Headers:
  Type           Offset             VirtAddr           PhysAddr
                 FileSiz            MemSiz              Flags  Align
  PHDR           0x0000000000000040 0x0000000000000040 0x0000000000000040
                 0x00000000000001f8 0x00000000000001f8  R      0x8
  INTERP         0x0000000000000238 0x0000000000000238 0x0000000000000238
                 0x000000000000001c 0x000000000000001c  R      0x1
      [Requesting program interpreter: /lib64/ld-linux-x86-64.so.2]
  LOAD           0x0000000000000000 0x0000000000000000 0x0000000000000000
                 0x0000000000000eb0 0x0000000000000eb0  R E    0x200000
  LOAD           0x0000000000001d70 0x0000000000201d70 0x0000000000201d70
                 0x00000000000002a0 0x00000000000002a8  RW     0x200000
  DYNAMIC        0x0000000000001d80 0x0000000000201d80 0x0000000000201d80
                 0x00000000000001f0 0x00000000000001f0  RW     0x8
  NOTE           0x0000000000000254 0x0000000000000254 0x0000000000000254
                 0x0000000000000044 0x0000000000000044  R      0x4
  GNU_EH_FRAME   0x0000000000000cc8 0x0000000000000cc8 0x0000000000000cc8
                 0x000000000000005c 0x000000000000005c  R      0x4
+--------------------------------------------------------------------------=
--+
| GNU_STACK      0x0000000000000000 0x0000000000000000 0x0000000000000000  =
  |
|                0x0000000000000000 0x0000000000000000  RWE    0x10        =
  |
+--------------------------------------------------------------------------=
--+
  GNU_RELRO      0x0000000000001d70 0x0000000000201d70 0x0000000000201d70
                 0x0000000000000290 0x0000000000000290  R      0x1

Section to Segment mapping:
  Segment Sections...
   00
   01     .interp
   02     .interp .note.ABI-tag .note.gnu.build-id .gnu.hash .dynsym .dynst=
r .gnu.version .gnu.version_r .rela.dyn .rela.plt .init .plt .plt.got .text=
 .fini .rodata .eh_frame_hdr .eh_frame
   03     .init_array .fini_array .dynamic .got .data .bss
   04     .dynamic
   05     .note.ABI-tag .note.gnu.build-id
   06     .eh_frame_hdr
   07
   08     .init_array .fini_array .dynamic .got


asandoval@ubuntu:~$ readelf -l nested_test_ifdefd

Elf file type is DYN (Shared object file)
Entry point 0x7e0
There are 9 program headers, starting at offset 64

Program Headers:
  Type           Offset             VirtAddr           PhysAddr
                 FileSiz            MemSiz              Flags  Align
  PHDR           0x0000000000000040 0x0000000000000040 0x0000000000000040
                 0x00000000000001f8 0x00000000000001f8  R      0x8
  INTERP         0x0000000000000238 0x0000000000000238 0x0000000000000238
                 0x000000000000001c 0x000000000000001c  R      0x1
      [Requesting program interpreter: /lib64/ld-linux-x86-64.so.2]
  LOAD           0x0000000000000000 0x0000000000000000 0x0000000000000000
                 0x0000000000000ed0 0x0000000000000ed0  R E    0x200000
  LOAD           0x0000000000001d70 0x0000000000201d70 0x0000000000201d70
                 0x00000000000002a0 0x00000000000002a8  RW     0x200000
  DYNAMIC        0x0000000000001d80 0x0000000000201d80 0x0000000000201d80
                 0x00000000000001f0 0x00000000000001f0  RW     0x8
  NOTE           0x0000000000000254 0x0000000000000254 0x0000000000000254
                 0x0000000000000044 0x0000000000000044  R      0x4
  GNU_EH_FRAME   0x0000000000000ce8 0x0000000000000ce8 0x0000000000000ce8
                 0x000000000000005c 0x000000000000005c  R      0x4
+--------------------------------------------------------------------------=
-+
| GNU_STACK      0x0000000000000000 0x0000000000000000 0x0000000000000000  =
 |
|                0x0000000000000000 0x0000000000000000  RWE    0x10        =
 |
+--------------------------------------------------------------------------=
-+
  GNU_RELRO      0x0000000000001d70 0x0000000000201d70 0x0000000000201d70
                 0x0000000000000290 0x0000000000000290  R      0x1

Section to Segment mapping:
  Segment Sections...
   00
   01     .interp
   02     .interp .note.ABI-tag .note.gnu.build-id .gnu.hash .dynsym .dynst=
r .gnu.version .gnu.version_r .rela.dyn .rela.plt .init .plt .plt.got .text=
 .fini .rodata .eh_frame_hdr .eh_frame
   03     .init_array .fini_array .dynamic .got .data .bss
   04     .dynamic
   05     .note.ABI-tag .note.gnu.build-id
   06     .eh_frame_hdr
   07
   08     .init_array .fini_array .dynamic .got


asandoval@ubuntu:~$ readelf -l nested_test_ifdefd_code

Elf file type is DYN (Shared object file)
Entry point 0x7e0
There are 9 program headers, starting at offset 64

Program Headers:
  Type           Offset             VirtAddr           PhysAddr
                 FileSiz            MemSiz              Flags  Align
  PHDR           0x0000000000000040 0x0000000000000040 0x0000000000000040
                 0x00000000000001f8 0x00000000000001f8  R      0x8
  INTERP         0x0000000000000238 0x0000000000000238 0x0000000000000238
                 0x000000000000001c 0x000000000000001c  R      0x1
      [Requesting program interpreter: /lib64/ld-linux-x86-64.so.2]
  LOAD           0x0000000000000000 0x0000000000000000 0x0000000000000000
                 0x0000000000000ce8 0x0000000000000ce8  R E    0x200000
  LOAD           0x0000000000000d70 0x0000000000200d70 0x0000000000200d70
                 0x00000000000002a0 0x00000000000002a8  RW     0x200000
  DYNAMIC        0x0000000000000d80 0x0000000000200d80 0x0000000000200d80
                 0x00000000000001f0 0x00000000000001f0  RW     0x8
  NOTE           0x0000000000000254 0x0000000000000254 0x0000000000000254
                 0x0000000000000044 0x0000000000000044  R      0x4
  GNU_EH_FRAME   0x0000000000000b50 0x0000000000000b50 0x0000000000000b50
                 0x000000000000004c 0x000000000000004c  R      0x4
+--------------------------------------------------------------------------=
-+
| GNU_STACK      0x0000000000000000 0x0000000000000000 0x0000000000000000  =
 |
|                0x0000000000000000 0x0000000000000000  RW     0x10        =
 |
+--------------------------------------------------------------------------=
-+
  GNU_RELRO      0x0000000000000d70 0x0000000000200d70 0x0000000000200d70
                 0x0000000000000290 0x0000000000000290  R      0x1

Section to Segment mapping:
  Segment Sections...
   00
   01     .interp
   02     .interp .note.ABI-tag .note.gnu.build-id .gnu.hash .dynsym .dynst=
r .gnu.version .gnu.version_r .rela.dyn .rela.plt .init .plt .plt.got .text=
 .fini .rodata .eh_frame_hdr .eh_frame
   03     .init_array .fini_array .dynamic .got .data .bss
   04     .dynamic
   05     .note.ABI-tag .note.gnu.build-id
   06     .eh_frame_hdr
   07
   08     .init_array .fini_array .dynamic .got

As expected, only the last, instance of the program without the nested C fu=
nction creates a read-write stack.  The
other instances create a vulnerable read-write-execute stack that remains i=
n use for the lifetime of the program.

A script run as an ordinary user can detect the vulnerable programs simply =
by reading the ELF header.

Versions of GCC Affected
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
GCC 8.1, 7.3, and 7.1 were tested.  Each version generated code with this f=
law.  No other versions of GCC were tested.
Other versions which support nested C functions are likely to be vulnerable=
 as well.

Many products, including the popular Git for Windows, and Cygwin tools are =
compiled with GCC versions that produce
vulnerable executables.

Webroot Detection
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Webroot Exploit Shield (available only to closed beta participants as of 1 =
August 2019) detects various forms of stack
exploitation including some forms of Return Oriented Programming (ROP), Sta=
ck Pivots, and Stacks being made executable.
Users are warned of such potential exploits in progress and urged to termin=
ate the process when such behavior is
detected.  The default behavior of Exploit Shield (absent a customer respon=
se) is to terminate processes where a stack
exploit is identified.  Currently Webroot Exploit Shield identifies stack e=
xploitation in the following applications
due this flaw in GCC:

* Git for Windows Installer
* Cygwin Installer
* MinTTY
* Git Bash Shell
* and many other similar tools

Research Provided by Andrew Sandoval / Senior Principal Engineer, Webroot S=
oftware Inc.


--_000_DM5PR13MB14208A0909CAD197E6D1BADEAEF40DM5PR13MB1420namp_--
