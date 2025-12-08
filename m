Received: (qmail 11785 invoked by uid 550); 8 Dec 2025 14:14:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 12198 invoked from network); 8 Dec 2025 12:41:22 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=powerdns.com; h=
	cc:content-type:content-type:date:from:from:message-id
	:mime-version:reply-to:subject:subject:to:to; s=s1dus; bh=32cSyx
	r4Umxcev6ovhnTTD11dGTDPoayBeF7JWNUnYI=; b=SO9yPzSYVFF3xOe5rRI6WT
	1Bnv6md55/rtQfOgA0ehsKSM/NOoCHWV0NraH9tAkCBsA2yNFPOIC7uGCs3znkVM
	CYSyxzgguhdV3pOUFzqrRgg0YS5Iy0dwHH5qoFcbOk3hncH1qyG+yDkPgIqdqE1J
	I9k16QpXQDf8xVOimcUr7keaOoW5U9prF01DK+80v+D65pbqLkMZUMprkbgMDlwg
	2/B55Jsbkw2g+c62K/rPVomxd2svgToD0WpYp8nMYiZv6m0c/o0SEorVslge4cex
	ZsTCnZRevTVbp266RgCZQvShAfl7bNmyRK/vuNKBVvUqvIPqYgpTrAvgqnP0cVsA
	==
Date: Mon, 8 Dec 2025 13:41:11 +0100 (CET)
From: Otto Moerbeek <otto.moerbeek@powerdns.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Message-ID: <1527442737.2837.1765197671791@appsuite.open-xchange.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_2836_153818840.1765197671790"
X-Priority: 3
Importance: Normal
X-Mailer: Open-Xchange Mailer v8.43.61
X-Originating-Client: open-xchange-appsuite
Subject: [oss-security] PowerDNS Security Announcement 2025-07 and 2025-08 regarding
 PowerDNS Recursor

------=_Part_2836_153818840.1765197671790
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

   Today we have released PowerDNS Recursor 5.1.9, 5.2.7 and 5.3.3.

   These releases fix two PowerDNS Security Advisories:

     * 2025-07: Internal logic flaw in cache management can lead to a
       denial of service in Recursor
     * 2025-08: Insufficient validation of incoming notifies over TCP can
       lead to a denial of service in Recursor.
     __________________________________________________________________

    PowerDNS Security Advisory 2025-07: Internal logic flaw in cache management
    can lead to a denial of service in Recursor

     * CVE: CVE-2025-59029
     * Date: 8th December 2025
     * Affects: PowerDNS Recursor 5.3.0 and 5.3.1
     * Not affected: PowerDNS Recursor 5.1.x, 5.2.x and 5.3.2
     * Severity: Medium
     * Impact: Denial of Service
     * Exploit: This problem can be triggered by specific cache contents
       and a query with qtype ANY
     * Risk of system compromise: None
     * Solution: Upgrade to patched version or prevent requests with qtype
       ANY

   CVSS Score: 5.6, see
   https://nvd.nist.gov/vuln-metrics/cvss/v3-calculator?vector=AV:N/AC:L/P
   R:N/UI:N/S:U/C:N/I:N/A:L&version=3.1[1]

   The remedy is: upgrade to a patched version or prevent requests with
   qtype ANY.

   Version 5.3.2 of PowerDNS Recursor was never released publicly, upgrade
   to version 5.3.3.
     __________________________________________________________________

    PowerDNS Security Advisory 2025-08: Insufficient validation of incoming
    notifies over TCP can lead to a denial of service in Recursor

     * CVE: CVE-2025-59030
     * Date: 8th December 2025
     * Affects: PowerDNS Recursor up to and including 5.3.2, 5.2.6 and
       5.1.8
     * Not affected: PowerDNS Recursor 5.3.3, 5.2.7 and 5.1.9
     * Severity: High
     * Impact: Denial of Service
     * Exploit: This problem can be triggered by a notify arriving over
       TCP and allows clearing caches
     * Risk of system compromise: None
     * Solution: Upgrade to patched version or prevent incoming notifies
       over TCP

   CVSS Score: 7.5, see
   https://nvd.nist.gov/vuln-metrics/cvss/v3-calculator?vector=AV:N/AC:L/P
   R:N/UI:N/S:U/C:N/I:N/A:H&version=3.1[2]

   The remedy is: upgrade to patched version or prevent incoming notifies
   over TCP.
     __________________________________________________________________

   Please refer to the changelogs  (5.1.9[3], 5.2.7[4] and 5.3.3[5]) for
   additional details

   Please send us all feedback and issues you might have via the mailing
   list[6], or in case of a bug, via GitHub[7].

   The tarballs (5.1.9[8], 5.2.7[9], 5.3.3[10]) (with signature files
   5.1.9[11], 5.2.7[12], 5.3.3[13]) are available from our
   download server[14] and packages for several distributions are
   available from our repository[15].

   Recently we made changes to our Open Source End of Life policy. Older
   release trains are now supported for one year after the following major
   release. Consult the EOL policy[16] for more details.

   We are grateful to the PowerDNS community for the reporting of bugs,
   issues, feature requests, and especially to the submitters of fixes and
   implementations of features.

References

   1. https://nvd.nist.gov/vuln-metrics/cvss/v3-calculator?vector=AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:L&version=3.1
   2. https://nvd.nist.gov/vuln-metrics/cvss/v3-calculator?vector=AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H&version=3.1
   3. https://doc.powerdns.com/recursor/changelog/5.1.html#change-5.1.9
   4. https://doc.powerdns.com/recursor/changelog/5.2.html#change-5.2.7
   5. https://doc.powerdns.com/recursor/changelog/5.3.html#change-5.3.3
   6. https://mailman.powerdns.com/mailman/listinfo/pdns-users
   7. https://github.com/PowerDNS/pdns/issues/new/choose
   8. https://downloads.powerdns.com/releases/pdns-recursor-5.1.9.tar.bz2
   9. https://downloads.powerdns.com/releases/pdns-recursor-5.2.7.tar.bz2
  10. https://downloads.powerdns.com/releases/pdns-recursor-5.3.3.tar.xz
  11. https://downloads.powerdns.com/releases/pdns-recursor-5.1.9.tar.bz2.sig
  12. https://downloads.powerdns.com/releases/pdns-recursor-5.2.7.tar.bz2.sig
  13. https://downloads.powerdns.com/releases/pdns-recursor-5.3.3.tar.xz.sig
  14. https://downloads.powerdns.com/releases/
  15. https://repo.powerdns.com/
  16. https://docs.powerdns.com/recursor/appendices/EOL.html
------=_Part_2836_153818840.1765197671790
Content-Type: application/pgp-signature; name=signature.asc
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename=signature.asc
X-Part-Id: ea040f064cb441c0bd1d030d9ce75d57

LS0tLS1CRUdJTiBQR1AgU0lHTkFUVVJFLS0tLS0NClZlcnNpb246IEJDUEcgdjEuNzkNCg0KaVFF
Y0JBQUJDZ0FHQllKcE5zWHhBQW9KRU9yS3VRc1pZK3dyQjFzSC9pVXNycGRPcnVXRWRrYmRPTHNz
bnpFaQ0KTWZjNnBveUJETy94WnBONm1neWhCcnhWWDJxc21MK0NJZkp5eVg2NGF3OUpyU2kvVG5k
YlNzZUxjVEFSZ1grQw0Kd3BtV016YzZYTVhhZFpEdmdONVMvamJNdS9nV0FlWlA5Rll0WkZSaDZ6
dEJ4bVc0a1Y2dDhkVEp2amhNTmpUVQ0Kb3JIWnpzeGN5dWtFR1RUUTFQVHVLd2l5Y0FMMCtGY0xL
YkZZV3haM0N5cUErVisxUWwyTmtVdjhjRmdhSTZmVg0Kc3owWUhabDNlYjNOY2pnaEJyNzdPUDhU
SGFONEpodmVEbDRxZm8zNmJQZ1Roc2xLUlJwL2hOYWltZk50VFRxcA0KQWlMaEdqcGRKYjFiU2R5
UFd5QWJoRUxwbTNtSWZVeWp4eHlZYmsxMkZaUmlMQUZyRmlzNUl1aE1aRmtGWHFvPQ0KPXlkWlAN
Ci0tLS0tRU5EIFBHUCBTSUdOQVRVUkUtLS0tLQ0K

------=_Part_2836_153818840.1765197671790--

