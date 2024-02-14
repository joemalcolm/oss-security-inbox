Received: (qmail 26157 invoked by uid 550); 14 Feb 2024 11:18:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26323 invoked from network); 14 Feb 2024 06:07:36 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=powerdns.com;
	s=202306; t=1707891026;
	bh=AJ16bMRUNRjh/JPFfKoU1ZjgGms+HW2P8kjxIaHdGM8=;
	h=Date:From:To:Subject:From;
	b=v362h2s71WR9fwNps88DOujwB5pb6W47j3LkJx2P4WPwSOUZr9eUubelaf4gnKAsq
	 u1rudIM/hNWlZcI1wrHPOYxJI7a/AFsBZdO42SL5QkysQfihOaAuDeBsLW0yCbJafZ
	 H2nJo17gU8+9kz7fOJO8cuVsb5Vc9uyUof2kwUqXqcPJ48KbYKdTqsxnvg3e10n+2Y
	 05cC5nEhiw81qaEt8astWazAVEsgLQknsamvuQHX7+H++Rnna60523UKuH9s0PY2xR
	 wWyGFrxwDqqWOB2Ou4kfPc5WnKF5D1Dj3BD6YMCbwZSxy8zMg1V5cB4zQo8Bs0THLk
	 Zfj0groLBE8bw==
Date: Wed, 14 Feb 2024 07:10:26 +0100 (CET)
From: Otto Moerbeek <otto.moerbeek@powerdns.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Message-ID: <1494875110.1183.1707891026523@appsuite-guard.open-xchange.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512; protocol="application/pgp-signature"; 
	boundary="----=_Part_1182_1241694439.1707891026522"
X-Priority: 3
Importance: Normal
X-Mailer: Open-Xchange Mailer v7.10.6-Rev59
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
Subject: [oss-security] PowerDNS Security Advisory 2024-01: crafted DNSSEC records in a
 zone can lead to a denial of service in Recursor

------=_Part_1182_1241694439.1707891026522
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

We have released PowerDNS Recursor 4.8.6, 4.9.3 and 5.0.2.

   These releases fix PowerDNS Security Advisory 2024-01: crafted DNSSEC
   records in a zone can lead to a denial of service in Recursor. The
   Advisory follows:

PowerDNS Security Advisory 2024-01: crafted DNSSEC records in a zone can le=
ad
to a denial of service in Recursor

     * CVE: CVE-2023-50387 and CVE-2023-50868
     * Date: 13th of February 2024.
     * Affects: PowerDNS Recursor up to and including 4.8.5, 4.9.2 and
       5.0.1
     * Not affected: PowerDNS Recursor 4.8.6, 4.9.3 and 5.0.2
     * Severity: High
     * Impact: Denial of service
     * Exploit: This problem can be triggered by an attacker publishing a
       crafted zone
     * Risk of system compromise: None
     * Solution: Upgrade to patched version or disable DNSSEC validation

   An attacker can publish a zone that contains crafted DNSSEC related
   records. While validating results from queries to that zone using the
   RFC mandated algorithms, the Recursor=C3=A2s resource usage can become so
   high that processing of other queries is impacted, resulting in a
   denial of service. Note that any resolver following the RFCs can be
   impacted, this is not a problem of this particular implementation.

   CVSS Score: 7.5, see
   https://nvd.nist.gov/vuln-metrics/cvss/v3-calculator?vector=3DAV:N/AC:L/P
   R:N/UI:N/S:U/C:N/I:N/A:H&version=3D3.1[2]

   The remedies are one of:

     * upgrade to a patched version
     * disable DNSSEC validation by setting dnssec=3Doff or
       process-no-validate; when using YAML settings: dnssec.validate: off
       or process-no-validate. Note that this will affect clients
       depending on DNSSEC validation.

   We would like to thank Elias Heftrig, Haya Schulmann, Niklas Vogel, and
   Michael Waidner from the German National Research Center for Applied
   Cybersecurity ATHENE for bringing CVE-2023-50387 to the attention of
   the DNS community and especially Niklas Vogel for his assistance in
   validating the patches. We would also like to thank Petr Spacek from
   ISC for discovering and responsibly disclosing CVE-2023-50868.
     __________________________________________________________________

   Please refer to the changelogs  (4.8.6[3], 4.9.3[4] and 5.0.2[5]) and
   upgrade guide for additional details. The upgrade guide describes one
   known issue related to the zoneToCache function.

   Please send us all feedback and issues you might have via the mailing
   list[6], or in case of a bug, via GitHub[7].

   The tarballs (4.8.6[8], 4.9.3[9], 5.0.2[10]) (with signature files
   4.8.6[11], 4.9.3[12], 5.0.2[13]) are available from our
   download server[14] and packages for several distributions are
   available from our repository[15].

   We are grateful to the PowerDNS community for the reporting of bugs,
   issues, feature requests, and especially to the submitters of fixes and
   implementations of features.

References

   1. file:///Users/otto/pdns/pdns/recursordist/html-docs/security-advisori=
es/powerdns-advisory-2024-01.html#powerdns-security-advisory-2024-01-crafte=
d-dnssec-records-in-a-zone-can-lead-to-a-denial-of-service-in-recursor
   2. https://nvd.nist.gov/vuln-metrics/cvss/v3-calculator?vector=3DAV:N/AC=
:L/PR:N/UI:N/S:U/C:N/I:N/A:H&version=3D3.1
   3. https://doc.powerdns.com/recursor/changelog/4.8.html#change-4.8.6
   4. https://doc.powerdns.com/recursor/changelog/4.9.html#change-4.9.3
   5. https://doc.powerdns.com/recursor/changelog/5.0.html#change-5.0.2
   6. https://mailman.powerdns.com/mailman/listinfo/pdns-users
   7. https://github.com/PowerDNS/pdns/issues/new/choose
   8. https://downloads.powerdns.com/releases/pdns-recursor-4.8.6.tar.bz2
   9. https://downloads.powerdns.com/releases/pdns-recursor-4.9.3.tar.bz2
  10. https://downloads.powerdns.com/releases/pdns-recursor-5.0.2.tar.bz2
  11. https://downloads.powerdns.com/releases/pdns-recursor-4.8.6.tar.bz2.s=
ig
  12. https://downloads.powerdns.com/releases/pdns-recursor-4.9.3.tar.bz2.s=
ig
  13. https://downloads.powerdns.com/releases/pdns-recursor-5.0.2.tar.bz2.s=
ig
  14. https://downloads.powerdns.com/releases/
  15. https://repo.powerdns.com/



--=20

kind regards,
Otto Moerbeek
Senior Developer PowerDNS=20


Phone: +49 2761 75252 00 Fax: +49 2761 75252 30
Email: otto.moerbeek@open-xchange.com


---------------------------------------------------------------------------=
----------
Open-Xchange AG, Hohenzollernring 72, 50672 Cologne, District Court Cologne=
 HRB 95366=20
Managing Board: Andreas Gauger, Dirk Valbert, Frank Hoberg, Stephan Martin=
=20
Chairman of the Board: Richard Seibt=20
=20
PowerDNS.COM BV, Koninginnegracht 5, 2514 AA Den Haag, The Netherlands
Managing Director: Robert Brandt
---------------------------------------------------------------------------=
----------

------=_Part_1182_1241694439.1707891026522
Content-Type: application/pgp-signature
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment; filename=signature.asc

-----BEGIN PGP SIGNATURE-----
Version: BCPG v1.65

iQEcBAABCgAGBQJlzFlSAAoJEOrKuQsZY+wrr90H/2+dWkPlw3USEu+aMTJevRN+
k5SyDgiRJPIhxxR494unMQBl45Ay2n3DOLxEbheRJ68cqKVjaMRfQQ7St1txgZpJ
T+I8SYr+mh5viv9gYjExih3SMT0aJ0My/Vl1oNFeDq7tHnc5DxHfBkMNAd4G1FKO
zu1FHIaUE42BNYDKO8tU5fwvcINCx0xDiCGkS59qvK0MQcwtseO5v7GcPh5j3sCe
KgNbHeSwFb4WuGGRl7mCKBATl9/cAZmFoA/PfmZQg+R3Bh7rFD7Lxr2V4wQGZVoW
JiwgXmY5vWog8uvEsnSNahBypXp2Bm+6og6Pu7jmBmJW6x2W9NjWYqKSmakevwA=
=blBy
-----END PGP SIGNATURE-----

------=_Part_1182_1241694439.1707891026522--
