X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2102" "Friday" "23" "September" "2016" "11:24:07" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160923152407.120626C54F4@smtpvmsrv1.mitre.org>" "47" "[oss-security] Re: CVE request Qemu: hw: net: Fix a heap overflow in xlnx.xps-ethernetlite" nil nil nil "9" "2016092315:24:07" "[oss-security] Re: CVE request Qemu: hw: net: Fix a heap overflow in xlnx.xps-ethernetlite" (number mark "U       cve-assign@m Sep 23   47/2102  " thread-indent "\"[oss-security] Re: CVE request Qemu: hw: net: Fix a heap overflow in xlnx.xps-ethernetlite\"\n") "<CY1PR17MB0313FFDC60CA5F5ABE1EFB90DBC80@CY1PR17MB0313.namprd17.prod.outlook.com>" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32294 invoked by uid 550); 23 Sep 2016 15:24:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32276 invoked from network); 23 Sep 2016 15:24:18 -0000
From: cve-assign@mitre.org
To: chaojianhu@hotmail.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <CY1PR17MB0313FFDC60CA5F5ABE1EFB90DBC80@CY1PR17MB0313.namprd17.prod.outlook.com>
Message-Id: <20160923152407.120626C54F4@smtpvmsrv1.mitre.org>
Date: Fri, 23 Sep 2016 11:24:07 -0400 (EDT)
Subject: [oss-security] Re: CVE request Qemu: hw: net: Fix a heap overflow in xlnx.xps-ethernetlite

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> The .receive callback of xlnx.xps-ethernetlite doesn't check the length
> of data before calling memcpy. As a result, the NetClientState object in
> heap will be overflowed. Attackers may leverage it to execute arbitrary
> code with privileges of the qemu process on the host.
> 
> https://lists.gnu.org/archive/html/qemu-devel/2016-08/msg01598.html
> https://lists.gnu.org/archive/html/qemu-devel/2016-08/msg01877.html

Yes, this was already assigned CVE-2016-7161. Other references are:

  http://git.qemu.org/?p=qemu.git;a=commit;h=a0d1cbdacff5df4ded16b753b38fdd9da6092968
  http://patchwork.ozlabs.org/patch/657076/

>> I created a CVE, but I can't access it. Do you know how to expose the CVE?
>> https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2016-7161

This resulted from the https://cveform.mitre.org web site, not an
oss-security post. In that situation, the "Select a request type"
"Notify CVE about a publication" process could have been used. At the
moment, that process is not used for a vulnerability that has an
oss-security post.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJX5UhtAAoJEHb/MwWLVhi2S3UP/R3rj9yUK8LxskuVYnFoIwxZ
mUZOJYVo5yTfV416+mFy9JU9ztqk2+JnidQ+iOZ1p3zpc352r6gftyLl0cghu2jx
vzN2OuBeXPBUWsgBLa3fFyNz+7gHTwNO0ISmg11y5717QvGeC00jFcfVCp9awpiS
AvnbVqhVr5LFfN5zrT456r3E1QbcV4gS0bbgob9RYDUf5YNDCelp4iY4jbZV/Ns2
06nrDsz6aWKyXzlebpfyPBpn04HyqiXEUwTkex0HH2YjmH+iDYVdBBYmLwwOSoLY
p+ybpHfETfvL0xIASMPVFHETZmlcS8aeInzJ0726zcYDwxSoWjRsxyJ8Qt2UI0ux
ZpfhFSMWumPhqJbpD37laElxaSxgOdpY61UBW6ZgIMO1wO64v6dRuSMHXSVJXXFs
olOAR5zp5UCLgMW8CBgzAU6DnpnYAzF14O+h+24g3W9DhXmX5oXSdY1FyP1D+Vsq
K7NH87RCygBm9VVXVo5ErGCI08bzJaYSDju9lefEU0ldsq5zGXVCFK7HBhKOpvrT
YGE1uhU1rjS+TtSAuJ2UbqIJBcT9WGGmVNk+Cv1PVvWBvxrUkZiDey9rjQjDm1Ng
YrPX94o+rtn5QGG0T9VDoSBfMmf+5mp5Jkcq34R/ol5k56wpEr5BXyARc8iFj13C
KownOKU8+XCHIPViQvEu
=4P8S
-----END PGP SIGNATURE-----
