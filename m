X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1282" "Thursday" "5" "November" "2015" "11:46:27" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20151105164627.27EF76C03E9@smtpvmsrv1.mitre.org>" "34" "[oss-security] Re: CVE request: qt5-qtwebkit records visited URLS in private browsing" nil nil nil "11" "2015110516:46:27" "[oss-security] Re: CVE request: qt5-qtwebkit records visited URLS in private browsing" (number mark "        cve-assign@m Nov  5   34/1282  " thread-indent "\"[oss-security] Re: CVE request: qt5-qtwebkit records visited URLS in private browsing\"\n") "<563B6D08.6030008@redhat.com>" ("<563B6D08.6030008@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17773 invoked by uid 550); 5 Nov 2015 16:46:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17755 invoked from network); 5 Nov 2015 16:46:38 -0000
In-Reply-To: <563B6D08.6030008@redhat.com>
Message-Id: <20151105164627.27EF76C03E9@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Thu,  5 Nov 2015 11:46:27 -0500 (EST)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request: qt5-qtwebkit records visited URLS in private browsing
To: amaris@redhat.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> qt5-qtwebkit records visited URLs to its favicon database
> WebpageIcons.db while using private browsing mode:
> 
> https://codereview.qt-project.org/#/c/108936/

> Source/WebCore/loader/icon/IconController.cpp

Use CVE-2015-8079.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWO4a+AAoJEL54rhJi8gl5NJQP+wdu/xobqgzGMvPyUztbSkml
xSstFSsqpj+ZiHxiBqmoroGvKo5VwHqKC7kJz4QqhylpVYvYSjeWqMoSLICGm2eU
VyvxqhZDKgN0V+7O33ZEm7WlHHoYGfJ+05AH9I9FKqAuOznCboYC/gou8xuCTUb+
UMmZt8s2KD7TInnzrUPdpJpfRww9VpIHP4fBwXwLIiJe9iqk48pD1cPGYI39rvv/
GnERq1VY56Y/B2lplZrdZJOMn5D8egXpUSlHLltqgqgUFnRi83Hlg7ME4w+YbTy7
zo2coBLTI7LTGGAhqHIlAKQ+jQjdNmdynK5hWZmzQqo0mlYcsbCL6Le8gCyUxail
KhESM3p2gu1UfQnYzb6AE150qf3j3WXkXL0i3FZbk8S3A7JclBuCCR4ogOpkWC4y
JsCF4ZXfOor7IBDo9Yq45l0kV2VbJFgel6dGhKMF3VC982bmdwDA6ISuHgj9ZwWK
v08GQKPGAsYh0GqtF+l3oy6jyInojsdR/cPcVVuxPMQHJd3vvJyGls2s5NS9RXpT
IbVWK22k9Yg0sjrMhd21ARX39/LJMmf2MMkKXRYafxoPrHr9Gq6PXr6hFi5E6XeP
fozWYSCFdd9MCNeKiFwlKrjtq0tmpMfKENstIcjtSWR1EieaJ1czgjrMrc7DQOdk
EtXfr/9/uvVPSL0jH2aK
=psBv
-----END PGP SIGNATURE-----
