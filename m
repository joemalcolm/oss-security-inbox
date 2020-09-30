X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1646" "Wednesday" "30" "September" "2020" "19:09:30" "+0200" "Stefan Bodewig" "bodewig@apache.org" "<877dsbb391.fsf@v45346.1blu.de>" "53" "[oss-security] [CVE-2020-11979] Apache Ant insecure temporary file vulnerability" nil nil nil "9" "2020093017:09:30" "[oss-security] [CVE-2020-11979] Apache Ant insecure temporary file vulnerability" (number mark "U       bodewig@apac Sep 30   53/1646  " thread-indent "\"[oss-security] [CVE-2020-11979] Apache Ant insecure temporary file vulnerability\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2020-11979] Apache Ant insecure temporary file vulnerability" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22056 invoked by uid 550); 30 Sep 2020 17:28:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15608 invoked from network); 30 Sep 2020 17:09:43 -0000
From: Stefan Bodewig <bodewig@apache.org>
To: oss-security@lists.openwall.com
Date: Wed, 30 Sep 2020 19:09:30 +0200
Message-ID: <877dsbb391.fsf@v45346.1blu.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/25.3 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] [CVE-2020-11979] Apache Ant insecure temporary file vulnerability

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

CVE-2020-11979: Apache Ant insecure temporary file vulnerability

Severity: Medium

Vendor:
The Apache Software Foundation

Versions Affected:
Apache Ant 1.10.8

Description:

As mitigation for CVE-2020-1945 Apache Ant 1.10.8 changed the
permissions of temporary files it created so that only the current user
was allowed to access them. Unfortunately the fixcrlf task deleted the
temporary file and created a new one without said protection,
effectively nullifying the effort.

This would still allow an attacker to inject modified source files into
the build process.

Mitigation:

The best mitigation against CVE-2020-11979 and CVE-2020-1945 still is to
make Ant use a directory that is only readable and writable by the
current user.

Ant users of versions 1.10.8 and 1.9.15 can use the Ant property
ant.tmpdir to point to such a directory, users of versions 1.1 to 1.9.14
and 1.10.0 to 1.10.7 should set the java.io.tmpdir system property.

Ant 1.10.9 will also try to create a temporary directory only accessible
by the current user if neither of the properties above is set but may
fail to create one if the underlying filesystem doesn't allow it.

Explicitly setting up a directory to use and set the respective property
is the only mitigation that will work on every platform.

Credit:
This issue was discovered by Mike Salvatore of the Ubuntu Security Team.

References:
https://ant.apache.org/security.html
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAl90u64ACgkQohFa4V9ri3LAmgCgmwqHZyIVU7rPuFDaLcdKiy2o
xaUAoLUV1/NhnK41CsZ4D6d6Jix0qU/E
=g75E
-----END PGP SIGNATURE-----
