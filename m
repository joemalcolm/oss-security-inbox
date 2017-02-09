X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4779" "Thursday" "9" "February" "2017" "16:33:11" "+0100" "Thomas Deutschmann" "whissi@gentoo.org" "<7ab551aa-36d6-b99f-175f-5ea8b01c6eeb@gentoo.org>" "139" "Re: [oss-security] Re: Firejail local root exploit" nil nil nil "2" "2017020915:33:11" "[oss-security] Re: Firejail local root exploit" (number mark "U       whissi@gento Feb  9  139/4779  " thread-indent "\"Re: [oss-security] Re: Firejail local root exploit\"\n") "<0812e16da18b4aa6ab4f7ca077368fb4@imshyb02.MITRE.ORG>" ("<0812e16da18b4aa6ab4f7ca077368fb4@imshyb02.MITRE.ORG>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11574 invoked by uid 550); 9 Feb 2017 15:51:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9352 invoked from network); 9 Feb 2017 15:33:35 -0000
References: <0812e16da18b4aa6ab4f7ca077368fb4@imshyb02.MITRE.ORG>
In-Reply-To: <0812e16da18b4aa6ab4f7ca077368fb4@imshyb02.MITRE.ORG>
To: oss-security@lists.openwall.com
From: Thomas Deutschmann <whissi@gentoo.org>
X-Forwarded-Message-Id: <0812e16da18b4aa6ab4f7ca077368fb4@imshyb02.MITRE.ORG>
Message-ID: <7ab551aa-36d6-b99f-175f-5ea8b01c6eeb@gentoo.org>
Date: Thu, 9 Feb 2017 16:33:11 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.6.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="n00TDgESUPPiJuE3irceUNRD9BvcL5Fu3"
Subject: Re: [oss-security] Re: Firejail local root exploit

--n00TDgESUPPiJuE3irceUNRD9BvcL5Fu3
Content-Type: multipart/mixed; boundary="9WIlrqPD7Q6NOwA0sA1LaCVSifxf2k23O";
 protected-headers="v1"
From: Thomas Deutschmann <whissi@gentoo.org>
To: oss-security@lists.openwall.com
Message-ID: <7ab551aa-36d6-b99f-175f-5ea8b01c6eeb@gentoo.org>
Subject: Re: [oss-security] Re: Firejail local root exploit
References: <0812e16da18b4aa6ab4f7ca077368fb4@imshyb02.MITRE.ORG>
In-Reply-To: <0812e16da18b4aa6ab4f7ca077368fb4@imshyb02.MITRE.ORG>

--9WIlrqPD7Q6NOwA0sA1LaCVSifxf2k23O
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Hi,

I just received the CVE for the incomplete fix from MITRE via new
webform. Please see the forwarded message below:


-------- Forwarded Message --------
Subject: Re: [scr292978] firejail - Affected <0.9.44.6
Date: Thu, 9 Feb 2017 10:18:58 -0500

The CVE ID is provided below, after the text associated with your
https://cveform.mitre.org submission. The text reflects the current
status of the CVE at MITRE, and may already have minor changes
relative to your form entry. Changes are made in order to capture the
information in the intended presentation format; changes are not an
attempt to revise the results of vulnerability research.

You may republish or redistribute this text. We think that you have
already posted to oss-security about this vulnerability. To make
oss-security list members aware of the CVE ID assignment, you could
reply to your own oss-security post and include pertinent information
below along with the CVE ID.

> [Suggested description]
> firejail before 0.9.44.6 and 0.9.38.x LTS before 0.9.38.10 LTS
> does not comprehensively address dotfile cases during its
> attempt to prevent accessing user files with an euid of zero,
> which allows local users to conduct sandbox-escape attacks
> via vectors involving a symlink and the --private option.
> NOTE: this vulnerability exists because of an incomplete
> fix for CVE-2017-5180.
>=20
> ------------------------------------------
> [Additional Information]
> This is a fix for the incomplete fix of CVE-2017-5180.
>=20
> I already tried to request a new CVE on OSS-Sec which wasn't answered
> yet: http://www.openwall.com/lists/oss-security/2017/01/31/16
>=20
> ------------------------------------------
>=20
> [VulnerabilityType Other]
> Incomplete fix of CVE-2017-5180
>=20
> ------------------------------------------
>=20
> [Vendor of Product]
> https://firejail.wordpress.com/
>=20
> ------------------------------------------
>=20
> [Affected Product Code Base]
> firejail - Affected <0.9.44.6
> firejail-lts - Affected <0.9.38.10
>=20
> ------------------------------------------
>=20
> [Attack Type]
> Local
>=20
> ------------------------------------------
>=20
> [Impact Escalation of Privileges]
> true
>=20
> ------------------------------------------
>=20
> [Reference]
> https://firejail.wordpress.com/download-2/release-notes/
> https://github.com/netblue30/firejail/commit/38d418505e9ee2d326557e5639e8=
da49c298858f
> https://github.com/netblue30/firejail/commit/b8a4ff9775318ca5e679183884a6=
a63f3da8f863
> https://github.com/netblue30/firejail/commit/903fd8a0789ca3cc3c21d84cd028=
2481515592ef
>=20
> ------------------------------------------
>=20
> [Has vendor confirmed or acknowledged the vulnerability?]
> true
>=20
> ------------------------------------------
>=20
> [Discoverer]
> Sebastian Krahmer

Use CVE-2017-5940.



--=20
Regards,
Thomas Deutschmann / Gentoo Security Team
C4DD 695F A713 8F24 2AA1  5638 5849 7EE5 1D5D 74A5



--9WIlrqPD7Q6NOwA0sA1LaCVSifxf2k23O--

--n00TDgESUPPiJuE3irceUNRD9BvcL5Fu3
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0

iQJ8BAEBCgBmBQJYnIu8XxSAAAAAAC4AKGlzc3Vlci1mcHJAbm90YXRpb25zLm9w
ZW5wZ3AuZmlmdGhob3JzZW1hbi5uZXQzM0M1ODQ4MkM0MDIyOTJEMkUzQzVDMDY5
NzA5RjkwQzNDOTZGRkM4AAoJEJcJ+Qw8lv/IqagQAJk8Iyb28e2eT9x8rO2xLMCJ
G7GHOwRVRv1WW8FyMjbFHZCGFDhE6hkv/1LweADcv2eStQ0tNWDej4PHRQSKDGMS
f92ipG2c5S8Q51RahP+U3WVZTnGvJJ94SaOsvyPhZSJcT5lVpwHvh0SIrCBoncGp
PppWOXRA0tT9lh9UaOWBwQII6mrxYoxx4O10hlrHgvZcfsXpEJgkuONidFgRFE7b
R2eaemgtNsjPmEZg6BbFZ0bWxg5LCHJhHaSXeXlTqoH0elH1vBAfSukU/j84MQmb
SwTATvI43D1tL1Pit5ourZDNQzFayiY9gOTUGDxODXXkkHy0q/rXofFhBiY+uEB1
+U4dzq/lXYNx11As1FDMr2oIYzyip16wGmza8xbcbMKxKow7H20MaACXuaYjPF4O
DJG6dhqIp9S6E9hnpDSbWJ9xV5L+0YANOaH5lijblP450jEZ1Vsj/hPkyMQTAkGu
GRWktz5TWg81i/uyKKJFKitT+kbJLN71CyvVgL2Rcy04MomKqCva1mhbq/hZjsNj
8sXkqMz56Bw/4FQFFfPrdgvyKwNqjOhQ7UCqYjeEF/T10sWJbdjAtQ8HBdMYS5F4
wdHyDebuvJqUXzUm4zxa6PhlsKn1wWv3SPfO08U5gvTztFGFxjUmrUGDzvxAl4Pn
lZO8GP1niksCMffOJMWW
=kLcC
-----END PGP SIGNATURE-----

--n00TDgESUPPiJuE3irceUNRD9BvcL5Fu3--
