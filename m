Received: (qmail 5680 invoked by uid 550); 23 Dec 2022 16:49:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5656 invoked from network); 23 Dec 2022 16:49:58 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.stravinsky; h=X-Debian-User:In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=l68gbs90pG9tVRVkLE9oZDu4vxcfBLgUFSXBnP1uzL4=; b=tCwjIU52768LEKp0tWVA/14RbM
	8hpVFW/NmtVdTLounRP1zFeSN4Sie8mTEB3ztgYcVnxl5nKuk4C7rYXl4N3Pg61nbXE3pG59onQm+
	Odw40GG/VkTOk8pDc0+qCNlGQ3+2UAVP+KlmtSp9x+pvWiHSjlx+I5HA7XhY7ycfZO2ya2ngYSRwu
	Gl6zq67bycLIoHLXnjd+PMYOD0e1103HxoIF1BbN00JkHMraqmnbEMCG7MbPf80PHrl8hoMvgQyFS
	aIeSVfbzfxykghGQVWaNMPkwyfbwHr/ZeqhtfCK13v9FHHKS8O/VKEcBj+TtBLqgj68HiOst8PlTM
	rtEcalZw==;
Date: Fri, 23 Dec 2022 16:49:43 +0000
From: Simon McVittie <smcv@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <Y6XcJ+tcf1Cg1jkZ@momentum.pseudorandom.co.uk>
References: <CACT4Y+aqb9V=WO0gsN1DgqimrjHiY3x+KvKGiz7b95jh9gubhw@mail.gmail.com>
 <20221222144445.i6z7fifqily6uej5@jwilk.net>
 <20221222150448.5wyrhot7ikhp75j7@mutt-hbsd>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221222150448.5wyrhot7ikhp75j7@mutt-hbsd>
X-Debian-User: smcv
Subject: Re: [oss-security] [Linux] /proc/pid/stat parsing bugs

On Thu, 22 Dec 2022 at 10:04:48 -0500, Shawn Webb wrote:
> We knew way back then the dangers of VFS-based wizardry. Did we lose
> that knowledge somehow?

To me this seems like a parsing problem, not a VFS problem. Some
pseudo-files in Linux /proc are one file per item (/proc/self/oom_adj,
/proc/self/sessionid, most of /proc/sys) and those are fine[1]: the
structure is implicit in the filesystem layout, and the file contents
are trivial to "parse". Others have a simple and well-defined format
(like /proc/self/environ and /proc/self/cmdline, which are sequences of
\0-terminated bytestrings), and those also seem fine.

It's the pseudo-files that contain more than one item, particularly
those with a semi-consistent format that aims for human-readability, that
can easily get into escaping and parsing issues. If those pseudo-files
made *more* use of the VFS (one new file in /proc/self for each field
in the current /proc/self/stat?) then they would suffer from different
issues instead, like inability to read all fields atomically and maybe
performance issues for heavy users, but parsing would become a non-issue.

    smcv

[1] or when they're not fine, the issues are around things like how to
    separate an AppArmor enforcement mode from the label, which again is
    a matter of parsing a human-readable format with structure
