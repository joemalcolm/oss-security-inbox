Received: (qmail 32086 invoked by uid 550); 25 Jul 2023 12:32:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32065 invoked from network); 25 Jul 2023 12:32:07 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1690288316; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=PqRo2rwM3n/C7ZZ3GLhPnk/hQOViWq/p14crVX1Ia9w=;
	b=YpUuFkTL2tcvGUi9Vy7SE2OIfCPVTiwIf1WF0dfqZ/z/HHmS22sv92dDlNG+3wX9NKmcUS
	H8+AskMkx3dSwrQtoJI6Pd3U3O14fT4rU4jtxy1D8OzXRbKBurrMjA4Uu7G703wquAiFo7
	g7Kfk+lNxDc+fM1A8aZtZ0DEDrDcUMI=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1690288316;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=PqRo2rwM3n/C7ZZ3GLhPnk/hQOViWq/p14crVX1Ia9w=;
	b=grSKQiG3JgvFgyHS76JSfdGiGu0qpRVb9WcQobxmAxkv+xW9RjmjBx+TOkGyGYSd/+z21O
	5X0DqoFXVyARGkBw==
Date: Tue, 25 Jul 2023 14:31:55 +0200
From: Marcus Meissner <meissner@suse.de>
To: oss-security@lists.openwall.com
Cc: Tamas Koczka <poprdi@chromium.org>
Message-ID: <20230725123152.GG19212@suse.de>
References: <CAEviOmOzG=KTzqee5hsrLUsCSL2ic7Kj-CzrBhEx7PxXx=5FKA@mail.gmail.com>
 <20230714180656.GA30858@openwall.com>
 <20230719074714.GA6211@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230719074714.GA6211@suse.de>
Organization: SUSE Software Solutions =?iso-8859-1?Q?Ger?=
 =?iso-8859-1?Q?many_GmbH=2C_Frankenstra=DFe_146=2C_90461_Nuernberg=2C_Ger?=
 =?iso-8859-1?Q?many=2C_GF=3A_Ivo_Totev=2C_Andrew_Myers=2C_Andrew_McDonald?=
 =?iso-8859-1?Q?=2C_Martje_Boudien_Moerman=2C_HRB_36809=2C_AG_N=FCrnberg?=
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [oss-security] Our learnings from 42 Linux kernel exploits, we
 are limiting io_uring

Hi,

https://yanglingxi1993.github.io/dirty_pagetable/dirty_pagetable.html

has been updated with exploit information.

I tried to backtrack through kernel git to find the exact commit where
this locking problem got fixed, but I gave up after a while after multiple
refactoring (and a filemove) in the io_uring codel.

Cia, Marcus

On Wed, Jul 19, 2023 at 09:47:15AM +0200, Marcus Meissner wrote:
> Hi,
> 
> On Fri, Jul 14, 2023 at 08:06:56PM +0200, Solar Designer wrote:
> > Hi,
> > 
> > Thank you for bringing this to oss-security back then.  I have a few
> > questions below that I think you could clarify for everyone.  I'll quote
> > more of your message than I normally do since it's been a while.
> 
> ...
> 
> > There's a recent write-up on an exploitation technique that also
> > partially describes CVE-2023-21400, "a double free vulnerability in
> > io_uring [...] found by Ye Zhang and [Nicolas Wu] last year, affecting
> > kernel 5.10. [...] we exploit CVE-2023-21400 with Dirty Pagetable on
> > Google Pixel 7."
> > 
> > Dirty Pagetable: A Novel Exploitation Technique To Rule Linux Kernel
> > https://yanglingxi1993.github.io/dirty_pagetable/dirty_pagetable.html
> > 
> > I wish this vulnerability and exploitation technique were properly
> > brought to oss-security on its own, and in a context not limited to
> > Google Pixel.  Maybe it will be once the full description is made
> > public, as right now the write-up above omits vulnerability detail.
> > 
> > It appears that this got patched in the July 5 update for Google Pixel:
> > 
> > Pixel Update Bulletin - July 2023
> > Published July 5, 2023
> > https://source.android.com/docs/security/bulletin/pixel/2023-07-01
> > 
> > "For Google devices, security patch levels of 2023-07-05 or later
> > address all issues in this bulletin and all issues in the July 2023
> > Android Security Bulletin."
> > 
> > "CVE-2023-21400	A-264663832 *	EoP	Moderate	Kernel io_uring"
> > 
> > Nothing is mentioned about seccomp-bpf on either of the above web pages,
> > although maybe it's factored into the Moderate severity rating?
> > 
> > I understand that with vulnerability detail still not public you might
> > not be able to tell much, but I am wondering whether there's any
> > inconsistency here (seccomp-bpf on Android was meant to prevent this,
> > but did not?) or just a misunderstanding or something else.  I wonder
> > if a vulnerability in io_uring could be such that it's exploitable
> > without io_uring access directly from the attacking app.
> 
> FWIW we reached out to the Android CNA team, but their statement back
> to us was that they pulled quite a number of backport commits into their 5.5
> and 5.10 based trees, but did either not specify nor identify specific commits
> fixing the issue (or further details) so far.
> 
> Ciao, Marcus

-- 
Marcus Meissner (he/him), Distinguished Engineer / Senior Project Manager Security
SUSE Software Solutions Germany GmbH, Frankenstrasse 146, 90461 Nuernberg, Germany
GF: Ivo Totev, Andrew Myers, Andrew McDonald, Martje Boudien Moerman, HRB 36809, AG Nuernberg
