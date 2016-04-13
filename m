X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2013" "Wednesday" "13" "April" "2016" "09:46:14" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160413134614.8D19C332076@smtpvbsrv1.mitre.org>" "48" "[oss-security] Re: Infinite loops parsing malicious DER certificates in libtasn1 4.7" "^Cc:" nil nil "4" "2016041313:46:14" "[oss-security] Re: Infinite loops parsing malicious DER certificates in libtasn1 4.7" (number mark "        cve-assign@m Apr 13   48/2013  " thread-indent "\"[oss-security] Re: Infinite loops parsing malicious DER certificates in libtasn1 4.7\"\n") "<CFA7B491-4950-4B93-A00D-AD33B7EDD420@trust-in-soft.com>" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 22294 invoked by uid 550); 13 Apr 2016 13:46:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22190 invoked from network); 13 Apr 2016 13:46:26 -0000
In-Reply-To: <CFA7B491-4950-4B93-A00D-AD33B7EDD420@trust-in-soft.com>
Message-Id: <20160413134614.8D19C332076@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Wed, 13 Apr 2016 09:46:14 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Infinite loops parsing malicious DER certificates in libtasn1 4.7
To: cuoq@trust-in-soft.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> The libtasn1 library, in its 4.7 version, can loop for a long time or
> indefinitely when it is used to parse DER representations of X509
> certificates, leading to a denial of service. Some of these loops may
> in addition increase heap or stack usage, leading to more issues.
> 
> These issues were found by Pascal Cuoq and Miod Vallat using american
> fuzzy lop. They are fixed in libtasn1 version 4.8. ...
> http://ftp.gnu.org/gnu/libtasn1/libtasn1-4.8.tar.gz

We can assign a CVE ID for this entry in the libtasn1-4.8.tar.gz NEWS
file:

  Noteworthy changes in release 4.8 (released 2016-04-11) [stable]

  Fixes to avoid an infinite recursion when decoding without
  the ASN1_DECODE_FLAG_STRICT_DER flag. Reported by Pascal Cuoq.

Use CVE-2016-4008.

If there were unrelated problems that needed to be resolved with a
different solution approach (e.g., an infinite "while" loop within one
function) and require any additional CVE IDs, please let us know.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXDk1DAAoJEL54rhJi8gl5wEsP/i8eqMazPJysJYMWPBXtBGtG
SnJ1GT00Dm44hRCxq9S+zgn5H8Eb+jQ5rmqv6BLxos3ZbZzLODBD3Z3qh/NJpKhJ
E7eBHOKo/+3PdDAZoulYMZCOrdPel/Ro0R2dM1EsvY30nYsGr8MHZGt+mpi6tBww
cnseL43mxodK37cOa2UtERoLZ80VEjg8zcJOuXN8P8rLBVSxOhEo/4QxNkUZ58UX
dwB/VikBnbyYwlVBd0Z736/snSZC0mFC/QeQhTw5eO5b93g2zPsJAkhyCwNwcEXe
KdbyAJB//x4SUJR7UyAzXnI6VQT0AHUMSkHpd3tQPtJY9DdVmxOOBBG53kApg/My
cfAVn/yEIJtpLRdCaeooyKdE6RgzbS8UMP1Bh7Aki1kbr+tyXU1bA6sUwkYcXL0C
973xz5f3g1hNdfcUGzLTjUNxsVmD1bjUy13HAikfUAh4G12kDVjJZRpV2Uug/yMQ
t+tHTAho5VRnYOxz/Jt8hYHCoy47gX4e/l4E2z63TJO3uARlgvx84H51VO13irRf
ust0bks3yrY60GXStuIXEIwL6sRiS3vJhQLOHY3uRF/piDuVIlUMfYmEVtcJ0TAW
HpXQeeGNrkUoGhpLJTSywU1ahnADbRYgr524OB1ClE0aPIKhADNj6+oeDaofREJ/
w1qcvLfEUel2zWryIKeg
=cjc1
-----END PGP SIGNATURE-----
