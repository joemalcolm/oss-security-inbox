X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2312" "Friday" "1" "April" "2016" "18:09:24" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160401220924.8B09373C090@smtpvmsrv1.mitre.org>" "56" "[oss-security] Re: CVE Request: Squid HTTP Proxy" "^Cc:" nil nil "4" "2016040122:09:24" "[oss-security] Re: CVE Request: Squid HTTP Proxy" (number mark "U       cve-assign@m Apr  1   56/2312  " thread-indent "\"[oss-security] Re: CVE Request: Squid HTTP Proxy\"\n") "<56FEE67B.70507@treenet.co.nz>" ("<56FEE67B.70507@treenet.co.nz>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9594 invoked by uid 550); 1 Apr 2016 22:09:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9572 invoked from network); 1 Apr 2016 22:09:36 -0000
In-Reply-To: <56FEE67B.70507@treenet.co.nz>
Message-Id: <20160401220924.8B09373C090@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Fri,  1 Apr 2016 18:09:24 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: Squid HTTP Proxy
To: squid3@treenet.co.nz

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> 1) A buffer overrun (on write(2)) has been found in Squid proxy 'pinger'
> process that allows an attacker to craft ICMPv6 messages that will
> either crash the child process (if the OS prootects against over-write)
> or alter heap contents allowing the attacker to bypass CVE-2014-7142
> protection and leak arbitrary heap data into the Squid log files. The
> pinger is setuid root (though it does drop those privileges prior to
> this attack being possible).
> 
> Patch for this issue is available at:
> http://www.squid-cache.org/Versions/v3/3.5/changesets/squid-3.5-14015.patch
> 
> The upstream advisory will be at this URL:
> http://www.squid-cache.org/Advisories/SQUID-2016_3.txt

Use CVE-2016-3947.


> 2) A secondary issue with the same Denial of Service effects as
> CVE-2016-2569 has been found that is not covered by the existing fix.
> All Squid-3.x versions up to and including 3.5.15, and 4.0.x versions up
> to and including 4.0.7 are vulnerable to this issue independent of the
> fix for CVE-2016-2569.
> 
> Patch for this is available at:
> http://www.squid-cache.org/Versions/v3/3.5/changesets/squid-3.5-14016.patch
> 
> The upstream advisory will be at this URL:
> http://www.squid-cache.org/Advisories/SQUID-2016_4.txt

Use CVE-2016-3948.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJW/vEJAAoJEL54rhJi8gl5CDQQAKX+bY+PFOebFBtOrDhYR7tI
4zbp+0MHv8pZjM+o6xW1tU1zYl/+VwCt2qv/O3R4Gt7JWZfOQthrwA1yzU3fNku7
kI6aQZWVisiY6gsjI9Wj1Sfklehm9qSTDXyesMy+RB+oXNqhhR3l9B1GzLwMIcOH
I4chWJNXKoU1o3YWp27cnfLg4QgLzQn7pKLx+rpuOh//oFwfuOkWf3cNLXrRYLew
JDnwc3l+XmwHRtkX/E+su8ipC1dmxovtvqfQtjkjPmuosElSP3RgvtiMro3iK3MV
WF6vM+dV7cAa//mZPd8GDzSeAPYLjiSovwhNWAmW4AlsEpUvGdO5SJ3HrThuhaku
7Lwx9BoRjH2yNqZl23jsLnwTTL2U5DjDePjpVzfKtaIDh5ccam1zHui7g8/j6Hpa
cmWlrlFhhB/FeUNR3EdYrPUF60AcapqJu4sQcpiMdPVFtDnxySj4XKe9yqbvNG3w
OoFxeqOs4n9D2bEA5yTcF5DjbYN/EK08cz7pAi1kUjdbtcG6DeTprJpfvwzjleY5
lx7NFYAJe1I0V7ZplDsUacMuN0AbPDqbkpZ46oWLkiDPassty66SLnVoepsMAlrh
8WF3zq19oyjUMp5gsxUEonZ4f4cVVNlD+jL/BDdWrbRBSvtw+ceQAwCvkFnS20Sh
NcYcZZpfjqharCUG2qxn
=ZN5k
-----END PGP SIGNATURE-----
