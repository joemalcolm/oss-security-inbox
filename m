X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1523" "Friday" "23" "February" "2018" "14:59:49" "+1030" "Doran Moppert" "dmoppert@redhat.com" "<20180223042948.GA9316@sin.redhat.com>" "43" "Re: [oss-security] Fwd: [SECURITY] CVE-2018-1304 Security constraints mapped to context root are ignored" nil nil nil "2" "2018022304:29:49" "[oss-security] Fwd: [SECURITY] CVE-2018-1304 Security constraints mapped to context root are ignored" (number mark "U       dmoppert@red Feb 23   43/1523  " thread-indent "\"Re: [oss-security] Fwd: [SECURITY] CVE-2018-1304 Security constraints mapped to context root are ignored\"\n") "<119799b0-8d2a-c235-fcb2-7662f02024e2@apache.org>" ("<2a8f2292-2aee-d8fa-9ccc-d1f9b20d0eed@apache.org>" "<119799b0-8d2a-c235-fcb2-7662f02024e2@apache.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30270 invoked by uid 550); 23 Feb 2018 04:30:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30238 invoked from network); 23 Feb 2018 04:30:06 -0000
Date: Fri, 23 Feb 2018 14:59:49 +1030
From: Doran Moppert <dmoppert@redhat.com>
To: oss-security@lists.openwall.com
Cc: Mark Thomas <markt@apache.org>
Message-ID: <20180223042948.GA9316@sin.redhat.com>
References: <2a8f2292-2aee-d8fa-9ccc-d1f9b20d0eed@apache.org>
 <119799b0-8d2a-c235-fcb2-7662f02024e2@apache.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="BXVAT5kNtrzKuDFl"
Content-Disposition: inline
In-Reply-To: <119799b0-8d2a-c235-fcb2-7662f02024e2@apache.org>
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.11.55.7]); Fri, 23 Feb 2018 04:29:55 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.11.55.7]); Fri, 23 Feb 2018 04:29:55 +0000 (UTC) for IP:'10.11.54.3' DOMAIN:'int-mx03.intmail.prod.int.rdu2.redhat.com' HELO:'smtp.corp.redhat.com' FROM:'dmoppert@redhat.com' RCPT:''
Subject: Re: [oss-security] Fwd: [SECURITY] CVE-2018-1304 Security
 constraints mapped to context root are ignored

--BXVAT5kNtrzKuDFl
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Feb 23 2018, Mark Thomas wrote:
> CVE-2018-1304 Security constraints mapped to context root are ignored
>=20
> Mitigation:
> Users of the affected versions should apply one of the following
> mitigations:
> - Review security constraints and confirm none use a URL patten of ""
>   (the empty string)

Will a URL pattern of "/" correctly protect the context root of
vulnerable versions?  If so, this seems worth mentioning.

--=20
Doran Moppert
Red Hat Product Security

--BXVAT5kNtrzKuDFl
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIcBAEBCgAGBQJaj5i8AAoJEGohqWcZR7qpmoEP/RHuQUfbOBYb6H06EYhARY7h
ilVulPwKjOkAse+joQ3IHYR85CMW4u3oUjPEJX3pLeKH+OtzzuLURGYzFoN4PZ7q
yyf0o/peBylg5pBVf0k6gjEVSB3WMhu5qrrHLRO5kQkUd/5wmHE02IvyWzC5RxE6
eWxacLY/urHQ/F+PIJWl0dIeoSX/zTkzevpry7/z9SaOiyyynoX/hU8bp9ZVXHME
x2xJlCKCuSCe+f/Zhfjjq2M/9k5FZFf6S+fJbsmSxsQQNRW3SgOqZeaknseW1gXm
plUM7GjHTUBVH6m26yuO2++O4WJ3P9vOGEGS93G4ydGXeBuPOLx82pV7ymk4DUtL
hA4EO64hLU9Xg2Yt9haaTVAhfB/P/mO2KovuNs2TsJPryVmmoDqhP8SAep1/DcQm
VHE6ABKfXXHB8AM2jyKr20COtgsDsjoFC0hJ4e+S0/o66/0bdB+0cyk3w8vvWoSS
C4Tko2WVPuRq5cERgOtJLlCclYFVOmUn9DrzAeDjv4oGhD1X7c3tI5x+GUtQ4/2C
9Li005nSBRgT7gD7nKNYGMvcmjuVsAY0VkFX1CLoUZp1P5fGOpF7BKxfaQ6iYsPH
Z2cB7p2WOml9G+M+sbnuBJhgeg6Sl0+H/4WlRn5KgmzelQs1mh3Z5EErRDcduiGO
Ov8+x54q0313Z1etm2HC
=uN5S
-----END PGP SIGNATURE-----

--BXVAT5kNtrzKuDFl--
