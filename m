X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3179" "Thursday" "11" "July" "2019" "22:14:00" "+0100" "Simon McVittie" "smcv@debian.org" "<20190711211400.GB24270@espresso.pseudorandom.co.uk>" "61" "Re: [oss-security] Privileged File Access from Desktop Applications" "^Date:" nil nil "7" "2019071121:14:00" "[oss-security] Privileged File Access from Desktop Applications" (number mark "        smcv@debian. Jul 11   61/3179  " thread-indent "\"Re: [oss-security] Privileged File Access from Desktop Applications\"\n") "<4477D0BC-DB12-4BE7-9CF6-90F09236EF99@oracle.com>" ("<200975c0f23706ce513744052225ea7dc9842206.camel@suse.com>" "<20190709113036.0f12d057@jabberwock.cb.piermont.com>" "<9148ee55db2cabb111f790513413823996d04cb6.camel@suse.com>" "<20190711093326.328948dc@jabberwock.cb.piermont.com>" "<de14296ba908c162036a15b1aeda95586ff8ba14.camel@suse.com>" "<20190711114710.09ab5ad9@jabberwock.cb.piermont.com>" "<alpine.GSO.2.20.1907111050290.8466@scrappy.simplesystems.org>" "<4477D0BC-DB12-4BE7-9CF6-90F09236EF99@oracle.com>") nil nil nil nil nil nil nil "Re: [oss-security] Privileged File Access from Desktop Applications" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 22494 invoked by uid 550); 11 Jul 2019 21:14:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22475 invoked from network); 11 Jul 2019 21:14:15 -0000
Message-ID: <20190711211400.GB24270@espresso.pseudorandom.co.uk>
References: <200975c0f23706ce513744052225ea7dc9842206.camel@suse.com>
 <20190709113036.0f12d057@jabberwock.cb.piermont.com>
 <9148ee55db2cabb111f790513413823996d04cb6.camel@suse.com>
 <20190711093326.328948dc@jabberwock.cb.piermont.com>
 <de14296ba908c162036a15b1aeda95586ff8ba14.camel@suse.com>
 <20190711114710.09ab5ad9@jabberwock.cb.piermont.com>
 <alpine.GSO.2.20.1907111050290.8466@scrappy.simplesystems.org>
 <4477D0BC-DB12-4BE7-9CF6-90F09236EF99@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4477D0BC-DB12-4BE7-9CF6-90F09236EF99@oracle.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Date: Thu, 11 Jul 2019 22:14:00 +0100
From: Simon McVittie <smcv@debian.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Privileged File Access from Desktop Applications
To: oss-security@lists.openwall.com

On Thu, 11 Jul 2019 at 17:31:38 +0100, John Haxby wrote:
> Obviously one could split the process into its graphical half and its
> messing-around-with-disks half

This is not a new idea: one could, and some have. udisksd includes
approximately the messing-around-with-disks half of gparted, and GNOME
Disks (formerly palimpsest) is one example of the graphical half. I'm
sure there are other UIs that use udisksd, such as a KDE equivalent of
GNOME Disks, but I don't know their names. Their functionality is not
identical (GNOME Disks and udisksd also cover other disk operations such
as mounting and SMART checks, and I'm not sure whether they implement
all the same corner cases of partitioning that parted does) but there
is a lot of overlap.

If there are useful things that can be expressed by parted APIs but
not by udisks APIs, I would suggest opening feature requests with the
udisks project.

As an example of how established this pattern is, the hal (Hardware
Abstraction Layer) service was available in Debian stable releases
from 2005 onwards. hal was later replaced by multiple domain-specific
services like udisks, because other aspects of its design turned out
to be inefficient and it had the "jack of all trades, master of none"
problem, but the general concept of unprivileged UIs sending requests
to a system service has continued.

> but it's not clear to me how the graphical
> half would handle authentication[*] for the process that needs to run
> as root

The part that runs as root is usually a system service that is made
available as part of the OS and runs as root to begin with, either during
boot or on-demand, often by an init system like systemd, sysvinit or
Upstart or by the D-Bus system message bus' "activation" mechanism.
It typically receives IPC messages via an AF_UNIX socket (or D-Bus,
which is basically a higher-level layer around AF_UNIX), and can inspect
the credentials of its client in a race-free way via OS-specific kernel
APIs like Linux SO_PEERCRED, which cannot be faked by a malicious client.

In particular, udisksd (see above) and polkitd (see below) are both
system services designed to be launched by the OS in this way.

> There are any number of administrative tasks that will need
> to be redesigned to cope with this change.

Again, this is not new. Many administrative tasks can already be done via
system services that are addressable via IPC, often via D-Bus and with
authorization carried out by polkit (formerly PolicyKit) according to a
security policy codified by upstream defaults, distribution configuration
by a vendor or local configuration by a sysadmin. In particular, more
or less everything with a system-wide effect that is provided by GNOME's
Settings app (internally named gnome-control-center), or its equivalents
in other desktops, already works like this.

D-Bus is not the only suitable IPC mechanism (although it is a convenient
and popular one, and the one I'm most familiar with) and polkit is
not the only way to codify policy - some services offer their own IPC
protocols over an AF_UNIX socket, and have their own configuration to
determine who can do what using those protocols.

    smcv
