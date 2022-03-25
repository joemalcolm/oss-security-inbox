X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4550" "Friday" "25" "March" "2022" "13:36:28" "+0100" "Otto Moerbeek" "otto.moerbeek@open-xchange.com" nil "112" "[oss-security] Security Advisory 2022-01 for PowerDNS Authoritative Server 4.4.2, 4.5.3, 4.6.0 and PowerDNS Recursor 4.4.7, 4.5.7, 4.6.0" nil nil nil "3" nil nil (number mark "U       otto.moerbee Mar 25  112/4550  " thread-indent "\"[oss-security] Security Advisory 2022-01 for PowerDNS Authoritative Server 4.4.2, 4.5.3, 4.6.0 and PowerDNS Recursor 4.4.7, 4.5.7, 4.6.0\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Security Advisory 2022-01 for PowerDNS Authoritative Server 4.4.2, 4.5.3, 4.6.0 and PowerDNS Recursor 4.4.7, 4.5.7, 4.6.0" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9456 invoked by uid 550); 25 Mar 2022 13:54:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26282 invoked from network); 25 Mar 2022 12:36:42 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=open-xchange.com;
	s=201705; t=1648211788;
	bh=Fxdil6zElaOnVQgUiSJ6mvSC+SEAoyueK9yRF9jN8bE=;
	h=Date:From:To:Subject:From;
	b=C7UFbz5dB9UQXIDW+h0JDp71yclOHn0XxQ0FiGmk78LprdjJTJxQj4ov+OsEgayoM
	 G0xC1XoTp6J5OuVtcxnv+aJ+jRCx2Rg3fjA8GPWEKLAb3t8L0aAlJzfpdBXmcmtcEr
	 nltGdDJO5/sQiwZFZ6q20mjOlfU2Bns8DwI4t0HSjvihwk/EydwQjT8qr4d7BwEdgu
	 q8gF9yBlvcEywMDhE/nD0Q1rAWfuVOPCSkhmrvXxHWz/tYayAS65qKLz39OPXqgW5+
	 BkfXyananyT4bEYxlattqFw2plrxcSet1cJ5z/8xu1dEFa1GEM2sgHk0iMKM+c76K5
	 4PUdE3Mnt4B+g==
Date: Fri, 25 Mar 2022 13:36:28 +0100 (CET)
From: Otto Moerbeek <otto.moerbeek@open-xchange.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Message-ID: <389814453.6469.1648211788568@appsuite-guard.open-xchange.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512; protocol="application/pgp-signature"; 
	boundary="----=_Part_6468_1207308799.1648211788568"
X-Priority: 3
Importance: Normal
X-Mailer: Open-Xchange Mailer v7.10.6-Rev9
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
Subject: [oss-security] Security Advisory 2022-01 for PowerDNS Authoritative Server 4.4.2,
 4.5.3, 4.6.0 and PowerDNS Recursor 4.4.7, 4.5.7, 4.6.0

------=_Part_6468_1207308799.1648211788568
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

   Hello,

   Today we have released PowerDNS Authoritative Server 4.4.3, 4.5.4 and
   4.6.1, and PowerDNS Recursor 4.4.8, 4.5.8 and 4.6.1 due to a low
   severity issue found in both products.
     * In the Authoritative server this issue only applies to secondary
       zones for which IXFR transfers have been enabled and the network
       path to the primary server is not trusted. Note that IXFR transfers
       are not enabled by default.
     * In the Recursor it applies to setups retrieving one or more RPZ
       zones from a remote server if the network path to the server is not
       trusted.

   Tarballs and signatures are available at
   https://downloads.powerdns.com/releases/[1], and patches are available
   at https://downloads.powerdns.com/patches/2022-01/[2]. However, the
   releases contain no other changes, with the exception of our EL8
   builds, which were switched from CentOS 8 to Oracle Linux 8.

   Please find the full text of the advisory below.
     __________________________________________________________________

   PowerDNS Security Advisory 2022-01: incomplete validation of incoming
   IXFR transfer in Authoritative Server and Recursor.
     * CVE: CVE-2022-27227
     * Date: 25th of March 2022.
     * Affects: PowerDNS Authoritative version 4.4.2, 4.5.3, 4.6.0 and
       PowerDNS Recursor 4.4.7, 4.5.7 and 4.6.0
     * Not affected: PowerDNS Authoritative Server 4.4.3, 4.5.4, 4.6.1 and
       PowerDNS Recursor 4.4.8, 4.5.8 and 4.6.1
     * Severity: Low
     * Impact: Denial of service
     * Exploit: This problem can be triggered by an attacker controlling
       the network path for IXFR transfers
     * Risk of system compromise: None
     * Solution: Upgrade to patched version, do not use IXFR in
       Authoritative Server

   In the Authoritative server this issue only applies to secondary zones
   for which IXFR transfers have been enabled and the network path to the
   primary server is not trusted. Note that IXFR transfers are not enabled
   by default.

   In the Recursor it applies to setups retrieving one or more RPZ zones
   from a remote server if the network path to the server is not trusted.

   IXFR usually exchanges only the modifications between two versions of a
   zone, but sometimes needs to fall back to a full transfer of the
   current version.

   When IXFR falls back to a full zone transfer, an attacker in position
   of man-in-the-middle can cause the transfer to be prematurely
   interrupted. This interrupted transfer is mistakenly interpreted as a
   complete transfer, causing an incomplete zone to be processed.

   For the Authoritative Server, IXFR transfers are not enabled by
   default.
   The Recursor only uses IXFR for retrieving RPZ zones. An incomplete RPZ
   transfer results in missing policy entries, potentially causing some
   DNS names and IP addresses to not be properly intercepted.

   We would like to thank Nicolas Dehaine and Dmitry Shabanov from
   ThreatSTOP for reporting and initial analysis of this issue.

References

   1. https://downloads.powerdns.com/releases/
   2. https://downloads.powerdns.com/patches/2021-01/


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

------=_Part_6468_1207308799.1648211788568
Content-Type: application/pgp-signature
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment; filename=signature.asc

-----BEGIN PGP SIGNATURE-----
Version: BCPG v1.65

iQEcBAABCgAGBQJiPbdMAAoJEOrKuQsZY+wry3sH/jF5i88Am/hx1Hb6YNs6agxm
XSi7CvaQw6XxvK8QW43pIQ4rw/G7aXvW+qhVb4WNhUxgRCP0PtUcG4f/esoOELRS
Kp4fCVIsbOp6KyvepCQ1o9bozCK4jxNcokpRFYrkYAjxx4l6ZtmvhkkvLzwuiWL6
I9uYLFfl8ck0QNwbEgJg5uF5iw4Z+vhl3sOEVd34Xm7JUOuqIq0jF6jVo9K2dHUQ
cY69XuD0B9JjSNeNTcLYA1OjlAPLGn8YQ4PxJKUdk01NnySyH88+2C0eNoSIUiRH
JYfPeBb83eCRcg5AEGw5jOJc/mfztdAmoSGHWIpWzn7dZGmcVP/DdkKIqllkWKQ=
=EplL
-----END PGP SIGNATURE-----

------=_Part_6468_1207308799.1648211788568--
