X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["666" "Monday" "13" "November" "2017" "10:07:00" "-0500" "Vladis Dronov" "vdronov@redhat.com" "<640892254.31427608.1510585620318.JavaMail.zimbra@redhat.com>" "17" "Re: [oss-security] CVE-2017-15102: Linux kernel: usb: NULL-deref due to a race condition in [legousbtower] driver" nil nil nil "11" "2017111315:07:00" "[oss-security] CVE-2017-15102: Linux kernel: usb: NULL-deref due to a race condition in [legousbtower] driver" (number mark "U       vdronov@redh Nov 13   17/666   " thread-indent "\"Re: [oss-security] CVE-2017-15102: Linux kernel: usb: NULL-deref due to a race condition in [legousbtower] driver\"\n") "<20171107202237.GA10679@kroah.com>" ("<906136424.28576814.1510085319128.JavaMail.zimbra@redhat.com>" "<1539240847.28577626.1510085696543.JavaMail.zimbra@redhat.com>" "<20171107202237.GA10679@kroah.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28116 invoked by uid 550); 13 Nov 2017 15:07:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28094 invoked from network); 13 Nov 2017 15:07:12 -0000
Date: Mon, 13 Nov 2017 10:07:00 -0500 (EST)
From: Vladis Dronov <vdronov@redhat.com>
To: oss-security@lists.openwall.com, Greg KH <greg@kroah.com>
Message-ID: <640892254.31427608.1510585620318.JavaMail.zimbra@redhat.com>
In-Reply-To: <20171107202237.GA10679@kroah.com>
References: <906136424.28576814.1510085319128.JavaMail.zimbra@redhat.com> <1539240847.28577626.1510085696543.JavaMail.zimbra@redhat.com> <20171107202237.GA10679@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.67.112.24, 10.4.195.10]
Thread-Topic: CVE-2017-15102: Linux kernel: usb: NULL-deref due to a race condition in [legousbtower] driver
Thread-Index: pMJWhf14fQHo6vcHt7ba/o3e4CHhOw==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.32]); Mon, 13 Nov 2017 15:07:00 +0000 (UTC)
Subject: Re: [oss-security] CVE-2017-15102: Linux kernel: usb: NULL-deref
 due to a race condition in [legousbtower] driver

Hello, Greg, all,

My fault here was indeed not stating that a Red Hat's product is
vulnerable (thus, a CVE was assigned), but stating that only Linux
kernel is vulnerable (while indeed it was fixed a long ago). Please,
accept my apologies.

> I hate to ask, but why are you getting CVEs for bugs fixed over a year
> ago, and are already in all stable kernel releases a year ago?  Why does
> it matter?

I'm afraid, you won't like the answer, but in a short word, the Red Hat
is a CNA (CVE Numbering Authority) for Red Hat's products and the Linux
kernel and we've decided to assign this CVE.

Best regards,
Vladis Dronov | Red Hat, Inc. | Product Security Engineer
