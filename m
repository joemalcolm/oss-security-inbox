X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2034" "Saturday" "2" "April" "2016" "11:46:34" "-0400" "Theodore Ts'o" "tytso@mit.edu" "<20160402154634.GA3334@thunk.org>" "40" "Re: [oss-security] ext4 data corruption due to punch hole races" "^Cc:" nil nil "4" "2016040215:46:34" "[oss-security] ext4 data corruption due to punch hole races" (number mark "        tytso@mit.ed Apr  2   40/2034  " thread-indent "\"Re: [oss-security] ext4 data corruption due to punch hole races\"\n") "<1459602897.9149.3.camel@debian.org>" ("<20160331151128.GK26612@suse.de>" "<1459602897.9149.3.camel@debian.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3157 invoked by uid 550); 2 Apr 2016 15:46:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3139 invoked from network); 2 Apr 2016 15:46:58 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=thunk.org; s=ef5046eb;
	h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date; bh=d03CH2R5SX/SCgOyQLrNq8Rbimroo2Hu+Rv03G1LuC0=;
	b=aTyfjowkfk6ABaiPvUtnUV1F8XDkLcWvpSNl3zU8Wgn3Mt25uaeDlyC5e3Tb2VzdgT5RD5wjQafTpYXAeSfwNO9E7NYXw86tm+7zzpyv1/70e8mpcY1OWjmQVrLGnVsZxf84ouUpgOnDkx1ZfLyQf2bYj07/YT8YqVvYaG5ulZQ=;
Message-ID: <20160402154634.GA3334@thunk.org>
References: <20160331151128.GK26612@suse.de>
 <1459602897.9149.3.camel@debian.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1459602897.9149.3.camel@debian.org>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Mail-From: tytso@thunk.org
X-SA-Exim-Scanned: No (on imap.thunk.org); SAEximRunCond expanded to false
Cc: oss-security@lists.openwall.com, Johannes Segitz <jsegitz@suse.com>,
	Ben Hutchings <ben@decadent.org.uk>
Date: Sat, 2 Apr 2016 11:46:34 -0400
From: Theodore Ts'o <tytso@mit.edu>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] ext4 data corruption due to punch hole races
To: Yves-Alexis Perez <corsac@debian.org>

On Sat, Apr 02, 2016 at 03:14:57PM +0200, Yves-Alexis Perez wrote:
> > "When punching holes into a file races with the page fault of the same
> > area, it is possible that freed blocks remain referenced from page cache
> > pages mapped to process' address space. Thus modification of these blocks
> > can corrupt data someone else is now storing in those blocks (which
> > obviously has security implications if you can trick filesystem into
> > storing some important file in those blocks).
> > 
> > This affects all the kernels where we support ext4 for writing. Relevant
> > fixes upstream are commits ea3d7209ca01da209cda6f0dea8be9cc4b7a933b,
> > 17048e8a083fec7ad841d88ef0812707fbc7e39f,
> > 32ebffd3bbb4162da5ff88f9a35dd32d0a28ea70,
> > 011278485ecc3cd2a3954b5d4c73101d919bf1fa."
> 
> any reason why those commits weren't CC: stable? If this really affects all
> kernels where ext4 writing is possible, that means basically all current
> stable kernels more or less, I guess?

They weren't cc'ed stable because they're fairly complex patches,
which (a) means they probably wouldn't auto-apply anyway, and (b)
someone who does do the (probably manual) back port they would be
*very* strongly advised to run them through a complete ext4 regression
test series[1] to make sure the patches actually don't make things
worse from a stability perspective.

[1] http://thunk.org/gce-xfstests

I do spend *small* amount of work testing the stable kernels (3.10,
3.14, 3.18, 4.1, 4.4) using gce-xfstests and backporting and testing
patches that weren't cc'ed to stable for various reasons.  It's a
pretty low priority task, though, and I'd really love to delegate this
to someone else.  I just don't have the bandwidth to support back
level kernels (this is why distributions get paid the big bucks), and
note that even if I or someone else stepped up, this won't necessarily
help Debian, which isn't on a one of the stable kernel versions.

If anyone is interested, please contact me.  Otherwise, I'll get to it
eventually.

						- Ted
