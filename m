X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2476" "Thursday" "16" "April" "2015" "17:15:44" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150416211544.B8F996C400D@smtpvmsrv1.mitre.org>" "63" "[oss-security] Re: Potential CVE request: flaw in comment handling" nil nil nil "4" "2015041621:15:44" "[oss-security] Re: Potential CVE request: flaw in comment handling" (number mark "        cve-assign@m Apr 16   63/2476  " thread-indent "\"[oss-security] Re: Potential CVE request: flaw in comment handling\"\n") "<87bnio4hrd.fsf@redhat.com>" ("<87bnio4hrd.fsf@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3418 invoked by uid 550); 16 Apr 2015 21:15:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3390 invoked from network); 16 Apr 2015 21:15:56 -0000
In-Reply-To: <87bnio4hrd.fsf@redhat.com>
Message-Id: <20150416211544.B8F996C400D@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Thu, 16 Apr 2015 17:15:44 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Potential CVE request: flaw in comment handling
To: mprpic@redhat.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> we were notified of a flaw in the way Apache's mod_access_compat and
> mod_authz_host handled comments in configuration files. When a comment
> was defined on the same line that contained an "Allow" directive,
> any potential IP ranges in that comment were also allowed to access
> a resource.

> Reproducer:
> ...
> Allow from 127.0.0.1 # not 10

> This flaw was fixed in:
> 
> https://github.com/apache/httpd/commit/5e1affc271a429f267198eee61fce2b209a83c66
> 
> The docs do specify that comments are not allowed on the same line:
> 
> "There must be no other characters or white space between the backslash and the end of the line."
> [https://httpd.apache.org/docs/2.2/configuring.html#syntax]

This doesn't seem to be the applicable documentation for your
reproducer. The documentation says:

   Lines that begin with the hash character "#" are considered
   comments, and are ignored. Comments may not be included on the same
   line as a configuration directive.

> MITRE, does this qualify for a CVE?

We can't make that decision without knowing the perspective of the
upstream vendor. Because the upstream vendor has a process for
assigning CVE IDs, we feel it would be simplest and best here to use
that process, even if it is often not used in cases of publicly known
vulnerabilities. See the security@apache.org address on the
http://www.apache.org/security/committers.html page. It's their
decision on how to proceed; possibilities include:

  - no CVE because the behavior with a # character is undefined

  - a single CVE for both because they intended "Comments may not be
    included" to only mean that a syntax error would be reported

  - a CVE only for mod_authz_host because they had actually wanted to
    support # comments for that one

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVMCXsAAoJEKllVAevmvmsx1AH/ivWmhJm1RAzVk1H8bWQLfio
aNk5M1NI4wV6iS4P3SpK5xd5oahAiQNb25bxFiqQTIVys+Q3dvhDroG6ZsiNxmKJ
SaR2wRYIHsZmsmjkqxqyuH3KATtXsekzYF1kob0PhGvgL8BFbgqtQorZacYUZpjv
yHMXMaSJrSLa8+yMRRcpoLvL7IKZdf8yvh2LUSIp6lvn2qtvNSk7UbB4I23ummiE
2bhUn0EhaVBqoDIOdbMi9uTGj25oJLdzHhHbNvfOxEbKS1hSTCRy5c/PbBxSslC8
J6a0OqCXUJ5zv7jixaLO/jlcJbdrM0YYlK+yZ6wc5W1K887TiJosKKr1Lgo38+U=
=Wu5Y
-----END PGP SIGNATURE-----
