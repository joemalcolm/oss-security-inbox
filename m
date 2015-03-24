X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2165" "Tuesday" "24" "March" "2015" "12:21:52" "+0000" "Jeremy Stanley" "jeremy@openstack.org" "<20150324122152.GN2457@openstack.org>" "50" "Re: [oss-security] Re: CVE request for OpenStack Compute (nova)" nil nil nil "3" "2015032412:21:52" "[oss-security] Re: CVE request for OpenStack Compute (nova)" (number mark "        jeremy@opens Mar 24   50/2165  " thread-indent "\"Re: [oss-security] Re: CVE request for OpenStack Compute (nova)\"\n") "<20150324073610.79BAF1BE1C3@smtpvbsrv1.mitre.org>" ("<5510E3BE.8030204@redhat.com>" "<20150324073610.79BAF1BE1C3@smtpvbsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 22416 invoked by uid 550); 24 Mar 2015 12:22:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22398 invoked from network); 24 Mar 2015 12:22:05 -0000
X-Sender-Id: jeremy@openstack.org
Message-ID: <20150324122152.GN2457@openstack.org>
References: <5510E3BE.8030204@redhat.com>
 <20150324073610.79BAF1BE1C3@smtpvbsrv1.mitre.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="OpLPJvDmhXTZE4Lg"
Content-Disposition: inline
In-Reply-To: <20150324073610.79BAF1BE1C3@smtpvbsrv1.mitre.org>
User-Agent: Mutt/1.5.23 (2014-03-12)
Date: Tue, 24 Mar 2015 12:21:52 +0000
From: Jeremy Stanley <jeremy@openstack.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: CVE request for OpenStack Compute (nova)
To: oss-security@lists.openwall.com, cve-assign@mitre.org

--OpLPJvDmhXTZE4Lg
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2015-03-24 03:36:10 -0400 (-0400), cve-assign@mitre.org wrote:
[...]
> So, does the OpenStack VMT have a position on whether to choose this
> latter scenario? In other words, if live migration fails because of a
> disconnected physical network interface, is access control for volumes
> intentionally undefined afterward?

As a member of the OpenStack VMT, I have no opinion on this. We
don't generally express an opinion on whether a bug report _can_
have an associated CVE, only on whether the bug is associated with
an attack scenario we deem likely enough to warrant the effort
expended in discussing and fixing it under embargo, backporting to
supported stable branches, then creating and publishing a formal
security advisory. Of the many reports we initially receive as
potential vulnerabilities, only a fraction actually end in an
advisory as opposed to being considered a security hardening
opportunity.
--=20
Jeremy Stanley

--OpLPJvDmhXTZE4Lg
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQJ8BAEBCgBmBQJVEVbgXxSAAAAAAC4AKGlzc3Vlci1mcHJAbm90YXRpb25zLm9w
ZW5wZ3AuZmlmdGhob3JzZW1hbi5uZXQ5N0FFNDk2RkMwMkRFQzlGQzM1M0IyRTc0
OEY5OTYxMTQzNDk1ODI5AAoJEEj5lhFDSVgp1ncP/1R2hts0I91xnr49ItvAvbQN
SAvyUXrgnbvJvGBldsTaljhxq+OENFFp3mRjvQx6+pflAAriQgwDW+RMvUVwvfrb
T50l6mEaoVnvLc8nhGLJ1AMzSfQCdAazvbd4Y1GxTpOBmD+25EMozvssDQ20QWcF
0s9ZT489/FKw/lJcYUp7On5jj+uqFMpJBkr6po3vHmPB1RXkSJpPRYLI2qCd/+BG
fgSoSu0P1Jh1Ulc4v9h7Kz5FsCzrdUpphHBdgD+tDpiRjJTTWIJ6Q4f5r6pDcjvJ
iKhSOx76+RxFKqUDzkjjlrLh1Z7tRgEueqPFd4TgmrvlIpI9DnXuIuHbyVyzfWMO
VqKpLOysDkMRFe49b5TIAwJIhOnMaUR8vZzf6+VQin3GQJ1zNK1zCuqhyeiH11Lk
8ipRTvbbEZbvkySFPjZAQt/ntlHclxLS1DElPRuxyZH9NQ4FziJvUFdcMVgfwdzK
tmy6XAmOtzicq9SKpF6qLaYWBEnbGI/tp28FqTBIG5xzxkOgHSL95BlrWdB/KZFx
4OXYUvW5KHZDs5lh6/9zlLowCleuS9kkZy8hC4kzY8c2nukdTZQgtRnyacF5ODxk
SzXRpxe9PRcJGWWNo559OVX+ePf2kn9CN+lWhXr77b3jgfIF5u9Sbsn0yv/fpy9F
e1QEYliYn/P6d1SYf7X7
=8+Ob
-----END PGP SIGNATURE-----

--OpLPJvDmhXTZE4Lg--
