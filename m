X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3477" "Friday" "19" "March" "2021" "13:55:07" "-0400" "Sasha Levin" "sashal@kernel.org" nil "79" "Re: [oss-security] Re: CVE-2021-20219 Linux kernel: improper synchronization in flush_to_ldisc() can lead to DoS" nil nil nil "3" nil nil (number mark "U       sashal@kerne Mar 19   79/3477  " thread-indent "\"Re: [oss-security] Re: CVE-2021-20219 Linux kernel: improper synchronization in flush_to_ldisc() can lead to DoS\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Re: CVE-2021-20219 Linux kernel: improper synchronization in flush_to_ldisc() can lead to DoS" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9679 invoked by uid 550); 19 Mar 2021 17:55:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9661 invoked from network); 19 Mar 2021 17:55:20 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1616176508;
	bh=dvjZJkdnTbJpO7XQUS8YXFueLiVvUrqaB8Td9qptfM4=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=Zu+QLp2wfyQScKKivtM0aHNrE9zZ8B2VbuKz4dETGGNkeAMikHWC8TizvRLBIdREK
	 KP1wb6jeoXaTaDLh+fP0YxAUMekUmVtSftLgN5tpUbbGYq9KQrtu51YBgFJDrnFHFw
	 YNMiT9mficr8/XS+JlK+lrOFKurAlEc+ESwhb9A9ka1WQ/gpXipsObkFAtbYKPzbB5
	 S5X7suFhvbCYEpqdpzn8y68RGTo/Ns6mb/PCspFs1UjwArG2DDncdXkkVs/hY1L/i7
	 Ju8uHDndp7F2IGpRptSp6I+1IwJgPmv9AT9pV+DE5eMjm2pIfz7GVZFySYUs4SywxQ
	 x0KcFCOcahotw==
Date: Fri, 19 Mar 2021 13:55:07 -0400
From: Sasha Levin <sashal@kernel.org>
To: oss-security@lists.openwall.com
Message-ID: <YFTlezXaxyIRxcKN@sashalap>
References: <CAKx+4-pR3JScgA-PJFSwkAw6B8xiXYWFtVD6rEYp2wnJjyCogw@mail.gmail.com>
 <YFNCtWmsYrtYQeEJ@kroah.com>
 <YFOLo/QrlgIrFotJ@wopr>
 <YFOc8bhUAKOgjfVS@sashalap>
 <20210318192136.GA6178@openwall.com>
 <YFSyTOoNtyrQvrH3@sashalap>
 <20210319144311.GA22152@grsecurity.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20210319144311.GA22152@grsecurity.net>
Subject: Re: [oss-security] Re: CVE-2021-20219 Linux kernel: improper
 synchronization in flush_to_ldisc() can lead to DoS

On Fri, Mar 19, 2021 at 10:43:11AM -0400, Brad Spengler wrote:
>Hi Sasha,
>
>I'm sorry, but I can't let this email demonstrating a complete lack of
>self-awareness go without comment.
>
>> I suppose we can't *require* them, but it's a matter of curtesy, right?
>> They already have that information, and instead of making a bunch of
>> other people do the same job they could just share the information to
>> begin with.
>
>I'm seriously baffled that you could type those words out with a straight
>face.  As we know happens often, including with the recent iSCSI
>vulnerabilities, upstream has intentionally omitted CVE information
>from kernel commit messages -- in other words:
>"they already have the information, and instead of making a bunch of
>other people do the same job they could just share the information to
>begin with."

I'm really not sure how to respond to this. I don't own upstream, my
name isn't Linus, Greg, nor do I maintain a major subsystem. I don't
have any control over how upstream commits look like.

This isn't a claim that that process is perfect, this is just me saying
that you're barking up the wrong tree. I'd happily add that Linus's
"obfuscated" commit messages are making things more difficult for me,
but again - I can't control what he does.

Which is why I can type what I typed with a straight face: I'm trying to
improve the oss-sec process, I'm not in any way claiming the upstream is
superior or anything. I'm not sure why you're personally attacking me
here for the upstream process.

>Do none of you understand at all that the problems that exist are entirely
>of your own creation?  Neither you nor Greg ever come to this list with
>announcements of your own.  That you have to endure a tiny fraction of what

I don't usually discover security vulnerabilities these days. I did in
the past and those were assigned CVE numbers.

Otherwise, I don't do analysis of a security impact of a fix.

>the rest of the world is inflicted with from your intentional actions --
>sorry, you are not the victims here, and it's completely ridiculous to
>paint yourselves as one.

Could you specify what actions *I* did to hurt the world?

>Greg started his tirade yesterday with a false assumption that the stable
>kernels had already fixed the one issue August of last year.  That was not
>true (stable kernels < 5.7 were all missing the fix).  Then he claimed SuSE
>didn't bother to backport the fix.  That was not true:
>https://github.com/SUSE/kernel/commit/b93bddd7ae24aa8ebe48d13dcff4011a34861482
>
>If you guys want to complain about bad information, leaving it out of useless
>snarky replies would be a good start.

Can you please stop complaining about Greg's mails as if I was the one
who wrote them? I'm not his alter-ego, twin, or so on. If you have a
concern with what he writes take it up with him.

My concern with the notifications is that some of them don't even
include a commit id, I never claimed (nor will) claim that stable
already fixed them all. On the contrary, I want that commit id to make
sure we did.

>> Exactly, they already must have this information, which is where some of
>> the frustration around these notifications comes from: it reads as
>> nothing more than a lip service.
>
>You're assuming too much -- it's quite clearly someone new at RH doing these
>recent advisories.

Great, let's work together on making it better, but it's been following
the same pattern for quite a while now.

-- 
Thanks,
Sasha
