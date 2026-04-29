Received: (qmail 11587 invoked by uid 550); 29 Apr 2026 15:08:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 28574 invoked from network); 29 Apr 2026 04:29:49 -0000
Authentication-Results: MSA;
	auth=pass smtp.auth=laffer1 smtp.mailfrom=luke@foolishgames.com
DKIM-Filter: OpenDKIM Filter v2.10.3 stargazer.midnightbsd.org 63T4TZu7096839
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=foolishgames.com;
	s=default; t=1777436976;
	bh=DklSnloS+gX7Jg6nJBebKkLl6yDT1Itp3EtWFH6gZZc=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=pjax1GbeVpzOH28UjUCvpCUWJ0Hs1y2qNdHnfOVmtKnxQrAxnxASt7JPGDI6pP6ai
	 iHD0totiqQCH2tVvTGFfQrrMFv+bVlBOJRi/9Zdlursu/6rJLmLbvqk92Ky4PMnmsy
	 s1SKjT6Dz9HzJaZexECb274a+dh7OWxHr5s+IlNY=
X-Authentication-Warning: stargazer.midnightbsd.org: Host 76-242-100-13.uvs.livnmi.sbcglobal.net [76.242.100.13] (may be forged) claimed to be [192.168.1.37]
Message-ID: <dc97be31-0762-4a91-a1ad-6795abaab8a9@foolishgames.com>
Date: Wed, 29 Apr 2026 00:29:35 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
References: <afDLFWVMK-r70PB0@yuggoth.org>
Content-Language: en-US
From: Lucas Holt <luke@foolishgames.com>
In-Reply-To: <afDLFWVMK-r70PB0@yuggoth.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 1.5.2 at stargazer.midnightbsd.org
X-Virus-Status: Clean
Subject: Re: [oss-security] Coordinated Disclosure in the LLM Age

While I see the temptation and the logic up to a point, dropping a 0-day 
on a small project is not helping anyone.  It *could* be discovered by a 
LLM by another person, but that doesn't mean they are actually looking.  
Large, popular projects are more likely to get widely scanned.  Smaller 
projects may not.   I wouldn't expect 90 days but a few would be nice.  
If someone is reporting to me that there is a vulnerability in a piece 
of software, even if I use AI to fix it, I'm still going to need time to 
test it before doing a release.  The release process takes a few hours 
for me.  Then the test and patch time.

Pretend for a moment that you maintain a small project as a hobby. You 
have a day job.  Suddenly, a CVE is dropped on your lap mid day.  You 
didn't make anyone safer doing that.  It's not like I'm going to get it 
patched during work hours.  Not everyone is Red Hat or Apple.

This happened recently to the rsync project. It could have waited a few 
days to go public.

At a minimum, if you're going to go public, use your AI to include a 
possible patch too.  Don't just drop work on a random person because you 
got to find it first.  That's not cool.

-- 
Lucas Holt
Luke@FoolishGames.com
________________________________________________________
MidnightBSD.org (Free OS)
JustJournal.com (Free blogging)

