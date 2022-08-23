Received: (qmail 5504 invoked by uid 550); 23 Aug 2022 11:27:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9887 invoked from network); 23 Aug 2022 10:41:11 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=open-xchange.com;
	s=201705; t=1661251260;
	bh=Ghx4bzoZBBwmt8jwZUTM2vcvs/DoEP8kPd3PQqm+JVU=;
	h=Date:From:To:Subject:From;
	b=HRCY/yj7rlpXVOidzv0BVzzUknM/B1wd8qCrqSCVgcE9X/4rLQMM5P0xm1rdmYWVi
	 U2A/04I5N3NnxMI7zgBLHs1lNqXKoO2EEGLjGFF/QQ0UrNr4q/kP6AFlS8xVcK2H/W
	 ybx34/jrvlp0gqq9YQYJ6N2iD/7j56r4eX5PW4k6riyJZvBh7YBgJzryONsVLqZolX
	 jORs1Wsq4aZ9OeC32M/gCc8xffQWSELYaKEXscG4IaVKEdNUwDqEG1Y2qHxWXNixDf
	 dScfd8wMg9WvMT1cpUDGpJ/FYhn+XaQ+aJcJAK2AJGYiZKKnY11SOzJRhD1GkvDglE
	 W02l9Bl1JrA+Q==
Date: Tue, 23 Aug 2022 12:40:59 +0200 (CEST)
From: Otto Moerbeek <otto.moerbeek@open-xchange.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Message-ID: <848110348.5557.1661251259917@appsuite-guard.open-xchange.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512; protocol="application/pgp-signature"; 
	boundary="----=_Part_5556_1104507822.1661251259916"
X-Priority: 3
Importance: Normal
X-Mailer: Open-Xchange Mailer v7.10.6-Rev22
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
Subject: [oss-security] Security Advisory 2022-02 for PowerDNS Recursor up to and including
 4.5.9, 4.6.2, 4.7.1

------=_Part_5556_1104507822.1661251259916
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hello,

   Today we have released PowerDNS Recursor 4.5.10, 4.6.3 and 4.7.2 due to
   a medium severity issue found. The security advisory only applies to
   Recursors running with protobuf logging enabled.

   Please find the full text of the advisory below.

   The changelogs are available at [1]4.5.10, [2]4.6.3, [3]4.7.2.

   The source tarballs ([4]4.5.10, [5]4.6.3, [6]4.7.2) and signatures
   ([7]4.5.10, [8]4.6.3, [9]4.7.2) are available from our download
   [10]server. Patches are available at [11]patches. Packages for various
   distributions are available from our [12]repository.

   Note that PowerDNS Recursor 4.4.x and older releases are End of Life.
   Consult the [13]EOL policy for more details.
     __________________________________________________________________

   PowerDNS Security Advisory 2022-02: incomplete exception handling
   related to protobuf message generation

   CVE: CVE-2022-37428
   Date: 23th of August 2022.
   Affects: PowerDNS Recursor up to and including 4.5.9, 4.6.2 and 4.7.1
   Not affected: PowerDNS Recursor 4.5.10, 4.6.3 and 4.7.2
   Severity: Medium
   Impact: Denial of service
   Exploit: This problem can be triggered by a remote attacker with
   access to the recursor if protobuf logging is enabled
   Risk of system compromise: None
   Solution: Upgrade to patched version, disable protobuf logging of responses

   This issue only affects recursors which have protobuf logging enabled
   using the
     * protobufServer function with logResponses=true or
     * outgoingProtobufServer function with logResponses=true

   If either of these functions is used without specifying logResponses,
   its value is true.
   An attacker needs to have access to the recursor, i.e. the remote IP
   must be in the access control list.
   If an attacker queries a name that leads to an answer with specific
   properties, a protobuf message might be generated that causes an
   exception. The code does not handle this exception correctly, causing a
   denial of service.

References

   1. https://docs.powerdns.com/recursor/changelog/4.5.html#change-4.5.10
   2. https://docs.powerdns.com/recursor/changelog/4.6.html#change-4.6.3
   3. https://docs.powerdns.com/recursor/changelog/4.7.html#change-4.7.2
   4. https://downloads.powerdns.com/releases/pdns-recursor-4.5.10.tar.bz2
   5. https://downloads.powerdns.com/releases/pdns-recursor-4.6.3.tar.bz2
   6. https://downloads.powerdns.com/releases/pdns-recursor-4.7.2.tar.bz2
   7. https://downloads.powerdns.com/releases/pdns-recursor-4.5.10.tar.bz2.sig
   8. https://downloads.powerdns.com/releases/pdns-recursor-4.6.3.tar.bz2.sig
   9. https://downloads.powerdns.com/releases/pdns-recursor-4.7.2.tar.bz2.sig
  10. https://downloads.powerdns.com/releases/
  11. https://downloads.powerdns.com/patches/2022-02/
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

------=_Part_5556_1104507822.1661251259916
Content-Type: application/pgp-signature
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment; filename=signature.asc

-----BEGIN PGP SIGNATURE-----
Version: BCPG v1.65

iQEcBAABCgAGBQJjBK67AAoJEOrKuQsZY+wrhsYIAIasarHUWKLG5CJbjHaUl9tw
MOy1rs16KAYSnmLntY3uRhxfS+cva7Pd4QhEJ7INiUCYAfCtgKdIrzSwdK/LJYUy
2jg2G3Ssug7b7dSImJDqnMpxhc9DQwM3ARaVCGEImFakho52y3ntwFtG+CclCU6e
zkWiIK3hzLbfD6VDaEKAafxgNTg/IKK2MvgPFSYQVTvlmIkdAzaIkvGPOxHOuU7U
40VjEeiy7YoD82eL2ik3U1y42niiVFBdN3RvXbCA3df10ZtGlCC+iZHvPyVWQePk
6jdKRtrADTyAeV7Wggs+58pyCNDYcKM6dRbtTju5CD11iYZoLT/m96pQfgpNGPc=
=i816
-----END PGP SIGNATURE-----

------=_Part_5556_1104507822.1661251259916--
