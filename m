Received: (qmail 5269 invoked by uid 550); 11 May 2024 12:16:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5236 invoked from network); 11 May 2024 12:16:04 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.stravinsky; h=X-Debian-User:In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=QStxTdJzuoMcSrtZXHp29SmBdWS8oFUKnP6BvkM1wlE=; b=QATzeivQnX3O04I6HnCQaayW7Q
	qZgnCF/MgErmshWQNFg+aOln6ZvaNYDF3NW6Tp5c8OD3quUU16Y8YoRHMrZbOoKmkxbwEv7sc525y
	4B1Ea/ysDH54NVOI1k1FFwryNZUFjouyrXhb7BqNOWYxH2Wz86Jukex9Uh46AgDeNaZy2cIOzT2Qe
	rMSsWgLAdUjZlz8VaS0llbFT74AIkyyjLoAvZ65Hwo5HP+HiWUjc4xa8AgVlrRqo4O5CVaa2vXaSX
	pLl5Kk9huR+ZgSv68McvIWtFHnsNlZCx1WieY4IxPrkRYRTViCGTMGh5tduzn+lapi3qf8j21U+6F
	qsFObvQg==;
Date: Sat, 11 May 2024 13:15:53 +0100
From: Simon McVittie <smcv@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <Zj9hebgV970FCi_6@remnant.pseudorandom.co.uk>
References: <BYAPR03MB4903AF4B05EDB627E47C9370EBE72@BYAPR03MB4903.namprd03.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <BYAPR03MB4903AF4B05EDB627E47C9370EBE72@BYAPR03MB4903.namprd03.prod.outlook.com>
X-Debian-User: smcv
Subject: [oss-security] Re: lsof "can't stat() fuse.${name} filesystem /run/user/1000/${dir}"

On Fri, 10 May 2024 at 13:19:35 +0000, Corey Lopez wrote:
> Also, I ran the lsof command, which helped me discover 
> the type of file systems that were being used. This prompted me to use apt purge 
> to remove Gnome Virtual File System from my laptop. 
> 
> # lsof /dev/loop*
> 
> I received this in response:
> 
> can't stat() fuse.gvfsd-fuse file system /run/user/1000/gvfs
> can't stat() fuse.portal file system /run/user/1000/doc

This is not evidence of a compromise, and is also nothing to do with
/dev/loop* specifically. You would see the same thing on a system that
is operating correctly, or when issuing other lsof commands as root that
do not involve /dev/loop*.

These are FUSE filesystems running as uid 1000, which by default are
not accessible *by root* - which might seem strange at first glance,
but is an intentional security mechanism to protect root from being
attacked by uid 1000 (see mount.fuse3(8) for details).

fuse.gvfsd-fuse is gvfs (not to be confused with gnomevfs, which is a
much older implementation of the same general concept) making various
remote and virtual filesystems such as SMB and WebDAV available to
non-GLib-based applications as a FUSE filesystem.

fuse.portal is xdg-documents-portal, part of xdg-desktop-portal, and
is used to share a subset of documents between the host system and
sandboxed apps such as Flatpak and Snap under user control, without
needing to extend a higher level of trust to those apps by sharing
entire directories.

    smcv
