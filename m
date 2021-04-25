X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2513" "Sunday" "25" "April" "2021" "03:03:29" "+0200" "Robert Scheck" "robert@fedoraproject.org" nil "67" "[oss-security] Re: kopano-core 11.0.1.77: Remote DoS with out-of-bounds access" nil nil nil "4" nil nil (number mark "U       robert@fedor Apr 25   67/2513  " thread-indent "\"[oss-security] Re: kopano-core 11.0.1.77: Remote DoS with out-of-bounds access\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Re: kopano-core 11.0.1.77: Remote DoS with out-of-bounds access" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30235 invoked by uid 550); 25 Apr 2021 01:03:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30190 invoked from network); 25 Apr 2021 01:03:47 -0000
Date: Sun, 25 Apr 2021 03:03:29 +0200
From: Robert Scheck <robert@fedoraproject.org>
To: Jan Engelhardt <jengelh@inai.de>
Cc: oss-security@lists.openwall.com
Message-ID: <20210425010329.GA9898@hurricane.linuxnetz.de>
References: <op516nqr-96s1-3r69-4np9-314p89o96951@vanv.qr>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="3V7upXqbjpZ4EhLz"
Content-Disposition: inline
In-Reply-To: <op516nqr-96s1-3r69-4np9-314p89o96951@vanv.qr>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Scanned-By: MIMEDefang 2.84 on 127.0.0.1
Subject: [oss-security] Re: kopano-core 11.0.1.77: Remote DoS with out-of-bounds access

--3V7upXqbjpZ4EhLz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, 02 Apr 2021, Jan Engelhardt wrote:
> Initial publication, no CVE number yet.
>=20
> # Affected versions
>=20
>   * kopano-core 11.0.1
>   * kopano-core 8.7.20
>   * it is believed this affects all other versions too,
>     including 10.0.7, 9.1.0, and zarafa 7.2.6.

The affected Zarafa versions are identically to CVE-2021-28994 (verified),
thus all versions since Zarafa 6.30.0 Beta 1 (SVN Rev. 13713) are affected.

Given the crash and error messages in old Zarafa versions look different
than in more recent Zarafa/Kopano versions, here is how it looked for me
when verifying the Zarafa version introducing the flaw:

Pid 1545 caught SIGABRT (6), out of memory or unhandled exception, tracebac=
k:
backtrace length: 18
0 0x7f6ef8f9a04f /lib64/libmapi.so.0(_Z23generic_sigsegv_handlerP8ECLoggerP=
KcS2_i+0x15f) [0x7f6ef8f9a04f]
1 0x7f6ef6b60630 /lib64/libpthread.so.0(+0xf630) [0x7f6ef6b60630]
2 0x7f6ef4cac3d7 /lib64/libc.so.6(gsignal+0x37) [0x7f6ef4cac3d7]
3 0x7f6ef4cadac8 /lib64/libc.so.6(abort+0x148) [0x7f6ef4cadac8]
4 0x7f6ef55bca95 /lib64/libstdc++.so.6(_ZN9__gnu_cxx27__verbose_terminate_h=
andlerEv+0x165) [0x7f6ef55bca95]
5 0x7f6ef55baa06 /lib64/libstdc++.so.6(+0x5ea06) [0x7f6ef55baa06]
6 0x7f6ef55baa33 /lib64/libstdc++.so.6(+0x5ea33) [0x7f6ef55baa33]
7 0x7f6ef55bac53 /lib64/libstdc++.so.6(+0x5ec53) [0x7f6ef55bac53]
8 0x7f6ef560fb17 /lib64/libstdc++.so.6(_ZSt20__throw_out_of_rangePKc+0x77) =
[0x7f6ef560fb17]
9 0x42a999 /usr/bin/zarafa-ical(_ZN4Http13HrReadHeadersEv+0x529) [0x42a999]
10 0x415414 /usr/bin/zarafa-ical(_Z15HrHandleRequestP9ECChannel+0xd4) [0x41=
5414]
11 0x4166f8 /usr/bin/zarafa-ical(_Z13HandlerClientPv+0x28) [0x4166f8]
12 0x444aee /usr/bin/zarafa-ical(_Z18unix_fork_functionPFPvS_ES_iPi+0x6e) [=
0x444aee]
13 0x414e73 /usr/bin/zarafa-ical(_Z20HrStartHandlerClientP9ECChannelbiPi+0x=
b3) [0x414e73]
14 0x41511b /usr/bin/zarafa-ical(_Z20HrProcessConnectionsii+0x22b) [0x41511=
b]
15 0x414003 /usr/bin/zarafa-ical(main+0x723) [0x414003]
16 0x7f6ef4c98555 /lib64/libc.so.6(__libc_start_main+0xf5) [0x7f6ef4c98555]
17 0x414377 /usr/bin/zarafa-ical() [0x414377]


Kind regards

Robert Scheck

--3V7upXqbjpZ4EhLz
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----

iEYEARECAAYFAmCEv+EACgkQUwMgnc4+H1Ym+gCgsiUcvnwsvjn/stYRz7rhVrL5
ZjAAoIdC76xyA80urwnA5nGwWH3PkI3n
=ekRi
-----END PGP SIGNATURE-----

--3V7upXqbjpZ4EhLz--
