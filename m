X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1932" "Thursday" "27" "October" "2016" "03:06:55" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20161027070655.76FB46C1A17@smtpvmsrv1.mitre.org>" "50" "[oss-security] Re: CVE requests: some issues in gif2webp" nil nil nil "10" "2016102707:06:55" "[oss-security] Re: CVE requests: some issues in gif2webp" (number mark "U       cve-assign@m Oct 27   50/1932  " thread-indent "\"[oss-security] Re: CVE requests: some issues in gif2webp\"\n") "<CACn5sdQdpOjojXJRfKsHvRR0p+PNmvxciH+hFL-6Xq9mx3Y-Uw@mail.gmail.com>" ("<CACn5sdQdpOjojXJRfKsHvRR0p+PNmvxciH+hFL-6Xq9mx3Y-Uw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32088 invoked by uid 550); 27 Oct 2016 07:07:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32067 invoked from network); 27 Oct 2016 07:07:06 -0000
From: cve-assign@mitre.org
To: gustavo.grieco@gmail.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <CACn5sdQdpOjojXJRfKsHvRR0p+PNmvxciH+hFL-6Xq9mx3Y-Uw@mail.gmail.com>
Message-Id: <20161027070655.76FB46C1A17@smtpvmsrv1.mitre.org>
Date: Thu, 27 Oct 2016 03:06:55 -0400 (EDT)
Subject: [oss-security] Re: CVE requests: some issues in gif2webp

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> * NULL pointer derreference
> 
> Bug report: https://bugs.chromium.org/p/webp/issues/detail?id=310 (private)
> 
> Fix:
> https://chromium.googlesource.com/webm/libwebp/+/806f6279aef4de8deca01c8e727db4a508716e95

As far as we can tell, what you mean is that gif2webp is a
command-line program that only operates on one GIF input file, and if
there's crafted EXTENSION_RECORD_TYPE data, the program will crash
with a NULL pointer derreference. That would not be a security impact
for purposes of CVE. The user can work around the bug by not running
gif2webp again on the crafted file.


> * Several integer overflows:
> 
> Report: https://bugs.chromium.org/p/webp/issues/detail?id=314 (private)
> 
> Fix:
> https://chromium.googlesource.com/webm/libwebp/+/e2affacc35f1df6cc3b1a9fa0ceff5ce2d0cce83

Use CVE-2016-9085 for everything fixed by
e2affacc35f1df6cc3b1a9fa0ceff5ce2d0cce83.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYEacxAAoJEHb/MwWLVhi2fd0P/3D1sCCixX4yrhproI1v4VJr
d3iKMxA1uSkyqArZ6AMAnvo3iH/SmVLp9SGs/uXsCeml2CxxuzsDB6X+nlIYZArG
6OcZ70JEDv4YJXj6eUdg0Xco8Xxjv08v4RvohqVMvxuQIF+8LLHJGz5NH4mOCviT
Q79TBF4ZSmb33UdT1CqT8OZYL/LokPXnXrGk4CiwL1CZ4Ku3GiSZuOz7J4hDPbEd
+k/6x+PuJd2z8uc6XZ4di136z5fbbgufvl4ZTR5W8nXNU2PnbF+9FSvxYInymXUt
91JdLnkQ1V83LzuNJxwUoIouSe9EOiz1zwOeSOYaYOV8WHkXLw0YpOeCe6L1rj3G
llXaQm00azGoIe3M4auH2lGUTqpRO14ZaX8zRnN2pnIKEmnHJ+98nzyr8RHPQgh/
vhoqLWvgtxQaefgWOa6bMfqXojwoUTT/b/r4SAt9WTYm4YvKoL+OO/TpQrvs5GdA
w2oihWIRlDO2ncbHhUzQ6fjCmWjVxPElYquVXG0urhyqNyLcVf79o25nG/fMyd5V
lDLE219oqXtuCZtbVOJkafVz2YlOAQhog0YKyyt9xS2OQf9tsX/lIz+a2q2VAIMT
g+rxQ+2s2BEVfpj26cexvEpj71XMQjW5OuK6CM0ENqj2sklxCS2gVUTsKN6M5z4p
LkH4PQK8xJyle9iiKwS/
=Ra2B
-----END PGP SIGNATURE-----
