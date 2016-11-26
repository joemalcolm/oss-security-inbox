X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1620" "Saturday" "26" "November" "2016" "17:50:48" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<8a0125dd564a421ea358674b196666b5@imshyb02.MITRE.ORG>" "43" "[oss-security] Re: CVE Request: resource exhaustion in regex expression handling in WebKit" nil nil nil "11" "2016112622:50:48" "[oss-security] Re: CVE Request: resource exhaustion in regex expression handling in WebKit" (number mark "U       cve-assign@m Nov 26   43/1620  " thread-indent "\"[oss-security] Re: CVE Request: resource exhaustion in regex expression handling in WebKit\"\n") "<CACn5sdSfj16w6g_-WODTBY20AMFxw50qUJARvhhAByhR0yOrwg@mail.gmail.com>" ("<CACn5sdSfj16w6g_-WODTBY20AMFxw50qUJARvhhAByhR0yOrwg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9728 invoked by uid 550); 26 Nov 2016 22:51:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9707 invoked from network); 26 Nov 2016 22:51:00 -0000
From: <cve-assign@mitre.org>
To: <gustavo.grieco@gmail.com>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
In-Reply-To: <CACn5sdSfj16w6g_-WODTBY20AMFxw50qUJARvhhAByhR0yOrwg@mail.gmail.com>
Message-ID: <8a0125dd564a421ea358674b196666b5@imshyb02.MITRE.ORG>
Date: Sat, 26 Nov 2016 17:50:48 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: CVE Request: resource exhaustion in regex expression handling in WebKit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Trying to parse and execute this regex code in WebKit:
> 
> [ about 170 instances of "($" and then "{-2,16}" and then about
>   170 instances of "+)" ]
> 
> will consume large amounts of memory (8GB or more), after a few seconds.
> This seems to be a case of CWE-400 (uncontrolled resource consumption).
> 
> Chrome and Firefox based browsers are *not* affected.

Use CVE-2016-9643.


> asked to MITRE about another issue related with uncontrolled resource
> consumption in Firefox loading a SVG but receive no response.

We have just answered that on its own thread.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYOg/tAAoJEHb/MwWLVhi2jXMP+wXfT6g+wyocbXiiIbflNo9x
Aj8TQ9PP7ZTO2akx4xOdep+Jpulg2K5ACWG/PDqy+oPV3ouJDyT0xzUTYK0MLFWa
oDe460NUGm92UkG9VSkzSe5RYN7tawxzYfoaSulJf4gd6bDUSRPxB+rDEWeX6mCT
q/VKySkcs7wAtZd6N9W/NPg0+Jeo/qgCeU0wf1Uz8c+1WvF7c2ooqyYTq36Z434F
gT4GshSEqGmi3PCKomzSEmaRYeGhREy7J82/b7JHYgmMDnwDJWNqg/MXhzE6VjP4
uRSEAYaKksVsWI+CtxLNeiBSZAyEV2Gd2hSthd/xSAQfJ9lAK+rxJN38cIl0NIL5
4tgyNHGYtOYIjiFKtil0T3DE3IlLlWFJAa2ICkpqDoFjPDBQXxbKcwG4TM5DTMBe
Fqe7WK3SXZNd5imt296L0lBry50v7/xjyIstUR8QoPJBJ0AGHJw8uCRjps0zZK6k
nzbKM0LZdgTmf7zdxjGIEjhLIkGCxXJdGGVQMFb80EHgwM+LfTDD1KTAodB+1oRd
UJeaRv0EqndpAOKlxHhMDGxk7n4Tz34luKaav9abaJ4mo8F1Sho4UgRVZtlik+EQ
Wm3g/BeTqjj2JkBvQwrQNVn5VA75tE+Xp5ZnjnQTPSuqwBNvQjPU+EoeStadSP57
ALKxkr8D5RHlAGNzIVoQ
=eJl5
-----END PGP SIGNATURE-----
