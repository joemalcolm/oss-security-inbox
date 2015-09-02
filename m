X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2687" "Wednesday" "2" "September" "2015" "15:24:48" "+0200" "Pieter Lexis" "pieter.lexis@powerdns.com" "<55E6F8A0.9030507@powerdns.com>" "70" "[oss-security] PowerDNS Security Advisory 2015-02" nil nil nil "9" "2015090213:24:48" "[oss-security] PowerDNS Security Advisory 2015-02" (number mark "U       pieter.lexis Sep  2   70/2687  " thread-indent "\"[oss-security] PowerDNS Security Advisory 2015-02\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18075 invoked by uid 550); 2 Sep 2015 13:25:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 18020 invoked from network); 2 Sep 2015 13:25:21 -0000
Organization: PowerDNS
Message-ID: <55E6F8A0.9030507@powerdns.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.2.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="j0kOLkWT6rQjsDKepPmPjKluHIsd2Fu4r"
Date: Wed, 2 Sep 2015 15:24:48 +0200
From: Pieter Lexis <pieter.lexis@powerdns.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] PowerDNS Security Advisory 2015-02
To: pdns-users Users <pdns-users@mailman.powerdns.com>,
 pdns-dev@mailman.powerdns.com, pdns-announce@mailman.powerdns.com,
 oss-security@lists.openwall.com

--j0kOLkWT6rQjsDKepPmPjKluHIsd2Fu4r
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi all,

We'd like to make you aware of Security Advisory 2015-02 for PowerDNS.

A bug was recently found in our DNS packet parsing/generation code,
which, when exploited, can cause individual threads (disabling service)
or whole processes (allowing a supervisor to restart them) to crash with
just one or a few query packets.

* CVE: CVE-2015-5230
* Date: 2nd of September 2015
* Credit: Pyry Hakulinen and Ashish Shakla at Automattic
* Affects: PowerDNS Authoritative Server 3.4.0 through 3.4.5
* Not affected: PowerDNS Authoritative Server 3.4.6
* Severity: High
* Impact: Degraded service or Denial of service
* Exploit: This problem can be triggered by sending specially crafted
  query packets
* Risk of system compromise: No
* Solution: Upgrade to a non-affected version
* Workaround: Run the Authoritative Server inside a supervisor when
  `distributor-threads`  is set to `1` to prevent Denial of Service.
  No workaround for the degraded service exists

PowerDNS Authoritative Server 3.4.0-3.4.5 are affected. No other
versions are affected. The PowerDNS Recursor is not affected.

PowerDNS Authoritative Server 3.4.6 contains a fix to this issue. A
minimal patch is available [1].

This issue is entirely unrelated to Security Advisory 2015-01/CVE-2015-1868.

We'd like to thank Pyry Hakulinen and Ashish Shakla at Automattic for
finding and subsequently reporting this bug.

1 - https://downloads.powerdns.com/patches/2015-02/

--=20
Pieter Lexis
PowerDNS.COM BV - https://www.powerdns.com


--j0kOLkWT6rQjsDKepPmPjKluHIsd2Fu4r
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJV5vi1AAoJEF5QcVvy/+GnoBMP/06S3mfFNcjA8iRhkLSGUloG
f3VPE4UewmfN1kZLY2xMMtbiAXq4vuur5EenlGVGOIaMrOxv3/f86ipEp8oL3/ot
wR8eHakwxJQlbVxMw0y9Ud529JgKJI6zhBcrov9fnzDPYHB8+hL9KG0TXpYfkpld
L0ryih2cJqkRRYkezOafzHhuZOKCpFyl04TrIag4sIzoPM44zCCdqKD2IMw8rk4U
r7eIsypsKFUIfBHR+EwO9m0SHztLLmC334s3vUGRVY9Rwn/6FBSQqLm0gSfWt8Ys
Rf4IqxXubps8pO2SCjAdM85pB0daNtJrfjUoHRrzpjxsy2Ml6Fs40Qnj8k6o/SOQ
cE8SHuz+7nVhZThZcsJzdJlAhmzg/tss9z0N7R0in2El3AWjkeUp87azV++KAQCK
NB+wCDNOq6bLOBDM7wEW2Y0W6rV0cGQoSwi1iBLqESxotV114sGg40dfxEN+jsIp
aSd1NWI2bFbqan4TDV7veI11Q/ayeuQn+fuc7eKY7251ZSEOJphfoN3jRu8s9+Xv
LjGrDl9z4dREHCz4kRa5kvUmFwC6PF6MWxoUIMRbHZhJNjcT5YVBHfo6donzzNAr
PmVEUYDp1ynz8iqN84pbF9nkZ6ULK6dSdnG+owMkoY+I9uyEJjJik2igs5BLeHYK
9LuLHiNRinfYL4mu3XEK
=JFLd
-----END PGP SIGNATURE-----

--j0kOLkWT6rQjsDKepPmPjKluHIsd2Fu4r--
