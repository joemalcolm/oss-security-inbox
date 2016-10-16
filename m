X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1617" "Saturday" "15" "October" "2016" "22:50:34" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20161016025034.CDBBE6C0D4B@smtpvmsrv1.mitre.org>" "40" "[oss-security] Re: libdwarf: heap-based buffer overflow in _dwarf_get_abbrev_for_code (dwarf_util.c) (ANOTHER ONE)" nil nil nil "10" "2016101602:50:34" "[oss-security] Re: libdwarf: heap-based buffer overflow in _dwarf_get_abbrev_for_code (dwarf_util.c) (ANOTHER ONE)" (number mark "U       cve-assign@m Oct 15   40/1617  " thread-indent "\"[oss-security] Re: libdwarf: heap-based buffer overflow in _dwarf_get_abbrev_for_code (dwarf_util.c) (ANOTHER ONE)\"\n") "<2751056.p2fs675oKu@arcadia>" ("<2751056.p2fs675oKu@arcadia>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13333 invoked by uid 550); 16 Oct 2016 02:50:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12267 invoked from network); 16 Oct 2016 02:50:46 -0000
From: cve-assign@mitre.org
To: ago@gentoo.org
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <2751056.p2fs675oKu@arcadia>
Message-Id: <20161016025034.CDBBE6C0D4B@smtpvmsrv1.mitre.org>
Date: Sat, 15 Oct 2016 22:50:34 -0400 (EDT)
Subject: [oss-security] Re: libdwarf: heap-based buffer overflow in _dwarf_get_abbrev_for_code (dwarf_util.c) (ANOTHER ONE)

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://blogs.gentoo.org/ago/2016/10/06/libdwarf-heap-based-buffer-overflow-in-_dwarf_get_abbrev_for_code-dwarf_util-c-2/

> AddressSanitizer: heap-buffer-overflow ... READ of size 1
> libdwarf/dwarf_util.c:590:9 in _dwarf_get_abbrev_for_code

> Commit fix:
> https://sourceforge.net/p/libdwarf/code/ci/2d14a7792889e33bc542c28d0f3792964c46214f/#diff-13
> and then
> https://sourceforge.net/p/libdwarf/code/ci/efe48cad0693d6994d9a7b561e1c3833b073a624/#diff-2
> (because of a mistake)

Use CVE-2016-8681.

(This has the same fix as CVE-2016-8679 but seems distinct.)

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYAuddAAoJEHb/MwWLVhi2l7EP/1T9zeweglEA9u8ZOy49fD+0
7dTVP84wg1PDV20ox6rFpO8cULGEkBdpeCKbmhloMDV8A1B1S0a/FkKzSuzJ8ib2
s770i5d1tLYHMoavotL94ta7rnoh65ePtbCSIyH4FWD74IUu+pVxvNrsEfXG2jiJ
I5DdWRIJAOEpws0XNVSsoOogyQiJ5FEwRsUFeZwN5q5sdjtGXDqit0YMmDjrBJYu
6xMUh3LouC1S2kJ3R5LOMcPg/hzMcConeiRM3DYyn/30KiFxWwiTnrFBOkfwEBLs
F+UIfrYbGi21bywCmVb0pdRZzcdOuQQDaHDfBxjmJg9jFk/Jf8WXvJM0ArMFBWzN
05FqkcCBYAdXMmPoPykVEtOKNMvnxQKll3L5WnizKY500oafNiFoR5+CmqQCr958
gBMCQQnZqP0BSLZb4GDFwdXKl0dWYbvnyw7VJ7xV4an05hJ2U1xDPDDiltZ4irxQ
MNjxnG57ByTv8zV5s5HuxHdm59Ud29vQU3fDVvDOkBIajxlLQ/Da/PzRk0uREpTu
vwcSkyfda0FZsLhV/xjVghHVexbIBGxQ8+7De/myAM6PHcf970dyTMDKtToVDzB2
3/I9DmTr6wSnAPjPXCQL+93HC5dytjjqg4JTCAthKGvS82iPlNZ7+b57mosxgXow
9GmBfxF8pSb6AJ0AxCnD
=RxUq
-----END PGP SIGNATURE-----
