X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1780" "Friday" "29" "May" "2015" "17:07:51" "+0200" "Tomas Hoger" "thoger@redhat.com" "<20150529170751.482ad9f4@redhat.com>" "49" "Re: [oss-security] Re: CVE Request: various issues in PHP" nil nil nil "5" "2015052915:07:51" "[oss-security] Re: CVE Request: various issues in PHP" (number mark "U       thoger@redha May 29   49/1780  " thread-indent "\"Re: [oss-security] Re: CVE Request: various issues in PHP\"\n") "<20150520134934.GA29538@mail.corp.redhat.com>" ("<CAEsznC6KasPjN9vNLcWgGkcGZee6K=200Wx4yXRrehVS2bUPvg@mail.gmail.com>" "<CAEsznC72a6SvHxr9-NywXehaOfpXkbgCkjeh8ijVGsyeYAc98A@mail.gmail.com>" "<20150520134934.GA29538@mail.corp.redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1969 invoked by uid 550); 29 May 2015 15:08:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1942 invoked from network); 29 May 2015 15:08:11 -0000
Message-ID: <20150529170751.482ad9f4@redhat.com>
In-Reply-To: <20150520134934.GA29538@mail.corp.redhat.com>
References: <CAEsznC6KasPjN9vNLcWgGkcGZee6K=200Wx4yXRrehVS2bUPvg@mail.gmail.com>
	<CAEsznC72a6SvHxr9-NywXehaOfpXkbgCkjeh8ijVGsyeYAc98A@mail.gmail.com>
	<20150520134934.GA29538@mail.corp.redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.27
Cc: <kaplanlior@gmail.com>, <security@php.net>, cve-assign@mitre.org
Date: Fri, 29 May 2015 17:07:51 +0200
From: Tomas Hoger <thoger@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: CVE Request: various issues in PHP
To: oss-security@lists.openwall.com

On Wed, 20 May 2015 15:49:34 +0200 Vasyl Kaigorodov wrote:

> > >> https://bugs.php.net/bug.php?id=69418,
> > >> https://bugs.php.net/bug.php?id=68598 - various functions allow
> > >> \0 in paths where they shouldn't. In theory, that could lead to
> > >> security failure for path-based access controls if the user
> > >> injects string with \0 in it. It's a bit theoretical, but it's a
> > >> possibility.
> 
> CVE-2015-4025, CVE-2015-4026 respectively.

Both of these CVEs are addressed in a single commit, that also covers
few other functions not mentioned in either of the two bug reports
(dir()/opendir() and chroot()).  Which CVE do those additional fixes
fall under?  They are not 5.4 regressions, so probably not
CVE-2015-4025, but maybe not under CVE-2015-4026 either given that bug
68598 only mentions pcntl_exec().


I think there are few fixes in 5.4.40 / 5.5.24 / 5.6.8 that should have
CVEs assigned:


https://bugs.php.net/bug.php?id=69353
http://git.php.net/?p=php-src.git;a=commitdiff;h=52b93f0cfd3cba7ff98cc5198df6ca4f23865f80

More CVE-2015-4025 / CVE-2015-4026 / CVE-2006-7243 like issues.  More
notes on what got changed is in RHBZ:
https://bugzilla.redhat.com/show_bug.cgi?id=1213407#c5


https://bugs.php.net/bug.php?id=69152
http://git.php.net/?p=php-src.git;a=commitdiff;h=0c136a2abd49298b66acb0cad504f0f972f5bfe8
http://git.php.net/?p=php-src.git;a=commitdiff;h=51856a76f87ecb24fe1385342be43610fb6c86e4
http://git.php.net/?p=php-src.git;a=commitdiff;h=fb83c76deec58f1fab17c350f04c9f042e5977d1

More unserialize issues.


https://bugs.php.net/bug.php?id=68819
http://git.php.net/?p=php-src.git;a=commitdiff;h=f938112c495b0d26572435c0be73ac0bfe642ecd

Fileinfo DoS.


Can CVEs be assigned for these?  Thank you!

-- 
Tomas Hoger / Red Hat Product Security
