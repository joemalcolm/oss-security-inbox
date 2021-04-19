X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2801" "Monday" "19" "April" "2021" "17:36:42" "+0200" "Solar Designer" "solar@openwall.com" nil "61" "Re: [oss-security] xscreensaver package caps gets raw socket" nil nil nil "4" nil nil (number mark "U       solar@openwa Apr 19   61/2801  " thread-indent "\"Re: [oss-security] xscreensaver package caps gets raw socket\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] xscreensaver package caps gets raw socket" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22174 invoked by uid 550); 19 Apr 2021 15:37:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22078 invoked from network); 19 Apr 2021 15:36:52 -0000
Date: Mon, 19 Apr 2021 17:36:42 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Message-ID: <20210419153642.GA25158@openwall.com>
References: <20210417143105.GB3276@thinkstation>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210417143105.GB3276@thinkstation>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] xscreensaver package caps gets raw socket

On Sat, Apr 17, 2021 at 07:31:05AM -0700, Tavis Ormandy wrote:
> Hello, I noticed that at least debian (maybe others) ship xscreensaver
> hack with cap_net_raw enabled:
> 
> $ getcap /usr/libexec/xscreensaver/sonar
> /usr/libexec/xscreensaver/sonar cap_net_raw=p

> - The code could use ping sockets instead, but they're still rarely
>   enabled by default, and users have to set the ping_group_range sysctl.
>   I personally think it's time to enable them by default, but that's a
>   different discussion :-)

I think the distro should set a ping_group_range by default to just one
GID it can allocate for the purpose - e.g., on Owl we had:

In /etc/group:

_icmp:x:111:

In /etc/sysctl.conf:

# Range of group IDs permitted to access non-raw (datagram) ICMP sockets.
#
# These are an Openwall extension to the Linux kernel.  Our ping(1) program is
# able to use these sockets, which enables it to start and run without
# requiring root privileges nor a capability.  Access to these sockets is
# restricted at all primarily in order to reduce direct exposure of the added
# kernel code to potential attacks.  In other words, we gain privilege
# separation due to keeping this access restricted and installing ping(1) SGID.
#
net.ipv4.ping_group_range = 111 111

Then the distro should ideally make use of this in ping(1), like we did,
installing it SGID _icmp.  (Note: ping(1) should also be patched to drop
its elevated egid after obtaining the socket.)

Then, as an option, the distro could also make use of ping sockets in
/usr/libexec/xscreensaver/sonar and change it from cap_net_raw=p to SGID
_icmp (with similar early dropping of the elevated egid).  It should
also patch the known ways for an attacker to execute arbitrary code that
could access the ping socket, in case of ping socket vulnerabilities in
the kernel.

If the ICMP ping functionality remains in sonar itself and isn't made
available to all users by default (ping_group_range isn't set to cover
the entire groups range anyway), then its added security risk shouldn't
be taken by default - if a user really wants the sonar screensaver on
their system, they should enable it explicitly.

There are some valid reasons to just expose ICMP sockets to all users by
default (but maybe exclude a range of system pseudo-user group IDs that
certainly have no need for this, not to ease sandbox escapes) - such as
to allow ICMP ping from users' QEMU VMs by default - but this sonar toy
isn't a sufficiently good reason to take security risks, in my opinion.

Other options would be to execute /bin/ping like you mention or maybe to
ping by other means (non-ICMP, or only needing ICMP responses - e.g.
like Olaf Kirch's unprivileged Linux 2.4+ traceroute(1) does - BTW, I
think distros should adopt it, better late than never).

Alexander
