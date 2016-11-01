X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2092" "Tuesday" "1" "November" "2016" "12:44:27" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<dc9efac7984445ffb65b2a86012f7255@imshyb02.MITRE.ORG>" "50" "[oss-security] Re: CVE assignment for PHP 5.6.27 and 7.0.12" nil nil nil "11" "2016110116:44:27" "[oss-security] Re: CVE assignment for PHP 5.6.27 and 7.0.12" (number mark "U       cve-assign@m Nov  1   50/2092  " thread-indent "\"[oss-security] Re: CVE assignment for PHP 5.6.27 and 7.0.12\"\n") "<CAEsznC4-QChSbpYPR8cDCdjOyGpiseTv0VYwSra2+ttkiBNm=A@mail.gmail.com>" ("<CAEsznC4-QChSbpYPR8cDCdjOyGpiseTv0VYwSra2+ttkiBNm=A@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28402 invoked by uid 550); 1 Nov 2016 16:44:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28351 invoked from network); 1 Nov 2016 16:44:39 -0000
From: <cve-assign@mitre.org>
To: <kaplanlior@gmail.com>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
In-Reply-To: <CAEsznC4-QChSbpYPR8cDCdjOyGpiseTv0VYwSra2+ttkiBNm=A@mail.gmail.com>
Message-ID: <dc9efac7984445ffb65b2a86012f7255@imshyb02.MITRE.ORG>
Date: Tue, 1 Nov 2016 12:44:27 -0400
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: CVE assignment for PHP 5.6.27 and 7.0.12

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

>> Bug #73147    Use After Free in unserialize()
>> https://bugs.php.net/bug.php?id=73147
>> http://git.php.net/?p=php-src.git;a=commit;h=0e6fe3a4c96be2d3e88389a5776f878021b4c59f

> The
> 0e6fe3a4c96be2d3e88389a5776f878021b4c59f commit adds
> zend_unset_property for PHP 7.0.12, and arranges for
> zend_unset_property to be called only from
> "ZEND_METHOD(CURLFile, __wakeup)" in ext/curl/curl_file.c.

> 73147 discusses other concerns such as "The
> similar bug can be also triggered via Exception::__toString with
> DateInterval::__wakeup" and "The problem is that every __wakeup that
> modifies any property would produce the same problem."

> 2. 0e6fe3a4c96be2d3e88389a5776f878021b4c59f fixes only the CURLFile
> implementation. The "other concerns" mentioned above are
> vulnerabilities that still exist in 7.0.12.

Use CVE-2016-9137 for the ext/curl/curl_file.c vulnerability that was
fixed in 5.6.27 and 7.0.12.

Use CVE-2016-9138 for the remaining security problem associated with
__wakeup that is still present in 5.6.27 and 7.0.12.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYGMYQAAoJEHb/MwWLVhi20TAP/jruOGY2MR5CzDVn+bNzZ+bv
0U3pkkcesWCma0H+BC7xq0uxQWT4hXf8gqYfA7cKE55DLBQ3ANbYqeAPZsUVqHSC
36t0wtxVc0kHB+yfmUKVgTyqmrNa63LYpjeVd11Q74RDfinGve664U7ZPhOdpHeE
hgXpiR2SBLFIwVl2ZJ4SjHIe6Z6TDL3BIZQROVcxbFBP8MKJhcP1gMPlIActwjiS
B3ZpB9QTUVIeuDHB9ZX2GiD9cWLiPx6i+ToYW+oPF3pPItdcOI7G0hWiJszHu32t
egpC/YcQR8s22chiARcPWJLBmWYeV7RO0Z0BuWX5QKLC9YfbPSMXHtInpqUGl5Ce
s4zbF22EAT4wAI11qOpALcoKW1jvlFVnK3KEdRKmKjD17P73fKNIRg9NeMdmUHf5
CPh7Lbq6HvdKK1wQwp3NUbwiFjMtSACN+NX2F+DR2LzhltqGj+MX1grOh558Zzfq
9Gyo8ufsxhqPFcSf6+kjMEVcjU2lloF6HLaij7Vk6+VuA+adUCpJiaFN4VshCwXA
7sJm9bJVmaJS4w2GaZZ+HDam3FEehmVVBjyuf/MYuwHd5RLjH3Ccqs73yDDumiB9
h4tiu4UTpBl3F2N/TN3+Xk2L2FhDLvAfo3FbtZSQHWBCIXPP94zCLAkQ31IesbaO
vvned9Twm3WPJYV1HiGA
=WLXc
-----END PGP SIGNATURE-----
