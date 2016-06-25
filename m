X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2069" "Saturday" "25" "June" "2016" "05:45:38" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160625094538.ADFB7332009@smtpvbsrv1.mitre.org>" "51" "[oss-security] Re: Fwd: out-of-bounds read in MagickCore/property.c:1396 could lead to memory leak/ Integer overflow read to RCE - ImageMagick" nil nil nil "6" "2016062509:45:38" "[oss-security] Re: Fwd: out-of-bounds read in MagickCore/property.c:1396 could lead to memory leak/ Integer overflow read to RCE - ImageMagick" (number mark "U       cve-assign@m Jun 25   51/2069  " thread-indent "\"[oss-security] Re: Fwd: out-of-bounds read in MagickCore/property.c:1396 could lead to memory leak/ Integer overflow read to RCE - ImageMagick\"\n") "<B08B9FA8-E745-4327-B7D5-7A67648D3F58@gmail.com>" ("<B08B9FA8-E745-4327-B7D5-7A67648D3F58@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19836 invoked by uid 550); 25 Jun 2016 09:45:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19815 invoked from network); 25 Jun 2016 09:45:50 -0000
From: cve-assign@mitre.org
To: i.elsayed92@gmail.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <B08B9FA8-E745-4327-B7D5-7A67648D3F58@gmail.com>
Message-Id: <20160625094538.ADFB7332009@smtpvbsrv1.mitre.org>
Date: Sat, 25 Jun 2016 05:45:38 -0400 (EDT)
Subject: [oss-security] Re: Fwd: out-of-bounds read in MagickCore/property.c:1396 could lead to memory leak/ Integer overflow read to RCE - ImageMagick

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> two bugs to ImageMagick
> 
> https://github.com/ImageMagick/ImageMagick/commit/d8ab7f046587f2e9f734b687ba7e6e10147c294b

> an integer overflow that might lead to remote code execution.
> 
> https://github.com/ImageMagick/ImageMagick/blob/master/MagickCore/profile.c#L2025
> 
> An integer overflow occurs in this comparison because number_bytes is a
> very large number like (0xFFFFFFFFFFFFFF87) and when we add offset to
> it which we control we can overflow and the result is < length so we
> pass this if condition.

Use CVE-2016-5841.


> MagickCore/property.c:1401 format=(size_t) ReadPropertyUnsignedShort(endian,q+2);
> MagickCore/property.c:1404 components=(ssize_t) ReadPropertySignedLong(endian,q+4);
> MagickCore/property.c:1382 number_entries=(size_t) ReadPropertyUnsignedShort(endian,directory);
> MagickCore/property.c:1396 q=(unsigned char *) (directory+(12*entry)+2);
> 
> we can partially control q which can be used later to read arbitrary
> data from the process of ImageMagick.

Use CVE-2016-5842.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXblIFAAoJEHb/MwWLVhi21FkP/14gsNPlpEBDcB2cDTXpbiS4
EAtByZpxwno+HY0u4DzSWDDlZbhvOofI6fEXGk6gzP0ykI6EUXMv0Ji5SBUcFZWD
N86nrfJF7in5DSbUq2So1d2Iyn/nBi8NU0eOyX5hf5Ec2yMTuDdL+IJVJNRNC7EJ
AkPfNsZcb5zAb6MqM23m9MZeKbg3ohrm0KxC8eeW5wnfpH03pYCHI9AJcuvRx0EX
kCilDdlXkKBov75dTK0X9FMW2fFqggIoWIcPqB5P37goi0oEgIEdbowoHA8qZeBX
LzKLdxVFn2DDQgMOCdgvVE08XoblpQZz/QfJY4joopzzP/4C1+ol8O4DJu12CnO4
ZrkekMyVbmMMvniRcYAzAKelccK3l8HHbyMx/o4Wqc4H52e1cnBwbqApxiyUpAJ7
PJORtlwtn8n12J0zgZDRFQRr9rpIvvdgGaggwhGckTaL+bad1etd2//2DC+2MSyQ
IDegwMBQ0UWBvcj94yMSP07umbBLmNppZKV6X5Zpjic7/UAHbg2erDiKx1nAsoz+
AWEm8PuETTDEKpEfwjgP7d32zMei8PMdx+toOSjcJG1EHh/l8u+dJeLfUB3m2/gT
fOzCRa+g0ds93GYaXIjV97wQOcvtNI/d4kmIk94eRVfq0KaViFqWKEUTHQw7VBtL
Anv/k4HPoJ5rjKGTt7g0
=EYAb
-----END PGP SIGNATURE-----
