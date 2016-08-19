X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1750" "Friday" "19" "August" "2016" "09:48:16" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160819134816.658D36C568E@smtpvmsrv1.mitre.org>" "48" "[oss-security] Re: CVE request: MatrixSSL lack of RSA-CRT hardening" "^Cc:" nil nil "8" "2016081913:48:16" "[oss-security] Re: CVE request: MatrixSSL lack of RSA-CRT hardening" (number mark "        cve-assign@m Aug 19   48/1750  " thread-indent "\"[oss-security] Re: CVE request: MatrixSSL lack of RSA-CRT hardening\"\n") "<20160629090849.1bdac2cc@pc1>" ("<20160629090849.1bdac2cc@pc1>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28059 invoked by uid 550); 19 Aug 2016 13:48:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 27998 invoked from network); 19 Aug 2016 13:48:27 -0000
In-Reply-To: <20160629090849.1bdac2cc@pc1>
Message-Id: <20160819134816.658D36C568E@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org
Date: Fri, 19 Aug 2016 09:48:16 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request: MatrixSSL lack of RSA-CRT hardening
To: oss-security@lists.openwall.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

>> Date: Wed, 29 Jun 2016 09:08:49 +0200

> https://github.com/matrixssl/matrixssl/blob/master/CHANGES.md

>> Version 3.8.3 April 2016
>> 
>> BUG FIXES

> ##Side Channel Vulnerability on RSA Cipher Suites
> A Bleichenbacher variant attack, where certain information is leaked
> from the results of a RSA private key operation has been reported by a
> security researcher. The code has been updated to error without
> providing any information on the premaster contents.

Use CVE-2016-6883.


> ##Access Violation on Malicious TLS Record
> TLS cipher suites with CBC mode in TLS 1.1 and 1.2 could have an access
> violation (read beyond memory) with a maliciously crafted message.

Use CVE-2016-6884.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXtwzzAAoJEHb/MwWLVhi2xmgP/iD9XBpR+o52Gs61DvmXISo6
dD2oDK7BZLV4VDNgQxYVE+s1cr4vjInh6F5AFp0DfV/ThhplpblJzyMC9V/8R5x7
ifZmpJACnrBvsoObFy2gu/4AxNgN6CBT+x5HBehZLsp/v+IPEQoo+QSagRtpnqye
XHg6epkDcGJELzyfr+QLKU7bXEZJ5NLCoMMudFqE9iPOOPVluybsk/r5jLCwzp5y
R82f/C040qjIZtkrwvKukoWFR6cpuhNYTqxYPNK5HIk1XDsXik1DmXfUnklV5u8h
/yzd1QHQiS1ajFQz49qlYpWK7qz6JNwjnX07Oqg4MUT1rVTB0GpZwIPllcgcLMfU
f6wtY2KfarJLpI/+XuwPSCqAO1yblyHr21Z0EEOa/QwpOnXQEDbv4wPKNBU+QjDj
/F88xB7HE5DFsWi/TDqTG3H0RKqauVPBiExwimNwvsG1c3v7iCBOmvCK2h5OWBOq
SVUBXhoce+4/QSorL1Q3qsxRWdtjUV0MYmts/r/sJj8aR6pBe2vDEtg79aimaxSd
cQS7Lgnul2zMb1cGm/AzoS5YSjwn16V9iOMbKCHy9jXh/qc+Rp5ZtdsM9ZkgO/Gb
NcqjLyLM72SgdX2ewCbFgP7g7YfwWKyz3tUjKi/hQjr5bM/uUoZInQKuEF/B+vB7
HShanqXyyZFlrLWiy6+R
=jgkP
-----END PGP SIGNATURE-----
