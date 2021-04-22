X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2267" "Thursday" "22" "April" "2021" "11:56:46" "-0700" "Eric Biggers" "ebiggers@kernel.org" nil "40" "Re: [oss-security] Malicious commits to Linux kernel as part of university study" nil nil nil "4" nil nil (number mark "U       ebiggers@ker Apr 22   40/2267  " thread-indent "\"Re: [oss-security] Malicious commits to Linux kernel as part of university study\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Malicious commits to Linux kernel as part of university study" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3309 invoked by uid 550); 22 Apr 2021 19:02:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32708 invoked from network); 22 Apr 2021 18:57:06 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1619117808;
	bh=zaMaAlQLmtXE8wKhDv3Dcx1fjLVpTJfCJjHmQtO0Gw0=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=MdCDO+TBKD4w3K5r3y7YHK5fMK8GkcH6kdyNIafRVISl1w5Ehw7BeARqlKLgxttCL
	 M289hQHj9lMetbrvbrixrtawW3/JVS0FZeTOXzvZVjtzJEEl2803KUwyhd933AOHg2
	 v3yez5j2GX4jVLtxoi28P0dByOl9iagprhxKS4B76P/BWH39aQ0wXuc/PASYn6UQvf
	 zXiE2Dsem307+sBf9PfHdGuQZUCemDJHsCbSGoN+8Bd/UcC3r0xd9k6C5FgLcum6ra
	 yv2CFq9skXDbBRhKZcvX3xRS9UFfmwVg+idGt+vyJQSppVOUkBCj9U1m4wenalhynq
	 tAhIbQptlFA4A==
Date: Thu, 22 Apr 2021 11:56:46 -0700
From: Eric Biggers <ebiggers@kernel.org>
To: oss-security@lists.openwall.com
Message-ID: <YIHG7sLouq+hZXr8@gmail.com>
References: <20210422065959.GI13079@scully.more-magic.net>
 <CAEo4CePqice09K5PPhmxwwF3jg=USrqRqM5FgVX_jCB8sZfDeA@mail.gmail.com>
 <20210422095945.GA2495@scully.more-magic.net>
 <4DCB6EF3-73EE-4038-8437-FEB339F20F90@dwheeler.com>
 <627170ea-4e1e-1a3d-8291-494eac38c9b@dereferenced.org>
 <CAPyX2neD99tn_FY3FZ9WO5HaB2WXSgvSOejOiOE_9QHxqRjpdA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAPyX2neD99tn_FY3FZ9WO5HaB2WXSgvSOejOiOE_9QHxqRjpdA@mail.gmail.com>
Subject: Re: [oss-security] Malicious commits to Linux kernel as part of
 university study

On Thu, Apr 22, 2021 at 06:49:15PM +0100, Mark Steward wrote:
> On Thu, Apr 22, 2021 at 6:23 PM Ariadne Conill <ariadne@dereferenced.org> wrote:
> ...
> > By mining the LKML archive, it may be possible to find the original set of
> > patch submissions by searching for similar keywords as the messages from
> > Aditya.  If somebody can do that, then we would be able to determine at
> > least some of the emails likely to have originated the patches.
> >
> 
> This looks like a good guess to me, and if correct, means none of the
> submissions in the paper were successful:
> 
>   https://lore.kernel.org/linux-nfs/YIEqt8iAPVq8sG+t@sol.localdomain/
> 

Note that one of the patches (the one matching Figure 11 in their paper) did get
accepted and is in mainline.  However, it doesn't actually have a bug as
intended, apparently because the author misunderstood what pci_disable_device()
does.  So I'm not sure what the story is for that patch.  Incompetence is
normally much more likely than malice, but this case would be doubly incompetent
(failing to actually write a malicious patch and then putting it in their paper
anyway, *and* failing to notice that the patch was accepted and still claiming
that none of their patches were accepted) so it's a bit strange.

It's also possible that this patch is misidentified, but it seems pretty likely
it's correct given that that email account has only submitted two patches, both
on the same day in the time frame expected for the paper, which both matched
code snippets from the paper.  The other email account also had very similar
characteristics as well as a clearly fake name.

Anyway, the apparent misconduct of this university group aside, the real story
here is that people are going to (or at least *should*) be more careful about
reviewing Linux kernel patches, which is a good thing.  But yes, it appears that
of the malicious patches that were sent, only one was accepted (even into a
maintainer tree) and that was because it was actually a correct patch.  (That's
assuming that the new patches from Aditya Pakki aren't also malicious, which I
personally think they aren't, but naturally they don't get the benefit of the
doubt anymore given that they're apparently part of the same research group.)

- Eric
