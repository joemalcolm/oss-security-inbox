X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["993" "Thursday" "14" "January" "2016" "13:11:29" "-0500" "Jan Schaumann" "jschauma@netmeister.org" "<20160114181128.GD16572@netmeister.org>" "33" "Re: [oss-security] Qualys Security Advisory - Roaming through the OpenSSH client: CVE-2016-0777 and CVE-2016-0778" "^Date:" nil nil "1" "2016011418:11:29" "[oss-security] Qualys Security Advisory - Roaming through the OpenSSH client: CVE-2016-0777 and CVE-2016-0778" (number mark "        jschauma@net Jan 14   33/993   " thread-indent "\"Re: [oss-security] Qualys Security Advisory - Roaming through the OpenSSH client: CVE-2016-0777 and CVE-2016-0778\"\n") "<20160114171301.GH28298@localhost.localdomain>" ("<20160114171301.GH28298@localhost.localdomain>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3453 invoked by uid 550); 14 Jan 2016 18:11:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3426 invoked from network); 14 Jan 2016 18:11:40 -0000
Message-ID: <20160114181128.GD16572@netmeister.org>
References: <20160114171301.GH28298@localhost.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160114171301.GH28298@localhost.localdomain>
User-Agent: Mutt/1.5.24 (2015-08-30)
Date: Thu, 14 Jan 2016 13:11:29 -0500
From: Jan Schaumann <jschauma@netmeister.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Qualys Security Advisory - Roaming through the
 OpenSSH client: CVE-2016-0777 and CVE-2016-0778
To: oss-security@lists.openwall.com

Qualys Security Advisory <qsa@qualys.com> wrote:
 
> Since version 5.4 (released on March 8, 2010), the OpenSSH client
> supports an undocumented feature called roaming:

Why is version 5.3 not affected?

The change appears to have been introduced in

http://cvsweb.openbsd.org/cgi-bin/cvsweb/src/usr.bin/ssh/clientloop.c.diff?r1=1.211&r2=1.212

https://github.com/openssh/openssh-portable/commit/c5564e1c4c41ae9af96973e2996e2a4285acbae8#diff-de6290efbc1504e2b727aee24e88db02

on 2009-05-28.

OpenSSH 5.3 appears to have been named in
https://github.com/openssh/openssh-portable/commit/cd6b1a27cbb9400565811f908ca536937d875b8f
on 2009-06-30.

I also see:

$ ssh -V
OpenSSH_5.3p1, OpenSSL 1.0.0-fips 29 Mar 2010
$ ssh -o UseSomeBogusOption=yes `hostname` date
command-line: line 0: Bad configuration option: UseSomeBogusOption
$ ssh -o UseRoaming=no `hostname` date
Thu Jan 14 09:27:24 PST 2016
$ 

which suggests that OpenSSH 5.3p1 at the very least _knows_ about the
UseRoaming option.

-Jan
