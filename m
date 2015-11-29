X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2445" "Sunday" "29" "November" "2015" "05:58:01" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20151129105801.918E7332004@smtpvbsrv1.mitre.org>" "55" "[oss-security] Re: Heap Overflow in PCRE" "^Cc:" nil nil "11" "2015112910:58:01" "[oss-security] Re: Heap Overflow in PCRE" (number mark "        cve-assign@m Nov 29   55/2445  " thread-indent "\"[oss-security] Re: Heap Overflow in PCRE\"\n") "<CALx_OUAUgrpm0W0E=qDq_hw_3tZ3e+wiRjfQ99pg+n4xO-93cw@mail.gmail.com>" ("<CALx_OUAUgrpm0W0E=qDq_hw_3tZ3e+wiRjfQ99pg+n4xO-93cw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24563 invoked by uid 550); 29 Nov 2015 10:58:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24522 invoked from network); 29 Nov 2015 10:58:13 -0000
In-Reply-To: <CALx_OUAUgrpm0W0E=qDq_hw_3tZ3e+wiRjfQ99pg+n4xO-93cw@mail.gmail.com>
Message-Id: <20151129105801.918E7332004@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org
Date: Sun, 29 Nov 2015 05:58:01 -0500 (EST)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Heap Overflow in PCRE
To: oss-security@lists.openwall.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Languages such as Flash or JavaScript, where untrusted parties are
> allowed to specify regular expression patterns that are compiled by an
> underlying regex library - be it PCRE or something else. Examples:
> 
> https://code.google.com/p/google-security-research/issues/detail?id=225
> https://code.google.com/p/google-security-research/issues/detail?id=208

This suggests an important point: CVEs could potentially be tracked by
Adobe, and thus have a relationship to systems on which the CVEs
aren't directly important to vulnerability assessment of a package
with something like pcre or libpcre in its name.

"pcre_compile.cpp" in
https://code.google.com/p/google-security-research/issues/detail?id=208
might indicate that Adobe has a fork.
http://vcs.pcre.org/pcre/code/trunk/ has the pcre_compile.c filename,
and http://vcs.pcre.org/pcre2/code/trunk/src/ has the pcre2_compile.c
filename.

JavaScript may be "something else" in most cases, e.g.,

  http://blog.chromium.org/2009/02/irregexp-google-chromes-new-regexp.html
  https://github.com/v8/v8/tree/master/src/regexp
  https://hg.mozilla.org/mozilla-central/file/tip/js/src/irregexp

We haven't looked at whether there are ever attack vectors associated
with untrusted Lua code, e.g., if the Lua code can make use of
something like https://github.com/rrthomas/lrexlib to reach vulnerable
code found in the system's libpcre package.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWWtlKAAoJEL54rhJi8gl5LOIQAMEU1DlZOAPKO5LbXfBbAeBA
BfBgJbKarzojbDdgZWa0cgT7Fz+ZlJRvmgTYnnhqhscah4jdE4/P2wM5/vn0uZfU
0NaleCEv/jEh9OfPF6DJVd/sABJ2ZcAPMzrjycuLSv1Tytl12djU6+Im/Y7VmZJX
hVJ7C5lukXTvNsV/lHPgIb9gWqlQ+EiMBM5bL0Wrmgy5n1xTq8SjqQuZsDwuP4y6
uh3/Du1DyaTGiMgy7Jw17fUJ3D77/FvmBAtyzTcBAsvpjXJ2pXLQpo1QSac/RI9u
BXZchxI5aHWfYnPOixbTIB18pdosPN8JbB/+lmQSlEMrBWSOhezk46k1lfVep5K5
yjtLyAizPbCymsZQRFVPJgZl6AUVHR17TXHeLWdXo6P4krpwk2m7GOJhSdLCedZL
OGcaz+4EIqDPAGeewjowCRDUcbJaktsOnAwSMjpONl2Q0P4tbvWK53tR7tj9xwTr
xI0M6HJol/+ppBIpwUTk6m2HrxpayXHzhmco4K6ew8xOjh+dUHAFVot5w1xuL7BR
Mxd/tQamdtfdN7be6sxK+GAf5G2HOfi8OpsO3MRMKyf0eMu34quQuhpzfLQSPc8L
LyK2sHxuBnN5corqcnkqKuEwfNYUYeARlVOub+M1EmrWM78lmoGD6i/KgMz5ZS/Z
j9ug7RgBt+78I32b76y4
=hUsw
-----END PGP SIGNATURE-----
