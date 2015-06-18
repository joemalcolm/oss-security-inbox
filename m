X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3709" "Thursday" "18" "June" "2015" "11:02:00" "+0200" "Tomas Hoger" "thoger@redhat.com" "<20150618110200.7c5d78b2@redhat.com>" "86" "Re: [oss-security] Re: CVE Request: various issues in PHP" nil nil nil "6" "2015061809:02:00" "[oss-security] Re: CVE Request: various issues in PHP" (number mark "        thoger@redha Jun 18   86/3709  " thread-indent "\"Re: [oss-security] Re: CVE Request: various issues in PHP\"\n") "<20150616172456.ADCE052E1F7@smtpvbsrv1.mitre.org>" ("<20150529170751.482ad9f4@redhat.com>" "<20150616172456.ADCE052E1F7@smtpvbsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9761 invoked by uid 550); 18 Jun 2015 09:02:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9736 invoked from network); 18 Jun 2015 09:02:25 -0000
Message-ID: <20150618110200.7c5d78b2@redhat.com>
In-Reply-To: <20150616172456.ADCE052E1F7@smtpvbsrv1.mitre.org>
References: <20150529170751.482ad9f4@redhat.com>
	<20150616172456.ADCE052E1F7@smtpvbsrv1.mitre.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.23
Cc: oss-security@lists.openwall.com, kaplanlior@gmail.com, security@php.net
Date: Thu, 18 Jun 2015 11:02:00 +0200
From: Tomas Hoger <thoger@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: CVE Request: various issues in PHP
To: cve-assign@mitre.org

On Tue, 16 Jun 2015 13:24:56 -0400 (EDT) cve-assign@mitre.org wrote:

> In this type of situation, CVEs are assigned on a per-discoverer basis.
> CVE-2015-4025 is for thoger@redhat.com discoveries, whereas
> CVE-2015-4026 is for yohgaki@php.net. See:
> 
>   http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2015-4025
>   http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2015-4026
> 
> > dir()/opendir() and chroot()
> 
> Four weeks ago, we asked security@php.net to contact us if those other
> changed functions were associated with vulnerability fixes. They have
> not contacted us about this.
> 
> Are you reporting that some or all of them had vulnerabilities?

With all these CVE-2006-7243-like issues, it's bit tricky.  Many of
those that got corrected recently seem rather unlikely to be used with
untrusted inputs.  However, if you think hard, you may be able to come
up with some convoluted use case where they matter.  So it may not be
easy to draw the line between those that may still qualify as security
fixes and those that don't.  The recent approach was to handle them as
security (e.g. upstream bugs were changed to security bugs and made
private until they were fixed).
 
> For example, is it reasonable to expect that a PHP application may
> want the client to make a choice of a chroot directory, and the
> intended behavior is to restrict the choice to a name ending in ".d"
> but this can be bypassed by something like a
> "/usr/local/var/x/does-not-end-in-dot-d\0.d" value?

With chroot requiring root privileges, the function should not be used
in typical PHP use cases at all.  So the above example does not seem
likely.

> > More unserialize issues.
> 
> > https://bugs.php.net/bug.php?id=69152
> > http://git.php.net/?p=php-src.git;a=commitdiff;h=51856a76f87ecb24fe1385342be43610fb6c86e4
> 
> Use CVE-2015-4599 for the taoguangchen@icloud.com discovery fixed in
> 51856a76f87ecb24fe1385342be43610fb6c86e4.
> 
> 
> > http://git.php.net/?p=php-src.git;a=commitdiff;h=0c136a2abd49298b66acb0cad504f0f972f5bfe8
> 
> Use CVE-2015-4600 for the taoguangchen@icloud.com discoveries in bug
> 69152 that were fixed in 0c136a2abd49298b66acb0cad504f0f972f5bfe8 -
> SoapClient::__getLastRequest, SoapClient::__getLastResponse,
> SoapClient::__getLastRequestHeaders,
> SoapClient::__getLastResponseHeaders, SoapClient::__getCookies, and
> SoapClient::__setCookie.
> 
> Use CVE-2015-4601 for the other vulnerabilities fixed in
> 0c136a2abd49298b66acb0cad504f0f972f5bfe8, with the exception that the
> issue involving the uri property in do_soap_call is already covered by
> CVE-2015-4148.
> 
> 
> > http://git.php.net/?p=php-src.git;a=commitdiff;h=fb83c76deec58f1fab17c350f04c9f042e5977d1
> 
> Use CVE-2015-4602 for this issue mentioned at [2015-03-20 14:58 UTC]
> in bug 69152.
> 
> 
> > https://bugs.php.net/bug.php?id=69152 [2015-03-03 04:30 UTC]
> 
> Use CVE-2015-4603 for the exception::getTraceAsString issue. As
> mentioned at [2015-03-25 09:57 UTC], the affected versions for this
> issue are different from those of other issues discussed in bug 69152.

Out of curiosity, why all the splits here?  E.g. CVE-2015-4599 and
CVE-2015-4600 have same reporter, same type, same affected (released)
versions, and the same PHP extension.  I assume CVE-2015-4601 is
separate because of different / unclear reporter.  CVE-2015-4601 and
CVE-2015-4602 seem like possible candidate for merging with
CVE-2015-4599 / CVE-2015-4600 as they also have the same reporter and
versions.  There's benefit of having them separate as they don't affect
SOAP extension, but issue affecting different module of the code base
is not a typical reason for split.

Thank you!

-- 
Tomas Hoger / Red Hat Product Security
