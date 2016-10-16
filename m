X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3110" "Saturday" "15" "October" "2016" "22:59:53" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20161016025953.75DA06C0D7A@smtpvmsrv1.mitre.org>" "78" "[oss-security] Re: Libarchive/bsdtar: multiple crashes" nil nil nil "10" "2016101602:59:53" "[oss-security] Re: Libarchive/bsdtar: multiple crashes" (number mark "U       cve-assign@m Oct 15   78/3110  " thread-indent "\"[oss-security] Re: Libarchive/bsdtar: multiple crashes\"\n") "<30086816.X7GymaXB0v@willoughby>" ("<30086816.X7GymaXB0v@willoughby>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3501 invoked by uid 550); 16 Oct 2016 03:00:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3375 invoked from network); 16 Oct 2016 03:00:04 -0000
From: cve-assign@mitre.org
To: ago@gentoo.org
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <30086816.X7GymaXB0v@willoughby>
Message-Id: <20161016025953.75DA06C0D7A@smtpvmsrv1.mitre.org>
Date: Sat, 15 Oct 2016 22:59:53 -0400 (EDT)
Subject: [oss-security] Re: Libarchive/bsdtar: multiple crashes

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://blogs.gentoo.org/ago/2016/09/11/libarchive-bsdtar-stack-based-buffer-overflow-in-bsdtar_expand_char-util-c/

>> AddressSanitizer: stack-buffer-overflow ... WRITE of size 4
>> 
>> Upstream was not able to reproduce the issue, maybe different compiler
>> and compiler options, so he committed the fix based on what the
>> stacktrace printed.
>> 
>> https://github.com/libarchive/libarchive/commit/e37b620fe8f14535d737e89a4dcabaed4517bf1a

Use CVE-2016-8687.


> https://blogs.gentoo.org/ago/2016/09/11/libarchive-bsdtar-heap-based-buffer-overflow-in-detect_form-archive_read_support_format_mtree-c/

>> AddressSanitizer: heap-buffer-overflow ... READ of size 1


> https://blogs.gentoo.org/ago/2016/09/11/libarchive-bsdtar-memory-corruptionunknown-crash-in-bid_entry-archive_read_support_format_mtree-c/

>> AddressSanitizer: unknown-crash ... READ of size 1


> https://blogs.gentoo.org/ago/2016/09/11/libarchive-bsdtar-heap-based-buffer-overflow-in-bid_entry-archive_read_support_format_mtree-c/

>> AddressSanitizer: heap-buffer-overflow ... READ of size 1


> https://blogs.gentoo.org/ago/2016/09/11/libarchive-bsdtar-use-after-free-in-bid_entry-archive_read_support_format_mtree-c/

>> AddressSanitizer: heap-use-after-free ... READ of size 1


> https://blogs.gentoo.org/ago/2016/09/11/libarchive-bsdtar-use-after-free-in-detect_form-archive_read_support_format_mtree-c/

>> AddressSanitizer: heap-use-after-free ... READ of size 1

>> https://github.com/libarchive/libarchive/commit/eec077f52bfa2d3f7103b4b74d52572ba8a15aca

Use CVE-2016-8688 for all of eec077f52bfa2d3f7103b4b74d52572ba8a15aca.
The commit message explains that there is a single code problem that
could lead to the various reports in the above five blog posts.



> https://blogs.gentoo.org/ago/2016/09/11/libarchive-bsdtar-heap-based-buffer-overflow-in-read_header-archive_read_support_format_7zip-c/

>> AddressSanitizer: heap-buffer-overflow ... READ of size 1

>> https://github.com/libarchive/libarchive/commit/7f17c791dcfd8c0416e2cd2485b19410e47ef126

Use CVE-2016-8689.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYAueBAAoJEHb/MwWLVhi2DmkP/jIITERPW+3gZpCoB6m74SrZ
lkyE2s/GR+ckzez27+UZCieJMcBDlb9GlWFioNksZ3Q5QNOmdGOXz0NlQ2d/tMRq
TivSUiMIbIhWKIAXtu7Ypdcav2/qJsenQPkZ2yNX8rWJWVvI4q3A0dG5/GQlevCH
IwBeJd3U6S2KR9LbhwXFoNASBLAX5ONTZ1RBpvgUJ2p38SljsF4M8JWQ1OcBEyKS
V8SD0QWsehQ4KTUvWtb4ZPC+h9tNZ22msStRf2GN/q5fe05UiNDvVOzkJCxUxpau
lafgNUnKDHgNNVKUozBDhe3l2ORV63y/+7vwlzuhD4sFdnqyI+Bz4w9+98gF29jp
e+Z7XAlcFG3lBik3me9pwd5K6VZy8Q3EvYJzGtZ3mXV4SKVDpkIXU+toKaB7pRWv
G8eOro4IaOlArf2nA6O3oMafenxi1nYaoliwL33L9ORq/s+quGOy8BF2PLAuf/Da
pK+vWYzw8ErCi06fl35nw0MBEaQwcoP53TPLmckEwdt4pGBugnL4cOEYgynsH4aN
U4+FiQkeFkuFayjt/GNGjV8K2oFSff96kM5O2/PLbMGgVPnxAe4gCH9NiAfoerd1
g0C+r6cE2FpwFAmx1xzcy/1XrAOzodS4+NQLR21vZZd/knGBA05dV3XbZgZ2iWE1
iXqAGl4W7dvYgHHbUyTg
=+kz6
-----END PGP SIGNATURE-----
