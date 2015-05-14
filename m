X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1837" "Thursday" "14" "May" "2015" "13:53:56" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150514175356.6DF79B2E201@smtpvbsrv1.mitre.org>" "43" "[oss-security] Re: Potential issue in NTP -A option" nil nil nil "5" "2015051417:53:56" "[oss-security] Re: Potential issue in NTP -A option" (number mark "        cve-assign@m May 14   43/1837  " thread-indent "\"[oss-security] Re: Potential issue in NTP -A option\"\n") "<5554CB76.3070509@redhat.com>" ("<5554CB76.3070509@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24313 invoked by uid 550); 14 May 2015 17:54:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24292 invoked from network); 14 May 2015 17:54:08 -0000
In-Reply-To: <5554CB76.3070509@redhat.com>
Message-Id: <20150514175356.6DF79B2E201@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, stenn@ntp.org
Date: Thu, 14 May 2015 13:53:56 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Potential issue in NTP -A option
To: kseifried@redhat.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> the documentation seems to conflict slightly

We do not feel that a CVE is required; however, Harlan can choose to
have a CVE ID if the undocumented risky behavior is going to be
announced as a vulnerability.

More specifically, it appears that mode 7 itself is, in some sense,
deprecated (e.g., "mode7 ... Enables processing of NTP mode 7
implementation-specific requests which are used by the deprecated
ntpdc program" on the
http://www.eecis.udel.edu/~mills/ntp/html/miscopt.html page and
"functionally deprecating ntpdc" on the
http://support.ntp.org/bin/view/Main/SoftwareDownloads page). If so,
then we do not feel that there is a requirement for the documentation
to precisely specify the effect of a command-line option on a
deprecated feature. The -A documentation doesn't directly make a false
statement about authentication within mode 7; it simply does not
discuss mode 7.

If mode 7 itself isn't deprecated, and there is a supported use case
in which the user may choose to enable both mode 7 and the -A option,
then announcing the behavior/documentation mismatch as a vulnerability
is probably more useful.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVVOBzAAoJEKllVAevmvmsy4oH/REWyDXtOBOoJL5lYtj6zroV
DATBhEgJTGSK7m7zc5Z1sqGGEGXNthghS8VGysc4T1vbkgKVO0hpATMzHdZb6L6R
rNGggnTpHxoubpKRt+flURxCBzMta0w9brQb2vXxUvh4RYy+6MklDqGQofQA3ELB
9rZW6wkMK3KYms00HJGrGkIutxcVe+1/1At6htLGlQo3wEuY5ORHdlxmUxHaXBos
99fyRa1rR8ZzrN1EKWgh62WUhetvauqASFlYXdhNcqUgySlzIfMrAlFpLUyvTIGn
TjTYgf+XAvlQLmnPjKV48IeY/g2BE8MHO61loTCX5fBeYMT3lzyl2PVDx6sIN9s=
=MpGY
-----END PGP SIGNATURE-----
