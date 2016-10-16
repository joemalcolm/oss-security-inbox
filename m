X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1599" "Saturday" "15" "October" "2016" "22:47:53" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20161016024753.8DF2E6C0D4B@smtpvmsrv1.mitre.org>" "39" "[oss-security] Re: libdwarf: heap-based buffer overflow in _dwarf_get_size_of_val (dwarf_util.c)" nil nil nil "10" "2016101602:47:53" "[oss-security] Re: libdwarf: heap-based buffer overflow in _dwarf_get_size_of_val (dwarf_util.c)" (number mark "U       cve-assign@m Oct 15   39/1599  " thread-indent "\"[oss-security] Re: libdwarf: heap-based buffer overflow in _dwarf_get_size_of_val (dwarf_util.c)\"\n") "<2582876.eMMFeVNJGl@arcadia>" ("<2582876.eMMFeVNJGl@arcadia>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26032 invoked by uid 550); 16 Oct 2016 02:48:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26014 invoked from network); 16 Oct 2016 02:48:05 -0000
From: cve-assign@mitre.org
To: ago@gentoo.org
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <2582876.eMMFeVNJGl@arcadia>
Message-Id: <20161016024753.8DF2E6C0D4B@smtpvmsrv1.mitre.org>
Date: Sat, 15 Oct 2016 22:47:53 -0400 (EDT)
Subject: [oss-security] Re: libdwarf: heap-based buffer overflow in _dwarf_get_size_of_val (dwarf_util.c)

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://blogs.gentoo.org/ago/2016/10/06/libdwarf-heap-based-buffer-overflow-in-_dwarf_get_size_of_val-dwarf_util-c
> 
> AddressSanitizer: heap-buffer-overflow ... READ of size 1
> 0x60489f in _dwarf_get_size_of_val ... libdwarf/dwarf_util.c:267:21
> 
> Commit fix:
> https://sourceforge.net/p/libdwarf/code/ci/2d14a7792889e33bc542c28d0f3792964c46214f/#diff-13
> and then
> https://sourceforge.net/p/libdwarf/code/ci/efe48cad0693d6994d9a7b561e1c3833b073a624/#diff-2

Use CVE-2016-8679.

(This has the same fix as CVE-2016-8681 but seems distinct.)

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYAudSAAoJEHb/MwWLVhi21csQAIhNJ/W+Q4efpfHddoeY6wTi
KZyamuq4W+Fska+8pzKInu0oiIUYm2HeoFiDqSOr8BI77tR6G8PQvm7H9V7WCATq
qSXkMNFJ3KUHIkH/DN5ZI55InyftiAb1fTuI6GfnyeLiF7oD2k2Lysg/xyw62nAA
tJmT0cbCYd42u6PoNlRcsoZZF74Wrmkdqk2+2ec/n36/kkwIbPULXcL/bOA0IUuF
3RP9qDk757WQNHmm2buGM5n/ygKCUuV9AejoUM6UWIzwETW+DUE85PTX9rH7TH+h
dDgmUjAhvq4nSULg6g+7kELKlhGnCq62/XAdzqIkDT6OvSqel6HfmL93y2JSb7je
Owl27JhKzEKQiGULp4HpVIlH+CG/edIcSZDxY114vGLe+pzJCiQir3aQ0r7GYcvk
zAyBf9JJOR2cyiUxfDJEn/7Rhlt1wMiJ/R01jl96Gno0iv1Es4fXzMXc17HU7pLk
ikhJwFOit1vEyxxWOnwfvISPPHbNNfY9TSsKsB0qGmWUzxICG3doaCII5P/HK/hP
jF/I/uQk4Dtp6X0U70m0hz58XxqBHT8CfGoXJnOZ8DT01sVO2lDU66ygFQYTET1k
3fMXBpFNR73dhMfsPJz+MIbisQCgDx9+2jacGB7w2YojTpTvs09A47mxoCNWfzsb
QHxcDWF3zOBmzf22yYWn
=nGbM
-----END PGP SIGNATURE-----
