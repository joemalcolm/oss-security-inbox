Received: (qmail 12058 invoked by uid 550); 10 Feb 2026 10:58:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 27953 invoked from network); 10 Feb 2026 10:47:32 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=powerdns.com; h=
	cc:content-type:content-type:date:from:from:message-id
	:mime-version:reply-to:subject:subject:to:to; s=s1dus; bh=KXUTDq
	x5SDoU59jlZWFIGyPdXDXdVIc6jkg7nshQRyo=; b=ZBW6N7VkvPqfOVyFGqLIXX
	iXgogY/RtHaYdGNEJK2yAQWwwg6M7OfufspyMIJ2ONmrYtFuXx7Prifnj71TR24N
	b3o7nlN6GmhZAj9ONJvZ3MIBoAy+6phOd2fuc3vFCG36X4NMihbez3skMyqwC/oQ
	4ZpFVw3R5Luz2HdIZDtT1eSEBPv+sj4JghXoBm/Z8TGQ3ARCLAqQ6VnpiJjCmDNJ
	i3kAZmTgXSuwCNJtR67NOb0yNokWhAhjzirYl+oeH9lRl73UPCto60PXKHzrHaCa
	a6VDjlVFxq6n4Ha11UQKGwklJxjXV5KLV3izGMOUFvMW7AGtWbqiD8lbOG6bWR9A
	==
Date: Tue, 10 Feb 2026 11:47:21 +0100 (CET)
From: Otto Moerbeek <otto.moerbeek@powerdns.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Message-ID: <2039257248.5426.1770720441152@appsuite.open-xchange.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_5425_591158110.1770720441151"
X-Priority: 3
Importance: Normal
X-Mailer: Open-Xchange Mailer v8.45.65
X-Originating-Client: open-xchange-appsuite
Subject: [oss-security] PowerDNS Security Advisory 2026-01: Crafted zones can lead to
 increased resource usage in Recursor

------=_Part_5425_591158110.1770720441151
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

   We have released PowerDNS Recursor 5.1.10, 5.2.8 and 5.3.5.

   These releases fix a PowerDNS Security Advisory

     * 2026-01: Crafted zones can lead to increased resource usage in
       Recursor

   There are two CVEs associated with this advisory, both of severity
   Medium.
     __________________________________________________________________

     * CVE: CVE-2026-24027
     * Date: 9th February 2026
     * Affects: PowerDNS Recursor up and including to 5.1.9, 5.2.7 and
       5.3.4
     * Not affected: PowerDNS Recursor 5.1.10, 5.2.8 and 5.3.5
     * Severity: Medium
     * Impact: Denial of Service
     * Exploit: This problem can be triggered by publishing and querying a
       crafted zone that causes increased incoming network traffic.
     * Risk of system compromise: None
     * Solution: Upgrade to patched version

   CVSS Score: 5.3, see
   https://nvd.nist.gov/vuln-metrics/cvss/v3-calculator?vector=AV:N/AC:L/P
   R:N/UI:N/S:U/C:N/I:N/A:L&version=3.1[1]

   The remedy is: upgrade to a patched version.

   We would like to thank Shuhan Zhang from Tsinghua University for
   bringing this issue to our attention.
     * CVE: CVE-2026-0398
     * Date: 9th February 2026
     * Affects: PowerDNS Recursor up and including to 5.1.9, 5.2.7 and
       5.3.4
     * Not affected: PowerDNS Recursor 5.1.10, 5.2.8 and 5.3.5
     * Severity: Medium
     * Impact: Denial of Service
     * Exploit: This problem can be triggered by publishing and querying a
       crafted zone that causes large memory usage.
     * Risk of system compromise: None
     * Solution: Upgrade to patched version

   CVSS Score: 5.3, see
   https://nvd.nist.gov/vuln-metrics/cvss/v3-calculator?vector=AV:N/AC:L/P
   R:N/UI:N/S:U/C:N/I:N/A:L&version=3.1[2]

   The remedy is: upgrade to a patched version.

   We would like to thank Yufan You from Tsinghua University for bringing
   this issue to our attention.

   We would also like to thank TaoFei Guo from Peking University and Yang
   Luo, JianJun Chen from Tsinghua University for bringing an issue of
   caching irrelevant records related to CNAME chains to our attention.
     __________________________________________________________________

   Please refer to the changelogs  (5.1.10[3], 5.2.8[4] and 5.3.5[5]) for
   additional details

   Please send us all feedback and issues you might have via the mailing
   list[6], or in case of a bug, via GitHub[7].

   The tarballs (5.1.10[8], 5.2.8[9], 5.3.5[10]) (with signature files
   5.1.10[11], 5.2.8[12], 5.3.5[13]) are available from our
   download server[14] and packages for several distributions are
   available from our repository[15].

   At the moment of writing, the patches[16] are not incorporated yet in
   the public github repository. There has been a delay in the process to
   transfer them from our private repository (where they were developed)
   to the public repository.

   Recently we made changes to our Open Source End of Life policy. Older
   release trains are now supported for one year after the following major
   release. Consult the EOL policy[17] for more details.

   We are grateful to the PowerDNS community for the reporting of bugs,
   issues, feature requests, and especially to the submitters of fixes and
   implementations of features.

References

   1. https://nvd.nist.gov/vuln-metrics/cvss/v3-calculator?vector=AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:L&version=3.1
   2. https://nvd.nist.gov/vuln-metrics/cvss/v3-calculator?vector=AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:L&version=3.1
   3. https://doc.powerdns.com/recursor/changelog/5.1.html#change-5.1.10
   4. https://doc.powerdns.com/recursor/changelog/5.2.html#change-5.2.8
   5. https://doc.powerdns.com/recursor/changelog/5.3.html#change-5.3.5
   6. https://mailman.powerdns.com/mailman/listinfo/pdns-users
   7. https://github.com/PowerDNS/pdns/issues/new/choose
   8. https://downloads.powerdns.com/releases/pdns-recursor-5.1.10.tar.bz2
   9. https://downloads.powerdns.com/releases/pdns-recursor-5.2.8.tar.bz2
  10. https://downloads.powerdns.com/releases/pdns-recursor-5.3.5.tar.xz
  11. https://downloads.powerdns.com/releases/pdns-recursor-5.1.10.tar.bz2.sig
  12. https://downloads.powerdns.com/releases/pdns-recursor-5.2.8.tar.bz2.sig
  13. https://downloads.powerdns.com/releases/pdns-recursor-5.3.5.tar.xz.sig
  14. https://downloads.powerdns.com/releases/
  15. https://repo.powerdns.com/
  16. https://downloads.powerdns.com/patches/2026-01/
  17. https://docs.powerdns.com/recursor/appendices/EOL.html
------=_Part_5425_591158110.1770720441151
Content-Type: application/pgp-signature; name=signature.asc
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename=signature.asc
X-Part-Id: 6ee41872bd31467c837fdc9a700e2356

LS0tLS1CRUdJTiBQR1AgU0lHTkFUVVJFLS0tLS0NClZlcnNpb246IEJDUEcgdjEuNzkNCg0KaVFF
Y0JBQUJDZ0FHQllKcGllVnZBQW9KRU9yS3VRc1pZK3dyWTE4SC8xaGRkMXY4WFd1YVpKZEwzWXVv
Tm44SQ0KZDdQVVQ4QVdGOFRFWUJiNDV3VVdKUEtNVzhCOGtHNDRzT28wNWJia0N5S2V3ckpBbktC
WFZkc2gzakdKOFpYdA0KaDc2QnVNMFFRZ1pJTUIxYkNBUTN2Wmk1WUhxQzJhTlVvVG1vWC9UczMx
Z0xGZkxyVEt4K1RQcks4QzNGaVlVWQ0KU0RRZE5JQm1SRWFxWXcwanFRdWN6MXZYQjBQbmV3Ykdn
aVVrQXRzT2laNFgvNXM2M1RxZ1ZaZnRzd2t2eVRKZA0KTVhuZFVDZzgzMUk3bW5WM0drVnVBNE1m
VGFFYWZWWUZXNnZ4TCtabm1GLzRVUHB3NmFjTXdocnZ0d2dBZEZwNQ0KYmpHcGQ2Vnhoam92WHBl
bW0yd21QZ0V1ZEVIdzhIMVpNcFl4SHNPVzlHRFlhVjFDZ3ByWFRBY3lDVW8rU1Y4PQ0KPURnenoN
Ci0tLS0tRU5EIFBHUCBTSUdOQVRVUkUtLS0tLQ0K

------=_Part_5425_591158110.1770720441151--

