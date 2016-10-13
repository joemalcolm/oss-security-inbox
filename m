X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1468" "Thursday" "13" "October" "2016" "10:25:46" "-0400" "Vladis Dronov" "vdronov@redhat.com" "<1880446022.2861488.1476368746117.JavaMail.zimbra@redhat.com>" "43" "Re: [oss-security] kernel: Stack corruption while reading /proc/keys (CVE-2016-7042)" "^Cc:" nil nil "10" "2016101314:25:46" "[oss-security] kernel: Stack corruption while reading /proc/keys (CVE-2016-7042)" (number mark "        vdronov@redh Oct 13   43/1468  " thread-indent "\"Re: [oss-security] kernel: Stack corruption while reading /proc/keys (CVE-2016-7042)\"\n") "<20161013125717.GA16563@kroah.com>" ("<1317626822.2210899.1474545527129.JavaMail.zimbra@redhat.com>" "<1061369962.2838882.1476362811840.JavaMail.zimbra@redhat.com>" "<20161013125717.GA16563@kroah.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19487 invoked by uid 550); 13 Oct 2016 14:25:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19458 invoked from network); 13 Oct 2016 14:25:58 -0000
Message-ID: <1880446022.2861488.1476368746117.JavaMail.zimbra@redhat.com>
In-Reply-To: <20161013125717.GA16563@kroah.com>
References: <1317626822.2210899.1474545527129.JavaMail.zimbra@redhat.com> <1061369962.2838882.1476362811840.JavaMail.zimbra@redhat.com> <20161013125717.GA16563@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.40.0.183]
X-Mailer: Zimbra 8.0.6_GA_5922 (ZimbraWebClient - FF49 (Linux)/8.0.6_GA_5922)
Thread-Topic: kernel: Stack corruption while reading /proc/keys (CVE-2016-7042)
Thread-Index: rc2Qje7HACOFD36AsMwYMKeuSAkh5Q==
Cc: oss-security@lists.openwall.com
Date: Thu, 13 Oct 2016 10:25:46 -0400 (EDT)
From: Vladis Dronov <vdronov@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] kernel: Stack corruption while reading
 /proc/keys (CVE-2016-7042)
To: David Howells <dhowells@redhat.com>

Hello, David,

Could you, please, tell, if you plan to submit that patch of yours to be merged upstream?

Best regards,
Vladis Dronov | Red Hat, Inc. | Product Security Engineer


----- Original Message -----
From: "Greg KH" <greg@kroah.com>
To: oss-security@lists.openwall.com
Sent: Thursday, October 13, 2016 2:57:17 PM
Subject: Re: [oss-security] kernel: Stack corruption while reading /proc/keys (CVE-2016-7042)

On Thu, Oct 13, 2016 at 08:46:51AM -0400, Vladis Dronov wrote:
> Hello,
> 
> It was found that when gcc stack protector is turned on, proc_keys_show() can
> cause a panic in the Linux kernel due to the stack corruption. This happens
> because xbuf[] is not big enough to hold a 64-bit timeout value rendered as weeks.
> 
> CVE-2016-7042 was assigned to this flaw internally by the Red Hat. Please, use it
> in the public communications regarding this flaw.
> 
> References:
> 
> https://bugzilla.redhat.com/show_bug.cgi?id=1373966 (patch)
> 
> https://bugzilla.redhat.com/show_bug.cgi?id=1373499 (reproducer, patch)
> 
> Note: Unfortunately, I'm not sure if the patch was already sent to security@kernel.org
> or alike by the patch author.

Nope, I don't think that security@kernel.org was sent the patch, but if
the maintainer of the subsytem already knows about it (it looks like he
wrote the patch), then there was no need to let that alias know about
it, right?

Any idea if this is going to be submitted to be merged upstream?

thanks,

greg k-h
