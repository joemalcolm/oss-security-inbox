Received: (qmail 25864 invoked by uid 550); 4 Apr 2023 11:51:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18329 invoked from network); 4 Apr 2023 11:38:45 -0000
Date: Tue, 4 Apr 2023 13:38:30 +0200 (CEST)
From: Otto Moerbeek <otto.moerbeek@powerdns.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Message-ID: <56654437.43.1680608310714@appsuite-guard.open-xchange.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512; protocol="application/pgp-signature"; 
	boundary="----=_Part_42_1101321754.1680608310713"
X-Priority: 3
Importance: Normal
X-Mailer: Open-Xchange Mailer v7.10.6-Rev41
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
Subject: [oss-security] PowerDNS Security Advisory 2023-02: Deterred spoofing attempts can
 lead to authoritative servers being marked unavailable

------=_Part_42_1101321754.1680608310713
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hello,

   We have released PowerDNS Recursor 4.6.6, 4.7.5 and 4.8.4 due to
   a low severity security issue found.

   Please find the full text of the advisory below.

   The [1]4.6, [2]4.7 and [3]4.8 changelogs are available.

   The  [4]4.6.6  ([5]signature), [6]4.7.5 ([7]signature) and
   [8]4.8.4 ([9]signature) tarballs are available from our download
   [10]server. Patches are available at [11]patches. Packages for various
   distributions are available from our [12]repository.

   Note that PowerDNS Recursor 4.5.x and older releases are End of Life.
   Consult the [13]EOL policy for more details.
     __________________________________________________________________

PowerDNS Security Advisory 2023-02: Deterred spoofing attempts can lead to
authoritative servers being marked unavailable

     * CVE: CVE-2023-26437
     * Date: 29th of March 2023
     * Affects: PowerDNS Recursor up to and including 4.6.5, 4.7.4 and
       4.8.3
     * Not affected: PowerDNS Recursor 4.6.6, 4.7.5 and 4.8.4
     * Severity: Low
     * Impact: Denial of service
     * Exploit: Successful spoofing may lead to authoritative servers
       being marked unavailable
     * Risk of system compromise: None
     * Solution: Upgrade to patched version

   When the recursor detects and deters a spoofing attempt or receives certain malformed DNS
   packets, it throttles the server that was the target of the impersonation attempt so that other
   authoritative servers for the same zone will be more likely to be used in the future, in case the
   attacker controls the path to one server only. Unfortunately this mechanism can be used by an
   attacker with the ability to send queries to the recursor, guess the correct source port of the
   corresponding outgoing query and inject packets with a spoofed IP address to force the recursor
   to mark specific authoritative servers as not available, leading a denial of service for the
   zones served by those servers.

   CVSS 3.0 score: 3.7 (Low)
   https://www.first.org/cvss/calculator/3.0#CVSS:3.0/AV:N/AC:H/PR:N/UI:R/
   S:C/C:N/I:N/A:L

   Thanks to Xiang Li from Network and Information Security Laboratory,
   Tsinghua University for reporting this issue.

References

   1. https://docs.powerdns.com/recursor/changelog/4.6.html#change-4.6.6
   2. https://docs.powerdns.com/recursor/changelog/4.7.html#change-4.7.5
   3. https://docs.powerdns.com/recursor/changelog/4.8.html#change-4.8.4
   4. https://downloads.powerdns.com/releases/pdns-recursor-4.6.6.tar.bz2
   5. https://downloads.powerdns.com/releases/pdns-recursor-4.6.6.tar.bz2.sig
   6. https://downloads.powerdns.com/releases/pdns-recursor-4.7.5.tar.bz2
   7. https://downloads.powerdns.com/releases/pdns-recursor-4.7.5.tar.bz2.sig
   8. https://downloads.powerdns.com/releases/pdns-recursor-4.8.4.tar.bz2
   9. https://downloads.powerdns.com/releases/pdns-recursor-4.8.4.tar.bz2.sig
  10. https://downloads.powerdns.com/releases/
  11. https://downloads.powerdns.com/patches/2023-01/
  12. https://repo.powerdns.com/
  13. https://docs.powerdns.com/recursor/appendices/EOL.html

--

kind regards,
Otto Moerbeek
PowerDNS Developer



Email: otto.moerbeek@open-xchange.com


-------------------------------------------------------------------------------------
Open-Xchange AG, Hohenzollernring 72, 50672 Cologne, District Court Cologne HRB 95366
Managing Board: Andreas Gauger, Dirk Valbert, Frank Hoberg, Stephan Martin
Chairman of the Board: Richard Seibt

PowerDNS.COM BV, Koninginnegracht 14L, 2514 AA Den Haag, The Netherlands
Managing Director: Robert Brandt, Maxim Letski
-------------------------------------------------------------------------------------

------=_Part_42_1101321754.1680608310713
Content-Type: application/pgp-signature
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment; filename=signature.asc

-----BEGIN PGP SIGNATURE-----
Version: BCPG v1.65

iQEcBAABCgAGBQJkLAw2AAoJEOrKuQsZY+wr4qEH/1H7Ia5jNNRj+i8eVMAbgDdd
9vbGllo4iLBGrUEsXcNeF90FVS7C6Y2IYQ/4EUCHgEoSEKbYkVbMNV1dVo5MH6so
wn3PjOBXdt/W1GGrKlyMGZsT98+qWLXzPUlV9gPBs3lrWDO/lfDlnIzoeZ927p4o
yQf1UoESBH9dRpDQRnhrSukTK/WRZ+vhUBpejlRNvfPRcqZIhrjpstQcqPGHHgZa
7KfYjAFA9/fxMiwpl24M9TRLRPNeAzSaR+nID89l101b7Gr8YO9qpQ9eQZwI1cPZ
/LwEcurhWbTBiNOxKGjxW0KdB969l7nGqluAegHGR67FkQ8IBLEjwxMA5pNr3bU=
=mmv+
-----END PGP SIGNATURE-----

------=_Part_42_1101321754.1680608310713--
