X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["823" "Thursday" "9" "February" "2017" "00:47:08" "+0100" "Christian Boltz" "oss-security@cboltz.de" "<2429368.YF0b0QFtOe@tux.boltz.de.vu>" "29" "[oss-security] Re: CVE request: PostfixAdmin allows to delete protected aliases" nil nil nil "2" "2017020823:47:08" "[oss-security] Re: CVE request: PostfixAdmin allows to delete protected aliases" (number mark "U       oss-security Feb  9   29/823   " thread-indent "\"[oss-security] Re: CVE request: PostfixAdmin allows to delete protected aliases\"\n") "<3e64c619103643dbb1b3ea622b3fa4c6@imshyb02.MITRE.ORG>" ("<3e64c619103643dbb1b3ea622b3fa4c6@imshyb02.MITRE.ORG>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32374 invoked by uid 550); 9 Feb 2017 00:16:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1450 invoked from network); 8 Feb 2017 23:47:24 -0000
X-sprachakt.com-SMTP-Auth: no
X-Virus-Scanned: amavisd-new at cboltz.de
From: Christian Boltz <oss-security@cboltz.de>
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org
Date: Thu, 09 Feb 2017 00:47:08 +0100
Message-ID: <2429368.YF0b0QFtOe@tux.boltz.de.vu>
In-Reply-To: <3e64c619103643dbb1b3ea622b3fa4c6@imshyb02.MITRE.ORG>
References: <3e64c619103643dbb1b3ea622b3fa4c6@imshyb02.MITRE.ORG>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Face: #?nL0}JpqNtLQy@q#bRm?B?pGS8[mx6r.6[91zp@*2DZ?18)haWs5wgvi,,wF/JWMTUh+6x,b7_`pW3)m~0606sDW0&'EKA}_-W+)Bz~d]k>4E9TyU}k@b&1=%yk\
Subject: [oss-security] Re: CVE request: PostfixAdmin allows to delete protected aliases

Hello,

Am Dienstag, 7. Februar 2017, 20:12:24 CET schrieb cve-assign@mitre.org:
> > https://github.com/postfixadmin/postfixadmin/pull/23
> > 
> > Thanks to a missing permission check, domain admins can delete
> > aliases they are not allowed to delete (for example abuse@, which
> > the server admin might have setup so that he gets all abuse mails).
> > 
> >> Fix security hole in AliasHandler
> 
> Use CVE-2017-5930.

Thanks!

I released PostfixAdmin 3.0.2 which includes the fix for this bug (and 
some non-security bugs).

I also submitted updated packages to openSUSE Tumbleweed, Leap 42.2 and 
42.1. (Tracking bug: https://bugzilla.opensuse.org/1024211 )


Regards,

Christian Boltz
-- 
In most cases, XSLT is good enough. But I agree, for some parts
you need Aspirin. ;-)        [Thomas Schraitle in opensuse-doc]

