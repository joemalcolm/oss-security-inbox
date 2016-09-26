X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1888" "Monday" "26" "September" "2016" "11:34:05" "+0200" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20160926113405.6454bfa6@hboeck.de>" "55" "Re: [oss-security] Re: ffmpeg afl bugs" "^Date:" nil nil "9" "2016092609:34:05" "[oss-security] Re: ffmpeg afl bugs" (number mark "        hanno@hboeck Sep 26   55/1888  " thread-indent "\"Re: [oss-security] Re: ffmpeg afl bugs\"\n") "<20160926054540.231936DCCB9@smtpvmsrv1.mitre.org>" ("<trinity-791b10d9-ee4c-4418-ab3c-338e17152b44-1474834018724@3capp-gmx-bs68>" "<20160926054540.231936DCCB9@smtpvmsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28330 invoked by uid 550); 26 Sep 2016 09:34:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28306 invoked from network); 26 Sep 2016 09:34:19 -0000
Message-ID: <20160926113405.6454bfa6@hboeck.de>
In-Reply-To: <20160926054540.231936DCCB9@smtpvmsrv1.mitre.org>
References: <trinity-791b10d9-ee4c-4418-ab3c-338e17152b44-1474834018724@3capp-gmx-bs68>
	<20160926054540.231936DCCB9@smtpvmsrv1.mitre.org>
X-Mailer: Claws Mail 3.14.0 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_zucker.schokokeks.org-13811-1474882448-0001-2"
Date: Mon, 26 Sep 2016 11:34:05 +0200
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: ffmpeg afl bugs
To: oss-security@lists.openwall.com

--=_zucker.schokokeks.org-13811-1474882448-0001-2
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,

On Mon, 26 Sep 2016 01:45:40 -0400 (EDT)
cve-assign@mitre.org wrote:

> > overread end of atom 'stsd' by 4294967134 bytes=20=20
>=20
> Use CVE-2016-7554.

I don't think this is any vuln.

This is a warning message from ffmpeg itself, not from any memory
safety tool. Thus I interpret this as "this file is garbled and would
overread if we'd do what the file offsets indicate".

It probably indicated a bug that Michal originally found with this
file, but that happened long ago. The file is from Dec 2014 (looks like
this [1]).


[1] https://ffmpeg.org/pipermail/ffmpeg-cvslog/2014-December/084342.html
--=20
Hanno B=C3=B6ck
https://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: FE73757FA60E4E21B937579FA5880072BBB51E42

--=_zucker.schokokeks.org-13811-1474882448-0001-2
Content-Type: application/pgp-signature
Content-Transfer-Encoding: 7bit
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJX6OuNAAoJEKWIAHK7tR5CFKMP+gNzf6fNshbQfzrlrGuYishP
8/Hdza6db5QVwsv5e2x7T4BrzSgKoriklxYKDYzGgOcXcRgiRxdxtRgzQ0ARCph0
yfasWRbp5wTXISfXh7Br7iVpSXv8OQXgnulogeBLkbSb6XNT5nnupy1DJhluCrce
FAqcXRU8npdulhygdPAyE3QDf/hNgjNl9SsQN3C/D/8YaHbteDecV2Ws50rZAe6b
Mqi2HYaQE5iN6C8cWrhg5Ggw0iwcGDggW2SAtLv0x2O6ekL5pwSm4mEP1Xfyrn2a
AQQqOh8ZZTKRusvu6gGTIHP0ERh0Qz+J7cuVPIJ02RfDEFds2P2NuzgrlWO24g+m
++rZU6uVbzU+xYvmKsMkKBqz+Ad3m7jpBj+jVviUNQkGlK8L8rUrP2NFdcfu05LL
3OCY0TrB9p05/nKtXX33H6Cf1+7zmB3EnhmO1YzF/Jk1VCFhOQrm8Ng9CAEKt80S
B/9gdaq4Y0L7Ibfm0HX9u6do9VcrLOGu9KE1STAQKRKfXoWBZAaHDRTfKHcxDdhp
Yz3pIus3+ofCSEYbfkFhN5/R5wY6SsiRSE266O9HjVX5agtx2g0vDBmKTccG95fr
KTQT1g9rHdOzMn4BFstb/spW6kvGK4+Wk1ChONuAPtTLBL775Wz05/C2kZ5T5/n+
V32i4aTCgie2fADXSmQF
=FoUG
-----END PGP SIGNATURE-----

--=_zucker.schokokeks.org-13811-1474882448-0001-2--
