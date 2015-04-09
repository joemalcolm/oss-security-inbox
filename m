X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2267" "Thursday" "9" "April" "2015" "17:38:34" "+0200" "Andreas Stieger" "astieger@suse.de" "<55269CFA.1090406@suse.de>" "64" "[oss-security] CVE Request for ceph-deploy world-readable keyring permissions" nil nil nil "4" "2015040915:38:34" "[oss-security] CVE Request for ceph-deploy world-readable keyring permissions" (number mark "        astieger@sus Apr  9   64/2267  " thread-indent "\"[oss-security] CVE Request for ceph-deploy world-readable keyring permissions\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9254 invoked by uid 550); 9 Apr 2015 15:39:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7796 invoked from network); 9 Apr 2015 15:38:56 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Message-ID: <55269CFA.1090406@suse.de>
Organization: SUSE Linux GmbH
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="x9pcDTlavRt5XRTm7hhkmUK2MqBKRrdhR"
CC: cve-assign@mitre.org
Date: Thu, 09 Apr 2015 17:38:34 +0200
From: Andreas Stieger <astieger@suse.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request for ceph-deploy world-readable keyring permissions
To: oss-security@lists.openwall.com

--x9pcDTlavRt5XRTm7hhkmUK2MqBKRrdhR
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hello,

ceph-deploy 1.5.23 fixes an issue with world-readable permissions on a
keyring containing private key material.

The 1.5.23 changelog states:
"Fix an issue where keyring permissions were world readable"

The problem was that the keyring file would be created with 644 mode. If
ceph-deploy was run as a dedicated non-root admin user, the keys would
be readable to all other (non-admin) users of the same group, thus
leaking authentication credentials.

The upstream pull request and commits are:
https://github.com/ceph/ceph-deploy/pull/272
https://github.com/ceph/ceph-deploy/commit/eee56770393bf19ed2dd5389226c6190=
c08dee3f

References:
https://github.com/ceph/ceph-deploy/pull/272
https://github.com/ceph/ceph-deploy/commit/eee56770393bf19ed2dd5389226c6190=
c08dee3f
https://bugzilla.suse.com/show_bug.cgi?id=3D920926

Could I get a CVE ID assigned please?

Thanks
Andreas Stieger

--=20
Andreas Stieger <astieger@suse.de>
Project Manager Security
SUSE Linux GmbH, GF: Felix Imend=C3=B6rffer, Jane Smithard, Jennifer Guild,=
 Dilip Upmanyu, Graham Norton, HRB 21284 (AG N=C3=BCrnberg)=20



--x9pcDTlavRt5XRTm7hhkmUK2MqBKRrdhR
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCgAGBQJVJpz6AAoJECzWqVXhWUVG40sP/2GEMFk+drc5/ol+ZXAuagoY
I12R9Mlkws+NaFp3k5EI/BqHGjSv/boWvQjl+8mZPoMjLmGEwVUzqonwSgfIMGr6
D7xQ+Pb+UZ+f7OuaN1xu63alYok4vkWDM9d24fwZr2ZwH56JLIIFc4vJ4ZTawks4
u8Btn7nYhRdDebmq0M07ML62V5dyWgLMJqvitP5QMt5qDrYxcN2/iaBzDJxJKa8d
8WW0rPYd8q139TFmofphJJbldBhoOWMgd5i8eHP7NuUpItcclnYH0QQpnv/rx22s
PbkcOhFz5r5OhG9ojkPUU9G0DYHV08v2127viPmtNDKyGt8B5gU80BvpwTEXf+lV
JU/l9qx2TO5VwdqocaDbH7AzqphDGqRJ+lIaykiMCa7YNUI81T5klnqWDzWVUU+f
OBXG2iCBnJUagBgHfDyzOTvAdTEEGXefNrKOkLMMrmDiZtY2b0Gc/+YxlMg7HhK4
06ReT+Eyvbn+eDaUEXgHchf39+7y4JQsjQ20tNkVOWFqtJ+j9QatRjbGVP7nuL2z
V/ZcYMvyHfsnvImbNXG5B3N3RSJyQf2u6jMW7vZR1MRs8zaIiy8oC+9CEvbLlH8q
Nm0NflwMXQkvRPRib4E4J5gMtI8V0+5IDyOeLqy5GT++pkushZBTef3Hthb62ThE
uLqVn/18nHNDHCKUJYDC
=zW3+
-----END PGP SIGNATURE-----

--x9pcDTlavRt5XRTm7hhkmUK2MqBKRrdhR--
