Received: (qmail 9542 invoked by uid 550); 23 Oct 2025 16:02:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 7464 invoked from network); 23 Oct 2025 09:57:21 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=powerdns.com; h=
	cc:content-type:content-type:date:from:from:message-id
	:mime-version:reply-to:subject:subject:to:to; s=s1dus; bh=Z9wmJA
	UFJIiLgZEfRXxaN/CYSHMCGkxGEFCUZePSbE8=; b=IPVPo+q2dtxOrRAzk5xVUI
	OtFc0KqS5SHIvCfrpu3QbjzuuUsUb2JHi0qYizJS6zU6UMy2FmWdIIZ1OyppGsk1
	LJLgkJM478Hz7teB6HeeXfEpRPtysxDTP6DewyLbqGNzFxe+1Mjj0emtyCYSvlB/
	dEe9Bm231b2+SGynqH5U+UqpNtdG2exS2hJMWoQwA2MrYanddG2v7n04R5YjtRqU
	oBRTshwtMJQGfTsZyPOIkcFqrOcasYOqT3lnKtPkzk26by0pG8D7A2Ewgw/4mhD9
	b35CfCW9FDYDD5+zcYqwiEUgUO5ghm8weVPUygpLSM64fe+sN8xVPRCvmTcWzCcQ
	==
Date: Thu, 23 Oct 2025 11:57:10 +0200 (CEST)
From: Otto Moerbeek <otto.moerbeek@powerdns.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Message-ID: <1576969917.26630.1761213430738@appsuite.open-xchange.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_26629_814074964.1761213430737"
X-Priority: 3
Importance: Normal
X-Mailer: Open-Xchange Mailer v7.10.6-Rev83
X-Originating-Client: open-xchange-appsuite
Subject: [oss-security] PowerDNS Security Advisory 2025-06: Crafted delegations or IP
 fragments can poison cached delegations in Recursor

------=_Part_26629_814074964.1761213430737
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

   We have released PowerDNS Recursor 5.1.8, 5.2.6 and 5.3.1.

   These releases fix PowerDNS Security Advisory 2025-06: Crafted
   delegations or IP fragments can poison cached delegations in Recursor:
     __________________________________________________________________

    PowerDNS Security Advisory 2025-06: Crafted delegations or IP fragments can
    poison cached delegations in Recursor

   CVE: CVE-2025-59023
   Date: 15th October 2025
   Affects: PowerDNS Recursor up to and including 5.1.7, 5.2.5 and 5.3.0
   Not affected: PowerDNS Recursor 5.1.8, 5.2.6 and 5.3.1
   Severity: High
   Impact: Cache pollution
   Exploit: This problem can be triggered by an attacker spoofing crafted
   delegations
   Risk of system compromise: None
   Solution: Upgrade to patched version

   CVSS Score: 8.2, see
   https://nvd.nist.gov/vuln-metrics/cvss/v3-calculator?vector=AV:N/AC:L/P
   R:N/UI:N/S:U/C:N/I:H/A:L&version=3.1[1]

   CVE: CVE-2025-59024
   Date: 15th October 2025
   Affects: PowerDNS Recursor up to and including 5.1.7, 5.2.5 and 5.3.0
   Not affected: PowerDNS Recursor 5.1.8, 5.2.6 and 5.3.1
   Severity: Medium
   Impact: Cache pollution
   Exploit: This problem can be triggered by an attacker using an UDP IP
   fragments attack
   Risk of system compromise: None
   Solution: Upgrade to patched version

   CVSS Score: 6.5 see
   https://nvd.nist.gov/vuln-metrics/cvss/v3-calculator?vector=AV:N/AC:H/P
   R:N/UI:N/S:U/C:N/I:H/A:L&version=3.1[2]

   It has been brought to our attention that the Recursor does not apply
   strict enough validation of received delegation information. The
   malicious delegation information can be sent by an attacker spoofing
   packets.

   The updated versions of the Recursor apply strict validation of the
   received delegation information from authoritative servers. In versions
   5.2.6 and 5.3.1 the already existing validations are tightened further,
   while version 5.1.8 contains a full backport of the strict validations.
   Note that other vendors will release updated software to fix similar
   issues as well.

   Please refer to the changelogs  (5.1.8[3], 5.2.6[4] and 5.3.1[5]) for
   additional details

   Please send us all feedback and issues you might have via the mailing
   list[6], or in case of a bug, via GitHub[7].

   The tarballs (5.1.8[8], 5.2.6[9], 5.3.1[10]) (with signature files
   5.1.8[11], 5.2.6[12], 5.3.1[13]) are available from our
   download server[14] and packages for several distributions are
   available from our repository[15].

   Recently we made changes to our Open Source End of Life policy. Older
   release trains are now supported for one year after the following major
   release. Consult the EOL policy[16] for more details.

   We are grateful to the PowerDNS community for the reporting of bugs,
   issues, feature requests, and especially to the submitters of fixes and
   implementations of features.

References

   1. https://nvd.nist.gov/vuln-metrics/cvss/v3-calculator?vector=AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:H/A:L&version=3.1
   2. https://nvd.nist.gov/vuln-metrics/cvss/v3-calculator?vector=AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:H/A:L&version=3.1
   3. https://doc.powerdns.com/recursor/changelog/5.1.html#change-5.1.8
   4. https://doc.powerdns.com/recursor/changelog/5.2.html#change-5.2.6
   5. https://doc.powerdns.com/recursor/changelog/5.3.html#change-5.3.1
   6. https://mailman.powerdns.com/mailman/listinfo/pdns-users
   7. https://github.com/PowerDNS/pdns/issues/new/choose
   8. https://downloads.powerdns.com/releases/pdns-recursor-5.1.8.tar.bz2
   9. https://downloads.powerdns.com/releases/pdns-recursor-5.2.6.tar.bz2
  10. https://downloads.powerdns.com/releases/pdns-recursor-5.3.1.tar.xz
  11. https://downloads.powerdns.com/releases/pdns-recursor-5.1.8.tar.bz2.sig
  12. https://downloads.powerdns.com/releases/pdns-recursor-5.2.6.tar.bz2.sig
  13. https://downloads.powerdns.com/releases/pdns-recursor-5.3.1.tar.xz.sig
  14. https://downloads.powerdns.com/releases/
  15. https://repo.powerdns.com/
  16. https://docs.powerdns.com/recursor/appendices/EOL.html


--

kind regards,
Otto Moerbeek
Developer PowerDNS


Phone: +49 2761 75252 00 Fax: +49 2761 75252 30
Email: otto.moerbeek@open-xchange.com


-------------------------------------------------------------------------------------
Open-Xchange AG, Hohenzollernring 72, 50672 Cologne, District Court Cologne HRB 95366
Managing Board: Andreas Gauger, Dirk Valbert
Chairman of the Board: Dr. Paul-Josef Patt

PowerDNS.com B.V., Koninginnegracht 5, 2514 AA Den Haag, The Netherlands
Managing Director: Robert Brandt
-------------------------------------------------------------------------------------
------=_Part_26629_814074964.1761213430737
Content-Type: application/pgp-signature; name=signature.asc
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename=signature.asc
X-Part-Id: 3c3d4728650a4574b812b73245e232c8

LS0tLS1CRUdJTiBQR1AgU0lHTkFUVVJFLS0tLS0NClZlcnNpb246IEJDUEcgdjEuNjUNCg0KaVFF
Y0JBQUJDZ0FHQlFKbytNb0NBQW9KRU9yS3VRc1pZK3dyZitJSC8zVVFobnNBbldRUmp3cEMxTDcz
alh5Tg0KTkpURUJhTEpscitTcTdDQldRL3prQmhtRW1GUTdNdGpmN1VlV1B0cjY5VmowV1dsQXAw
QWlhZCtoSkl5RHF4WA0Kd0RHS21DZmJnR2lPUkM1THJXZUtEMlJMc09tU0c2aVpDSHJJdWVWb21z
amg2WThUVXczV2JJZi9NK2NneE1xTQ0KSy9BckNHZHN6bkZOeUFzS0VXblE1L0JWdGJUak5Xdkpw
ZFFxZGtOVnBIQkJwd2VsOE5yYVdwM01WQ0JPdFpvSg0KL2xFOTk0bDVNNlM3djR3TGFNMXZiVWlW
UFBIUTBzZE5JN2tjSEVTV1Zhcmk3eGJRL1R2MTJKTVVxTi9ZbVhmMw0KZStoTXcvMmRYNGVUQzdS
Y054Uzc2WWdpWTJ3a2RFWmxhT1VvdWJNbUpmK3N2Mnd0dDJVeUNJbWdJbGVMNTJnPQ0KPStZR3oN
Ci0tLS0tRU5EIFBHUCBTSUdOQVRVUkUtLS0tLQ0K

------=_Part_26629_814074964.1761213430737--

