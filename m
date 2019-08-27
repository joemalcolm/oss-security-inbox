X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["862" "Tuesday" "27" "August" "2019" "21:15:48" "+0200" "Stefan Bodewig" "bodewig@apache.org" nil "35" nil nil nil nil "8" nil nil (number mark "U       bodewig@apac Aug 27   35/862   " thread-indent "\"[oss-security] [CVE-2019-12402] Apache Commons Compress denial of service vulnerability\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2019-12402] Apache Commons Compress denial of service vulnerability" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30494 invoked by uid 550); 27 Aug 2019 21:47:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23654 invoked from network); 27 Aug 2019 19:16:05 -0000
From: Stefan Bodewig <bodewig@apache.org>
To: oss-security@lists.openwall.com
Date: Tue, 27 Aug 2019 21:15:48 +0200
Message-ID: <871rx6mnbv.fsf@v45346.1blu.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/25.3 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] [CVE-2019-12402] Apache Commons Compress denial of service vulnerability

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

Severity: Low

Vendor:
The Apache Software Foundation

Versions Affected:
Apache Commons Compress 1.15 to 1.18

Description:
The file name encoding algorithm used internally in Apache Commons
Compress can get into an infinite loop when faced with specially
crafted inputs. This can lead to a denial of service attack if an
attacker can choose the file names inside of an archive created by
Compress.

Mitigation:
Commons Compress users should upgrade to 1.19 or later.

Credit:
This issue was discovered by Masaya Suzuki of Google.

References:
https://commons.apache.org/proper/commons-compress/security-reports.html

Stefan Bodewig
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAl1lgVkACgkQohFa4V9ri3Js/ACg2fvtHg9R8k7uoI3SlIaUDocs
afsAnRXOsfdKVRGoB28g4mSXSMRh8KHu
=HJty
-----END PGP SIGNATURE-----
