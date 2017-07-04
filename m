X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2574" "Tuesday" "4" "July" "2017" "14:31:27" "+0200" "Solar Designer" "solar@openwall.com" "<20170704123127.GA27528@openwall.com>" "60" "Re: [oss-security] linux-distros list membership application - CloudLinux" "^Date:" nil nil "7" "2017070412:31:27" "[oss-security] linux-distros list membership application - CloudLinux" (number mark "        solar@openwa Jul  4   60/2574  " thread-indent "\"Re: [oss-security] linux-distros list membership application - CloudLinux\"\n") "<CA+-XxSGi7OR3a8bDcgfM9-3-tYqXF+ZnDpw2SQGYTZANjhp5DQ@mail.gmail.com>" ("<CA+-XxSGi7OR3a8bDcgfM9-3-tYqXF+ZnDpw2SQGYTZANjhp5DQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30670 invoked by uid 550); 4 Jul 2017 12:33:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30099 invoked from network); 4 Jul 2017 12:31:45 -0000
Message-ID: <20170704123127.GA27528@openwall.com>
References: <CA+-XxSGi7OR3a8bDcgfM9-3-tYqXF+ZnDpw2SQGYTZANjhp5DQ@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CA+-XxSGi7OR3a8bDcgfM9-3-tYqXF+ZnDpw2SQGYTZANjhp5DQ@mail.gmail.com>
User-Agent: Mutt/1.4.2.3i
Date: Tue, 4 Jul 2017 14:31:27 +0200
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] linux-distros list membership application - CloudLinux
To: oss-security@lists.openwall.com

I've just added CloudLinux to linux-distros.  Some comments below:

On Sun, Jul 02, 2017 at 05:29:25PM +0300, Igor Seletskiy wrote:
> We typically have to patch local privilege escalations in kernel asap as
> our customers are easily rooted using this type of vulnerabilities (anyone
> can buy website or hack old wordpress instance & run any code).

This may be a reason for you to harden your distro's userland against
local privilege escalations as well, such as by adopting the
owl-alt-sanitize-env glibc hardening patch maintained by ALT Linux:

http://git.altlinux.org/gears/g/..git?p=glibc.git;a=commitdiff;h=496059f2

and getting rid of most or all world-accessible SUID programs, which is
do-able like we have demonstrated with Owl.  This shouldn't be
unreasonably hard to implement and maintain in a fork of RHEL, although
obviously you'll end up with more packages (including some core ones)
that would no longer be mere rebuilds of RHEL's.

This is by no means a condition for your linux-distros list membership -
I just happen to mention it here in response to your explanation of your
distro's threat model.  If you do go this route, it will re-enforce your
reasoning for being a linux-distros member, though.

> Some records:
> The stack clash (Jun 21, 2016):
> https://www.cloudlinux.com/cloudlinux-os-blog/entry/cve-2017-1000364-fixed-for-cloudlinux-7
> Dirty Cow (Oct 21rd, 2016):
> https://www.cloudlinux.com/cloudlinux-os-blog/entry/cloudlinux-6-kernel-updated-dirty-cow-issue-fixed
> Ghost (Jan 27, 2015):
> https://www.cloudlinux.com/cloudlinux-os-blog/entry/glibc-ghost-remote-vulnerability-cve-2015-0235

You got impressive timing on these!

> Please, find PGP related info
> 
> Leonid Kanter <lkanter@cloudlinux.com>
> 
> GPG Key: 0x400296079AE5954F (download
> <https://cryptup.org/pub/lkanter@cloudlinux.com>)
> GPG Fingerprint: A07D AA47 48B2 C445 6A44  9B38 4002 9607 9AE5 954F
> 
> Igor Seletskiy <i@cloudlinux.com>
> 
> GPG Key: 0xCD7BB36D66B77E0D (download
> <https://cryptup.org/pub/i@cloudlinux.com>)
> 
> GPG Fingerprint: 7FE3 681A DCBC C509 A2FF 77A4 CD7B B36D 66B7 7E0D
> 
> Konstantin Olshanov <kolshanov@cloudlinux.com>
> GPG Key: 0x891E1FDBF34ED0FD (download
> <https://cryptup.org/pub/kolshanov@cloudlinux.com>)
> GPG Fingerprint: B502 0D7C BB2C 674C 6387  FBDC 891E 1FDB F34E D0FD

I subscribed only Leonid and Igor so far, since Konstantin's key doesn't
appear to be available at that URL (I am getting "No Public Key found
for kolshanov@cloudlinux.com").  As a minor annoyance, these URLs appear
to require JavaScript.

Alexander
