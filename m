X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["945" "Thursday" "2" "April" "2015" "13:59:12" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150402175912.3D932B2E09C@smtpvbsrv1.mitre.org>" "29" "[oss-security] Re: CVE request: Buffer overflow in das_watchdog" nil nil nil "4" "2015040217:59:12" "[oss-security] Re: CVE request: Buffer overflow in das_watchdog" (number mark "        cve-assign@m Apr  2   29/945   " thread-indent "\"[oss-security] Re: CVE request: Buffer overflow in das_watchdog\"\n") "<87fv8jprzj.fsf@mid.deneb.enyo.de>" ("<87fv8jprzj.fsf@mid.deneb.enyo.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5631 invoked by uid 550); 2 Apr 2015 17:59:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5611 invoked from network); 2 Apr 2015 17:59:24 -0000
In-Reply-To: <87fv8jprzj.fsf@mid.deneb.enyo.de>
Message-Id: <20150402175912.3D932B2E09C@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Thu,  2 Apr 2015 13:59:12 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request: Buffer overflow in das_watchdog
To: fw@deneb.enyo.de

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> buffer overflow in the handling of the XAUTHORITY
> environment variable.

> https://github.com/kmatheussen/das_watchdog/commit/bd20bb02e75e2c0483832b52f2577253febfb690

> das_watchdog.c
> get_pid_environ_val

Use CVE-2015-2831.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVHYMLAAoJEKllVAevmvms7s0H/imd1exPCy1iGk7jpqVunHe1
g8qZeX5fZ+lx4KJ7ucjNigwU5ctLK24iLjcCDW1yiiKRxol1HcoQL9gamZwxTrSj
Oa03jyRKjSQFEyJDnF9SJcHmwI2Hyt5kKKMh3ypMxcw46BOTGBwXszRu1dizkJ/s
hOxpkHHhVU+dP+hh2vH47I9bw+o+X2Ysw/9f4R1kkvgZ9sgIEVk3NT1fhSivfKrs
OndQ0tEUUeGF9QIElr+0suiLuxeDQAvp95UxItJckAYc0IQ3SgJmyJriMSqMUlle
gcC3LfSO06yPE0fUIhvPBlaJzD+W7ddHKtDArohWYzTtaB3SOxIpLmL0xCddMlE=
=bSan
-----END PGP SIGNATURE-----
