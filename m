X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1577" "Friday" "30" "December" "2016" "12:57:19" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<b45e0575bb6e4d4d820c28b90e946018@imshyb02.MITRE.ORG>" "39" "[oss-security] Re: Linux Kernel use-after-free in SCSI generic device interface" nil nil nil "12" "2016123017:57:19" "[oss-security] Re: Linux Kernel use-after-free in SCSI generic device interface" (number mark "U       cve-assign@m Dec 30   39/1577  " thread-indent "\"[oss-security] Re: Linux Kernel use-after-free in SCSI generic device interface\"\n") "<20161230134600.vva3eii4zfzm3r3d@eldamar.local>" ("<20161230134600.vva3eii4zfzm3r3d@eldamar.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 31975 invoked by uid 550); 30 Dec 2016 17:57:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31946 invoked from network); 30 Dec 2016 17:57:32 -0000
From: <cve-assign@mitre.org>
To: <carnil@debian.org>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>,
	<benh@debian.org>, <meissner@suse.de>
In-Reply-To: <20161230134600.vva3eii4zfzm3r3d@eldamar.local>
Message-ID: <b45e0575bb6e4d4d820c28b90e946018@imshyb02.MITRE.ORG>
Date: Fri, 30 Dec 2016 12:57:19 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: Linux Kernel use-after-free in SCSI generic device interface

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

>> Linus has committed a fix for this to mainline:
>>
>> commit a0ac402cfcdc904f9772e1762b3fda112dcc56a0

> whilst the originally identified
> commit does partly address the issue, the completed fix for the sg and
> bsg driver appears to be 128394eff343fc6d2f32172f03e24829539c5835.

Use CVE-2016-10088 for the vulnerability that remains after
a0ac402cfcdc904f9772e1762b3fda112dcc56a0.

The a0ac402cfcdc904f9772e1762b3fda112dcc56a0 code change is in 4.8.14,
but the 128394eff343fc6d2f32172f03e24829539c5835 code change is not.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYZp9JAAoJEHb/MwWLVhi2fIIP/RHrAePUQrejGdzGBsGEVGEr
eU0RWwNYthutvvKOV0L96oOdLjbjkptp3Q4CWdcny1F39G7e2r7kgt0isSsnveJu
TubQ87XWPslY0jzooSGhreGoPB31pmueFZDuVt0f1eYGwXQdWCRH9z59jPyOFQaV
CLVekCk5ms1pfvhKbNig6YEuuqSD6RSqEcDw3c4SwAuD/rzxwQtElOP7xo3YlH+z
tho/AngjFq7hVvzpNfOP75rPHWS0TTatMYyr8NqOTZI+6WukwvC3uXGT21lKzD8J
rzH8sJ7Hv+p/I2gUDCzINcQ9BdzT0uu3la5KbdhCxjZbkMH24sZ1M4IflzxnzwiQ
HZicaQMG7RY4Q/QRDBnssI7LSFxKhZ/puh7gRsCHtRexEUQy3veGNFfTOyga/TgB
5ITNA0g6Y0AFIQS2B2eF5+4g+A21LryqZhsBJP4C8knVae9MwaRgnJ0qdAc/MObc
s1Oxx63jJbd2wqHO0ybTPG41CnUuBNIVB90HGwLPDw0o06IZq1S7vbG/X/IkVfxC
PtE8fwNCKpR1GW8n7sPTWDMrs7qMHfxKp8ES0u+HXW2cs6jcz4CJigMfDj+uQHO0
uJJYwROyfO07RV9MS1R4+kpHq/5XrEx7ka/YjSwMulIHdALJjBSpL3sipOTzNrxa
lxseS32rE8umc+Pgz32C
=9EjT
-----END PGP SIGNATURE-----
