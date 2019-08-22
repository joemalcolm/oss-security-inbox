X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1775" "Wednesday" "21" "August" "2019" "21:00:59" "-0700" "Eric Biggers" "ebiggers@kernel.org" "<20190822040059.GD6111@zzz.localdomain>" "39" "Re: [oss-security] Linux kernel: multiple vulnerabilities in the USB subsystem x2" "^Cc:" nil nil "8" "2019082204:00:59" "[oss-security] Linux kernel: multiple vulnerabilities in the USB subsystem x2" (number mark "        ebiggers@ker Aug 21   39/1775  " thread-indent "\"Re: [oss-security] Linux kernel: multiple vulnerabilities in the USB subsystem x2\"\n") "<CA+fCnZfz=Y41rkacwG6z0d_d6WV=iSkU2R1L-JzxfRKYHnSN9w@mail.gmail.com>" ("<CA+fCnZfz=Y41rkacwG6z0d_d6WV=iSkU2R1L-JzxfRKYHnSN9w@mail.gmail.com>") nil nil nil nil nil nil nil "Re: [oss-security] Linux kernel: multiple vulnerabilities in the USB subsystem x2" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13385 invoked by uid 550); 22 Aug 2019 06:22:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 16125 invoked from network); 22 Aug 2019 04:01:13 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1566446461;
	bh=7xknSuimOn/gCXp4RpZJCTARUnjREXoEaU1NzBabqqY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ri5BXGR8mA+JIL7KN2xAfE0/posBo4WrJS6h7Ns1LbjaqO+d+F9Ri9btx2+w+rneV
	 ylhjfLhrxLT0i9PbnBfR+KItlYNqLwXEOoH0xoSTNf5MEpeugYC/RQEwfxuO0fJoJp
	 NnI7ZVWSw9yOujhrIeaNXPr8SRHNl/VlEhshs2Zc=
Message-ID: <20190822040059.GD6111@zzz.localdomain>
Mail-Followup-To: Andrey Konovalov <andreyknvl@gmail.com>,
	oss-security@lists.openwall.com
References: <CA+fCnZfz=Y41rkacwG6z0d_d6WV=iSkU2R1L-JzxfRKYHnSN9w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CA+fCnZfz=Y41rkacwG6z0d_d6WV=iSkU2R1L-JzxfRKYHnSN9w@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Cc: oss-security@lists.openwall.com
Date: Wed, 21 Aug 2019 21:00:59 -0700
From: Eric Biggers <ebiggers@kernel.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Linux kernel: multiple vulnerabilities in the USB
 subsystem x2
To: Andrey Konovalov <andreyknvl@gmail.com>

On Tue, Aug 20, 2019 at 08:20:34PM +0200, Andrey Konovalov wrote:
> Hi!
> 
> I've previously reported vulnerabilities in the Linux kernel USB
> drivers on this list [1] found with syzkaller [2]. The USB fuzzing
> project has been on hold for a while, but has been resumed earlier
> this year. Here's a new bunch of 15 CVEs.
> 
> As an experiment this time I've requested CVEs for 2 bugs
> (CVE-2019-15290, CVE-2019-15291) that haven't yet been fixed (fixes
> for the other 13 bugs are in the upstream kernel). Both have been
> reported by syzbot over 4 months ago. I've made sure that these 2 bugs
> are reproducible with a crafted USB device and crash a Linux laptop
> (or rather crash the USB worker thread) with one of the distro
> kernels.
> 
> There are many more still not fixed bugs shown here [3].
> 
> [1] https://www.openwall.com/lists/oss-security/2017/12/12/7
> 
> [2] https://github.com/google/syzkaller/blob/master/docs/linux/external_fuzzing_usb.md
> 
> [3] https://syzkaller.appspot.com/upstream?manager=ci2-upstream-usb
> 

Thanks for filing CVEs for these.

FWIW, link [3] seems to be missing some of the USB bugs since it only includes
bugs seen on the "ci2-upstream-usb" syzbot manager, when in fact USB bugs are
also being reported from the "ci-upstream-kmsan-gce" manager.

Based on my categorization of all open syzbot reports, as of today there are 80
USB-related ones, 52 of which have occurred in the last week.  The 52 are listed
at https://lore.kernel.org/linux-usb/20190822032841.GC6111@zzz.localdomain/T/#u
These include use-after-frees, out of bounds reads/writes, using uninitialized
memory, general protection faults, etc.  More are reported each week, and syzbot
has covered only a tiny percentage of Linux's USB driver code so far.

- Eric
