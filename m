X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["939" "Thursday" "16" "August" "2018" "14:37:40" "+0200" "Stefan Bodewig" "bodewig@apache.org" "<87in4apjvv.fsf@v45346.1blu.de>" "33" "[oss-security] [CVE-2018-11771] Apache Commons Compress 1.7 to 1.17 denial of service vulnerability" "^CC:" nil nil "8" "2018081612:37:40" "[oss-security] [CVE-2018-11771] Apache Commons Compress 1.7 to 1.17 denial of service vulnerability" (number mark "        bodewig@apac Aug 16   33/939   " thread-indent "\"[oss-security] [CVE-2018-11771] Apache Commons Compress 1.7 to 1.17 denial of service vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24356 invoked by uid 550); 16 Aug 2018 14:04:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5260 invoked from network); 16 Aug 2018 12:38:00 -0000
Message-ID: <87in4apjvv.fsf@v45346.1blu.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/25.3 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
CC: security@commons.apache.org, oss-security@lists.openwall.com,
    Tobias Ospelt <tobias@modzero.ch>
Date: Thu, 16 Aug 2018 14:37:40 +0200
From: Stefan Bodewig <bodewig@apache.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] [CVE-2018-11771] Apache Commons Compress 1.7 to 1.17 denial of service vulnerability
To: Commons Developers List <dev@commons.apache.org>, user@commons.apache.org,
    announce@apache.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

CVE-2018-11771: Apache Commons Compress 1.7 to 1.17 denial of service vulnerability

Severity: Low

Vendor:
The Apache Software Foundation

Versions Affected:
Apache Commons Compress 1.7 to 1.17

Description:
When reading a specially crafted ZIP archive, the read method of
ZipArchiveInputStream can fail to return the correct EOF indication
after the end of the stream has been reached.  When combined with a
java.io.InputStreamReader this can lead to an infinite stream, which
can be used to mount a denial of service attack against services that
use Compress' zip package.

Mitigation:
Commons Compress users should upgrade to 1.18 or later

Credit:
This issue was discovered by Tobias Ospelt of modzero AG.
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAlt1cA4ACgkQohFa4V9ri3It3QCglg6G3XdMsD2+Nsp3dsgR3ynJ
GVAAn0suNJKf0Zz4FD/vYM1zvpOI6+a0
=Zpos
-----END PGP SIGNATURE-----
