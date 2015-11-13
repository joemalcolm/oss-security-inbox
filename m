X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1577" "Thursday" "12" "November" "2015" "22:03:05" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20151113030305.3273073C0B1@smtpvmsrv1.mitre.org>" "36" "[oss-security] Re: CVE request: libpng buffer overflow in png_set_PLTE" "^Cc:" nil nil "11" "2015111303:03:05" "[oss-security] Re: CVE request: libpng buffer overflow in png_set_PLTE" (number mark "        cve-assign@m Nov 12   36/1577  " thread-indent "\"[oss-security] Re: CVE request: libpng buffer overflow in png_set_PLTE\"\n") "<CA+PdXctx4LcZLTkfhohX1iErjwPUJTA3EBDsvf=qAJwFYBFRqw@mail.gmail.com>" ("<CA+PdXctx4LcZLTkfhohX1iErjwPUJTA3EBDsvf=qAJwFYBFRqw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 16242 invoked by uid 550); 13 Nov 2015 03:03:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 16176 invoked from network); 13 Nov 2015 03:03:17 -0000
In-Reply-To: <CA+PdXctx4LcZLTkfhohX1iErjwPUJTA3EBDsvf=qAJwFYBFRqw@mail.gmail.com>
Message-Id: <20151113030305.3273073C0B1@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Thu, 12 Nov 2015 22:03:05 -0500 (EST)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request: libpng buffer overflow in png_set_PLTE
To: glennrp@gmail.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> I request a CVE for a vulnerability in libpng, all versions, in the
> png_set_PLTE/png_get_PLTE functions.  These functions failed to check for
> an out-of-range palette when reading or writing PNG files with a bit_depth
> less than 8.  Some applications might read the bit depth from the IHDR
> chunk and allocate memory for a 2^N entry palette, while libpng can return
> a palette with up to 256 entries even when the bit depth is less than 8.

>> https://github.com/glennrp/libpng/blob/libpng16/CHANGES

Use CVE-2015-8126.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWRVIvAAoJEL54rhJi8gl5sPkQAKEY828dq1YZnIDjf8gSQldb
Bam8eRz0cVyxGo8sZ5oB+FTymMaBNGfccLBWY0XoS8WcGFYOOv1rBqIhvJrvyGm/
TsNXJJTqwe41rF1SQNOT6AwncJtsfXpPhMrCOvqw3s71dDMcxtyXkyQycry4V8Kt
IMBz++W50GC/KanDXjYnR+XTGddvU9hh9OytOZmGiroeArBn6D62KI0sBRFW1bzJ
q8ftTiV8wznang1xy8pFYaTTXK+UIOe23tVw6XAZAcpMXXF31g84SjbjULHEnS7G
Zc1m9MspDI0zo5LPVv0SZM5NpQ0H9KH7HsJ1JYY+qCqK72eUN6hnkMz2FKXqa6LA
Pj6Smng4WuPfROlse8QaM46Auk2qI6aJ3TvrfSnMiEiXuumSs3fSdAksvSO5ncvm
AbIlVmc/tBnw26wlP7Bi0YAMoLzlZACK2IemVwsHjd8r8KZZEQRGV0ofPB3TH2+i
AsmOWHdz3UQeFcOkK+KOk/gb41uDzr0tIt6u9PCc/H0mAV2b3DbF/l+dxHpg1VcO
ZHnc6pUTYZY4eWBnfSFhuL7f5qA2OlNsxMUIcLd1twtRFyAllr9d9cU5Ex05KeOJ
fgawhpJJ9zyq0fcwPitvCji+UpJher0GBrb/BLWufUbiYIVN+fUP/mDKf3zrJvAk
ncDbOaufQIwVUmXaH0iy
=K98Y
-----END PGP SIGNATURE-----
