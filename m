Received: (qmail 19841 invoked by uid 550); 24 Feb 2026 16:40:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5873 invoked from network); 24 Feb 2026 10:06:08 -0000
References: <CAB1hGqQwnSzEqtrefwqAxD+rWGu_EXVDmu-btMrNYqMzkzc9Kw@mail.gmail.com> <20260206172730.GA12303@unix-ag.uni-kl.de> <877bso8mhf.fsf@josefsson.org> <20260224011702.27987-1-justin.swartz@risingedge.co.za> <B72B4221-75D0-4C28-840F-9CF7B1A53E66.1@smtp-inbound1.duck.com>
MIME-Version: 1.0
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Cc: "bug-inetutils@gnu.org" <bug-inetutils@gnu.org>,
 "ron.benyizhak@safebreach.com" <ron.benyizhak@safebreach.com>,
 "simon@josefsson.org" <simon@josefsson.org>,
 "auerswal@unix-ag.uni-kl.de" <auerswal@unix-ag.uni-kl.de>,
 "justin.swartz@risingedge.co.za" <justin.swartz@risingedge.co.za>
Message-ID: <27E138FE-A205-4EDD-9A9B-1F84BFAEC100.1@smtp-inbound1.duck.com>
Date: Tue, 24 Feb 2026 05:05:58 -0500
From: kf503bla@duck.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=duck.com; h=From:
 Date: Message-ID: Cc: To: Content-Transfer-Encoding: Content-Type:
 MIME-Version: References: Subject; q=dns/txt; s=postal-KpyQVw;
 t=1771927558; bh=V3fgbbCmsz5GeKEcQxEbcUIPJmNE0h2HTyTmjLQl42g=;
 b=qWKwnhpHJvf0JVpHDOs0ZZ1g83bI+NPar+GNexpyD7TwvXmQlgNzUPMix5mvhwMJ4SUR3ITuC
 8V8PWPrO8SKzhT5QuSo2WYRgLSZN2ycPf0cGC8PGKlc4I9iWiF0JLxmVI2pBAZkYUOECAigP57M
 P9HsnzNbDV6urSW+bGkcSIE=
Subject: Re: [oss-security] Re: Telnetd Vulnerability Report

Who uses telnet anyway? It's deprecated. Everyone uses ssh for any kind of =
remote access.


On Tuesday, February 24th, 2026 at 7:51 AM, Justin Swartz <justin.swartz_at=
_risingedge.co.za_kf503bla@duck.com> wrote:

> Greetings,
>=20
> I have been reviewing the recent vulnerability report by Ron Ben Yizhak r=
egarding CREDENTIALS_DIRECTORY, as well as commit 4db2f19f which introduces=
 unsetenv("CREDENTIALS_DIRECTORY") to address the problem.
>=20
> After becoming aware of CVE-2026-24061 (telnetd in GNU Inetutils through =
2.7 allows remote authentication bypass via a "-f root" value for the USER =
environment variable), I was curious to find out whether there'd also been =
a potential regression of CVE-1999-0073, described as: telnet allows a remo=
te client to specify environment variables including LD_LIBRARY_PATH, allow=
ing an attacker to bypass the normal system libraries and gain root access.=
 I can confirm that this is still an issue 27 years later, despite attempts=
 at blacklisting environment variables by prefix or full name.
>=20
> The problem stems from telnetd executing /bin/login in a root-to-root con=
text, which means that AT_SECURE is set to 0 by the kernel in the process's=
 auxiliary vector. When AT_SECURE holds a positive value, it informs the dy=
namic linker (ld-linux.so) and libc to enter a "secure-execution mode" wher=
e a bunch of interesting environment variables are discarded or, at least, =
defanged if present. In other words, the responsibility is on telnetd itsel=
f to ensure that none of those potentially interesting, and attacker contro=
lled, variables make their way to /bin/login.
>=20
> While using unsetenv() negates a user's ability to exploit the login.noau=
th vector, the possibility still exists for the inclusion of variables of i=
nterest to GNU gettext (such as OUTPUT_CHARSET or LANGUAGE) and glibc (such=
 as GCONV_PATH) via the telnet protocol itself.
>=20
> For example, by injecting OUTPUT_CHARSET and LANGUAGE, an attacker can pe=
rsuade gettext that a character set conversion is necessary. This forces ge=
ttext to call libc's iconv_open(), and because AT_SECURE is 0, iconv_open()=
 will use an injected GCONV_PATH in its quest for a gconv-modules file. Ass=
uming the attacker already has a local unprivileged account, or at least a =
means of uploading files to the host (and knowing the location of the uploa=
ded files), a custom gconv-modules file will allow arbitrary shared objects=
 to be loaded soon after /bin/login attempts to print a localized prompt.
>=20
> For proof of concept, I've declared a broad selection of LANGUAGE codes f=
or the best chance of matching an installed locale. An attacker with local =
access could simply determine what's actually installed and select only one=
 that doesn't match the system's default locale instead. Similarly, OUTPUT_=
CHARSET has been chosen as a deliberate mismatch against the very common ch=
oice of UTF-8:
>=20
>   abuser@prospecton.hyperama:~$ ls -al .gconv
>   total 184
>   drwxr-xr-x 2 abuser abuser   4096 Jan  1  1970 .
>   drwxr-x--- 5 abuser abuser  36864 Jan  1  1970 ..
>   -rw-r--r-- 1 abuser abuser    256 Jan  1  1970 gconv-modules
>   -rw-r--r-- 1 abuser abuser  15568 Jan  1  1970 libcash2trash.so
>=20
>=20
>   abuser@prospecton.hyperama:~$ telnet -l abuser
>   telnet> environ define GCONV_PATH /home/abuser/.gconv
>   telnet> environ export GCONV_PATH
>   telnet> environ define LANGUAGE fr:de:es:it:pt:nl:sv:pl:uk:ru:zh_CN:ko:=
ja
>   telnet> environ export LANGUAGE
>   telnet> environ define OUTPUT_CHARSET ISO-8859-1
>   telnet> environ export OUTPUT_CHARSET
>   telnet> open 127.0.0.1
>   Trying 127.0.0.1...
>   Connected to 127.0.0.1.
>   Escape character is '^]'.
>=20
>   Linux (localhost) (pts/6)
>=20
>   Connection closed by foreign host.
>=20
>=20
>   abuser@prospecton.hyperama:~$ ls -al .gconv
>   total 184
>   drwxr-xr-x 2 abuser abuser   4096 Jan  1  1970 .
>   drwxr-x--- 5 abuser abuser  36864 Jan  1  1970 ..
>   -rw-r--r-- 1 abuser abuser    256 Jan  1  1970 gconv-modules
>   -rw-r--r-- 1 abuser abuser  15568 Jan  1  1970 libcash2trash.so
>   -rwsr-sr-x 1 root   root   125640 Jan  1  1970 trash
>=20
>=20
>   abuser@prospecton.hyperama:~$ .gconv/trash -p
>   # id
>   uid=3D1001(abuser) gid=3D1002(abuser) euid=3D0(root) egid=3D0(root) gro=
ups=3D0(root),1002(abuser)
>=20
>=20
> Once the telnet connection opens, /bin/login tries to print the localized=
 prompt but gettext recognizes the encoding mismatch and calls iconv_open()=
 to parse the gconv-modules file in the directory referenced by the injecte=
d path before loading the shared object that turns cash ($) to trash (#). T=
he connection drops because I included a call to exit() once the payload ha=
s executed. As illustrated above, the payload effectively asserts root priv=
ilege and makes a copy of /bin/sh with SUID/SGID permissions. Note that no =
authentication via telnetd was required, nor performed, for this privilege =
escalation trick to occur. Also note that this is just one of many possible=
 methods that may be used to exploit this condition.
>=20
> In my opinion, to fix this issue and finally put the ghost of CVE-1999-00=
73 to rest: telnetd must drop the blacklist approach and adopt the OpenSSH =
AcceptEnv-style approach suggested by Simon Josefsson [1], which amounts to=
 preparing a brand new environment for /bin/login based on a strict whiteli=
st of variables names considered to be "safe", and perhaps a healthy dose o=
f input sanitization for their respective values.
>=20
> In terms of the CVE that Ron Ben Yizhak had asked about earlier in the th=
read: I think it might make the most sense to co-ordinate a single CVE for =
"Improper environment sanitization in telnetd" that comprehensively covers =
both the CREDENTIALS_DIRECTORY vector and this dynamic linker escape.
>=20
> I'm happy to share the intentionally redacted payload privately with the =
maintainers should any help be required to reproduce the proof of concept.
>=20
> Regards,
> Justin
>=20
> ---
>=20
> [1] https://lists.gnu.org/archive/html/bug-inetutils/2026-02/msg00002.html
>

