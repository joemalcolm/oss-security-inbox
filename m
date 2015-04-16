X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3302" "Thursday" "16" "April" "2015" "14:40:32" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150416184032.39FAF7BC09F@smtpvmsrv1.mitre.org>" "73" "[oss-security] Re: kernel: fs.suid_dumpable=2 privilege escalation" nil nil nil "4" "2015041618:40:32" "[oss-security] Re: kernel: fs.suid_dumpable=2 privilege escalation" (number mark "U       cve-assign@m Apr 16   73/3302  " thread-indent "\"[oss-security] Re: kernel: fs.suid_dumpable=2 privilege escalation\"\n") "<552FAE4F.6070300@redhat.com>" ("<552FAE4F.6070300@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 29827 invoked by uid 550); 16 Apr 2015 18:40:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 29806 invoked from network); 16 Apr 2015 18:40:44 -0000
In-Reply-To: <552FAE4F.6070300@redhat.com>
Message-Id: <20150416184032.39FAF7BC09F@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, keescook@chromium.org
Date: Thu, 16 Apr 2015 14:40:32 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: kernel: fs.suid_dumpable=2 privilege escalation
To: fweimer@redhat.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> http://lwn.net/Articles/503682/

An alternative perspective might be:

  If any program is designed to execute code in a file (or perform
  a similar security-relevant action on the contents of a file)
  on the basis that the file exists in a specific directory, then
  the program is responsible for reasonably distinguishing between
  "intended files" and "stray files." The stray files must always
  be ignored.

You had mentioned content-based recognition of stray files, i.e., a
program should not choose a loose parsing strategy that results in
finding an executable item within a core dump. However, there can also
be name-based recognition.

An example of a program roughly consistent with this is run-parts -

  http://manpages.debian.org/cgi-bin/man.cgi?query=run-parts&manpath=Debian+7.0+wheezy&format=html

  "the names must not end in .dpkg-old or .dpkg-dist or .dpkg-new or .dpkg-tmp"

Relative to the http://www.securityfocus.com/archive/1/439869 exploit
code for CVE-2006-2451, this would mean: cron is required to recognize
/etc/cron.d/core (regardless of content) as a stray file and ignore
its existence. This would similarly apply to other cron-like programs
that use the /etc/cron.d directory, or a different directory in an
analogous role.

The possible advantage of this perspective is that it covers the case
of root having a current working directory of /etc/cron.d while
running a non-setuid program. If that program happens to dump core, it
would seem to violate reasonable expectations for /etc/cron.d/core to
be processed as an intended file. Obviously the system could have an
unusual configuration in which /proc/sys/kernel/core_pattern has an
arbitrary unqualified pathname, not the usual "core" string, but maybe
that needs to be specified in the core_pattern documentation. For
example: "Some applications are designed to recognize core and the
core\..* pattern as stray files. For this reason, it is less safe to
choose arbitrary unqualified core_pattern values."

There hasn't been any final decision by MITRE. There might be multiple
CVEs, e.g.,

  - a Linux kernel CVE because unprivileged users can trigger creation
    of large files in otherwise-protected directories, leading to (at
    least) denial of service - consuming disk space on arbitrary
    filesystems without quotas, generating network traffic to
    slow/expensive remote filesystems, etc.

  - one CVE for each independent cron codebase that does not skip the
    /etc/cron.d/core filename and similar filenames, and has a parsing
    approach with a risk of executing something

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVMAGSAAoJEKllVAevmvmsHz8IALI7eQ7RLCTbZxtZy+E3ApMW
PIJ95fUQn/66PtCA9D7u85g4wQntEUcKScFSI2NvP0vrdz1LEI+WgEaLzmcuUqKr
4RqsYz5nBXYGyyzrhCp8lMBiBztarSvTzvVk8fUdsSwKvq8FAq5ltXmmukVnTlza
qRvZyXFHnJu4VldO+CGlrb1K19vEMKzrIR8av2UcWwYLl5jaefuGpoKuS4W41m9l
PZrj60N3SnFwtVCNml5fGyYWapcaLZ/MKerZu27ICOD4X71ZSzOWCPQahSWxuQJx
vHO+xSfaKTlSzga6AMOfNMxh/JA1P1Dk8m9hVxlGRIlid2WNlMBwnUQJC2miw20=
=YRoX
-----END PGP SIGNATURE-----
