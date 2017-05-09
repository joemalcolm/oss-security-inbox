X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1975" "Tuesday" "9" "May" "2017" "08:18:49" "+0800" "Medical Wei" "mwei@lxde.org" "<326CB1CB-DD02-4B07-9420-01E8685C1A28@lxde.org>" "49" "[oss-security] lxterminal: insecurely uses /tmp for a socket file" nil nil nil "5" "2017050900:18:49" "[oss-security] lxterminal: insecurely uses /tmp for a socket file" (number mark "U       mwei@lxde.or May  9   49/1975  " thread-indent "\"[oss-security] lxterminal: insecurely uses /tmp for a socket file\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18221 invoked by uid 550); 9 May 2017 02:53:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32534 invoked from network); 9 May 2017 00:19:08 -0000
From: Medical Wei <mwei@lxde.org>
Content-Type: multipart/signed;
 boundary="Apple-Mail=_60D9093E-C6A2-40A7-B54C-6FAA7E77E3D7";
 protocol="application/pgp-signature"; micalg=pgp-sha512
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Message-Id: <326CB1CB-DD02-4B07-9420-01E8685C1A28@lxde.org>
Date: Tue, 9 May 2017 08:18:49 +0800
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3273)
Subject: [oss-security] lxterminal: insecurely uses /tmp for a socket file

--Apple-Mail=_60D9093E-C6A2-40A7-B54C-6FAA7E77E3D7
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

A vulnerability has been found that unixsocket.c in lxterminal insecurely u=
ses
/tmp for a socket file, allowing a local user to cause a denial of service
(preventing terminal launch) or possibly have other impact.

This bug has been assigned to CVE-2016-10369 [1], and has been publicly
discussed in Stackexchange website [2].

A bug fix has been committed to the lxterminal's git repository [3], and LX=
DE
developers are working on a release.

[1]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2016-10369
[2]: https://unix.stackexchange.com/questions/333539/lxterminal-in-the-nets=
tat-output/333578
[3]: https://git.lxde.org/gitweb/?p=3Dlxde/lxterminal.git;a=3Dcommit;h=3Df9=
9163c6ff8b2f57c5f37b1ce5d62cf7450d4648

--Apple-Mail=_60D9093E-C6A2-40A7-B54C-6FAA7E77E3D7
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCgAGBQJZEQrpAAoJEM+7/OC3TxsUkgAP/jvzCdqarZdyf+nsvKOw4Kuv
ONwUh/Egn4AbagSNi5lnADWdRUQEjA1BR//VeG0dqgPYgOUxi1WfEvk9BjdwVd31
pd15PqXUbEE7m2wKKXaIqn6LbrK8Ip5PaXmATMo9xi7scGDp9DlgFDpaSWa2MlWh
C/VHUtk19+wV3WtKSOadJT0cA+ESHnwkXLHVrDdGaRHo8RNYi4HadrCYZ3R5vhJa
msva86F2n7U/lJGz/6hL7e/jCYS2nWytdql3TmwVeYm8kzmpiySIw/DGvMl39EN/
swDma0v7RQm8GZcRdxNJNt0MGEs0hZRCce17o6M/qV1irBbnpw1OM0m8pXaQx4Yy
UYzmEFygrbhBTQqnKmrRj/AohwbB8VdEeAsrhqux4HaN5FwbOx2Y/p1dDs2rrBuh
xxU7Zmw8nzNc4i7uhO4NDYpUH8pnu3cIBQhayX9ct1uWJQhtxKqNrC5f5oYIUGAq
E0Tvrne9BtLWxaAiLJU3QaPtWScSAr8vjVk5t7nmNVS3uUuA7QNHjTNL7CqTuzDj
POz0QAq1lyZugwhriha68Nebgcfnnw1efEEaqBt+CAsyiFESsK6Rccu1lrFBPiwk
YUW69etvmvdzmWmm8VrDdaSPrKQsGTtdOTqsLbBuXJLtuu7nI9s/375+whjrIwmB
rgplDYPz40ym+bY+0EIS
=Q9dx
-----END PGP SIGNATURE-----

--Apple-Mail=_60D9093E-C6A2-40A7-B54C-6FAA7E77E3D7--
