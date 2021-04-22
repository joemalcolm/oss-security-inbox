X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1934" "Thursday" "22" "April" "2021" "10:47:06" "-0600" "Ariadne Conill" "ariadne@dereferenced.org" nil "45" "Re: [oss-security] Malicious commits to Linux kernel as part of university study" nil nil nil "4" nil nil (number mark "U       ariadne@dere Apr 22   45/1934  " thread-indent "\"Re: [oss-security] Malicious commits to Linux kernel as part of university study\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Malicious commits to Linux kernel as part of university study" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1185 invoked by uid 550); 22 Apr 2021 17:20:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15855 invoked from network); 22 Apr 2021 16:47:20 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dereferenced.org;
	s=mailbun; t=1619110027;
	bh=ECAWGeRXr5vzqNYnNwBfzGrN0cqoCetHohzNmorZqI0=;
	h=Date:From:To:Subject:In-Reply-To:References;
	b=kyK3fPqZWDdEailpqEp/JAX1Bdni7RzhnWaBwi49fek8jo4hUEwaj5xMwGczIKSTg
	 Fm7LX8SGgItoHxWgMFkn9CsiEZ+pBINZw0GefRMhihLqFOJ+d1WJ1hzXUbuHVbGbsS
	 I8BZc2Vxj9dJJArexhW48OVgHjwC1omwgLPQIhOMpLXoN7vUfieOWBbQ94zTzy4cKx
	 5LrZx7DpJOYJAYOLaFCkUdOMLLIQB9dSFzUN32tl9Ls3/wgcPVBVe6A7iR1zAntn3U
	 oe1psmPOAnpH/sF6MJ0FiSqaqDgrP6Q3ECTTwux257liMwojF43vxJocPm+MZUDuuz
	 mRHhLbIsYUC2w==
Date: Thu, 22 Apr 2021 10:47:06 -0600 (MDT)
From: Ariadne Conill <ariadne@dereferenced.org>
To: Open Source Security <oss-security@lists.openwall.com>
In-Reply-To: <20210422065959.GI13079@scully.more-magic.net>
Message-ID: <ae30ef63-77c-cc1b-ef7b-5ed387f7fc95@dereferenced.org>
References: <20210422065959.GI13079@scully.more-magic.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII; format=flowed
Subject: Re: [oss-security] Malicious commits to Linux kernel as part of
 university study

Hello,

On Thu, 22 Apr 2021, Peter Bex wrote:

> Hi all,
>
> Probably a lot of you know this already but I consider it serious enough
> to point out to the OSS security community at large.
>
> The university of Minnesota has been banned from making any commits to
> the Linux kernel after it was found out they'd been submitting bogus
> patches to the LKML to knowingly introduce security issues:
> https://lore.kernel.org/linux-nfs/YH%2FfM%2FTsbmcZzwnX@kroah.com/

While it's disappointing that they chose to go about this experiment in a 
way that violated research ethics, it does raise a point that has been 
discussed in the community but frequently shrugged off: the possibility 
that a bad actor might submit legitimate patches until such time that 
they can sneak insecure code through review.

Hopefully a positive of this research is that people will be more likely 
to think about the possibilities of insecure code being walked through the 
front door.

With that said, I think UMN should fire Kangjie Lu.  The approach they 
used in their experiment is literally a textbook example of how *not* to 
do this kind of research.  At least, that's not what *I* remember from 
university.  I suspect they will likely fire Kangjie Lu as a result of 
their investigation.

>
> They also published a paper:
> https://raw.githubusercontent.com/QiushiWu/qiushiwu.github.io/main/papers/OpenSourceInsecurity.pdf
>
> I don't know the scope of this research, but it could involve other OSS
> projects, now or in the future, as well.  Hence this e-mail.  If you feel
> it's spam or needless drama, feel free to ignore.

It seems likely.  However, we may not ever know for sure, because the 
paper says they submitted the patches using a random Gmail account instead 
of their UMN email accounts.  I assume any other attempts they made to 
troll other FOSS projects would have come from random Gmail throwaway 
accounts as well.

Ariadne
