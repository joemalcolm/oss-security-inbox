X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1397" "Wednesday" "13" "May" "2015" "22:32:41" "+0300" "Solar Designer" "solar@openwall.com" "<20150513193240.GA19197@openwall.com>" "31" "Re: [oss-security] [PATCH 0/4] ozwpan: Four remote packet-of-death vulnerabilities" nil nil nil "5" "2015051319:32:41" "[oss-security] [PATCH 0/4] ozwpan: Four remote packet-of-death vulnerabilities" (number mark "        solar@openwa May 13   31/1397  " thread-indent "\"Re: [oss-security] [PATCH 0/4] ozwpan: Four remote packet-of-death vulnerabilities\"\n") "<1431542014-3239-1-git-send-email-Jason@zx2c4.com>" ("<1431542014-3239-1-git-send-email-Jason@zx2c4.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17509 invoked by uid 550); 13 May 2015 19:32:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17487 invoked from network); 13 May 2015 19:32:47 -0000
Message-ID: <20150513193240.GA19197@openwall.com>
References: <1431542014-3239-1-git-send-email-Jason@zx2c4.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1431542014-3239-1-git-send-email-Jason@zx2c4.com>
User-Agent: Mutt/1.4.2.3i
Cc: oss-security@lists.openwall.com
Date: Wed, 13 May 2015 22:32:41 +0300
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] [PATCH 0/4] ozwpan: Four remote packet-of-death vulnerabilities
To: "Jason A. Donenfeld" <Jason@zx2c4.com>

Hi Jason,

As mentioned on oss-security before, please don't ever cross-post
anything to oss-security and a high-volume list at once, especially not
to LKML or netdev.  Please make separate postings instead.  In this
case, it would have been appropriate for you to send the patches to
LKML, netdev, the relevant maintainers, etc. - and to post a summary to
oss-security listing the vulnerabilities and mentioning that fixes are
being discussed on LKML (ideally, you'd include links to LKML archives).
This is sub-optimal in terms of having the relevant detail right in
here, which is usually our preference, but cross-posting is just too
problematic (ends up in too much noise in here).

http://www.openwall.com/lists/oss-security/2015/01/21/3

Please help take these threads off oss-security now - but please do post
summaries to oss-security, such as when fixes get committed.

BTW, for patches that harden the Linux kernel rather than fix specific
vulnerabilities, we host a mailing list here that you may CC: it's
kernel-hardening.  Given its purpose and focus, it is in fact
appropriate (and even intended) to CC it on LKML postings.  For specific
vulnerability fixes, we host no such list here yet.  We may set one up,
or maybe the focus of kernel-hardening needs to be made broader.
I welcome opinions on this matter.

http://www.openwall.com/lists/kernel-hardening/

Thank you!

Alexander
