X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1946" "Monday" "22" "May" "2017" "19:00:24" "+0000" "Jeremy Stanley" "jeremy@openstack.org" "<20170522190024.GE12842@openstack.org>" "48" "Re: [oss-security] How to request a CVE for open source projects" "^Date:" nil nil "5" "2017052219:00:24" "[oss-security] How to request a CVE for open source projects" (number mark "        jeremy@opens May 22   48/1946  " thread-indent "\"Re: [oss-security] How to request a CVE for open source projects\"\n") "<1495476334.15944.2@mail.igalia.com>" ("<1495476334.15944.2@mail.igalia.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7241 invoked by uid 550); 22 May 2017 19:01:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5938 invoked from network); 22 May 2017 19:00:39 -0000
X-Auth-ID: jeremy@openstack.org
X-Sender-Id: jeremy@openstack.org
Message-ID: <20170522190024.GE12842@openstack.org>
References: <1495476334.15944.2@mail.igalia.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="y77xulteysKOarq0"
Content-Disposition: inline
In-Reply-To: <1495476334.15944.2@mail.igalia.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Date: Mon, 22 May 2017 19:00:24 +0000
From: Jeremy Stanley <jeremy@openstack.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] How to request a CVE for open source projects
To: oss-security@lists.openwall.com

--y77xulteysKOarq0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2017-05-22 13:05:34 -0500 (-0500), Michael Catanzaro wrote:
[...]
> How are other people getting open source CVEs right now? Has anybody else
> had luck getting a CVE via DWF? Should I be trying to do this through Red
> Hat instead? Or just by filling out MITRE's CVE form even though we're not
> really supposed to be using it?
[...]

OpenStack's been using MITRE's Web form to the best of our
ability[*] and that seems to be working. Though it also has the side
effect that a MITRE representative has reached out to us asking
whether we'd like to become a CNA (our VMT is still trying to decide
if that's worth pursuing).

[*] https://security.openstack.org/vmt-process.html#send-cve-request
--=20
Jeremy Stanley

--y77xulteysKOarq0
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQJ8BAEBCgBmBQJZIzVIXxSAAAAAAC4AKGlzc3Vlci1mcHJAbm90YXRpb25zLm9w
ZW5wZ3AuZmlmdGhob3JzZW1hbi5uZXQ5N0FFNDk2RkMwMkRFQzlGQzM1M0IyRTc0
OEY5OTYxMTQzNDk1ODI5AAoJEEj5lhFDSVgpMmYP/j3RiQPaG8dIs4qQxnN1+fNE
RUnMeuOwnw2eaJUljL7PwR1o2uke8CI1WT6IGLHg8scjf+jFG93vOMjd5N8czhnt
rMMhS49PkX1mfVtAeZ6vXCOLmG+nIC+oTWvWN6mokLwvYYEJyVowKUYOFGoboAdZ
wgt4xSzr536wNokvXQ2hc85WpEmOAyKmnwEaDMPd95EcH4rGKxLCNh1no93BpXxP
SQY02SesxBkCjJty1bAvUTE3LSOi9RNgyYXO8U7BCbcuWroVV7YORfRiR2pe1sk3
rAV3s1aPhYfJHFmeJgfGZyOv/HgBlsu1XYOK4HfpIc+4LCzqzgEaAeQGXoMWcx2+
z6/OgV0y/z4/SL2h6hv/nFBD4K3ReIUrE4KFN0SUymDm6sFQzzb5KiBLmiY67lSQ
hQr5K0w5QtHcqs/dy7hOERsMhcKaANTjUR/9B/P759xJ1smRQQXaaLVhMYg8+8Lf
FMekOBrD207cBMvgRg5Wxuo+jdSb7vJKwGdFxfM5tdp6nkDdx1FtmGle7IKbKeZm
EcwZqtUyoGvgePYkPstvvgvuY4z2t19Pu7YpKeDONVX8j5sO5+Q8M9PRqwBRcAMw
bD2KVADbMiJMYezhuj0UKl8dBqxq9b5l7oiSsotxDrVeyTnIj6iyEYLWLiYYCMUs
eqjFGO9aSUH6IIigEFj+
=6j7h
-----END PGP SIGNATURE-----

--y77xulteysKOarq0--
