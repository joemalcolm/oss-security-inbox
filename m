X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["906" "Tuesday" "1" "August" "2017" "20:31:29" "+0200" "Stefan Bodewig" "bodewig@apache.org" "<87lgn3nnr2.fsf@v45346.1blu.de>" "35" "[oss-security] CVE-2017-9801: Apache Commons Email SMTP header injection vulnerabilty" nil nil nil "8" "2017080118:31:29" "[oss-security] CVE-2017-9801: Apache Commons Email SMTP header injection vulnerabilty" (number mark "U       bodewig@apac Aug  1   35/906   " thread-indent "\"[oss-security] CVE-2017-9801: Apache Commons Email SMTP header injection vulnerabilty\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32556 invoked by uid 550); 1 Aug 2017 19:04:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11378 invoked from network); 1 Aug 2017 18:31:43 -0000
From: Stefan Bodewig <bodewig@apache.org>
To: dev@commons.apache.org, user@commons.apache.org, announce@apache.org, A.Williams.9@warwick.ac.uk, security@apache.org, oss-security@lists.openwall.com, bugtraq@securityfocus.com
Date: Tue, 01 Aug 2017 20:31:29 +0200
Message-ID: <87lgn3nnr2.fsf@v45346.1blu.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/25.1 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] CVE-2017-9801: Apache Commons Email SMTP header injection vulnerabilty

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

CVE-2017-9801: Apache Commons Email SMTP header injection vulnerabilty

Severity: low

Vendor:
The Apache Software Foundation

Versions Affected:
Apache Commons Email 1.0 to 1.4.

Description:
When a call-site passes a subject for an email that contains
line-breaks, the caller can add arbitrary SMTP headers.

Mitigation:
Users should upgrade to Commons Email 1.5.
You can mitigate this vulnerability for older versions of Commons
Email by stripping line-breaks from the subject before passing it to
the setSubject(String) method.

Credit:
This issue was discovered by =EF=BB=BFAdam Williams.

References:
http://commons.apache.org/proper/commons-email/security-reports.html
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAlmAyP8ACgkQohFa4V9ri3K7XQCgj69yH9nkBGRVJBG9+0DS1jc8
GJUAnRZrLznaNRzokj08JGBMy5wwHNTt
=3DoSDx
-----END PGP SIGNATURE-----
