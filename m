Received: (qmail 3257 invoked by uid 550); 7 Apr 2025 14:01:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 18414 invoked from network); 7 Apr 2025 12:57:56 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=powerdns.com; h=
	cc:content-type:content-type:date:from:from:message-id
	:mime-version:reply-to:subject:subject:to:to; s=s1dus; bh=S387mD
	eTvkYoaOAd0suGQwxrOLaMu2KqU9Ange8C8sA=; b=aQf3q/7iYKEkXd1hNZGyST
	FsYiOsS3D7jSc1IQjkNu2aq0L1hZ5dzli+zUXrslUU+DBqwfhyLBCleCwH4s1B17
	H96Kp0+rnFxnP7An+A3+qkQshsAgs+XqnaqFF48n+WKlGXj2naJc75YEkG3gikmv
	K5DjwPTV+4yN8A5rOyu61xeIX4xk3NZKdZi6UV6zr+lZ6M7uT8FHHod01R2mgqYf
	BbzEKuVTgQnMsDgRawt22hl2/MarfTmNrqVsQI4tiOxFH3TpdNXI51y3FMTASv1e
	X8Kflv8iBV0vBP2Wuw68Rwaw3uaUK54BxYfUbw6/UytoHwSssMrTcNEFLyzwbdcQ
	==
Date: Mon, 7 Apr 2025 14:57:46 +0200 (CEST)
From: Otto Moerbeek <otto.moerbeek@powerdns.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Message-ID: <1544949953.9045.1744030666169@appsuite.open-xchange.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_9044_248662008.1744030666169"
X-Priority: 3
Importance: Normal
X-Mailer: Open-Xchange Mailer v7.10.6-Rev75
X-Originating-Client: open-xchange-appsuite
Subject: [oss-security] PowerDNS Recursor Security Advisory 2025-01 regarding PowerDNS
 Recusor 5.2.0

------=_Part_9044_248662008.1744030666169
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

   Today we have released PowerDNS Recursor 5.2.1.

   This release fixes PowerDNS Security Advisory 2025-01: A crafted zone
   can lead to an illegal memory access in the Recursor. This advisory is
   also published here[1].


     __________________________________________________________________

   PowerDNS Security Advisory 2025-01: A crafted zone can lead to an illegal
   memory access in the Recursor

   CVE: CVE-2025-30195
   Date: 7th of April 2025.
   Affects: PowerDNS Recursor 5.2.0
   Not affected: PowerDNS Recursor 5.2.1 and versions before 5.2.0
   Severity: High
   Impact: Denial of service
   Exploit: This problem can be triggered by an attacker publishing a
   crafted zone
   Risk of system compromise: None
   Solution: Upgrade to patched version

   An attacker can publish a zone containing specific Resource Record
   Sets. Processing and caching results for these sets can lead to an
   illegal memory access and crash of the Recursor, causing a denial of
   service.

   CVSS Score: 7.5, see
   https://nvd.nist.gov/vuln-metrics/cvss/v3-calculator?vector=AV:N/AC:L/P
   R:N/UI:N/S:U/C:N/I:N/A:H&version=3.1[2]

   The remedy is: upgrade to the patched 5.2.1 version.

   We would like to thank Volodymyr Ilyin for bringing this issue to our
   attention.
     __________________________________________________________________

   Please refer to the changelog [3]and upgrade guide[4] for additional
   details.

   Please send us all feedback and issues you might have via the mailing
   list[5], or in case of a bug, via GitHub[6].

   The tarball[7] (with signature file[8]) is available from our
   download server[9] and packages for several distributions are available
   from our repository[10].

   We are grateful to the PowerDNS community for the reporting of bugs,
   issues, feature requests, and especially to the submitters of fixes and
   implementations of features.

References

   1. https://docs.powerdns.com/recursor/security-advisories/powerdns-advisory-2025-01.html
   2. https://nvd.nist.gov/vuln-metrics/cvss/v3-calculator?vector=AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H&version=3.1
   3. https://doc.powerdns.com/recursor/changelog/5.2.html#change-5.2.1
   4. https://docs.powerdns.com/recursor/upgrade.html
   5. https://mailman.powerdns.com/mailman/listinfo/pdns-users
   6. https://github.com/PowerDNS/pdns/issues/new/choose
   7. https://downloads.powerdns.com/releases/pdns-recursor-5.2.1.tar.bz2
   8. https://downloads.powerdns.com/releases/pdns-recursor-5.2.1.tar.bz2.sig
   9. https://downloads.powerdns.com/releases/
  10. https://repo.powerdns.com/


--

kind regards,
Otto Moerbeek
Senior Developer PowerDNS


Phone: +49 2761 75252 00 Fax: +49 2761 75252 30
Email: otto.moerbeek@open-xchange.com


-------------------------------------------------------------------------------------
Open-Xchange AG, Hohenzollernring 72, 50672 Cologne, District Court Cologne HRB 95366
Managing Board: Andreas Gauger, Dirk Valbert, Frank Hoberg, Stephan Martin
Chairman of the Board: Dr. Paul-Josef Patt

PowerDNS.COM BV, Koninginnegracht 5, 2514 AA Den Haag, The Netherlands
Managing Director: Robert Brandt
-------------------------------------------------------------------------------------
------=_Part_9044_248662008.1744030666169
Content-Type: application/pgp-signature; name=signature.asc
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename=signature.asc
X-Part-Id: 338e9b021e1047a4a99d1dfa0bf288f9

LS0tLS1CRUdJTiBQR1AgU0lHTkFUVVJFLS0tLS0NClZlcnNpb246IEJDUEcgdjEuNjUNCg0KaVFF
Y0JBQUJDZ0FHQlFKbjg4dEZBQW9KRU9yS3VRc1pZK3dyZUNrSC9pdFpIQXBObzlGeWFVVGhVcUVQ
b0pvRw0KdGJrWHZaeGJUbFVOZkJOQUlxM3R4TC84T1NJQ2x5T3ZaVUxMMVFsYm9EZHdjOFRhOWY5
VTdnNFZJRFBSeVo1bQ0KNllibm9WTGZCbU85NVF0bmxqL3RBQWl5VDNDWDVNVXFMbTdneHVWZkF2
czQvVUsveDEwMlhUK05OREgxM1hUQg0Kd0ZTY0M4QkFHWklSK0ZKZGR0Sno0SnhJNXdPeldJVGRD
Q0x5ME1uTFhsMzJ4U2hFakluRUFQd0ZrWHg3WEZwWg0KQW8zQnRyME5uQkV2eVZWWVRGQS83SFlY
cDFVNDRXUkpNWDRXaHV1Nmlxd1MwM3BzRmJRTUMwdHhHYXVId3ViSg0KeG9yWkhYT0wzNHdXQnln
RTlUYng3OU5WT3VCVE9zS0tSSDh5SVdNQWJ0L0dhSzFORkhia2ZDZjd2cFB6VTVRPQ0KPXZOQysN
Ci0tLS0tRU5EIFBHUCBTSUdOQVRVUkUtLS0tLQ0K

------=_Part_9044_248662008.1744030666169--

