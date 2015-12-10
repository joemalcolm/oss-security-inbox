X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1681" "Thursday" "10" "December" "2015" "01:13:24" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20151210061324.38C558BC1F7@smtpvmsrv1.mitre.org>" "40" "[oss-security] Re: CVE request: Redmine - Data disclosure in atom feed" nil nil nil "12" "2015121006:13:24" "[oss-security] Re: CVE request: Redmine - Data disclosure in atom feed" (number mark "U       cve-assign@m Dec 10   40/1681  " thread-indent "\"[oss-security] Re: CVE request: Redmine - Data disclosure in atom feed\"\n") "<56673E2E.6080702@vorlons.info>" ("<56673E2E.6080702@vorlons.info>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11676 invoked by uid 550); 10 Dec 2015 06:13:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11652 invoked from network); 10 Dec 2015 06:13:36 -0000
From: cve-assign@mitre.org
To: matthias@vorlons.info
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <56673E2E.6080702@vorlons.info>
Message-Id: <20151210061324.38C558BC1F7@smtpvmsrv1.mitre.org>
Date: Thu, 10 Dec 2015 01:13:24 -0500 (EST)
Subject: [oss-security] Re: CVE request: Redmine - Data disclosure in atom feed

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> http://www.redmine.org/projects/redmine/wiki/Changelog_3_1
> http://www.redmine.org/projects/redmine/wiki/Changelog_3_0
> http://www.redmine.org/projects/redmine/wiki/Changelog_2_6
> http://www.redmine.org/news/103
> http://www.redmine.org/issues/21419 "Information leak in Atom feed"
> https://github.com/redmine/redmine/commit/7e423fb4538247d59e01958c48b491f196a1de56
> http://www.redmine.org/projects/redmine/wiki/Security_Advisories

> app/views/journals/index.builder
> 
> - details_to_strings(change.details, false).each do |string|
> + details_to_strings(change.visible_details, false).each do |string|

Use CVE-2015-8537.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWaReYAAoJEL54rhJi8gl5K3sP/R/g6WGKgw/6KrtE4QKlZM9g
aUO09K1JRHSBV+bpkVe85MhvJneYWqpHOujdNmrU02JIifkYYKARMliWXjd2sudD
btQx3NXB/dbxwf/+RKI5HFoUYrv1BzxbTtuKRab3LrJRrUyJu2IHv397pEPRC34/
RdJMGbaeNQjQSydAjUV/SV/LaRt6lF0dmkeO4mb6DKIy8YshmkwYw2XeY2wZ4M1I
K8rrm20KxyT3/JHiq9xsIRbjfYQRJXQoZA5rFL15wl1/m9VSLXEZp+UAQcAAKQqc
W+0eGq1o9u6iytOhh1k4p5PP9POxcw5XrX+aMFioOppDfMyQ44UXsBbV2rYeKtZY
K2lk4glgBS9g+4bxYbt8pxGjeovy0RoGySP0JQsYMSisO81fD4Oi8NqQCVbbvygD
tcMSepJit7S7WzDta561ZfaQ8WdTw7AxUudE258HsgQZXdLA4Wm72jblMlcfaiLu
ee66OoZFsPPz8xft1fZH9MF/NlK19RPGxspGNrSmYJX6d/JJs7/I/H25BzxGjpSL
cl5WlqvRdtwravchAl5+DjTB/M131RiiYaIuZakGgdsOk+vZ6FrP5qAPRJd2cnAE
+E6TTuaabHothY52xtLpw0pwf44WjKxnxFuA9GFVJTsM3Mp1vAxUZxDMolVXsCKM
g0fvBBOtHSFzApUV7fUx
=nSzw
-----END PGP SIGNATURE-----
