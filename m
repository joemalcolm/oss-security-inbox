Received: (qmail 11547 invoked by uid 550); 13 May 2025 19:20:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 11520 invoked from network); 13 May 2025 19:20:09 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.stravinsky; h=X-Debian-User:In-Reply-To:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Cc:Content-ID:Content-Description;
	bh=d+FgsdWKa1wdjj03QsSUCOGvoVZYSJZ3LtryJeOrRY8=; b=Tx1ghAPP6pl5FKWmhbz+QDFijv
	hl0aWzDk1SdZwAPhHt0TFYL8CpzrsCBNTNAjhWAhXOp7/JcV3SWtEqoBHf1mnAS0e4eh+Py5mmfKe
	hF1EhIaSlTRqHWmtNDahWI4NP6jf9GetH452XKv4WHMOx5xpgZbiSYeOmuvC+MBsJSoic/m0KQhQZ
	FDTYZudo9jcKqNwG/spHidQFa7zjs8OOgOlOun0f8JvCjJ9oS7V5YuYu9Ba+CCnxy6lwZUpVNsOM0
	wU5Fr2O2sLfHnTXWM7UJi7FeZdu2NSSYlIn8Oc6yZuYXv6ijyR3auCvTNeog1NHnDu/wecVTq3o1c
	Ylx1s1uQ==;
Date: Tue, 13 May 2025 20:19:57 +0100
From: Simon McVittie <smcv@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <aCObXXrfD4H1h4t5@remnant.pseudorandom.co.uk>
References: <aCISrQTbLQjaxBZS@kasco.suse.de>
 <20250513182106.414b569f@plasteblaster>
 <20250513183744.2c187967@plasteblaster>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250513183744.2c187967@plasteblaster>
X-Debian-User: smcv
Subject: Re: [oss-security] screen: Multiple Security Issues in Screen
 (mostly affecting release 5.0.0 and setuid-root installations)

On Tue, 13 May 2025 at 18:37:44 +0200, Dr. Thomas Orgis wrote:
>that doesn't compile. A numeric value is expected.
>
>./configure --with-pty-mode=0620 --with-pty-group=$(getent group tty|cut -f 3 -d :)
>
>is closer to what also the default for screen-5.0.0 configure is.
>
>AC_ARG_WITH(pty-mode, AS_HELP_STRING([--with-pty-mode],
>            [set pty mode (default: 0622)]),
>            [with_pty_mode=$withval],
>            [with_pty_mode=0622])
>AC_ARG_WITH(pty-group, AS_HELP_STRING([--with-pty-group],
>            [set pty group (default: 5)]),
>            [with_pty_group=$withval],
>            [with_pty_group=5])
>
>
>Which brings me to the question if it is really smart to hardcode the
>numeric group ID. I observe wildly changing system user/group IDs in
>distros that create the accounts on the fly when installing packages.

In general yes, group IDs vary and can't be hard-coded; but for tty, 
specifically, it seems to be common for it to be hard-coded as a numeric 
gid. One reason for group IDs to be hard-coded in this way is if they 
need to work as expected on incomplete or minimal installations that 
lack the usual infrastructure around passwd(5) etc.; another is if they 
need to remain usable during recovery of broken installations where that 
infrastructure isn't working, and a third is during early boot where 
that infrastructure might not work *yet*.

In at least Debian (presumably other distros), there are some small 
ranges reserved for user and group IDs that are fixed in all 
installations of the distro and can safely be hard-coded into binaries
(in Debian, 0-99 is the one that contains tty), and a considerably 
larger range available for dynamic allocation (in Debian, 100-999 is the 
main range for this purpose). 
https://www.debian.org/doc/debian-policy/ch-opersys.html#uid-and-gid-classes 
is the canonical reference for this in Debian and its derivatives.

>Maybe tty is always present on install images already … and happens to
>always be numeric ID 5, everywhere?

This is its value in Debian and all Debian derivatives, and in practice 
seems to be common to "most" distributions - for example it's also used 
in Fedora, despite neither Debian nor Fedora being a derivative of the 
other (reference: 
https://src.fedoraproject.org/rpms/setup/blob/rawhide/f/uidgid)

systemd also hard-codes 5 as its default for its "tty-gid" build-time 
option, and installs a sysusers.d(5) snippet that will create the tty 
group with the configured gid if it doesn't already exist (which seems 
to be the route by which for example Arch ends up with the tty group 
having gid 5).

     smcv
