X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2100" "Friday" "15" "January" "2016" "12:10:16" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160115171016.57F5F332003@smtpvbsrv1.mitre.org>" "50" "[oss-security] Re: Qualys Security Advisory - Roaming through the OpenSSH client: CVE-2016-0777 and CVE-2016-0778" "^Cc:" nil nil "1" "2016011517:10:16" "[oss-security] Re: Qualys Security Advisory - Roaming through the OpenSSH client: CVE-2016-0777 and CVE-2016-0778" (number mark "        cve-assign@m Jan 15   50/2100  " thread-indent "\"[oss-security] Re: Qualys Security Advisory - Roaming through the OpenSSH client: CVE-2016-0777 and CVE-2016-0778\"\n") "<1452866613.15013.86.camel@debian.org>" ("<1452866613.15013.86.camel@debian.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 22290 invoked by uid 550); 15 Jan 2016 17:10:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22267 invoked from network); 15 Jan 2016 17:10:28 -0000
In-Reply-To: <1452866613.15013.86.camel@debian.org>
Message-Id: <20160115171016.57F5F332003@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Fri, 15 Jan 2016 12:10:16 -0500 (EST)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Qualys Security Advisory - Roaming through the OpenSSH client: CVE-2016-0777 and CVE-2016-0778
To: corsac@debian.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> SECURITY: Fix an out of-bound read access in the packet handling code.
> Reported by Ben Hawkes
> https://anongit.mindrot.org/openssh.git/commit/?id=2fecfd486bdba9f51b3a789277bb0733ca36e1c0

Use CVE-2016-1907.


> There's also a fix related to X11 forwarding which seems different than
> the fix which went into OpenSSH 6.9. I'm not sure if it deserves a CVE
> or not.

> https://anongit.mindrot.org/openssh.git/commit/?id=ed4ce82dbfa8a3a3c8ea6fa0db113c71e234416c

>> eliminate fallback from untrusted X11 forwarding to trusted forwarding
>> when the X server disables the SECURITY extension; Reported by Thomas
>> Hoger

MITRE is not assigning a CVE ID for
ed4ce82dbfa8a3a3c8ea6fa0db113c71e234416c at this time. First, the
(misspelled) reporter name suggests that the issue might have already
had a CVE ID assigned by Red Hat before the issue became public. Also,
http://www.openssh.com/txt/release-7.1p2 does not announce this as a
security fix. Finally, the wording suggests that it could possibly be
an interoperability fix, not a security fix.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWmSeMAAoJEL54rhJi8gl5QX4P/A53KsJzi3RcvrjKkL/noIW1
aIe6dGR+F1ORULFbUxUUsNBCk9Kbn4wh5ILJG4NKrMbf96D0Fhc9HHC9PMR5/E4y
tQdwDLwqpn57k+ma/tiWnO4BewPvu6F67jITus5SPYJHVs6yruGJCZCmxfD8rIjd
Y2Of21fkCmQTz86EQ0OBHmTZGbme63xP9FEEqS/AZDKmDfb/6HWeFpHf9hvoU/sj
PDXoUL72veUt/w44qeQCl0nIFEw+c3bkH10lnsyJPXUk0n50fX8+cibt/jVthLZP
xR349ILvgIHCWvLCjIwUxsH14+01h7n5Bpm/ydwYzCP1asZ5bsu/xkcVmzU0LHKd
cAlrBTCWurKappKLd1YlXiTtm+WgvGs6zLhjxacDOFm8HldR9Hkul5ppKLRdEHmR
Y4tcP43C7O+LiTsEoLt9RLn8jNfpYu1Ps3cubvz8Q3H3ckTavlR1ovu/QY/h4ZY+
EeG6yELDdSwt8a993YwPx5Eex+T5hCZFxt8sMWVAUY5CS6nmYoI3k1JhFZy4W3tD
fmKZUFzbdHjpJmDDuJIjKiwQqZqGt8yBRSutz7JAo2eCyQ78JYKa6MaFz4Db/V/f
SX/wBfSSp+sTi/HbN51eAvxn9KejXGOYeCYs/sKpKaORSEuxSsIB6VrlvpHAqsZG
hPVegxqsnYuZ01x6cvP6
=x5zR
-----END PGP SIGNATURE-----
