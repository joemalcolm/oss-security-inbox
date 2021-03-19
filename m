X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1447" "Friday" "19" "March" "2021" "16:37:43" "-0400" "Sasha Levin" "sashal@kernel.org" nil "37" "Re: [oss-security] Re: CVE-2021-20219 Linux kernel: improper synchronization in flush_to_ldisc() can lead to DoS" nil nil nil "3" nil nil (number mark "U       sashal@kerne Mar 19   37/1447  " thread-indent "\"Re: [oss-security] Re: CVE-2021-20219 Linux kernel: improper synchronization in flush_to_ldisc() can lead to DoS\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Re: CVE-2021-20219 Linux kernel: improper synchronization in flush_to_ldisc() can lead to DoS" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5789 invoked by uid 550); 19 Mar 2021 20:38:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5768 invoked from network); 19 Mar 2021 20:38:00 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1616186264;
	bh=TWQvElBT3z26GAX4/FY/Tl7EbULnjbe2rsRYuDYDe/4=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=RhrGZzyQeyfZDAh9vDbAnhd8qWvebar0GFanmD3ZJQE93+ueOcHe4GMCs5l0z5CLW
	 6IT0e3hpocwD2uesy6+yu6TfW2iV7U8yB14+yssfuHG2U6Igi79iV940fcHK202Ub2
	 LwOTxppY0giEt1vFHiobO+iHK886Dj3yp7qRujP49C0zmJiwzqq67fIvYZejKLU+CR
	 szPGntN4c1S5FqX4mBnEO15G3WSNwC6Num6IAJ0Y1XCnEtWk1sjRnuaNIu1leewSIS
	 mhji+M/AN1uW0kyKOXGezXu3ylkntpJ5Cx+cGEOxvEMsQzO5vG3aACrR2yXb7xEOTv
	 /Dt1M10pUyUfQ==
Date: Fri, 19 Mar 2021 16:37:43 -0400
From: Sasha Levin <sashal@kernel.org>
To: oss-security@lists.openwall.com
Message-ID: <YFULl+8RMJkYL67G@sashalap>
References: <CAKx+4-pR3JScgA-PJFSwkAw6B8xiXYWFtVD6rEYp2wnJjyCogw@mail.gmail.com>
 <YFNCtWmsYrtYQeEJ@kroah.com>
 <YFOLo/QrlgIrFotJ@wopr>
 <YFOc8bhUAKOgjfVS@sashalap>
 <20210318192136.GA6178@openwall.com>
 <YFSyTOoNtyrQvrH3@sashalap>
 <20210319144311.GA22152@grsecurity.net>
 <YFTlezXaxyIRxcKN@sashalap>
 <20210319195825.GA28654@grsecurity.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20210319195825.GA28654@grsecurity.net>
Subject: Re: [oss-security] Re: CVE-2021-20219 Linux kernel: improper
 synchronization in flush_to_ldisc() can lead to DoS

Hey Brad,

I'll let Greg respond on your concerns with him, I've removed those
references to him from my reply.

On Fri, Mar 19, 2021 at 03:58:25PM -0400, Brad Spengler wrote:
>Hi Sasha,
>
>> I'm really not sure how to respond to this. I don't own upstream, my
>> name isn't Linus, Greg, nor do I maintain a major subsystem. I don't
>> have any control over how upstream commits look like.
>
>Both you and Greg certainly have control over stable kernel commit
>messages (it's the same ability you use to add the upstream commit ID).

So we do, but traditionally I haven't changed the commit message. I also
don't have an additional source of information when I queue up the
commits, so I'm not sure how my ability to edit stable commit messages
helps here.

>> Great, let's work together on making it better, but it's been following
>> the same pattern for quite a while now.
>
>I think both you and Greg are exaggerating the level of "extra work" this
>temporary blip creates for you -- with the exception of the RH backport
>issue, it was not difficult at all for me to determine what issue was
>being discussed, without even having to plug the CVEs into bugzilla.redhat.com
>which produces:
>https://bugzilla.redhat.com/show_bug.cgi?id=CVE-2020-35519
>https://bugzilla.redhat.com/show_bug.cgi?id=CVE-2021-3428

So this CVE link above is exactly what I referred to: how do you go from
CVE-2021-3428 to the commit in question?

-- 
Thanks,
Sasha
