X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1880" "Thursday" "23" "April" "2020" "15:28:48" "+0200" "Jasper Lievisse Adriaanse" "j@jasper.la" "<CDC3220B-901E-4A8C-B297-C39451934DE0@jasper.la>" "49" "[oss-security] Exuberant Ctags and x2vpn format string vulnerabilities" nil nil nil "4" "2020042313:28:48" "[oss-security] Exuberant Ctags and x2vpn format string vulnerabilities" (number mark "U       j@jasper.la  Apr 23   49/1880  " thread-indent "\"[oss-security] Exuberant Ctags and x2vpn format string vulnerabilities\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Exuberant Ctags and x2vpn format string vulnerabilities" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32206 invoked by uid 550); 23 Apr 2020 13:30:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31751 invoked from network); 23 Apr 2020 13:29:04 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=jasper.la; h=from
	:content-type:content-transfer-encoding:mime-version:subject
	:message-id:date:to; s=dkim; bh=lDrAcu00LNDU4MQ+LjJQcZuENy4=; b=
	jYkhNe0K2uzkq48l6mT1AVvXDKIaA+kjRGxkpD6KdAj9PzbhmRhO0mN2GqzX06xn
	aj8Lvy/4e5s6j6LfofVbIa1JGz3Dazpcdkn0zbcoe+cEqSo5LKwszZiolVIYXR14
	UxRXhcTppuLSyQIcnRkAyUjbYKe2Y70XiUwyfdQ0Lzs=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=jasper.la; h=from
	:content-type:content-transfer-encoding:mime-version:subject
	:message-id:date:to; q=dns; s=dkim; b=PI8IC2LpIw3lx2kUssGaXREPeK
	zczAM02eJx7fDCw1E/q/5J3XtmV/fefI07yI+eCoK1PBcwijUoluwKRBeEpKT4RU
	f0l0URM/438zfyj9+HqNWLrDiCkV/oJESuxAZtnKLjXHOkZ7sHx40K8beuijfAWi
	lm1iEhSxTOBu1jcEA=
From: Jasper Lievisse Adriaanse <j@jasper.la>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.80.23.2.2\))
Message-Id: <CDC3220B-901E-4A8C-B297-C39451934DE0@jasper.la>
Date: Thu, 23 Apr 2020 15:28:48 +0200
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3608.80.23.2.2)
Subject: [oss-security] Exuberant Ctags and x2vpn format string vulnerabilities

Hello,

I noticed two format string vulnerabilities in Exuberant Ctags and x2vpn, b=
oth of these were fixed back in 2009 and 2012 however they don't appear to =
have been picked up widely.
(Note this concerns Excuberant Ctags and not Universalt Ctags which is a co=
ntinuation for the former.)

For example the issue in ctags was fixed in 2009 by the original author in =
the upstream subversion repository, but a proper release was never made aft=
er the affected 5.8 version was released.
Some distributions (most notably Debian, Centos 8) have switched to distrib=
uting a version based on an svn checkout, whereas others (OpenBSD, FreeBSD,=
 pkgsrc, CentOS < 8, Homebrew, etc) were still using the actual 5.8 release.

For ctags it can be triggered by specifying an existent but unreadable rege=
x file with the following proof-of-concept:

$ touch "%p %p"; chmod 000 "%p %p"; ectags --regex-c=3D"@%p %p"
ectags: Warning: 0x0 0x189fa32db1da : Permission denied
ectags: No files specified. Try "ectags --help".
$

Or a simple crasher:

$ touch %n; chmod 000 %n; ectags --regex-c=3D@%n
ectags: Warning: zsh: segmentation fault (core dumped)  ectags --regex-c=3D=
@%n
$

and for x2vpn it relies on overwriting argv[0]:

tau:2011 ctags % ARGV0=3D"%08x %08x" x2vnc localhost:0
00000010 1e950c0a: ConnectToTcpAddr: connect: Connection refused
%08x %08x: unable to connect to VNC server
tau:2012 ctags %

I described some more details in https://blog.jasper.la/poking-old-format-s=
tring-bugs.html

I'm posting to this list to make sure other vendors are aware of these issu=
es in ctags and x2vnc because eventhough there were fixed in 2009/2012, man=
y vendors are still shipping the vulnerable code.
If CVEs were to be allocated from the 2009 and 2012 ranges for ctags and x2=
vnc respectively to make tracking these issues easier, that wouldn't hurt I=
 guess.

Cheers,
Jasper=
