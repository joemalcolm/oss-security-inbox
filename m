X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1382" "Tuesday" "3" "November" "2015" "15:01:45" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20151103200145.05F266C0261@smtpvmsrv1.mitre.org>" "35" "[oss-security] Re: CVE request: libsndfile 1.0.25 heap overflow" nil nil nil "11" "2015110320:01:45" "[oss-security] Re: CVE request: libsndfile 1.0.25 heap overflow" (number mark "U       cve-assign@m Nov  3   35/1382  " thread-indent "\"[oss-security] Re: CVE request: libsndfile 1.0.25 heap overflow\"\n") "<20151103134736.49e4edcb@pc1>" ("<20151103134736.49e4edcb@pc1>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13955 invoked by uid 550); 3 Nov 2015 20:01:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13927 invoked from network); 3 Nov 2015 20:01:56 -0000
From: cve-assign@mitre.org
To: hanno@hboeck.de
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <20151103134736.49e4edcb@pc1>
Message-Id: <20151103200145.05F266C0261@smtpvmsrv1.mitre.org>
Date: Tue,  3 Nov 2015 15:01:45 -0500 (EST)
Subject: [oss-security] Re: CVE request: libsndfile 1.0.25 heap overflow

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Unrelated, but I recently reported an out of bounds triggered by the
> test suite of libsndfile and got no reply:
> http://permalink.gmane.org/gmane.comp.audio.libsndfile.devel/681

> Out of bounds reads in psf_strlcpy_crlf when running test suite

> AddressSanitizer: global-buffer-overflow ... READ of size 1

Use CVE-2015-8075.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWORIuAAoJEL54rhJi8gl57iMP/iC0/G/Y6zBNqIdmg1D0LYhs
1qvexDHsgVUgd/8E4yyRhnY8CY7IzVnLL5cyvby9SNscwxBq2N3OJ3AFwqftmXdi
Rn/Y7S7Plf+Va9hEA5HWtBL9AWbCJw9+E4TArah8ONhx45PSYjqwCFPcS6gN9NN7
CvPnnqjGlArd/H/35EuIgNoEeQr8wx/48v3quU1nFTF/pDLtHkInShpzyd11zf8e
h1Ai4P3iLHu2WP7YWqaywINJNb2qPM0M4Y2uqiNc+R4aQxUaihve1Fu1gz43TRw7
iKm3AWKtH6+De3R3kGXsLohPniAiiXOLmZHbZtUzSnwkTES/RbkKhPWmtN0cClvY
2qSzCGxNbyyhb8D+pECs1gWMrsJIVfQbOlpJ8zLofj9wptG3SsqUryO38m+5t8ud
+OrS+vXcZG2fkWvSiq4qW6OmiqE69ILXxTO8SdEKE7hTqQ17z4bKG5rqEH+HJYwF
+F4BU60gZHXxb/ZsjDzCMJzzwRQTfUSC+7P9xFKXBufZ7YCxPSelvRD2fUk/wfmv
fQpck9z5ixQpcyL4Lfc6HjTJ0vhFYbTzuBk8graJu2u6blWvMCqTHIp6/ifGzFQK
Fcwos2Fs/IvIZRmqgu7EqUvhVOcgffpV0oRSV/YEpPIeZK7XGYG4xKcUyEdjf5Cn
sDzj3GzW52Ot99MUyUYN
=rFVC
-----END PGP SIGNATURE-----
