X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6812" "Friday" "19" "March" "2021" "20:20:29" "+0000" "Eddie Chapman" "eddie@ehuk.net" nil "137" "Re: [oss-security] Re: CVE-2021-20219 Linux kernel: improper synchronization in flush_to_ldisc() can lead to DoS" nil nil nil "3" nil nil (number mark "U       eddie@ehuk.n Mar 19  137/6812  " thread-indent "\"Re: [oss-security] Re: CVE-2021-20219 Linux kernel: improper synchronization in flush_to_ldisc() can lead to DoS\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Re: CVE-2021-20219 Linux kernel: improper synchronization in flush_to_ldisc() can lead to DoS" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24417 invoked by uid 550); 19 Mar 2021 20:35:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16366 invoked from network); 19 Mar 2021 20:20:41 -0000
DKIM-Filter: OpenDKIM Filter v2.10.3 schatzi.steelbluetech.co.uk ADD23BFBD4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ehuk.net; s=default;
	t=1616185229; bh=lTEg8rUjMllRVdVtNQUL7MUrBx8+BfHThxqGFj787jk=;
	h=Reply-To:Subject:To:References:From:Date:In-Reply-To:From;
	b=ruwemYidbCoC31ZJcN8b5KdgahRoC7AjzHy9UplZqyo/xRqXO9BNUZjuiiXs+/cZ3
	 Bg7Yis4YM6MBkJOO7nFaAfy0BrO7nY4MpbP+S9MCWSR25IqxpjV8sEnUcvKHMuP3J/
	 /OeXkkRL58tJlUpNqanA9/yrJ6tvKPx1ur7weqq0=
To: oss-security@lists.openwall.com
References: <CAKx+4-pR3JScgA-PJFSwkAw6B8xiXYWFtVD6rEYp2wnJjyCogw@mail.gmail.com>
 <YFNCtWmsYrtYQeEJ@kroah.com> <YFOLo/QrlgIrFotJ@wopr>
 <YFOc8bhUAKOgjfVS@sashalap> <20210318192136.GA6178@openwall.com>
 <YFSyTOoNtyrQvrH3@sashalap> <20210319144311.GA22152@grsecurity.net>
 <YFTlezXaxyIRxcKN@sashalap>
From: Eddie Chapman <eddie@ehuk.net>
Message-ID: <a904e396-d4e7-632c-e0f2-78021f8284ce@ehuk.net>
Date: Fri, 19 Mar 2021 20:20:29 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <YFTlezXaxyIRxcKN@sashalap>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang
Subject: Re: [oss-security] Re: CVE-2021-20219 Linux kernel: improper
 synchronization in flush_to_ldisc() can lead to DoS

On 19/03/2021 17:55, Sasha Levin wrote:
> On Fri, Mar 19, 2021 at 10:43:11AM -0400, Brad Spengler wrote:
>> Hi Sasha,
>>
>> I'm sorry, but I can't let this email demonstrating a complete lack of
>> self-awareness go without comment.
>>
>>> I suppose we can't *require* them, but it's a matter of curtesy, right?
>>> They already have that information, and instead of making a bunch of
>>> other people do the same job they could just share the information to
>>> begin with.
>>
>> I'm seriously baffled that you could type those words out with a straight
>> face.  As we know happens often, including with the recent iSCSI
>> vulnerabilities, upstream has intentionally omitted CVE information
>> from kernel commit messages -- in other words:
>> "they already have the information, and instead of making a bunch of
>> other people do the same job they could just share the information to
>> begin with."
> 
> I'm really not sure how to respond to this. I don't own upstream, my
> name isn't Linus, Greg, nor do I maintain a major subsystem. I don't
> have any control over how upstream commits look like.
> 
> This isn't a claim that that process is perfect, this is just me saying
> that you're barking up the wrong tree. I'd happily add that Linus's
> "obfuscated" commit messages are making things more difficult for me,
> but again - I can't control what he does.
> 
> Which is why I can type what I typed with a straight face: I'm trying to
> improve the oss-sec process, I'm not in any way claiming the upstream is
> superior or anything. I'm not sure why you're personally attacking me
> here for the upstream process.
> 
>> Do none of you understand at all that the problems that exist are 
>> entirely
>> of your own creation?  Neither you nor Greg ever come to this list with
>> announcements of your own.  That you have to endure a tiny fraction of 
>> what
> 
> I don't usually discover security vulnerabilities these days. I did in
> the past and those were assigned CVE numbers.
> 
> Otherwise, I don't do analysis of a security impact of a fix.
> 
>> the rest of the world is inflicted with from your intentional actions --
>> sorry, you are not the victims here, and it's completely ridiculous to
>> paint yourselves as one.
> 
> Could you specify what actions *I* did to hurt the world?
> 
>> Greg started his tirade yesterday with a false assumption that the stable
>> kernels had already fixed the one issue August of last year.  That was 
>> not
>> true (stable kernels < 5.7 were all missing the fix).  Then he claimed 
>> SuSE
>> didn't bother to backport the fix.  That was not true:
>> https://github.com/SUSE/kernel/commit/b93bddd7ae24aa8ebe48d13dcff4011a34861482 
>>
>>
>> If you guys want to complain about bad information, leaving it out of 
>> useless
>> snarky replies would be a good start.
> 
> Can you please stop complaining about Greg's mails as if I was the one
> who wrote them? I'm not his alter-ego, twin, or so on. If you have a
> concern with what he writes take it up with him.
> 
> My concern with the notifications is that some of them don't even
> include a commit id, I never claimed (nor will) claim that stable
> already fixed them all. On the contrary, I want that commit id to make
> sure we did.
> 
>>> Exactly, they already must have this information, which is where some of
>>> the frustration around these notifications comes from: it reads as
>>> nothing more than a lip service.
>>
>> You're assuming too much -- it's quite clearly someone new at RH doing 
>> these
>> recent advisories.
> 
> Great, let's work together on making it better, but it's been following
> the same pattern for quite a while now.

I've been following this discussion with interest this week. This list 
probably has lots of security researchers and kernel devs subscribed, 
but I'd like to share a point of view as someone who is neither of 
these, just a heavy user of open source professionally and personally 
the past 20 years.

I've always compiled my own kernels from upstream kernel.org stable 
releases for all machines I look after. I know I'm in the minority and 
stupid for making life harder for myself, but I prefer it that way. I 
follow the upstream stable list as much as I can, read commit messages 
of releases. I try to be as aware as I can about security issues so I 
can keep my boxes secure, and this list has been an invaluable source of 
info to me for many years. Thanks to the moderator who I'm sure has a 
very difficult job at times.

It is certainly evident to me that the "quality" of security 
announcements made by researchers, organisations, maintainers, in 
general varies greatly. For someone in my shoes, when an announcement is 
made that includes plenty of specific information, I appreciate it so 
much. For most software, lack of info in a vulnerability announcement is 
not a big deal and I often go hunting for info on a project's website or 
git repo and can relatively easily find it. But the kernel is so 
gigantic now that quality, specific info in an announcement, to someone 
like me who builds their own kernels, makes all the difference.

This is OSS, there are many volunteers, nobody owes anyone anything, 
that's fine, I'm grateful for anyone's efforts whatever they are. I'm 
especially mindful of that when reading a security announcement from a 
small project with 1 dev working in their spare time. But at the other 
end of the scale are the giants who make a lot of money from the kernel 
and have a lot of resources. None of them owe me anything, I'm not their 
customer or partner. But I certainly look at them a lot differently than 
the small project. I notice how they behave in this community, and I am 
certainly much less generous when forming an opinion about them.

Red Hat contributes a lot, hires a lot of developers, I respect them and 
what they do, Fedora is a great distro. The security write-ups on their 
website about vulnerabilities are often excellent. But I'm sorry to say 
that in my view, which I know is not worth a cent, the security 
announcements they've made on this list this week have been very thin on 
detail, and they have appeared completely uninterested in improving 
them. I completely understand the frustrations expressed by Greg and 
Sasha as a result. A company the size of Red Hat, with their resources, 
involved in kernel development as much as they are, I'm sure would agree 
themselves that they should be doing a lot better. But to the individual 
sending the announcements, please know I don't believe you are at fault 
here in any way, my criticism goes to Red Hat as an organisation which I 
respect and wish to see do better in this particular aspect of their 
involvement in the community.

Right, thanks for listening, back to lurking in the shadows ...

Eddie
