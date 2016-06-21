X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1507" "Tuesday" "21" "June" "2016" "16:27:07" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160621202707.249988BC11C@smtpvmsrv1.mitre.org>" "39" "[oss-security] Re: CVE Request: 2015 squidguard reflected XSS" "^Cc:" nil nil "6" "2016062120:27:07" "[oss-security] Re: CVE Request: 2015 squidguard reflected XSS" (number mark "U       cve-assign@m Jun 21   39/1507  " thread-indent "\"[oss-security] Re: CVE Request: 2015 squidguard reflected XSS\"\n") "<20160620134053.GG24371@suse.de>" ("<20160620134053.GG24371@suse.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26274 invoked by uid 550); 21 Jun 2016 20:27:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26248 invoked from network); 21 Jun 2016 20:27:18 -0000
In-Reply-To: <20160620134053.GG24371@suse.de>
Message-Id: <20160621202707.249988BC11C@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Tue, 21 Jun 2016 16:27:07 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: 2015 squidguard reflected XSS
To: meissner@suse.de

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> http://www.squidguard.org/Downloads/CHANGELOG
>         2015-02-01      Fixed a cross site vulnerability in squidGuard.cgi
> 
> http://www.squidguard.org/Downloads/Patches/1.4/Readme.Patch-20150201

> +$url =~ s/</&lt;/g ;
> +$url =~ s/>/&gt;/g ;

Use CVE-2015-8936.

(We posted http://www.openwall.com/lists/oss-security/2016/06/20/6 in
error. We will adjust our process to try to avoid sending "Thank you
for your submission" to the oss-security list.)

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXaaI4AAoJEHb/MwWLVhi2n3kQAJ/b21J8D3SDHZzjiBC8sQXE
lG+FE6FN8HWUNn0/LVk2vX+M7MTN92rT24mrBDLx92/ujWWzFdyA8IL6Xvt/ES4Y
NUyyw/lFHgi0wE0LUz+6lae/VF5f/sztyZhufuuMmZ3onFc7i06h3tR9B5sNZJpw
UFQIgTmIoppoja7xzEcq7cplAKACxsTcbRdvD/nBJ4pA+vJ+YOv8B+X9fy4pfh5J
K9pGuBpHqgAYTXUZOULuBDtDs6Mow1zoqTFZ4wp+8M3tlGCF9aIuGOvVG0Zx+GFr
nP7PjHn1M2prs0i/7Mp0bolrfyxBlfHalkFYcNAg6Zo8buqobSh7GPiQ/ITlrK+J
Aude8FZ+Oj4HdpPsd87Vtd/csedF+lMKhOjLYceLQsUrutoczmUax68g797Q+UiB
0ubq8jOZu/3okbW7RUitop0hn/HZq7YK5+GkOgHYT9t1qgZVsDIfo/mKhDhyHoFy
yT72LFhieAjL0UFX8fYRWfe+B8lEMfVRXiLCg4SXtoOfUUeWiMsxlvuO72USr9gQ
Kku3/a1bgN3rGypyQgVyQKGQnnTqvu/LLitbelDy2CO6J2DggfI2rNTugfrzTaJg
zovyqf4K73nzh43qjOn0uTMN3nXziTIJ5ZJE8CzbYjdCvvtm5X8fUG5q1YGcxWuE
dix1vSNOFPwRL377PWm6
=MSpr
-----END PGP SIGNATURE-----
