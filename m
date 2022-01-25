X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1465" "Tuesday" "25" "January" "2022" "18:04:49" "+0000" "Sam James" "sam@gentoo.org" nil "48" "Re: [oss-security] pwnkit: Local Privilege Escalation in polkit's pkexec (CVE-2021-4034)" nil nil nil "1" nil nil (number mark "U       sam@gentoo.o Jan 25   48/1465  " thread-indent "\"Re: [oss-security] pwnkit: Local Privilege Escalation in polkit's pkexec (CVE-2021-4034)\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] pwnkit: Local Privilege Escalation in polkit's pkexec (CVE-2021-4034)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 6101 invoked by uid 550); 25 Jan 2022 18:45:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21581 invoked from network); 25 Jan 2022 18:05:09 -0000
From: Sam James <sam@gentoo.org>
Content-Type: multipart/signed;
	boundary="Apple-Mail=_DEE1179F-276D-41C4-B06D-826FEDEC710D";
	protocol="application/pgp-signature";
	micalg=pgp-sha512
Mime-Version: 1.0 (Mac OS X Mail 15.0 \(3693.40.0.1.81\))
Date: Tue, 25 Jan 2022 18:04:49 +0000
References: <20220125175655.GA14958@localhost.localdomain>
To: oss-security@lists.openwall.com
In-Reply-To: <20220125175655.GA14958@localhost.localdomain>
Message-Id: <F9283FD4-A0FC-4944-8659-530684BB33F8@gentoo.org>
X-Mailer: Apple Mail (2.3693.40.0.1.81)
Subject: Re: [oss-security] pwnkit: Local Privilege Escalation in polkit's
 pkexec (CVE-2021-4034)

--Apple-Mail=_DEE1179F-276D-41C4-B06D-826FEDEC710D
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii



> On 25 Jan 2022, at 17:57, Qualys Security Advisory <qsa@qualys.com> wrote:
>=20
>=20
> Qualys Security Advisory
> pwnkit: Local Privilege Escalation in polkit's pkexec (CVE-2021-4034)
> [snip]

Hi,

For the benefit of downstreams: patch is available in gitlab [0]
but no release yet.

[0] https://gitlab.freedesktop.org/polkit/polkit/-/commit/a2bf5c9c83b6ae46c=
bd5c779d3055bff81ded683

Best,
sam

--Apple-Mail=_DEE1179F-276D-41C4-B06D-826FEDEC710D
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQGTBAEBCgB9FiEEYOpPv/uDUzOcqtTy9JIoEO6gSDsFAmHwO8JfFIAAAAAALgAo
aXNzdWVyLWZwckBub3RhdGlvbnMub3BlbnBncC5maWZ0aGhvcnNlbWFuLm5ldDYw
RUE0RkJGRkI4MzUzMzM5Q0FBRDRGMkY0OTIyODEwRUVBMDQ4M0IACgkQ9JIoEO6g
SDs8ZQf8DlRc/zDZFlXOOB2SZZHg81cPLRZX5k+rycEhXei+S93jvjk4xwsc8BkD
ymr7lo5+hnH0Pf6PtR0K+xezZLXj3HtpCom+lJp77ANcKaH3bM6VGLZaLcha6W+N
ZXHMgLFzXbTaVU5+v0EEEHCjerQExFBZhbl1cMDRDej0YG8pYgmYKiT/3gwUwppc
HEMm5GrScTwCT11kNl+AF3mAH8TVLTkep9ufuHzOZ8xiC/baGB3pIT/YsMkA53b2
VEhYLanTRz81YfNNRsVItbiz3a9HMOHLuMoAGroe0MASmlJafYGSbX97yi2nGK7T
BEYaediphhM4xBofpx3e9tFSgmC5hg==
=LoCh
-----END PGP SIGNATURE-----

--Apple-Mail=_DEE1179F-276D-41C4-B06D-826FEDEC710D--
