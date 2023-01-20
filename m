Received: (qmail 9576 invoked by uid 550); 20 Jan 2023 12:34:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30668 invoked from network); 20 Jan 2023 12:19:55 -0000
Date: Fri, 20 Jan 2023 13:19:43 +0100 (CET)
From: Otto Moerbeek <otto.moerbeek@powerdns.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Message-ID: <1295588158.7348.1674217183817@appsuite-guard.open-xchange.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512; protocol="application/pgp-signature"; 
	boundary="----=_Part_7347_1649712590.1674217183817"
X-Priority: 3
Importance: Normal
X-Mailer: Open-Xchange Mailer v7.10.6-Rev34
X-Originating-Client: open-xchange-appsuite
Autocrypt: addr=otto.moerbeek@open-xchange.com; prefer-encrypt=mutual; keydata=
 mQENBFwsoP8BCACU+waQJk8NT0hkuTQwVEJjHiLHsHIPlj1w487uzBVnZ3jaacd1iPz6v5OTDVcT6qa
 Q2f6NQosNpuLKzJr4lZTxRC2dIho+R7OjWKQ4vZ/XYbjRH/52+nT39VHEF6yTYj/rVDZvAsuu8+sTJ4
 hkiGkqQv43OfDtbMCR3LdkwPNfgZ5KCmdFrmcOg3kovaUbffBhe8mFwZDVws7XnZJntvrhYi0zRH3MY
 mLnd1WBBiVWcvqZDQsP8FwssFtmcjPgANpHBC/Q78eaji3XhcL4JGcpzok7nV6nbjkYq/kgkxlYviyR
 dIW/Xm8tZWyFDjOktKFBQv4+S02j1D5Hqb8YUc8lABEBAAG0L01vZXJiZWVrLCBPdHRvIDxvdHRvLm1
 vZXJiZWVrQG9wZW4teGNoYW5nZS5jb20+iQE6BBMBAgAkBQJcLKD/AhsDBAsJCAcGFQoJCAsCBRYCAw
 EAAp4BBQkSzAMAAAoJEOrKuQsZY+wr0xcIAIEUvf0YeJ0LRN6uNo0IXuEqq/G+wvjq2drc/AQCxHB4y
 PyF65ad0OQnphzCRTRSPmcVmRqNkqxc+BvORtwcX0we/KcS/4NshJ1MFel3X79jXowOPSuJzp+IwGWs
 3hkvTuI9U6dT75i+8jfG9XFDjO8q1l9Nr2WEmxXwtJ9vCIbLShMV1tnJtsW75obyhLVfXGIQBqYSDEW
 XwLEccILI+mizvwWPk+wI2ReefXUDi1QIn4Ckbv9TwKVlI0wrHoNCPhz8Tp25RzUktpGT+GyGSAgDMR
 BBP35BRGF/jUF5KrmmYhC9XH5za/XzBL2lCj4xg0yr0nV1wGpPdAC9SDw8bFW5AQ0EXCyg/wEIAL6BH
 bRVWSVy0JNTKQCuUGl/F3oseEclbUvWgiYGaS6NQ1mPSSJJYNg+R0Of1+nO2JktSozT5gq9pAfAGpgQ
 PJOZW/vOTo8bWJh6K5xVZni5Jcl//LAMfDBUFyno1Eb6t++jL60HGgWIEWDKSb8WevWX76ml4Y++xkG
 3geF5NHNgxHhdNpDsk2uHCnKSJgzfJLqK2E7HKVjEpFTg2ke5FOW/86N0rpUsguLRQOJnZJtb0C1xBd
 f6nULks6HicRGxueax2XNl5viIK7wifPUyw8aitfzTorllZkF5YZAwFi/ljsim7mHDPVPdSUKbPG19v
 FVlBbR8ANUfl869NMmpg5cAEQEAAYkBOgQYAQIAJAUCXCyg/wIbDAQLCQgHBhUKCQgLAgUWAgMBAAKe
 AQUJEswDAAAKCRDqyrkLGWPsKzeYCACSPnYV5477A5/czhjBk1TDPjBiwhgRP5X+PW/NkdMAck1zrD5
 PGsX3puYAgTMpn07QLfDdhDLc09+Khdp8gPp2SShgpS2H5d0G+SWHobpfSSoMg2ijC2tmtji7ZCMYWL
 yUQR7SiqhGcgR+0BqrYBqiyPkGynr8i7PEdvMNgj+9hJYb+LKB6Ox+f/Qxc+Y5mR3ug5/XO4+FKnTAi
 24UFRLM3dStMzr4PvYJtWfj8l9rK8yV2nJv2EvEktS5RjKiYKb3od4wmf4o9O+xT9zWMJjIEK8Vuv1B
 AFHqN6caHBW9UjSdQKecLLvR0L/+aLITi+jLoIjdvkwY75bu/xqx8MKD
Subject: [oss-security] Security Advisory 2023-01 for PowerDNS Recursor 4.8.0
 (CVE-2023-22617)

------=_Part_7347_1649712590.1674217183817
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,

   Today we have released PowerDNS Recursor 4.8.1 due to a high severity
   issue found.

   Please find the full text of the advisory below.

   The [1]changelog is available.

   The [2]tarball ([3]signature) is available from our download [4]server.
   Patches are available at [5]patches. Packages for various distributions
   are available from our [6]repository.

   Note that PowerDNS Recursor 4.5.x and older releases are End of Life.
   Consult the [7]EOL policy for more details.
=C2=A0    __________________________________________________________________

PowerDNS Security Advisory 2023-01: unbounded recursion results in program
termination

     * CVE: CVE-2023-22617
     * Date: 20th of January 2023
     * Affects: PowerDNS Recursor 4.8.0
     * Not affected: PowerDNS Recursor < 4.8.0, PowerDNS Recursor 4.8.1
     * Severity: High
     * Impact: Denial of service
     * Exploit: This problem can be triggered by a remote attacker with
       access to the recursor by querying names from specific
       mis-configured domains
     * Risk of system compromise: None
     * Solution: Upgrade to patched version

   CVSS 3.0 score: 8.2 (High)
   https://www.first.org/cvss/calculator/3.0#CVSS:3.0/AV:N/AC:L/PR:N/UI:N/
=C2=A0  S:U/C:N/I:L/A:H/E:H/RL:U/RC:C

   Thanks to applied-privacy.net for reporting this issue and their assista=
nce in diagnosing it.

References

   1. https://docs.powerdns.com/recursor/changelog/4.8.html#change-4.8.1
   2. https://downloads.powerdns.com/releases/pdns-recursor-4.8.1.tar.bz2
   3. https://downloads.powerdns.com/releases/pdns-recursor-4.8.1.tar.bz2.s=
ig
   4. https://downloads.powerdns.com/releases/
   5. https://downloads.powerdns.com/patches/2023-01/
   6. https://repo.powerdns.com/
   7. https://docs.powerdns.com/recursor/appendices/EOL.html



--=20

kind regards,
Otto Moerbeek
PowerDNS Developer=20


=20
Email: otto.moerbeek@open-xchange.com


---------------------------------------------------------------------------=
----------
Open-Xchange AG, Hohenzollernring 72, 50672 Cologne, District Court Cologne=
 HRB 95366=20
Managing Board: Andreas Gauger, Dirk Valbert, Frank Hoberg, Stephan Martin=
=20
Chairman of the Board: Richard Seibt=20
=20
PowerDNS.COM BV, Koninginnegracht 14L, 2514 AA Den Haag, The Netherlands
Managing Director: Robert Brandt, Maxim Letski
---------------------------------------------------------------------------=
----------

------=_Part_7347_1649712590.1674217183817
Content-Type: application/pgp-signature
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment; filename=signature.asc

-----BEGIN PGP SIGNATURE-----
Version: BCPG v1.65

iQEcBAABCgAGBQJjyobfAAoJEOrKuQsZY+wrDdUH/iWsvsbh/PCtHfNTog+eYEeX
GUnMYAjMYCBuh42DMk7AJ7kBei36zKFT/fIZNwW+2FxqtcH0PP1HTi/t3VeMcCzN
8kRla9ZRwXvxuwfZmckgqgjGFW36gtNVVq+yGma/hHvBP4iaKaZr+YURSLcxFHKj
8swfNkyU5XtAPoAKrexHQlYJbD4Br21D0kcF39/liYHv2Dlk9BzpMJ5y329kP7Iu
P2oZDskusQ2YQAS7qTjhSOqau8MU75NxZSAjezwk89Nb+HljUQZiLGSaSd1LD+Xh
qaCiXOe04L6wtXJ1GwqxtXaArX1GqvnNLgBJb22WWpHhj9Hx9VB0wwpbJ8EVtBQ=
=6qU4
-----END PGP SIGNATURE-----

------=_Part_7347_1649712590.1674217183817--
