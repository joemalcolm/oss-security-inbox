X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1759" "Thursday" "20" "August" "2015" "12:23:51" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150820162351.97F80B2E143@smtpvbsrv1.mitre.org>" "42" "[oss-security] Re: CVE request - Linux kernel - perf on ppp64 - unbounded checks in perf_callchain_user_64 denial of service." nil nil nil "8" "2015082016:23:51" "[oss-security] Re: CVE request - Linux kernel - perf on ppp64 - unbounded checks in perf_callchain_user_64 denial of service." (number mark "        cve-assign@m Aug 20   42/1759  " thread-indent "\"[oss-security] Re: CVE request - Linux kernel - perf on ppp64 - unbounded checks in perf_callchain_user_64 denial of service.\"\n") "<1385098753.10178920.1439876309298.JavaMail.zimbra@redhat.com>" ("<1385098753.10178920.1439876309298.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3914 invoked by uid 550); 20 Aug 2015 16:24:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3893 invoked from network); 20 Aug 2015 16:24:03 -0000
In-Reply-To: <1385098753.10178920.1439876309298.JavaMail.zimbra@redhat.com>
Message-Id: <20150820162351.97F80B2E143@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Thu, 20 Aug 2015 12:23:51 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request - Linux kernel - perf on ppp64 - unbounded checks in perf_callchain_user_64 denial of service.
To: wmealing@redhat.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> A malicious user could create a special stack layout that fools
> the perf_callchain_user_64 function (called by perf record) into
> an infinite loop, tying up that particular CPU and the process
> can not be killed.
> 
> A kernel patch was committed upstream capping the maximum user-level
> stacktrace collected by perf to PERF_MAX_STACK_DEPTH on 64bit powerpc
> architectures.
> 
> https://bugzilla.redhat.com/show_bug.cgi?id=1218454
> https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=9a5cbce421a283e6aea3c4007f141735bf9da8c3

>> We cap 32bit userspace backtraces to PERF_MAX_STACK_DEPTH (currently
>> 127), but we forgot to do the same for 64bit backtraces.

Use CVE-2015-6526.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJV1f6MAAoJEL54rhJi8gl5KroP/0uXkRzhODlvbLPJsU0xNmhc
RR/C+5ugnZsrjC3H0RHKe7C7msCcFoGtXG+UKArCsLgN/ub+lcwf7p5tMcGr57h8
F3uEGMa+BAvb+A8Y2mnRVfLzZ5PS94qklRngZDsJdO3NfY/R0W0oJT5FTjX74+MJ
yvGz2xikpeE5sgfnPtMNBwCfSyICfsNCUnwqYjp9tdN4E+RKuNXSlf9vsUeMHdj9
M0/oHuC7y6e+EiNestFPpPNwjKypvKnvCqZIFR43ty558GxRNWQZEmNlaPMZfZ8o
OgKEwcHUpk96567Jyld9k3l9BR3wEggAR3ayoHSAvNkck2Y2NTt80y33uTdHhm9V
9tVY6hSEUMt7xUoU1ePN1cZMvledTM3z450vkPnAdMUt0MilUBL46+dHULEo7qAE
vq/tWtO8d4kC84rOggfgcJK4np/qf8ffTSJITpv4YnHy00bFTIhRCPcLGPfDgqNv
Lelaz5G24nUIFKIzSzDns4E4JClr6xRq4tzIUziAVvg4TAeYZgXfJjCk95xaFk7F
NLUCFYCpg0nc0zIPdt4fBAhuiUHhxhOVENeVKAxLAKRoHGHCt2uIN+pdGJerK5R/
vo/HA/CFuos7qojBgnuvAmeCHGGcfMLXHiGcS8TaDwqQvRyTNCZ9UpH6I/MfVjun
QA2LWaIGj3s4a6xMmQiX
=CCb4
-----END PGP SIGNATURE-----
