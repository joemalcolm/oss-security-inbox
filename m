X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1481" "Friday" "4" "December" "2015" "23:45:50" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20151205044550.E3C8572E153@smtpvbsrv1.mitre.org>" "34" "[oss-security] Re: Status of CVE-2015-8126: libpng buffer overflow in png_set_PLTE" nil nil nil "12" "2015120504:45:50" "[oss-security] Re: Status of CVE-2015-8126: libpng buffer overflow in png_set_PLTE" (number mark "U       cve-assign@m Dec  4   34/1481  " thread-indent "\"[oss-security] Re: Status of CVE-2015-8126: libpng buffer overflow in png_set_PLTE\"\n") "<CA+PdXcszrzhnMEa_Et8xhxdL_AzdE+C07AJnEN_XWOJA1Uv57g@mail.gmail.com>" ("<CA+PdXcszrzhnMEa_Et8xhxdL_AzdE+C07AJnEN_XWOJA1Uv57g@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26065 invoked by uid 550); 5 Dec 2015 04:46:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26019 invoked from network); 5 Dec 2015 04:46:02 -0000
From: cve-assign@mitre.org
To: glennrp@gmail.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <CA+PdXcszrzhnMEa_Et8xhxdL_AzdE+C07AJnEN_XWOJA1Uv57g@mail.gmail.com>
Message-Id: <20151205044550.E3C8572E153@smtpvbsrv1.mitre.org>
Date: Fri,  4 Dec 2015 23:45:50 -0500 (EST)
Subject: [oss-security] Re: Status of CVE-2015-8126: libpng buffer overflow in png_set_PLTE

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> The patch was incomplete.  While it defended against the potential overrun
> while reading PNG files, it did not detect a potential overrun by
> applications using png_set_PLTE directly.  Libpng versions 1.6.20, 1.5.25,
> 1.4.18, 1.2.55, and 1.0.65 which were released today, December 3, 2015, fix
> this remaining problem.

Use CVE-2015-8472 for this remaining problem that existed
in 1.6.19, 1.5.24, 1.4.17, 1.2.54, and 1.0.64.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWYmuxAAoJEL54rhJi8gl5fKgP/R34HOQsDbtueiudqEmpZiRY
XvFsHDn8sq0hc8q3YokGFmsxrZ3JiIpbk6BYOdTWRr1HwQVfhTCZQ/RTs5KdPEoL
H/Hg5Izeu04FibarTKkkbGiNqhQm/JuFe5YFm8+y652B5dCdtljGrHiVQJRp/fNy
ZKiSfkhShLVI/S2okJIcHPf6EZOtUH8BJEo3Al0Yo2+aQlZHYrwfnrcybDwlg4lQ
VK7SL/kuY/adQd6OTzE6/yyhfyVqkRmWLy4bVsIcVMLTbWATT6iz729TtAChgReB
iDCNdAvjbVsBNnFGnJM9gspKag5mh7X4N3LncCgJhjiZHfswuJO+fZEVMNJLYRZR
oYGSTAs5CRV8aQRrbOQOItbSv1d4IxjifZiTCLKKg8er6AKQGCrNV2H5wH4yuP2s
22DpILP6WFDR20hNfTwMG4I8VLyftpnjlULnJcU/OE2c2+AiInPdmGunJ+UGpZYo
ojoSTnYnrIRb7LUankhNhFJEZCDFDRTqfidID7+3I9bJoxXYrX04sPsqY4zOisB0
AhU6MduHIQZ030RAQ4GBYPwAvCVE83MwYm12akWVWZOV8ufHMLb9vueGsNYca1cr
xk+cgOAKridrnku8Szx5hNx908DR73CjqxMIgesri61PgYTSVMMMDZmPjQQwkt1n
fPgsgykozfzDkyw3O1NY
=UXtM
-----END PGP SIGNATURE-----
