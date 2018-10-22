X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["30881" "Monday" "22" "October" "2018" "12:54:52" "-0700" "Matthew Fernandez" "matthew.fernandez@gmail.com" "<B954529A-B925-4CA7-BA71-CF4957533090@gmail.com>" "720" "Re: [oss-security] GCC Compiler Induced Vulnerability - affects programs compiled with GCC 7 and 8 containing nested functions" "^Date:" nil nil "10" "2018102219:54:52" "[oss-security] GCC Compiler Induced Vulnerability - affects programs compiled with GCC 7 and 8 containing nested functions" (number mark "        matthew.fern Oct 22  720/30881 " thread-indent "\"Re: [oss-security] GCC Compiler Induced Vulnerability - affects programs compiled with GCC 7 and 8 containing nested functions\"\n") "<DM5PR13MB14208A0909CAD197E6D1BADEAEF40@DM5PR13MB1420.namprd13.prod.outlook.com>" ("<DM5PR13MB14208A0909CAD197E6D1BADEAEF40@DM5PR13MB1420.namprd13.prod.outlook.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26619 invoked by uid 550); 23 Oct 2018 10:22:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11401 invoked from network); 22 Oct 2018 19:55:09 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:date:message-id:subject
         :references:in-reply-to:to;
        bh=pxit3Z3/UOISdEIhVuCHs6b7NhFKyRPp4CTQB1xVAKQ=;
        b=I2FWoW5jy+0gv5qonTYz1yJYDmKJfMPTne/cQqY4QhRwAx6TuNDEVK8CRN39FWY2Vh
         O9IjoYUMaDeb1er4stWFTpZR6SbN1knYXRFbQnhNajbhupggzFVZrRR3zNXNjN/1zltL
         rf4u2L96aVr3etIpFhNQUTkQJtraZRJYIWAt2bb6IW64D8iYaN/uXv5KMPs14WDPj7v5
         MAOafcR6aQb6zSsw/vtJuJtjAtP3IG3o1CZ+u1jKa7/pq2zX5WR0f48G6ji93NEaBHjz
         bZgdTgTIInI8jAm5WxSGiCnrtp+mqmyf/yxXuPwMSp2f3VBzlSHqcS8a9T1wK2UODkx9
         6j7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version:date
         :message-id:subject:references:in-reply-to:to;
        bh=pxit3Z3/UOISdEIhVuCHs6b7NhFKyRPp4CTQB1xVAKQ=;
        b=a0NP4HkwGjsEsyssemaKSGkFuYPTqI4CLt3jtrP11g74dP5hNn/uYAzamf1f1FBpt1
         jkj14topjtahbBCCAChtsd1ssjWoatN2ljwcrZrRkarbLqm1UhxtC0Pr99bZZlMhmk9U
         B/S3DHyIJ7P5IaSF6XG8IjJ4YqXFj4qnHTTzZJ1QRNsbxOVquK79G/FztSUpM0aOaq/d
         kMH+Fknd4m4+ps0M/zpr6oVOpvcyYhmaMGk+8oA9uJXMg0fQbfnaiZlBnsD13rYqwgxi
         CshxltJkByAc6vrXnbyS077p4stlGdJUZXEK3WFdawg84/xsmylJaP48T6sru5+HynsR
         ZlJA==
X-Gm-Message-State: ABuFfojnvVf1sK6EXgz3frfjq+YJ6T8jW9F0id2J/zbrlubUWmLsWv0j
	kPDrd8SarsGp2vgwkq1gKtDVCMdl
X-Google-Smtp-Source: ACcGV60q04UhOB+cqjmHfnjDOK1iAIk9cDAC8lsZtGIgOSzP4/auQdDlyU6f/Yz4ZYpF8dyLAGO/sw==
X-Received: by 2002:a63:a119:: with SMTP id b25-v6mr43954502pgf.186.1540238096333;
        Mon, 22 Oct 2018 12:54:56 -0700 (PDT)
Content-Transfer-Encoding: 7bit
Content-Type: multipart/alternative;
	boundary=Apple-Mail-11456F10-52C2-4722-A585-888F64FB7ECA
Mime-Version: 1.0 (1.0)
Message-Id: <B954529A-B925-4CA7-BA71-CF4957533090@gmail.com>
References: <DM5PR13MB14208A0909CAD197E6D1BADEAEF40@DM5PR13MB1420.namprd13.prod.outlook.com>
In-Reply-To: <DM5PR13MB14208A0909CAD197E6D1BADEAEF40@DM5PR13MB1420.namprd13.prod.outlook.com>
X-Mailer: iPhone Mail (16A404)
Date: Mon, 22 Oct 2018 12:54:52 -0700
From: Matthew Fernandez <matthew.fernandez@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] GCC Compiler Induced Vulnerability - affects programs compiled with GCC 7 and 8 containing nested functions
To: oss-security@lists.openwall.com

--Apple-Mail-11456F10-52C2-4722-A585-888F64FB7ECA
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable



> On 22 Oct 2018, at 08:07, Andrew Sandoval <ASandoval@webroot.com> wrote:
>=20
> Introduction to GCC Compiler Induced Vulnerability
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D
>=20
> Hal Lonas
> 11 October 2018
>=20
> INTRODUCTION
> Webroot engineers recently discovered a vulnerability with Linux and Wind=
ows
> executables produced by the Gnu C Compiler, commonly known as GCC.
>=20
> Technical Description of the vulnerability
> When nested C functions are compiled by GCC, code is generated which caus=
es the
> call stack of the currently executing thread to be made executable prior =
to the
> call to a nested function and for the duration of the thread's lifetime. =
 This
> is essentially the equivalent of disabling Data Execution Prevention (DEP=
).
> A stack overflow, etc., that is able to place instructions on the page(s)=
 of
> memory made executable has the potential of gaining execution and running
> malware, etc.  This places the process at substantial risk of being explo=
ited.
>=20
> How was the vulnerability found?
> Engineers using anti-exploit tools developed at Webroot found this
> vulnerability in commonly used tools such as:
> * Git for Windows Installer
> * Cygwin Installer
> * MinTTY
> * Git Bash Shell
> * ...and other similar tools
>=20
> What versions of GCC have we tested?
> We have found the vulnerability to be produced when using the following
> versions of GCC:
> * 8.1
> * 7.3
> * 7.1
>=20
> These were the only versions we tested and all produced the vulnerability=
 in
> output executables.  No other GCC versions were tested.
>=20
> Why this communication?
> We are taking this opportunity to inform the custodians of GCC so that the
> vulnerability might be addressed before it becomes public knowledge.
>=20
> Will Webroot communicate this to the public?
> Webroot believes in responsible disclosure and will work with third parti=
es to
> ensure that the vulnerability is addressed before a public announcement. =
We
> are happy to work with your communications team on announcement timing.
>=20
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D
> DETAILED DISCLOSURE FOLLOWS
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D
>=20
> Webroot Security Vulnerability Disclosure
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> Software compiled with various versions of GCC on Windows and Linux may c=
ontain a serious security vulnerability.  The
> vulnerability will exist when C code with nested functions are compiled. =
 Examples of vulnerable software include Cygwin
> Bash, MinTTY, and similar tools included with Git for Windows, and other =
Unix-like tools on Windows, etc.
>=20
> On x86 / x64 Linux based systems (and possibly other Unix systems) any to=
ol compiled with GCC which utilizes nested C
> functions is vulnerable.
>=20
> Vulnerability
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> When nested C functions are compiled by GCC, code is generated which caus=
es the call stack of the currently executing
> thread to be made executable prior to the call to a nested function and f=
or the duration of the thread's lifetime.
> This is essentially the equivalent of disabling Data Execution Prevention=
 (DEP).  A stack overflow, etc., that is able
> to place instructions on the page(s) of memory made executable has the po=
tential of gaining execution and running
> malware, etc.  This places the process at substantial risk of being explo=
ited.
>=20
> Windows Example
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> The following simple C program, when compiled by GCC, generates code that=
 has an executable stack shortly after main()
> is entered:
>=20
> #include <stdio.h>
> #include <Windows.h>
>=20
> int main()
> {
>       BOOL CALLBACK EnumWindowsCB(HWND hWnd, LPARAM lp)
>       {
>              printf("Window: %p\n", hWnd);
>       }
>       printf("Enum'd Windows:\n");
>       EnumWindows(EnumWindowsCB, 0);
>       return 0;
> }
>=20
> When compiled as an x86_64 binary, main looks like this:
>=20
> .text:000000000040157B ; =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D S =
U B R O U T I N E =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> .text:000000000040157B
> .text:000000000040157B ; Attributes: bp-based frame
> .text:000000000040157B
> .text:000000000040157B ; int __cdecl main(int argc, const char **argv, co=
nst char **envp)
> .text:000000000040157B                 public main
> .text:000000000040157B main            proc near               ; CODE XRE=
F: __tmainCRTStartup+242p
> .text:000000000040157B                                         ; DATA XRE=
F: .pdata:000000000040506Co ...
> .text:000000000040157B
> .text:000000000040157B var_30          =3D byte ptr -30h
> .text:000000000040157B var_10          =3D qword ptr -10h
> .text:000000000040157B arg_0           =3D byte ptr  10h
> .text:000000000040157B
> .text:000000000040157B                 push    rbp
> .text:000000000040157C                 mov     rbp, rsp
> .text:000000000040157F                 sub     rsp, 50h
> .text:0000000000401583                 call    __main
> .text:0000000000401588                 lea     rax, [rbp+arg_0]
> .text:000000000040158C                 mov     [rbp+var_10], rax
> .text:0000000000401590                 lea     rax, [rbp+var_30]
> .text:0000000000401594                 lea     rdx, [rbp+var_30]
> .text:0000000000401598                 mov     word ptr [rax], 0BB49h
> .text:000000000040159D                 lea     rcx, EnumWindowsCB_84527
> .text:00000000004015A4                 mov     [rax+2], rcx
> .text:00000000004015A8                 mov     word ptr [rax+0Ah], 0BA49h
> .text:00000000004015AE                 mov     [rax+0Ch], rdx
> .text:00000000004015B2                 mov     dword ptr [rax+14h], 90E3F=
F49h
> .text:00000000004015B9                 mov     rcx, rax
> .text:00000000004015BC                 call    __enable_execute_stack
> .text:00000000004015C1                 lea     rcx, aEnumDWindows ; "Enum=
'd Windows:"
> .text:00000000004015C8                 call    puts
> .text:00000000004015CD                 lea     rax, [rbp+var_30]
> .text:00000000004015D1                 mov     edx, 0
> .text:00000000004015D6                 mov     rcx, rax
> .text:00000000004015D9                 mov     rax, cs:__imp_EnumWindows
> .text:00000000004015E0                 call    rax ; __imp_EnumWindows
> .text:00000000004015E2                 mov     eax, 0
> .text:00000000004015E7                 add     rsp, 50h
> .text:00000000004015EB                 pop     rbp
> .text:00000000004015EC                 retn
> .text:00000000004015EC main            endp
> .text:00000000004015EC
> .text:00000000004015EC ; ------------------------------------------------=
---------------------------
>=20
> The nested function "EnumWindowsCB" is referenced in the lea instruction =
at address 40159D.  It looks like this (which
> is essentially the same as it would look as a non-nested function):
>=20
> .text:0000000000401550 ; =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D S =
U B R O U T I N E =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> .text:0000000000401550
> .text:0000000000401550 ; Attributes: bp-based frame
> .text:0000000000401550
> .text:0000000000401550 EnumWindowsCB_84527 proc near           ; DATA XRE=
F: main+22o
> .text:0000000000401550                                         ; .pdata:0=
00000000040506Co
> .text:0000000000401550
> .text:0000000000401550 var_8           =3D qword ptr -8
> .text:0000000000401550 arg_0           =3D qword ptr  10h
> .text:0000000000401550 arg_8           =3D qword ptr  18h
> .text:0000000000401550
> .text:0000000000401550                 push    rbp
> .text:0000000000401551                 mov     rbp, rsp
> .text:0000000000401554                 sub     rsp, 30h
> .text:0000000000401558                 mov     [rbp+arg_0], rcx
> .text:000000000040155C                 mov     [rbp+arg_8], rdx
> .text:0000000000401560                 mov     [rbp+var_8], r10
> .text:0000000000401564                 mov     rdx, [rbp+arg_0]
> .text:0000000000401568                 lea     rcx, aWindowP   ; "Window:=
 %p\n"
> .text:000000000040156F                 call    printf
> .text:0000000000401574                 nop
> .text:0000000000401575                 add     rsp, 30h
> .text:0000000000401579                 pop     rbp
> .text:000000000040157A                 retn
> .text:000000000040157A EnumWindowsCB_84527 endp
>=20
> Despite the fact that EnumWindowsCB does not need to access any local var=
iables in main(), the code in main() between
> 401590 and 4015BC sets up stack variables that would make this possible, =
and then the CALL at address 4015BC makes the
> call stack itself at least partially executable, by passing the address o=
f the context structure [var_30] to
> __enable_execute_stack, which looks like this:
>=20
> .text:0000000000402AB0 ; =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D S =
U B R O U T I N E =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> .text:0000000000402AB0
> .text:0000000000402AB0
> .text:0000000000402AB0                 public __enable_execute_stack
> .text:0000000000402AB0 __enable_execute_stack proc near        ; CODE XRE=
F: main+41p
> .text:0000000000402AB0                                         ; DATA XRE=
F: .pdata:0000000000405228o
> .text:0000000000402AB0
> .text:0000000000402AB0 dwLength        =3D qword ptr -38h
> .text:0000000000402AB0 flNewProtect    =3D dword ptr -20h
> .text:0000000000402AB0
> .text:0000000000402AB0                 push    rbx
> .text:0000000000402AB1                 sub     rsp, 50h
> .text:0000000000402AB5                 mov     r8d, 30h
> .text:0000000000402ABB                 lea     rbx, [rsp+58h+dwLength]
> .text:0000000000402AC0                 mov     rdx, rbx        ; dwLength
> .text:0000000000402AC3                 call    cs:__imp_VirtualQuery
> .text:0000000000402AC9                 test    rax, rax
> .text:0000000000402ACC                 jz      __enable_execute_stack_col=
d_0
> .text:0000000000402AD2                 mov     rdx, qword ptr [rsp+58h+fl=
NewProtect] ; flNewProtect
> .text:0000000000402AD7                 lea     r9, [rbx+24h]
> .text:0000000000402ADB                 mov     r8d, 40h
> .text:0000000000402AE1                 mov     rcx, [rsp+58h+dwLength] ; =
lpflOldProtect
> .text:0000000000402AE6                 call    cs:__imp_VirtualProtect
> .text:0000000000402AEC                 nop
> .text:0000000000402AED                 add     rsp, 50h
> .text:0000000000402AF1                 pop     rbx
> .text:0000000000402AF2                 retn
> .text:0000000000402AF2 __enable_execute_stack endp
>=20
> The code in __enable_execute_stack() calls VirtualQuery() to find out the=
 RegionSize and the BaseAddress of the
> structure [var_30].  It then calls VirtualProtect to make this entire reg=
ion PAGE_EXECUTE_READWRITE.  At a minimum
> one whole page (0x1000 bytes) of stack memory is made executable.  Potent=
ially many more pages of stack memory could
> be made executable by the function, depending upon the results of the cal=
l to VirtualQuery (which will return a
> RegionSize for all pages from BaseAddress onward that have matching State=
, Type, and Protect bits).  Different
> functions are likely to return larger RegionSize results further extendin=
g the amount of memory placed at risk.
>=20
> It is also important to notice that the stack is made executable sometime=
 before the context variable is even used in
> the call to EnumWindows() which utilizes the nested C function.  This is =
obvious by the code start at address 4015C1
> in main():
>=20
> .text:00000000004015BC                 call    __enable_execute_stack ; <=
-- Stack is made executable here <--
> .text:00000000004015C1                 lea     rcx, aEnumDWindows ; "Enum=
'd Windows:"
> .text:00000000004015C8                 call    puts                   ; <=
-- puts definitely does not need an executable stack <--
> .text:00000000004015CD                 lea     rax, [rbp+var_30]
> .text:00000000004015D1                 mov     edx, 0
> .text:00000000004015D6                 mov     rcx, rax
> .text:00000000004015D9                 mov     rax, cs:__imp_EnumWindows
> .text:00000000004015E0                 call    rax ; __imp_EnumWindows ; =
<-- Nested C function called <--
> .text:00000000004015E2                 mov     eax, 0
> .text:00000000004015E7                 add     rsp, 50h
> .text:00000000004015EB                 pop     rbp
> .text:00000000004015EC                 retn
> .text:00000000004015EC main            endp
>=20
> The call to printf("Enum'd Windows:\n") from our code in main() runs AFTE=
R the stack is made executable, but BEFORE
> EnumWindows() is called.
>=20
> This means that not only is the call to EnumWindows() and its (nested) ca=
llback function EnumWindowsCB() potentially
> capable of intentionally or unintentionally placing exploit instructions =
or shell code upon the stack, but so also is
> every other function called within main(), before or after use of the nes=
ted function.
>=20
> Furthermore, this executable stack memory is leaked as executable.  There=
 is no code generated that restores the
> original page protections after the nested C function has been utilized f=
or the last time.  For the lifetime of the
> program, anything that is able to cause a stack overflow (etc.) and cause=
 execution to occur on the stack in the
> executable page(s), will not raise an access violation and therefore the =
process will remain exploitable for the
> duration of the current thread.
>=20
> This flaw in GCC could allow an attacker to gain execution in the same wa=
y in which they would if Data Execution
> Prevent (DEP) had been disabled on a 32-bit system.  Worse, the Windows T=
ask Manager will not show that DEP is
> (essentially) disabled, and 64-bit processes (where DEP cannot normally b=
e disabled) are made vulnerable to data
> execution by this flaw in GCC generated code.
>=20
> Note that nested C functions appear to be particular to code compiled wit=
h GCC.  Most if not all C++ compilers are
> able to produce code from lambdas (similar to nested functions) without c=
ompromising the call stack.
>=20
> Linux Example
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> Below is a similar C program with a nested C function written to run on L=
inux / Unix:
>=20
> #include <stdio.h>
> #include <string.h>
> #include <sys/types.h>
> #include <unistd.h>
>=20
> //
> // DumpMapsStackEntry is a utility function that finds and prints the cal=
l stack
> // identified by [stack] in the procfs maps file for the current process
> void DumpMapsStackEntry()
> {
>       char szMapsFile[1024];
>       sprintf(&szMapsFile[0], "/proc/%u/maps", getpid());
>=20
>       FILE *pfMaps =3D fopen(&szMapsFile[0], "rt");
>       char szLine[1024];
>       while(NULL !=3D fgets(&szLine[0], sizeof(szLine) - 1, pfMaps))
>       {
>              if(NULL =3D=3D strstr(&szLine[0], "[stack]"))
>              {
>                     continue;
>              }
>              printf("%s\n", &szLine[0]);
>       }
>       fclose(pfMaps);
> }
>=20
> //
> // EnumerateViaCallback is a "API" that invokes the callback function
> void EnumerateViaCallback(void (*pfnCB)(int, const char *),
>       const char *pszPassThrough)
> {
>       for(int i =3D 0; i < 10; ++i)
>       {
>              pfnCB(i, pszPassThrough);
>       }
> }
>=20
> #ifndef VULN_TEST_FORCEFULLY_OMIT_CODE
> //
> // Note: Testing shows that just having this function present causes
> // the stack to be executable from main() onward...  Even if VulnTest is
> // never invoked or even referenced!  The ifdef above may be defined
> // demonstrate this assertion.
> //
> void VulnTest(int iTest)
> {
>       if(0 =3D=3D iTest)
>       {
>              printf("Nested Function Omitted\n");
>              return;
>       }
>=20
>       //
>       // Nested C function:
>       void EnumCallback(int iN, const char *pszPassThrough)
>       {
>              printf("N =3D %i, pass through: %s\n",
>                     iN,
>                     pszPassThrough);
>              if(5 =3D=3D iN)
>              {
>                     printf("Check memory protections of stack pages near =
%p\n",
>                           __builtin_frame_address(0));
>                     DumpMapsStackEntry();
>                     printf("Press enter to continue\n");
>                     getchar();
>              }
>       }
>=20
>       //
>       // Call the thing that invokes the nested function...
>       printf("Enumerate 1 - 10\n");
>       EnumerateViaCallback(EnumCallback, "Test");
> }
> #endif
>=20
> int main(int iArgc, const char *ppszArgv[])
> {
>       printf("Current Process: %u\n", getpid());
>       DumpMapsStackEntry();
>=20
> #ifdef VULN_TEST_FORCEFULLY_OMIT
>       printf("Nested function #ifdef'd out!\n");
> #else
>       VulnTest((iArgc > 1) ? 0 : 1);
> #endif
>=20
>       printf("Done with callback press Enter to exit\n");
>       DumpMapsStackEntry();
>       getchar();
>       return 0;
> }
>=20
> Though substantially longer than the simple Windows example, this example=
 code is essentially the same other than that
> EnumerateViaCallback() was written instead of using a system API that req=
uired a callback, and DumpMapsStackEntry() is
> called frequently to show whether or not the current call stack is execut=
able.
>=20
> This code was saved in the file nested.c, and then compiled with three di=
fferent sets of options as shown below:
>  * gcc nested.c -o nested_test
>  * gcc nested.c -o nested_test_ifdefd -DVULN_TEST_FORCEFULLY_OMIT
>        o This disables the call to VulnTest causing it to be unreferenced
>  * gcc nested.c -o nested_test_ifdefd_code -DVULN_TEST_FORCEFULLY_OMIT -D=
VULN_TEST_FORCEFULLY_OMIT_CODE
>        o This completely removes VulnTest and of course ensures that it i=
s not referenced
>=20
> The results from running each version are shown below, with the resulting=
 stack memory protections highlighted:
> asandoval@ubuntu:~$ gcc nested.c -o nested_test_ifdefd -DVULN_TEST_FORCEF=
ULLY_OMIT
> asandoval@ubuntu:~$ gcc nested.c -o nested_test_ifdefd_code -DVULN_TEST_F=
ORCEFULLY_OMIT -DVULN_TEST_FORCEFULLY_OMIT_CODE
> asandoval@ubuntu:~$ gcc nested.c -o nested_test
> asandoval@ubuntu:~$ ./nested_test
> Current Process: 29793
> 7ffc7cb3f000-7ffc7cb60000 rwxp 00000000 00:00 0                          =
[stack]
>=20
> Enumerate 1 - 10
> N =3D 0, pass through: Test
> N =3D 1, pass through: Test
> N =3D 2, pass through: Test
> N =3D 3, pass through: Test
> N =3D 4, pass through: Test
> N =3D 5, pass through: Test
> Check memory protections of stack pages near 0x7ffc7cb5e2c0
> 7ffc7cb3f000-7ffc7cb60000 rwxp 00000000 00:00 0                          =
[stack]
>=20
> Press enter to continue
>=20
> N =3D 6, pass through: Test
> N =3D 7, pass through: Test
> N =3D 8, pass through: Test
> N =3D 9, pass through: Test
> Done with callback press Enter to exit
> 7ffc7cb3f000-7ffc7cb60000 rwxp 00000000 00:00 0                          =
[stack]
>=20
> asandoval@ubuntu:~$ ./nested_test_ifdefd
> Current Process: 29794
> 7ffec66dd000-7ffec66fe000 rwxp 00000000 00:00 0                          =
[stack]
>=20
> Nested function #ifdef'd out!
> Done with callback press Enter to exit
> 7ffec66dd000-7ffec66fe000 rwxp 00000000 00:00 0                          =
[stack]
>=20
>=20
> asandoval@ubuntu:~$ ./nested_test_ifdefd_code
> Current Process: 29796
> 7ffda444f000-7ffda4470000 rw-p 00000000 00:00 0                          =
[stack]
>=20
> Nested function #ifdef'd out!
> Done with callback press Enter to exit
> 7ffda444f000-7ffda4470000 rw-p 00000000 00:00 0                          =
[stack]
>=20
>=20
> asandoval@ubuntu:~$
>=20
> In the first two cases, where the nested C function was present, whether =
referenced or not, the stack is executable,
> making the process vulnerable and essentially disabling DEP for the stack=
.  Only the last instance of the program where
> the nested C function is completely compiled out has a non-executable sta=
ck.
>=20
> Additionally, the presence of the nested C function causes the stack to b=
e executable throughout the life of the
> program, from start to finish - which is even more risky than the behavio=
r seen on Windows.
> The reason for this is evident from the ELF program header for each versi=
on of the program.  Notice the GNU_STACK
> section pointed which is boxed off for highlighting purposes:
>=20
> asandoval@ubuntu:~$ readelf -l nested_test
>=20
> Elf file type is DYN (Shared object file)
> Entry point 0x7e0
> There are 9 program headers, starting at offset 64
>=20
> Program Headers:
>  Type           Offset             VirtAddr           PhysAddr
>                 FileSiz            MemSiz              Flags  Align
>  PHDR           0x0000000000000040 0x0000000000000040 0x0000000000000040
>                 0x00000000000001f8 0x00000000000001f8  R      0x8
>  INTERP         0x0000000000000238 0x0000000000000238 0x0000000000000238
>                 0x000000000000001c 0x000000000000001c  R      0x1
>      [Requesting program interpreter: /lib64/ld-linux-x86-64.so.2]
>  LOAD           0x0000000000000000 0x0000000000000000 0x0000000000000000
>                 0x0000000000000eb0 0x0000000000000eb0  R E    0x200000
>  LOAD           0x0000000000001d70 0x0000000000201d70 0x0000000000201d70
>                 0x00000000000002a0 0x00000000000002a8  RW     0x200000
>  DYNAMIC        0x0000000000001d80 0x0000000000201d80 0x0000000000201d80
>                 0x00000000000001f0 0x00000000000001f0  RW     0x8
>  NOTE           0x0000000000000254 0x0000000000000254 0x0000000000000254
>                 0x0000000000000044 0x0000000000000044  R      0x4
>  GNU_EH_FRAME   0x0000000000000cc8 0x0000000000000cc8 0x0000000000000cc8
>                 0x000000000000005c 0x000000000000005c  R      0x4
> +------------------------------------------------------------------------=
----+
> | GNU_STACK      0x0000000000000000 0x0000000000000000 0x0000000000000000=
    |
> |                0x0000000000000000 0x0000000000000000  RWE    0x10      =
    |
> +------------------------------------------------------------------------=
----+
>  GNU_RELRO      0x0000000000001d70 0x0000000000201d70 0x0000000000201d70
>                 0x0000000000000290 0x0000000000000290  R      0x1
>=20
> Section to Segment mapping:
>  Segment Sections...
>   00
>   01     .interp
>   02     .interp .note.ABI-tag .note.gnu.build-id .gnu.hash .dynsym .dyns=
tr .gnu.version .gnu.version_r .rela.dyn .rela.plt .init .plt .plt.got .tex=
t .fini .rodata .eh_frame_hdr .eh_frame
>   03     .init_array .fini_array .dynamic .got .data .bss
>   04     .dynamic
>   05     .note.ABI-tag .note.gnu.build-id
>   06     .eh_frame_hdr
>   07
>   08     .init_array .fini_array .dynamic .got
>=20
>=20
> asandoval@ubuntu:~$ readelf -l nested_test_ifdefd
>=20
> Elf file type is DYN (Shared object file)
> Entry point 0x7e0
> There are 9 program headers, starting at offset 64
>=20
> Program Headers:
>  Type           Offset             VirtAddr           PhysAddr
>                 FileSiz            MemSiz              Flags  Align
>  PHDR           0x0000000000000040 0x0000000000000040 0x0000000000000040
>                 0x00000000000001f8 0x00000000000001f8  R      0x8
>  INTERP         0x0000000000000238 0x0000000000000238 0x0000000000000238
>                 0x000000000000001c 0x000000000000001c  R      0x1
>      [Requesting program interpreter: /lib64/ld-linux-x86-64.so.2]
>  LOAD           0x0000000000000000 0x0000000000000000 0x0000000000000000
>                 0x0000000000000ed0 0x0000000000000ed0  R E    0x200000
>  LOAD           0x0000000000001d70 0x0000000000201d70 0x0000000000201d70
>                 0x00000000000002a0 0x00000000000002a8  RW     0x200000
>  DYNAMIC        0x0000000000001d80 0x0000000000201d80 0x0000000000201d80
>                 0x00000000000001f0 0x00000000000001f0  RW     0x8
>  NOTE           0x0000000000000254 0x0000000000000254 0x0000000000000254
>                 0x0000000000000044 0x0000000000000044  R      0x4
>  GNU_EH_FRAME   0x0000000000000ce8 0x0000000000000ce8 0x0000000000000ce8
>                 0x000000000000005c 0x000000000000005c  R      0x4
> +------------------------------------------------------------------------=
---+
> | GNU_STACK      0x0000000000000000 0x0000000000000000 0x0000000000000000=
   |
> |                0x0000000000000000 0x0000000000000000  RWE    0x10      =
   |
> +------------------------------------------------------------------------=
---+
>  GNU_RELRO      0x0000000000001d70 0x0000000000201d70 0x0000000000201d70
>                 0x0000000000000290 0x0000000000000290  R      0x1
>=20
> Section to Segment mapping:
>  Segment Sections...
>   00
>   01     .interp
>   02     .interp .note.ABI-tag .note.gnu.build-id .gnu.hash .dynsym .dyns=
tr .gnu.version .gnu.version_r .rela.dyn .rela.plt .init .plt .plt.got .tex=
t .fini .rodata .eh_frame_hdr .eh_frame
>   03     .init_array .fini_array .dynamic .got .data .bss
>   04     .dynamic
>   05     .note.ABI-tag .note.gnu.build-id
>   06     .eh_frame_hdr
>   07
>   08     .init_array .fini_array .dynamic .got
>=20
>=20
> asandoval@ubuntu:~$ readelf -l nested_test_ifdefd_code
>=20
> Elf file type is DYN (Shared object file)
> Entry point 0x7e0
> There are 9 program headers, starting at offset 64
>=20
> Program Headers:
>  Type           Offset             VirtAddr           PhysAddr
>                 FileSiz            MemSiz              Flags  Align
>  PHDR           0x0000000000000040 0x0000000000000040 0x0000000000000040
>                 0x00000000000001f8 0x00000000000001f8  R      0x8
>  INTERP         0x0000000000000238 0x0000000000000238 0x0000000000000238
>                 0x000000000000001c 0x000000000000001c  R      0x1
>      [Requesting program interpreter: /lib64/ld-linux-x86-64.so.2]
>  LOAD           0x0000000000000000 0x0000000000000000 0x0000000000000000
>                 0x0000000000000ce8 0x0000000000000ce8  R E    0x200000
>  LOAD           0x0000000000000d70 0x0000000000200d70 0x0000000000200d70
>                 0x00000000000002a0 0x00000000000002a8  RW     0x200000
>  DYNAMIC        0x0000000000000d80 0x0000000000200d80 0x0000000000200d80
>                 0x00000000000001f0 0x00000000000001f0  RW     0x8
>  NOTE           0x0000000000000254 0x0000000000000254 0x0000000000000254
>                 0x0000000000000044 0x0000000000000044  R      0x4
>  GNU_EH_FRAME   0x0000000000000b50 0x0000000000000b50 0x0000000000000b50
>                 0x000000000000004c 0x000000000000004c  R      0x4
> +------------------------------------------------------------------------=
---+
> | GNU_STACK      0x0000000000000000 0x0000000000000000 0x0000000000000000=
   |
> |                0x0000000000000000 0x0000000000000000  RW     0x10      =
   |
> +------------------------------------------------------------------------=
---+
>  GNU_RELRO      0x0000000000000d70 0x0000000000200d70 0x0000000000200d70
>                 0x0000000000000290 0x0000000000000290  R      0x1
>=20
> Section to Segment mapping:
>  Segment Sections...
>   00
>   01     .interp
>   02     .interp .note.ABI-tag .note.gnu.build-id .gnu.hash .dynsym .dyns=
tr .gnu.version .gnu.version_r .rela.dyn .rela.plt .init .plt .plt.got .tex=
t .fini .rodata .eh_frame_hdr .eh_frame
>   03     .init_array .fini_array .dynamic .got .data .bss
>   04     .dynamic
>   05     .note.ABI-tag .note.gnu.build-id
>   06     .eh_frame_hdr
>   07
>   08     .init_array .fini_array .dynamic .got
>=20
> As expected, only the last, instance of the program without the nested C =
function creates a read-write stack.  The
> other instances create a vulnerable read-write-execute stack that remains=
 in use for the lifetime of the program.
>=20
> A script run as an ordinary user can detect the vulnerable programs simpl=
y by reading the ELF header.
>=20
> Versions of GCC Affected
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> GCC 8.1, 7.3, and 7.1 were tested.  Each version generated code with this=
 flaw.  No other versions of GCC were tested.
> Other versions which support nested C functions are likely to be vulnerab=
le as well.
>=20
> Many products, including the popular Git for Windows, and Cygwin tools ar=
e compiled with GCC versions that produce
> vulnerable executables.
>=20
> Webroot Detection
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> Webroot Exploit Shield (available only to closed beta participants as of =
1 August 2019) detects various forms of stack
> exploitation including some forms of Return Oriented Programming (ROP), S=
tack Pivots, and Stacks being made executable.
> Users are warned of such potential exploits in progress and urged to term=
inate the process when such behavior is
> detected.  The default behavior of Exploit Shield (absent a customer resp=
onse) is to terminate processes where a stack
> exploit is identified.  Currently Webroot Exploit Shield identifies stack=
 exploitation in the following applications
> due this flaw in GCC:
>=20
> * Git for Windows Installer
> * Cygwin Installer
> * MinTTY
> * Git Bash Shell
> * and many other similar tools
>=20
> Research Provided by Andrew Sandoval / Senior Principal Engineer, Webroot=
 Software Inc.

FWIW this is already documented in the GCC docs, https://gcc.gnu.org/online=
docs/gccint/Trampolines.html. Quoting from there:

=E2=80=9CThe use of trampolines requires an executable stack, which is a se=
curity risk. To avoid this problem, GCC also supports another strategy: usi=
ng descriptors for nested functions. Under this model, taking the address o=
f a nested function results in a pointer to a non-executable function descr=
iptor object. Initializing the static chain from the descriptor is handled =
at indirect call sites.=E2=80=9D=

--Apple-Mail-11456F10-52C2-4722-A585-888F64FB7ECA--
