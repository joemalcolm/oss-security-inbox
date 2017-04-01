X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1414" "Saturday" "1" "April" "2017" "22:44:57" "+0200" "Solar Designer" "solar@openwall.com" "<20170401204457.GA12965@openwall.com>" "39" "Re: [oss-security] CVE-2017-7308: Linux kernel: integer overflow in packet_set_ring" "^Date:" nil nil "4" "2017040120:44:57" "[oss-security] CVE-2017-7308: Linux kernel: integer overflow in packet_set_ring" (number mark "        solar@openwa Apr  1   39/1414  " thread-indent "\"Re: [oss-security] CVE-2017-7308: Linux kernel: integer overflow in packet_set_ring\"\n") "<CAAeHK+wL_b0h-gSq3E=8+0Pi7cmzr-FtUgszdeo3i_kJ9bJScg@mail.gmail.com>" ("<CAAeHK+x6PmHr1jWD1MUiZx_Oj1R1gai3oXj03xbcfDe86uSjNA@mail.gmail.com>" "<CAAeHK+wL_b0h-gSq3E=8+0Pi7cmzr-FtUgszdeo3i_kJ9bJScg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1491 invoked by uid 550); 1 Apr 2017 20:45:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32730 invoked from network); 1 Apr 2017 20:45:03 -0000
Message-ID: <20170401204457.GA12965@openwall.com>
References: <CAAeHK+x6PmHr1jWD1MUiZx_Oj1R1gai3oXj03xbcfDe86uSjNA@mail.gmail.com> <CAAeHK+wL_b0h-gSq3E=8+0Pi7cmzr-FtUgszdeo3i_kJ9bJScg@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAAeHK+wL_b0h-gSq3E=8+0Pi7cmzr-FtUgszdeo3i_kJ9bJScg@mail.gmail.com>
User-Agent: Mutt/1.4.2.3i
Date: Sat, 1 Apr 2017 22:44:57 +0200
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2017-7308: Linux kernel: integer overflow in packet_set_ring
To: oss-security@lists.openwall.com

To Red Hat folks:

On Fri, Mar 31, 2017 at 07:20:20PM +0200, Andrey Konovalov wrote:
> On Fri, Mar 31, 2017 at 2:03 PM, Andrey Konovalov <andreyknvl@google.com> wrote:
> > CVE-2017-7308 [1] was assigned to the following issue:
> >
> > The packet_set_ring function in net/packet/af_packet.c in the Linux
> > kernel through 4.10.6 does not properly validate certain block-size
> > data, which allows local users to cause a denial of service (overflow)
> > or possibly have unspecified other impact via crafted system calls.
> >
> > The fix is sent upstream [2].
> 
> Update: the fix actually consists of 3 patches:
> 
> https://patchwork.ozlabs.org/patch/744811/
> https://patchwork.ozlabs.org/patch/744813/
> https://patchwork.ozlabs.org/patch/744812/
> 
> > [1] http://www.cve.mitre.org/cgi-bin/cvename.cgi?name=2017-7308
> >
> > [2] https://patchwork.ozlabs.org/patch/744811/

Red Hat currently says all RHEL starting with RHEL5 are affected:

https://access.redhat.com/security/cve/cve-2017-7308

However, the corresponding Bugzilla entry has no mention of that:

https://bugzilla.redhat.com/show_bug.cgi?id=1437404

So is it just a better-safe-than-sorry default to list products as
affected until known otherwise?  If so, maybe Unknown would be better?

RHEL5 doesn't yet include TPACKET_V3.  I did not check RHEL6.

https://github.com/torvalds/linux/commit/f6fb8f100b807378fda19e83e5ac6828b638603a

Alexander
