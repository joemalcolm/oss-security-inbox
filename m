X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1159" "Saturday" "26" "March" "2016" "17:52:11" "+0300" "Solar Designer" "solar@openwall.com" "<20160326145211.GA22709@openwall.com>" "33" "Re: [oss-security] CVE-2015-1805 Linux kernel: pipe: iovec overrun leading to memory corruption" "^Date:" nil nil "3" "2016032614:52:11" "[oss-security] CVE-2015-1805 Linux kernel: pipe: iovec overrun leading to memory corruption" (number mark "        solar@openwa Mar 26   33/1159  " thread-indent "\"Re: [oss-security] CVE-2015-1805 Linux kernel: pipe: iovec overrun leading to memory corruption\"\n") "<20160322205839.GA30835@openwall.com>" ("<20150606113057.GA23470@openwall.com>" "<20150609112639.GA20540@openwall.com>" "<20160322205839.GA30835@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 8110 invoked by uid 550); 26 Mar 2016 14:52:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 8086 invoked from network); 26 Mar 2016 14:52:15 -0000
Message-ID: <20160326145211.GA22709@openwall.com>
References: <20150606113057.GA23470@openwall.com> <20150609112639.GA20540@openwall.com> <20160322205839.GA30835@openwall.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160322205839.GA30835@openwall.com>
User-Agent: Mutt/1.4.2.3i
Date: Sat, 26 Mar 2016 17:52:11 +0300
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2015-1805 Linux kernel: pipe: iovec overrun leading to memory corruption
To: oss-security@lists.openwall.com

On Tue, Mar 22, 2016 at 11:58:39PM +0300, Solar Designer wrote:
> The primary reason I am posting this is so that other distros know the
> vulnerability was apparently shown to be exploitable.

And that's not the end of the story:

https://lwn.net/SubscriberLink/681062/b974fb24a6c4617b/

"Posted Mar 25, 2016 13:23 UTC (Fri) by BenHutchings (subscriber, #37955) [Link]

Unfortunately the fix by Seth Jennings for RHEL, later applied to
stable branches, was still incorrect, leading to CVE-2016-0774. I hope
AOSP picks up the second fix as well."

https://bugzilla.redhat.com/show_bug.cgi?id=CVE-2016-0774

"Petr Matousek  2016-02-02 09:34:35 EST 

It was found that the fix for CVE-2015-1805 incorrectly kept buffer
offset and buffer length in sync on failed atomic read, potentially
resulting in pipe buffer state corruption.

A local, unprivileged user could use this flaw to crash the system or
leak kernel memory to user-space.

Upstream Linux kernel is not affected by this flaw as it was introduced
by the Red Hat Enterprise Linux only fix for CVE-2015-1805.

Acknowledgements:

The security impact of this issue was discovered by Red Hat."

Alexander
