X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1375" "Wednesday" "13" "May" "2020" "18:38:16" "+0200" "Stefan Bodewig" "bodewig@apache.org" "<87zhabu6x3.fsf@v45346.1blu.de>" "44" "[oss-security] [CVE-2020-1945] Apache Ant insecure temporary file vulnerability" nil nil nil "5" "2020051316:38:16" "[oss-security] [CVE-2020-1945] Apache Ant insecure temporary file vulnerability" (number mark "U       bodewig@apac May 13   44/1375  " thread-indent "\"[oss-security] [CVE-2020-1945] Apache Ant insecure temporary file vulnerability\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2020-1945] Apache Ant insecure temporary file vulnerability" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 16352 invoked by uid 550); 13 May 2020 17:01:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7479 invoked from network); 13 May 2020 16:38:29 -0000
From: Stefan Bodewig <bodewig@apache.org>
To: dev@ant.apache.org, user@ant.apache.org, announce@apache.org,
    Mike Salvatore <mike.salvatore@canonical.com>,
    security@apache.org, oss-security@lists.openwall.com
Date: Wed, 13 May 2020 18:38:16 +0200
Message-ID: <87zhabu6x3.fsf@v45346.1blu.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/25.3 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] [CVE-2020-1945] Apache Ant insecure temporary file vulnerability

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

CVE-2020-1945: Apache Ant insecure temporary file vulnerability

Severity: Medium

Vendor:
The Apache Software Foundation

Versions Affected:
Apache Ant 1.1 to 1.9.14 and 1.10.0 to 1.10.7

Description:

Apache Ant uses the default temporary directory identified by the Java
system property java.io.tmpdir for several tasks and may thus leak
sensitive information. The fixcrlf and replaceregexp tasks also copy
files from the temporary directory back into the build tree allowing an
attacker to inject modified source files into the build process.

Mitigation:

Ant users of versions 1.1 to 1.9.14 and 1.10.0 to 1.10.7 should set the
java.io.tmpdir system property to point to a directory only readable and
writable by the current user prior to running Ant.

Users of versions 1.9.15 and 1.10.8 can use the Ant property ant.tmpfile
instead. Users of Ant 1.10.8 can rely on Ant protecting the temporary
files if the underlying filesystem allows it, but we still recommend
using a private temporary directory instead.

Credit:
This issue was discovered by Mike Salvatore of the Ubuntu Security Team.

References:
https://ant.apache.org/security.html
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAl68InYACgkQohFa4V9ri3JMuwCeJCxfVbb0FX7oVgzUpskGH28u
ZIYAoLDKeuyh585wmuiCySIj5EW4hYch
=KIJP
-----END PGP SIGNATURE-----
