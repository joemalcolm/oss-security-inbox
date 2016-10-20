X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1896" "Thursday" "20" "October" "2016" "12:27:15" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20161020162715.3B981B2E004@smtpvbsrv1.mitre.org>" "45" "[oss-security] Re: CVE Request - Portable UPnP SDK 1.6.19 through 1.8.x" nil nil nil "10" "2016102016:27:15" "[oss-security] Re: CVE Request - Portable UPnP SDK 1.6.19 through 1.8.x" (number mark "U       cve-assign@m Oct 20   45/1896  " thread-indent "\"[oss-security] Re: CVE Request - Portable UPnP SDK 1.6.19 through 1.8.x\"\n") "<CAJ+owFsAGn7MJt+DWtLSwMkUrEqGWj0X2To+De3UaU6DjYqQ-w@mail.gmail.com>" ("<CAJ+owFsAGn7MJt+DWtLSwMkUrEqGWj0X2To+De3UaU6DjYqQ-w@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 12022 invoked by uid 550); 20 Oct 2016 16:27:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11998 invoked from network); 20 Oct 2016 16:27:27 -0000
From: cve-assign@mitre.org
To: scott.tenaglia@invincea.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <CAJ+owFsAGn7MJt+DWtLSwMkUrEqGWj0X2To+De3UaU6DjYqQ-w@mail.gmail.com>
Message-Id: <20161020162715.3B981B2E004@smtpvbsrv1.mitre.org>
Date: Thu, 20 Oct 2016 12:27:15 -0400 (EDT)
Subject: [oss-security] Re: CVE Request - Portable UPnP SDK 1.6.19 through 1.8.x

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://sourceforge.net/p/pupnp/bugs/133/

>   parse_uri( &out->URLs[i + 1], URLS->size - i + 1,
>              &out->parsedURLs[URLcount] )

This seems to be a CWE-372 ("Incomplete Internal State Distinction")
issue in which the code expected to be in a state where it was
operating on a set of validated URIs from a CALLBACK header, but
actually was in a state where it was operating on a set of all URIs
from a CALLBACK header. A validation step occurs for every URI, and
the amount of memory allocated is correct for the set of validated
URIs, but there is simply no data model for the set of validated URIs.
(Conceivably, the set of validated URIs could be in its own array, or
each URI in the original array could have a flag indicating whether it
was valid.)

Use CVE-2016-8863.

As mentioned, this has a resultant heap buffer overflow.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYCO/sAAoJEHb/MwWLVhi2WxMP/iE4erxSoRjKIE42RHEoeGq2
UDy+y+B9Sf/xK0zWtZGB06Mmkli+v7SLKOkWK7oWHJ4tQa4NXCvKbzwfLbyX3jDZ
Ul7IE42LFCti/bJqb1qQwqjM/LzMtOSloofBI5pMocYkBKnjaLq1PwRGDTKzyVEN
7Hs8LhzkUsqDdr4z5bk1NhDNhBHDg+4pIJ91rFrqkL06bWIsUAnfUJmWE7wWGWGp
XePAkR+yOkvOpsgdWPFmaUNU3t7iPkRhw/P24O8QG+So39z5DVts4IHYoOQHmIa5
OtNKauWUxLMIOkUneZbWEazLrrglKGoG0VJzqXpNDAXciRPd6DNQ3GueJjthBkoG
LrfsoTdUrpGA+q33DipHxg2Aj+OaN/LUQ1n+mYE09k3Iy+4OHN7xZ9VWUWirYkDL
/JODFta8VX3BsMGFjUwNsICaxJm/kARxY72A7mKvJsEZ6Jow4seIIgzmFiBPqzPC
ErcnxLIvbJOiy9jw0hP3qGH5I/5N1h+7ViUqS97mOy4MySgVs1kKtU+ZVpL4h1PK
7smULHLCAKKLqpJS8smcd08ZmetYtB4s3ccPM0Yn7vQKRI92mCRgTpJh5IhqSmiZ
IoesKUf10Ml+xx/DR5WEEZ4ACHn+Q7nUzMhobzHWQbG0NdXzUWXdWZQdkmS2NBfH
1shVmylDTkJ5tLBQwHmM
=WKq1
-----END PGP SIGNATURE-----
