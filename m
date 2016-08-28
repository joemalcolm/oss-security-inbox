X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1496" "Sunday" "28" "August" "2016" "11:33:29" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160828153329.EAB6252E01A@smtpvbsrv1.mitre.org>" "34" "[oss-security] Re: CVE Request - Gnu Wget 1.17 - Design Error Vulnerability" "^Cc:" nil nil "8" "2016082815:33:29" "[oss-security] Re: CVE Request - Gnu Wget 1.17 - Design Error Vulnerability" (number mark "U       cve-assign@m Aug 28   34/1496  " thread-indent "\"[oss-security] Re: CVE Request - Gnu Wget 1.17 - Design Error Vulnerability\"\n") "<E91F67A6-D25F-47ED-A6E5-14A4C6BDBD66@verisign.com>" ("<E91F67A6-D25F-47ED-A6E5-14A4C6BDBD66@verisign.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19471 invoked by uid 550); 28 Aug 2016 15:33:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 18423 invoked from network); 28 Aug 2016 15:33:42 -0000
In-Reply-To: <E91F67A6-D25F-47ED-A6E5-14A4C6BDBD66@verisign.com>
Message-Id: <20160828153329.EAB6252E01A@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, dawid@legalhackers.com
Date: Sun, 28 Aug 2016 11:33:29 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request - Gnu Wget 1.17 - Design Error Vulnerability
To: dmisra@verisign.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Isn't this a common enough and plausible scenario

We don't think that any realistic "internet archive - way back
machine" clone would place any archived files into a directory from
which the web server is able to do unrestricted code execution. From
day one, they would store all untrusted files at a location that
allows no code execution (or allows only sandboxed code execution), to
enable later scalability to archiving of non-jpeg files.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXwwOZAAoJEHb/MwWLVhi2KMQQAJn+5GP2E2L46kbkWCyC3raT
EEtdOLAHMGf7p+9NrM9RySnzHSw26gG5gPTqmbby8OqEhZnv7SLN/c9YohHgyGJW
HOUqF8wlpk7kHu2MZXRt/OblwgwEiWUuxoQ5iYejwO3/l/iyX+ePJIj+9F+pZ1c+
j6Z4Yki2vBXgpYp9rRBQ7jIvwded+ircNeRV9VSsl/Ibfa6HktiaQPNpRskA1MJp
k2pC/i3Bz+Dlk2NhjhitBl8LoXTzPldkoHuXqcf2L5lbyKXejwDKBma2HuWxwb+0
GCYRtiaU/8Ok9669SknOdRXvancKqKMMQRYD826aYeR8Q38IFeSXxV9DD8bix9It
nRw/cH6SX8wOcAIEZpPW1njDpNP6JhYsvQGJN6klAZWLk7dU6KL2rxFmwD8UNklU
XS6p7fqmA6SkiRS3Qaz5R7z5WKIgvtflsuILUKDxneD6BV+DSM4JqDFq4fnWKhoj
1gsjlNPZDuf20VkUN/E88BaN1sfAEecAvlGp9ztt3fIie4OyrVE7ELNw46QHmDJf
0MB7RbAj+tXoLuYa62fYvkulLhW6aWc6f1PUFcSEdOHQ7IbSehs10WPewttKJsU6
8Fn4LoAr0XXjE6BgUzIoXEyeakK/gtEIEX4OlbFF0xoKpZBCkRmSx4eykS7ZlmzJ
mnehgTg6NjN2nNs7YLOD
=1Xnl
-----END PGP SIGNATURE-----
