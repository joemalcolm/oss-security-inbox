X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5827" "Thursday" "27" "October" "2016" "05:08:21" "-0300" "Dawid Golunski" "dawid@legalhackers.com" "<CADSYzstg=nnmsA+2-H02ieSUFJDUxj4vW1P7bkdr0kqr8b97nA@mail.gmail.com>" "131" "Re: [oss-security] CVE-2016-1240 - Tomcat packaging on Debian-based distros - Local Root Privilege Escalation" nil nil nil "10" "2016102708:08:21" "[oss-security] CVE-2016-1240 - Tomcat packaging on Debian-based distros - Local Root Privilege Escalation" (number mark "U       dawid@legalh Oct 27  131/5827  " thread-indent "\"Re: [oss-security] CVE-2016-1240 - Tomcat packaging on Debian-based distros - Local Root Privilege Escalation\"\n") "<20161026173951.GA21166@openwall.com>" ("<CADSYzss90v5o_p40F5+_PHhS+EwP3K=FLsB-ak9xazRj9gtm6w@mail.gmail.com>" "<20161026173951.GA21166@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26592 invoked by uid 550); 27 Oct 2016 08:32:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11300 invoked from network); 27 Oct 2016 08:08:33 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=legalhackers-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=E2WIB+6Hdcj7LRfJxwQ25T8iFgedIUFfeSnwDt+WCR0=;
        b=fJiFqOk154b8dQK8yKTGPOg1eXb+rxdOS/8hwgga2sx7lnQ0YReWR7B0UWtjUQrWrv
         tKP29rHjhwBu9ne3a37jhED7u6Sn6ZxBmERyNQNPdgoZLM62+CPASwm99qW+OfE/zYYL
         izNhPs7ZQjan7oyp4jEzbtiYWBr8b4HO/bmr1gAzSrhyoTFwcKzW6uZqkMT2lnIT+eAt
         U1ljRvcQT7ilbuvnK091Wq0YDWkUImTzbWr/WiGVvQ0D6puz3ah5wH6kxks7u7ihoaK5
         V697rVT6j3v2hkx32eDM/Ck+vkgAOdot6rHZWMJR6qlULyTeJXGRHi5+jBYDMglVAAb0
         kSgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=E2WIB+6Hdcj7LRfJxwQ25T8iFgedIUFfeSnwDt+WCR0=;
        b=jYWKeyE50mGsimIxd3GBCe1J4LYTQ+VvAyIXMjjFw1eFsv4qtbMTJwOxFSZb+nOu9d
         9r+CuPF67WVgVolYJ5bJAbPedfIdSLGqcyo0Ob4SUeDtlTafF9aQ60m5+g3Sa0+yU5ls
         JawFZCL2dig96CJLnCbtPGWEbhaIAxGiaXbhW5nu8663K7BI3dmADJ/jyBs6qqljDvj5
         f5GvlUSHe3zrxZROjOVNhUjJ8c2zDmyBepnz3c4bYP2KyLvtKw6rvsbzoYEUh69ZYI4X
         MjawusdbI4HrBtLtRbAsojjy4WvnpHXWoGUazo20ngOX982odOv8vJMREapGD2Rj2Ah4
         fgbg==
X-Gm-Message-State: ABUngvfqCmeRqKy72Qq5AXgE/7T6WKIOVXzeWUOYYApV7jdQ1CPyLC2uLn+sklHCHocLJGYd4RvXZwZnSkW4Tg==
X-Received: by 10.28.163.196 with SMTP id m187mr11414874wme.73.1477555702277;
 Thu, 27 Oct 2016 01:08:22 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20161026173951.GA21166@openwall.com>
References: <CADSYzss90v5o_p40F5+_PHhS+EwP3K=FLsB-ak9xazRj9gtm6w@mail.gmail.com>
 <20161026173951.GA21166@openwall.com>
From: Dawid Golunski <dawid@legalhackers.com>
Date: Thu, 27 Oct 2016 05:08:21 -0300
Message-ID: <CADSYzstg=nnmsA+2-H02ieSUFJDUxj4vW1P7bkdr0kqr8b97nA@mail.gmail.com>
To: Solar Designer <solar@openwall.com>
Cc: oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8
Subject: Re: [oss-security] CVE-2016-1240 - Tomcat packaging on Debian-based
 distros - Local Root Privilege Escalation

Hi Alexander,


On Wed, Oct 26, 2016 at 2:39 PM, Solar Designer <solar@openwall.com> wrote:
> Dawid,
>
> On Wed, Oct 26, 2016 at 02:05:11AM -0300, Dawid Golunski wrote:
>> I added a simple PoC video for the CVE-2016-1240 vulnerability.
>>
>> In the PoC I used Ubuntu 16.04 with the latest tomcat7 package
>> (version: 7.0.68-ubuntu-0.1) installed from the default ubuntu repos
>> which appears vulnerable still.
>>
>> The video poc can be found at:
>>
>> http://legalhackers.com/videos/Apache-Tomcat-DebPkg-Root-PrivEsc-Exploit.html
>
> You call out distro vendors on very real security issues.  In fact,
> those distros should be embarrassed to still have previous millennium's
> issues like this, which are trivial to spot.  It probably means that
> their security teams are too disconnected from their packagers, and are
> not proactive.  You also bring this valuable information to the
> oss-security community.  Thank you for this.


>From the feedback I got and my observations it seems that a lot of
people are not aware
of the default link following behaviour of the chown command. Perhaps
that also explains (not saying justifies)
why the vulnerabilities I reported have stayed hidden for a while.
Luckily, there is the protected_symlinks kernel feature which would
protect against similar issues in case of temporary directories
with sticky bit nowadays but obviously it can't be treated as a magic
cure to all the symlink issues.
Hopefully the advisories and the video will increase the awareness of this.

> However, as you probably realize, you also abuse this mailing list to
> promote your website, at the expense of not including full detail in
> your postings themselves.  As I pointed out to you before, oss-security
> content guidelines:


The last post was a follow up to my previous post
(http://www.openwall.com/lists/oss-security/2016/10/01/3)
which I thought actually had enough basic details in it for people to
make a decision if they want to know more details and see the full
exploit etc.
It's often easier to have/maintain one central version of an advisory
rather than having a separate version on each forum etc.
That was my reasoning behind it anyway.

As to posting to multiple groups I use BCC , not CC, unless in error
due to rush or just being underslept (notice the 5am in the video :)

As to the future posting, obviously I can't speak for the others who
also prefer short description + external link format but I'll try to
remember to make an extended description/attach full advisory to the
message when posting to oss-sec. Other groups seem more relaxed in
this regard so it is easy to forget when posting to multiple groups.

Thanks for the reminders and for putting your efforts into maintaining the list.


-- 
Regards,
Dawid Golunski
http://legalhackers.com


> http://oss-security.openwall.org/wiki/mailing-lists/oss-security#list-content-guidelines
>
> include this:
>
> "At least the most essential part of your message (e.g., vulnerability
> detail and/or exploit) should be directly included in the message itself
> (and in plain text), rather than only included by reference to an
> external resource.  Posting links to relevant external resources as well
> is acceptable, but posting only links is not.  Your message should remain
> valuable even with all of the external resources gone."
>
> I realize you couldn't have reasonably included a video (arguably, this
> means that a video is of little interest to oss-security, unless the
> information in it is unique and is not also available in text form), but
> you also violated this guideline in these related postings (which I
> appreciated otherwise):
>
> http://www.openwall.com/lists/oss-security/2016/10/01/3
> http://www.openwall.com/lists/oss-security/2016/10/10/2
>
> In those, you refer to very detailed advisories placed on your website,
> but you don't include the advisory texts in the postings themselves.
> You must be doing just that - in message body or text/plain attachments,
> please.  Will you correct this going forward?  (It is OK to also include
> URLs to your website, thereby promoting it, but not at the expense of
> the level of detail in the messages themselves.)
>
> If you continue to post link-mostly messages, we'll have the tough
> choice between:
>
> 1. Let you post those anyway, and ignore the problem.  Unfortunately,
> this is likely to result in some others doing the same more.  (OTOH, it
> will also keep reminding people of just how bad it is not to have detail
> right in the messages.)
>
> 2. Look for a volunteer who would post follow-ups or replacements to
> your postings, with actual detail in them.  (In fact, we could need a
> volunteer like this anyway, since non-detailed postings do happen once
> in a while, not only by you.)
>
> 3. Reject your postings (for them violating the content guidelines), but
> that's counter-productive because the linked-to information is actually
> on-topic and valuable to this community (thank you for it, again!)
>
> Another guideline you violate is this:
>
> "Please don't cross-post messages to oss-security and other mailing
> lists at once, especially not to high-volume lists such as LKML and
> netdev, as this tends to result in threads that wander partially or
> fully off-topic (e.g., Linux kernel coding style detail may end up being
> discussed in comments to a patch posted to LKML, but it would be
> off-topic for oss-security).  If you feel that something needs to be
> posted to oss-security and to another list, please make separate
> postings.  You may mention the other posting(s) in your oss-security
> posting, and even link to other lists' archives."
>
> It's less important since you're only CC'ing security-focused lists so
> far, but I would appreciate it if you avoid the CC's anyway.
>
> Thanks,
>
> Alexander
