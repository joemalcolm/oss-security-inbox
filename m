X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1486" "Monday" "15" "February" "2016" "12:23:32" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160215172332.A316442E1E3@smtpvbsrv1.mitre.org>" "38" "[oss-security] Re: CVE Request: Kamailio 4.3.4 SEAS Module Heap overflow" nil nil nil "2" "2016021517:23:32" "[oss-security] Re: CVE Request: Kamailio 4.3.4 SEAS Module Heap overflow" (number mark "U       cve-assign@m Feb 15   38/1486  " thread-indent "\"[oss-security] Re: CVE Request: Kamailio 4.3.4 SEAS Module Heap overflow\"\n") "<56C1AD6C.1030902@census-labs.com>" ("<56C1AD6C.1030902@census-labs.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11520 invoked by uid 550); 15 Feb 2016 17:24:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11492 invoked from network); 15 Feb 2016 17:24:29 -0000
From: cve-assign@mitre.org
To: stelios@census-labs.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, miconda@gmail.com, oriolc@voztele.com, jesusr@voztele.com
In-Reply-To: <56C1AD6C.1030902@census-labs.com>
Message-Id: <20160215172332.A316442E1E3@smtpvbsrv1.mitre.org>
Date: Mon, 15 Feb 2016 12:23:32 -0500 (EST)
Subject: [oss-security] Re: CVE Request: Kamailio 4.3.4 SEAS Module Heap overflow

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> a (remotely exploitable) heap overflow vulnerability was found in
> Kamailio v4.3.4. We have notified the developers and they have addressed
> this through commit:
> https://github.com/kamailio/kamailio/commit/f50c9c853e7809810099c970780c30b0765b0643

>> seas: safety check for target buffer size before copying message in encode_msg()

>> avoid buffer overflow for large SIP messages

>> modules/seas/encode_msg.c

Use CVE-2016-2385.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWwghNAAoJEL54rhJi8gl5cv4P/RRMA3ZoAj5Yju7JaOUObi6l
kUmdSs/qqg4N2oz4YXmSvZOkZTFPOsDNuFNaho7wslnd654mCWCC8yvIWOlnBOhK
tC9al/blgwVIUpPk2RwR+5H1V5iIyYRL6V7kZ/SKlpemBevSvLgIf7xvHjgCcvzU
D0qmlWcaRT7wlhrWWD6Zyxez1dMTBzuvYZBfpz4xdYVrppSdOCPbsMdH2+IzChyd
8q/MwVgdPE+9FG+UZe0qqDy7zASNsFR5kCo/A6mMjdl5XfAHTt+ANn40XtKRkawd
8i2Ob8x7tyjv2yhCAa1L/FO5eqQzTR0UcSB9toLJjSNXNqDZvWPVzh/bsW32amr1
+GGqEvv1haFyKT6jOHN5t9xQoyEEb5LstadBrRTLU6h8EDIWza1zAG/PVBPyF2pb
i1O/3NwEu7T7bdVV8y0SbqlgPtan7PxxKI4i8Q9HUdh5tnnd923DLI2IZB+lVkZe
rrSPBiBdA/biCUJkxe6nlA4LOZpbjhiTrttWG1xpSPDpPgu3HwSVvN8/meIPnNjH
6N3oxg/ZmbK5CI0RXEQ6zzoseIxiTZJdkJG5rcUxVdcs8UNMErNw7/9EumJAHdUW
EnPKqSHYFxFC7oGURwTsw0M/NgD8WFIvWj6b7qhS5ITFyhrgwytJGcp/aLK+csJt
WhelUxp3alZJF+dIhKKy
=Il5r
-----END PGP SIGNATURE-----
