X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1492" "Friday" "23" "February" "2018" "12:33:44" "+0100" "Solar Designer" "solar@openwall.com" "<20180223113344.GA6246@openwall.com>" "49" "Re: [oss-security] review of LibVNCServer/vncterm proxmox/vncterm proxmox/spiceterm xenserver/vncterm qemu/ui/console.c" nil nil nil "2" "2018022311:33:44" "[oss-security] review of LibVNCServer/vncterm proxmox/vncterm proxmox/spiceterm xenserver/vncterm qemu/ui/console.c" (number mark "U       solar@openwa Feb 23   49/1492  " thread-indent "\"Re: [oss-security] review of LibVNCServer/vncterm proxmox/vncterm proxmox/spiceterm xenserver/vncterm qemu/ui/console.c\"\n") "<b25d53ba-7344-a2c2-fb22-b7744ee1016e@proxmox.com>" ("<20180222182926.GA4275@openwall.com>" "<b25d53ba-7344-a2c2-fb22-b7744ee1016e@proxmox.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17591 invoked by uid 550); 23 Feb 2018 11:34:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16344 invoked from network); 23 Feb 2018 11:33:48 -0000
Date: Fri, 23 Feb 2018 12:33:44 +0100
From: Solar Designer <solar@openwall.com>
To: Dominik Csapak <d.csapak@proxmox.com>
Cc: oss-security@lists.openwall.com
Message-ID: <20180223113344.GA6246@openwall.com>
References: <20180222182926.GA4275@openwall.com> <b25d53ba-7344-a2c2-fb22-b7744ee1016e@proxmox.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b25d53ba-7344-a2c2-fb22-b7744ee1016e@proxmox.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] review of LibVNCServer/vncterm proxmox/vncterm proxmox/spiceterm xenserver/vncterm qemu/ui/console.c

Hi Dominik,

On Fri, Feb 23, 2018 at 09:20:48AM +0100, Dominik Csapak wrote:
> I do not know where you looked at our code,

In these GitHub repos, which I thought were official:

https://github.com/proxmox/vncterm
https://github.com/proxmox/spiceterm

Shortly after I sent the message, I realized I should have included
these links in it.  Ditto for other projects, so here they are:

XenServer vncterm:

https://github.com/xenserver/vncterm

Might be also out of date, since last commit is 2 years ago?  But could
also be latest.  These things don't have to be updated frequently.

For QEMU, I did:

git clone git://git.qemu.org/qemu.git

> but in our official git repositories for vncterm[1] and spiceterm[2]
> 
> those issues are already fixed (since 2017-05-05)
> 
> i changed those variables all to unsigned int, which makes those 
> increments defined behavior, and the range checks are ok, because
> they cannot be negative anymore.
> (it may behave strange, but you cannot trigger an out-of-bounds 
> read/write anymore)
> also, i replaced the vt->cy += buf code paths with calls to
> vncterm_gotoxy (which as you mentioned, perform all necessary checks)
> 
> Dominik
> 
> [1]: https://git.proxmox.com/?p=vncterm.git;a=summary
> [2]: https://git.proxmox.com/?p=spiceterm.git;a=summary

Sounds great.  (I haven't looked yet.)

Sorry for the false alarm, then.  (I imagine some users would like to
know of these issues having existed and having been fixed, though.)

Thanks,

Alexander
