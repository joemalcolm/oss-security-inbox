X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1401" "Wednesday" "23" "December" "2015" "10:25:53" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20151223152553.8D11C6C04A3@smtpvmsrv1.mitre.org>" "37" "[oss-security] Re: CVE-request: ~/.t_coffee/ is world-writable" "^Cc:" nil nil "12" "2015122315:25:53" "[oss-security] Re: CVE-request: ~/.t_coffee/ is world-writable" (number mark "        cve-assign@m Dec 23   37/1401  " thread-indent "\"[oss-security] Re: CVE-request: ~/.t_coffee/ is world-writable\"\n") "<20151223151014.GA2519@tunkki>" ("<20151223151014.GA2519@tunkki>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5714 invoked by uid 550); 23 Dec 2015 15:26:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5678 invoked from network); 23 Dec 2015 15:26:05 -0000
In-Reply-To: <20151223151014.GA2519@tunkki>
Message-Id: <20151223152553.8D11C6C04A3@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Wed, 23 Dec 2015 10:25:53 -0500 (EST)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE-request: ~/.t_coffee/ is world-writable
To: henri@nerv.fi

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Can you assign CVE identifier for t-coffee issue where it creates ~/.t_coffee/
> as world-writable directory.
> 
> Reported in:
>   https://bugs.debian.org/751579

>>   55    4 drwxrwxrwx   6 jwilk    jwilk        4096 Jun 14 11:34 .t_coffee/

>>  730    4 drwxrwxrwx   2 jwilk    jwilk        4096 Jun 14 11:34 .t_coffee/methods

Use CVE-2015-8621.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWerxkAAoJEL54rhJi8gl5cI8P+gPffX/opv+eQhYzj7B2bxnf
dFVId9iODdktUXUIZJJl3sPJKBHsOfsxqQXMlYOwG8T0sUHPuKHRR5J5ezGWL3az
1kmSpQdNzK9rRDkOzi5DAQgFg3VKKQT5jUUQIjEXLb3xCf6KNNGMxRzraL1BYPvY
cN0/mM1/yoZ1SU6qo14/c0nOxghAg/+kwqZ8dtK6oyNlF4Ljc5ogCSMPkbtPQ4UA
iKEOWBte+IKour7+xB/gFt9teMJcB0+yN2tFx52NFM7QVSpHBV96X5GWeM4m9s7m
/Ztin7YNufaq5ns0AY4lSWJre/UresS7rVE9K+tVtKhZhS4yWeziJsZD4HA91coK
kXop4qaxzPgbwEwzZtm+N+PiZ4mWAtojeA8bxZhDc18ESivgu9loUBl1+PHBcMxF
jTi+7XN3z+UlHu2OwBepl5Z+cRiQ9GaLETKLlbA2KZYjicWjsNB2qEYVj9WvP56R
8tSK3lo/5tNmwIpHRg4VAW6G+eSNLUs9YI9DeXQSBHpWD8gEyq95Z+5LLL1+Zg6I
aFw69SoOTN5cobsrIy+EIpIn3j+ktUgfWEPmNDJlxmxwOnLJvnya6QQRovgPSGmr
An+sRJK3TstnrH3+sayS9kNClwPGIjnKkBVzlHW1rHw6+HpmR2aK8mlkKC/vZr0Z
POOFxag5mIkmDFz1HWWA
=n2gl
-----END PGP SIGNATURE-----
