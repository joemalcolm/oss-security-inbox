Received: (qmail 26403 invoked by uid 550); 24 Jun 2025 20:50:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 20386 invoked from network); 24 Jun 2025 20:49:05 -0000
Authentication-Results: MSA;
	auth=pass smtp.auth=laffer1 smtp.mailfrom=luke@foolishgames.com
DKIM-Filter: OpenDKIM Filter v2.10.3 stargazer.midnightbsd.org 55OKmrlw097741
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=foolishgames.com;
	s=default; t=1750798135;
	bh=mz1R+sN1hCy2nysDoDfdrXgAh0N57/2F3XYLQrMmn54=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=AWSbIKQmHKBh0ZNwRcjoyeierMJt3Fok1XaZsTDZN/XM3CZVO/Y+dD565DRpfIhZU
	 JZM5yPf86o48V34+NrxzSwO+McUM8E2b7MyNCKoxzl853WyJMZRTymKdg4B5yR6tgz
	 UOYvY8TKaT/dBCK7KWYHE3CkocLVTWI0SjkMDuUI=
X-Authentication-Warning: stargazer.midnightbsd.org: Host 70-91-226-205-BusName-Michigan.hfc.comcastbusiness.net [70.91.226.205] (may be forged) claimed to be [192.168.1.148]
Message-ID: <4627b6cd-8ea9-423e-aa6f-404162307970@foolishgames.com>
Date: Tue, 24 Jun 2025 16:48:53 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
References: <CAFyT70jJBgFDN1nreS1D6xp5QdXjJ8aLiJSbGfN8PTo5F1tChw@mail.gmail.com>
 <444d6a57-53cb-4391-9853-aaf71b2968bf@free.fr>
Content-Language: en-US
From: Lucas Holt <luke@foolishgames.com>
In-Reply-To: <444d6a57-53cb-4391-9853-aaf71b2968bf@free.fr>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 1.4.3 at stargazer.midnightbsd.org
X-Virus-Status: Clean
Subject: Re: [oss-security] xdg-open bypassing SameSite=Strict


On 6/24/25 4:22 PM, Gabriel Corona wrote:
> As was said by Solar Designer, if a "safe" version is needed,
> it should probably be the default when going through URI scheme
> registrations. This is because, as you said, this kind of issue
> lies in the interaction between several components (URI sources,
> URI sinks and URI go-betweens such as xdg-open) and it would
> certainly be possible to find a way to bypass the behavior
> otherwise.
>
I would think that all browsers should implement the safe behavior or 
URL handler registrations and allow the user (or enterprise) to adjust 
the policy within settings.  This would limit the issue for the vast 
majority of users, but allow folks to turn on the old behavior until 
applications can be fixed.  I suspect this could break some auth flows 
that rely on handlers right now within many apps.  (game launchers, 
enterprise tools, etc)

I don't think the right place to handle this is xdg-open. Essentially, 
browsers are trusting unsafe input as is.


-- 
Lucas Holt
Luke@FoolishGames.com
________________________________________________________
MidnightBSD.org (Free OS)
JustJournal.com (Free blogging)

