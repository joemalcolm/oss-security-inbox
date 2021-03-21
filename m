X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3890" "Sunday" "21" "March" "2021" "15:30:11" "+0100" "Robert Scheck" "robert@fedoraproject.org" nil "96" "[oss-security] Re: kopano-core 11.0.1: Remote DoS by memory exhaustion" nil nil nil "3" nil nil (number mark "U       robert@fedor Mar 21   96/3890  " thread-indent "\"[oss-security] Re: kopano-core 11.0.1: Remote DoS by memory exhaustion\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Re: kopano-core 11.0.1: Remote DoS by memory exhaustion" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9592 invoked by uid 550); 21 Mar 2021 14:30:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9562 invoked from network); 21 Mar 2021 14:30:28 -0000
Date: Sun, 21 Mar 2021 15:30:11 +0100
From: Robert Scheck <robert@fedoraproject.org>
To: Jan Engelhardt <jengelh@inai.de>
Cc: oss-security@lists.openwall.com
Message-ID: <20210321143011.GA22068@hurricane.linuxnetz.de>
References: <r4p33o1o-q1pp-8932-qso-36op579rn850@vanv.qr>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="SLDf9lqlvOQaIe6s"
Content-Disposition: inline
In-Reply-To: <r4p33o1o-q1pp-8932-qso-36op579rn850@vanv.qr>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Scanned-By: MIMEDefang 2.84 on 127.0.0.1
Subject: [oss-security] Re: kopano-core 11.0.1: Remote DoS by memory exhaustion

--SLDf9lqlvOQaIe6s
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, 19 Mar 2021, Jan Engelhardt wrote:
> Initial publication, no CVE number yet (will request).
>=20
> # Affected versions
>=20
>   * kopano-core 11.0.1     (current head of 11.x branch)
>   * kopano-core 10.0.7     (head of 10.x branch)
>   * kopano-core 9.1.0      (head of 9.x branch)
>   * kopano-core 8.7.16
>   * it is believed this affects all versions to date,
>     including zarafa 7.2.6, the discontinued predecessor
>     project to Kopano, sometimes still in use.

I hereby confirm the trigger, but I would like to correct the affected
versions regarding the Zarafa predecessor project to be more precise for
the CVE:

 * Zarafa 7.2.x: Affected (tested myself)
 * Zarafa 7.1.x: Affected (tested myself)
 * Zarafa 7.0.x: Affected (tested myself)
 * Zarafa 6.40.x: Affected (tested myself)
 * Zarafa 6.30.x: Affected (tested myself)
 * Zarafa 6.2x: Not affected (tested myself)
 * Zarafa 6.1x: Not affected (tested myself)
 * Zarafa 6.0x: Not affected (tested myself)
 * Zarafa 5.2x: Not affected (tested myself)
 * Zarafa 5.1x: Most likely not affected (but not tested myself)
 * Zarafa 5.0x: Not applicable (no zarafa-ical component)
 * Zarafa 4.2x: Not applicable (no zarafa-ical component)

As a conclusion the flaw issue was introduced after Zarafa 6.20.13 Final
(SVN Rev. 19023) and before Zarafa 6.30.0 Beta 1 (SVN Rev. 13713).

Given the crash and error messages in old Zarafa versions look different
than in more recent Zarafa/Kopano versions, here is how it looked for me
when tracking down the version introducing the flaw:

Starting zarafa-ical version 6,30,14,20002 (20002), pid 4937
Pid 4943 caught SIGSEGV (6), traceback:
0x0000000040ad4a /usr/bin/zarafa-ical(_Z7sigsegvi+0x5a) [0x40ad4a]
0x002ac38a5a4ca0 /lib64/libpthread.so.0 [0x2ac38a5a4ca0]
0x002ac38a7e1fc5 /lib64/libc.so.6(gsignal+0x35) [0x2ac38a7e1fc5]
0x002ac38a7e3a70 /lib64/libc.so.6(abort+0x110) [0x2ac38a7e3a70]
0x002ac389ec2d94 /usr/lib64/libstdc++.so.6(_ZN9__gnu_cxx27__verbose_termina=
te_handlerEv+0x114) [0x2ac389ec2d94]
0x002ac389ec0e46 /usr/lib64/libstdc++.so.6 [0x2ac389ec0e46]
0x002ac389ec0e73 /usr/lib64/libstdc++.so.6 [0x2ac389ec0e73]
0x002ac389ec0f71 /usr/lib64/libstdc++.so.6 [0x2ac389ec0f71]
0x002ac389ec12b9 /usr/lib64/libstdc++.so.6(_Znwm+0x79) [0x2ac389ec12b9]
0x002ac389e9f861 /usr/lib64/libstdc++.so.6(_ZNSs4_Rep9_S_createEmmRKSaIcE+0=
x21) [0x2ac389e9f861]
0x002ac389ea023b /usr/lib64/libstdc++.so.6(_ZNSs4_Rep8_M_cloneERKSaIcEm+0x2=
b) [0x2ac389ea023b]
0x002ac389ea0b45 /usr/lib64/libstdc++.so.6(_ZNSs7reserveEm+0x45) [0x2ac389e=
a0b45]
0x002ac389ea0faf /usr/lib64/libstdc++.so.6(_ZNSs6appendERKSs+0x4f) [0x2ac38=
9ea0faf]
0x0000000041ec94 /usr/bin/zarafa-ical(_ZN4Http13HrReadHeadersEv+0xa4) [0x41=
ec94]
0x0000000040bcb7 /usr/bin/zarafa-ical(_Z15HrHandleRequestP9ECChannelPP12IMA=
PISession+0x127) [0x40bcb7]
0x0000000040d612 /usr/bin/zarafa-ical(_Z13HandlerClientPv+0x42) [0x40d612]
0x00000000430bf0 /usr/bin/zarafa-ical(_Z18unix_fork_functionPFPvS_ES_+0x40)=
 [0x430bf0]
0x0000000040ab6d /usr/bin/zarafa-ical(_Z20HrStartHandlerClientP9ECChannelb+=
0xbd) [0x40ab6d]
0x0000000040b0c5 /usr/bin/zarafa-ical(_Z20HrProcessConnectionsii+0x1c5) [0x=
40b0c5]
0x0000000040ba14 /usr/bin/zarafa-ical(main+0x484) [0x40ba14]
0x002ac38a7cf9f4 /lib64/libc.so.6(__libc_start_main+0xf4) [0x2ac38a7cf9f4]
0x0000000040a989 /usr/bin/zarafa-ical(__gxx_personality_v0+0x2a9) [0x40a989]

And yes, Zarafa is a discontinued project/product, but sometimes still in
active/production use.


Kind regards

Robert Scheck

--SLDf9lqlvOQaIe6s
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----

iEYEARECAAYFAmBXWHMACgkQUwMgnc4+H1aIjgCgsjymzF91650688u4at9+j37R
gnEAn14x5tWVFJd+hoc/p5M6gRAA3dVn
=koMx
-----END PGP SIGNATURE-----

--SLDf9lqlvOQaIe6s--
