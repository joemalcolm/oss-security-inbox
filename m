Received: (qmail 12016 invoked by uid 550); 28 Sep 2025 22:09:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 24469 invoked from network); 28 Sep 2025 21:29:42 -0000
Authentication-Results: MSA;
	auth=pass smtp.auth=laffer1 smtp.mailfrom=luke@foolishgames.com
DKIM-Filter: OpenDKIM Filter v2.10.3 stargazer.midnightbsd.org 58SLTU7V075657
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=foolishgames.com;
	s=default; t=1759094972;
	bh=wRgtPQiq1PpOjYdCAgFrK/NsCxiL12rJ4AQZX5yIgbw=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=cskQGpNntZvlQgMhD9hy/hpeZ9Au0rHSDc/f/yj/E0GS+ZEGDS9pu0jdqBKHRdMjM
	 cBXYEGIDO7TgRof1uonP4X+8NmJzuSP/v4SwHiDUr732Qrt9AMrTy41AIS11tfG2RJ
	 /4qm/1x7syMImOvv7lY7Ugx1L9fkrIxhZYgjJz+o=
X-Authentication-Warning: stargazer.midnightbsd.org: Host 70-91-226-205-BusName-Michigan.hfc.comcastbusiness.net [70.91.226.205] (may be forged) claimed to be [192.168.1.98]
Message-ID: <3e71b498-5452-47fd-9388-6679625b6dc2@foolishgames.com>
Date: Sun, 28 Sep 2025 17:29:29 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
References: <CAFf+5ziKPTBLFmDAffWTH+MCnOp5NHhZNM803PsemVLRuQoCaQ@mail.gmail.com>
Content-Language: en-US
From: Lucas Holt <luke@foolishgames.com>
In-Reply-To: <CAFf+5ziKPTBLFmDAffWTH+MCnOp5NHhZNM803PsemVLRuQoCaQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 1.4.3 at stargazer.midnightbsd.org
X-Virus-Status: Clean
Subject: Re: [oss-security] How to do secure coding and create secure software


On 9/27/25 4:30 AM, Amit wrote:
> -----------------------------------------------------------------------
> How to do secure coding and create secure software
> -----------------------------------------------------------------------
>
> I can do secure coding and no one can hack my code unless the language/OS have
> some issues. You can challenge me on this.
>
As a software engineer, we are often told to think of hardware as a 
black box.  Don't worry about it they say.  Then meltdown/spectre, 
rowhammer and many other fun issues pop up.  It's not limited to the OS, 
language or libraries. Hardware matters.

-- 
Lucas Holt
Luke@FoolishGames.com
________________________________________________________
MidnightBSD.org (Free OS)
JustJournal.com (Free blogging)

