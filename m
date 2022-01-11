X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1571" "Tuesday" "11" "January" "2022" "02:55:57" "+0000" "Sam James" "sam@gentoo.org" nil "48" "Re: [oss-security] CVE-2021-3997: Uncontrolled recursion in systemd's systemd-tmpfiles" nil nil nil "1" nil nil (number mark "U       sam@gentoo.o Jan 11   48/1571  " thread-indent "\"Re: [oss-security] CVE-2021-3997: Uncontrolled recursion in systemd's systemd-tmpfiles\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] CVE-2021-3997: Uncontrolled recursion in systemd's systemd-tmpfiles" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21972 invoked by uid 550); 11 Jan 2022 13:02:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24223 invoked from network); 11 Jan 2022 02:56:19 -0000
From: Sam James <sam@gentoo.org>
Content-Type: multipart/signed;
	boundary="Apple-Mail=_098A102F-800D-4D4A-BFBC-CA3B828D1C97";
	protocol="application/pgp-signature";
	micalg=pgp-sha512
Mime-Version: 1.0 (Mac OS X Mail 15.0 \(3693.40.0.1.81\))
Date: Tue, 11 Jan 2022 02:55:57 +0000
References: <20220110180746.GA3527@localhost.localdomain>
To: oss-security@lists.openwall.com
In-Reply-To: <20220110180746.GA3527@localhost.localdomain>
Message-Id: <C899DB14-0747-4285-B1CC-113489A2796D@gentoo.org>
X-Mailer: Apple Mail (2.3693.40.0.1.81)
Subject: Re: [oss-security] CVE-2021-3997: Uncontrolled recursion in systemd's
 systemd-tmpfiles

--Apple-Mail=_098A102F-800D-4D4A-BFBC-CA3B828D1C97
Content-Transfer-Encoding: 7bit
Content-Type: text/plain;
	charset=us-ascii



> On 10 Jan 2022, at 18:08, Qualys Security Advisory <qsa@qualys.com> wrote:
> 
> Hi all,
> 
> We discovered a minor denial of service (an uncontrolled recursion) in
> systemd-tmpfiles, CVE-2021-3997; the Coordinated Release Date is today
> (January 10, 2022), and a patch is now available at (many thanks to
> Zbigniew Jedrzejewski-Szmek for working on this):
> [snip]

For the benefit of distros:

Note that it's been backported in 250.x as 250.2 but there isn't
a stable/backport release for 249.x yet.

Best,
sam

--Apple-Mail=_098A102F-800D-4D4A-BFBC-CA3B828D1C97
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQGTBAEBCgB9FiEEYOpPv/uDUzOcqtTy9JIoEO6gSDsFAmHc8b1fFIAAAAAALgAo
aXNzdWVyLWZwckBub3RhdGlvbnMub3BlbnBncC5maWZ0aGhvcnNlbWFuLm5ldDYw
RUE0RkJGRkI4MzUzMzM5Q0FBRDRGMkY0OTIyODEwRUVBMDQ4M0IACgkQ9JIoEO6g
SDuPJAf9G5eJLAsUiBgfpxQ4TYdj8Nfj2ThC2c4EjI82O3VmkFBFcY0oeHN74pmv
wV15rJyDoyWcl9BaN8VZjh8sdXQY5+dEB7cxoyCYMljYuB0iiBR6kEMo6a1Ld6uQ
posCZQqTVXQT4S8ohL3KD7ptcNseSqamQNdbrDBOrOv6+nbLGqP1wxJ6a+pzFVFA
+gwr6Va16sspIr1qbtNKph5zkSCyva5kuPFOf3wgZAtrXCAhEB/0WGcfjFO9MGCy
lmCN4HoNEyseC+L+YE8hcafbXj0in/rarT80zSb8RDYvG+A610PhVXhiu7WY5Cxq
z9f42N7cH0d7HLzAohjRGq0jID7bsA==
=vR7y
-----END PGP SIGNATURE-----

--Apple-Mail=_098A102F-800D-4D4A-BFBC-CA3B828D1C97--
