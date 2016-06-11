X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1724" "Saturday" "11" "June" "2016" "11:37:06" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160611153706.6DDF16C084B@smtpvmsrv1.mitre.org>" "44" "[oss-security] Re: MantisBT: XSS in custom fields management" nil nil nil "6" "2016061115:37:06" "[oss-security] Re: MantisBT: XSS in custom fields management" (number mark "U       cve-assign@m Jun 11   44/1724  " thread-indent "\"[oss-security] Re: MantisBT: XSS in custom fields management\"\n") "<njfkjh$lk7$1@ger.gmane.org>" ("<njfkjh$lk7$1@ger.gmane.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19954 invoked by uid 550); 11 Jun 2016 15:37:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19915 invoked from network); 11 Jun 2016 15:37:21 -0000
From: cve-assign@mitre.org
To: dregad@mantisbt.org
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <njfkjh$lk7$1@ger.gmane.org>
Message-Id: <20160611153706.6DDF16C084B@smtpvmsrv1.mitre.org>
Date: Sat, 11 Jun 2016 11:37:06 -0400 (EDT)
Subject: [oss-security] Re: MantisBT: XSS in custom fields management

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Please assign a CVE ID for the following issue.
> 
> unescaped output of 'return URL' GPC parameter
> 
> https://mantisbt.org/bugs/view.php?id=20956
> https://github.com/mantisbt/mantisbt/commit/5068df2dcf79c34741c746c9b27e0083f2a374da
> https://github.com/mantisbt/mantisbt/commit/11ab3d6c82a1d3a89b1024f77349fb60a83743c5

As far as we can tell, this is best interpreted as a single XSS
vulnerability, even though:

  - "Also `print_bracket_link()` function doesn't check if link is
     `data:` or `javascript:`" is a separate observation

  - the number of .php files changed in 1.2.x is different from the
    number of .php files changed in 1.3.x

Use CVE-2016-5364.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXXC9xAAoJEHb/MwWLVhi2D7YP/2UaDjwKLEa6K+aUJG+Zbk87
BGlRRVrzTY6co+uErHZIG/XgAho7QERN68LhjVrI3IYqBgogOlNDLtiyusM2T8W7
1gQA+paYuhcIVlI53IxsMM6ooww4rTyp4pR1fGxyRt7BhVVBs7XJzv+AJy+qxBM9
3TF/TwDvTGV0agcefOkQq0Y2iXbvWDf3R8/rX/IOYabYDXvODgzYR+szWrm9BanR
GV1Ls2Lzty5FU+/uK0KC9/WFx9JhifO19S+8J7hR9eptpgt2eMX2pxHWdTzFp//b
iSJXlInaXzueSy6UIuuDExOmKATtwl7P/0fn1GIkBzmeVoid/BQNircidhvx8ddJ
yTNKEwFNShNKevCLuDabwSXqAfmnXyfz8K+7KmsYnj9gzV+jQkmfM6o0/nV1mfp1
mEErz8WD7UqO+K1s8noZQZjmjzlpCFM8WKTPYnWP/Z6HU75qfQl3SBJV9wEiuBB6
ulcnQpzRFveAeZIjTuPfhLir7t8Lufl8Dx28iavlPmTBeSHlQL1oolEBvMD1svcX
s1H3tMqxj+MW3FJ+ZJKqqHEeaOpSZNaMmKE1NFa/S8YEo19aU7UFquxFspC0KvWk
86aAwfboUlUm5o9bHjiSr0X48DHl7ZzFcjxvoANM6cA49UWhMQK6H7LzDBgYIZRb
K+G0fIbWtCCpW1a5DvNl
=VLAF
-----END PGP SIGNATURE-----
