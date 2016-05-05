X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1321" "Wednesday" "4" "May" "2016" "21:50:09" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160505015009.9BE7BB2E106@smtpvbsrv1.mitre.org>" "32" "[oss-security] Re: CVE Request: kernel information leak vulnerability in llc module" "^Cc:" nil nil "5" "2016050501:50:09" "[oss-security] Re: CVE Request: kernel information leak vulnerability in llc module" (number mark "U       cve-assign@m May  4   32/1321  " thread-indent "\"[oss-security] Re: CVE Request: kernel information leak vulnerability in llc module\"\n") "<CABEk9YxcYnhx2VDgzVztLSdY0hjGe20=7P=yp6v3WyE9-tHyfQ@mail.gmail.com>" ("<CABEk9YxcYnhx2VDgzVztLSdY0hjGe20=7P=yp6v3WyE9-tHyfQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15841 invoked by uid 550); 5 May 2016 01:51:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15823 invoked from network); 5 May 2016 01:51:09 -0000
In-Reply-To: <CABEk9YxcYnhx2VDgzVztLSdY0hjGe20=7P=yp6v3WyE9-tHyfQ@mail.gmail.com>
Message-Id: <20160505015009.9BE7BB2E106@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, csong84@gatech.edu, taesoo@gatech.edu, insu@gatech.edu
Date: Wed,  4 May 2016 21:50:09 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: kernel information leak vulnerability in llc module
To: kangjielu@gmail.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://git.kernel.org/cgit/linux/kernel/git/davem/net.git/commit/?id=b8670c09f37bdf2847cc44f36511a53afc6161fd
> 
> The stack object "info" has a total size of 12 bytes. Its last byte is
> padding which is not initialized and leaked via "put_cmsg".

Use CVE-2016-4485.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXKqYEAAoJEHb/MwWLVhi2M5wP/0oANDPgSueRVuJpx2mV9ltb
/YPO3BK4nSjzmdEd9do+6mTmz75TWVCGxEO7ET81u3lBI4rlAVC3zetSZftxlrnd
UXYYvJgAkk3wORJ3ixCki178EG/Koswdh/UENFp0wZl1gCFwWff+TBq6ZoWfX+/w
o8iV7M/xdjHUqAwEn38VjSdldLnHINq4Q9nWUGth/2aTRDCeu/e4XqdCk77EyP5D
JU0dLF2cTbJrJkpXfXdZ4LGniJqEu6Wfnv5OZGOgfDouo/uCnKn16tKOhDFxLEN8
3pZpXo2FMS5+rk4txzS2mYxOJCgnlkXXZF6ANrMlGZGZPfUmufX2IaaE+umrqL0i
RhGelyYLmDK90tJF7pvWR8KzExhB3x1g8A7TwoauIVwH8e1pEvNzP3AUF0ceA+IX
aN0WhfYMw5WSByWk2Ouw6r5s3ztTSXWJ3uzHo3C8bpedyVyWe+1GonWqbSH/e48U
5sXI59uR3rzOTOUCWCKcRv3fuvgE8t60hTMs7DDl3BP82v5cp0ykpP78Hz51amNV
EdnTmIVCbPkv8WKxzHQ4gobqpSvIlLUFMJp4bA7dj/z4AZmBplNkq3W3xQr99U3t
8m6hVzJXWaJBCOeSmV8eumRalJaljy29V55+wVwONxshjb+BdlnC7FbPUcelfhX+
6p5OZ9IH0ZpR5Gs7oOsQ
=SIWz
-----END PGP SIGNATURE-----
