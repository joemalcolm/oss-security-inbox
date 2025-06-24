Received: (qmail 16006 invoked by uid 550); 24 Jun 2025 16:02:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1611 invoked from network); 24 Jun 2025 15:59:35 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sijanec.eu; s=mail;
	t=1750780766; bh=4tokXVcunN5V0wnD0k4Th+d3nv0bclz8+As/Pt1V98A=;
	h=Date:Subject:To:References:From:In-Reply-To;
	b=h5DK43d8Wh+9NhHV6UCTzLbKU0BcKRIl91/bX/81NMr1ClLrKeNTyFiBhUuejMhwM
	 VbcanA0sgCZc1GKy4E/9hWtRx2u5Ql5vhh8Mh13/09eEtpKnWgcqxm/o3eYn4NggQD
	 8nQ1vpVfQSYrsoef1gNnOF2EpUzyoWjPozqrRqwOwOiFUJKrftA4zCWy2WuST/14PH
	 dqmuMreTZhSDtJ0qAp3kT5iNbGSuIMum3ESW+xMVmGgju8IApMwz1z6cYdzbpW4BRi
	 f2Qm/pshmYK4OeKaZQN4ioufAQMMAJek/DPJkm7c3zTF3NMy1I1NpIituEEutwdFb1
	 01lK6i/EiBaqQ==
Message-ID: <3da9fe15-c26f-46c8-9087-12685eb119e7@sijanec.eu>
Date: Tue, 24 Jun 2025 17:59:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
References: <CAFyT70jJBgFDN1nreS1D6xp5QdXjJ8aLiJSbGfN8PTo5F1tChw@mail.gmail.com>
 <aFpzTcjE2tInK2sb@remnant.pseudorandom.co.uk>
Content-Language: sl
From: =?UTF-8?Q?Anton_Luka_=C5=A0ijanec?= <anton@sijanec.eu>
In-Reply-To: <aFpzTcjE2tInK2sb@remnant.pseudorandom.co.uk>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] xdg-open bypassing SameSite=Strict

Hi!

Simon McVittie je 24. 6. 25 ob 11:43 napisal:
> How does this work on other platforms like Windows and macOS? On 
> Windows, the implementation details are different, but the general 
> "shape" of the API seems like it's the same: the URL handler registers 
> itself with the system by saying "I can handle http URLs" and storing a 
> command-line with some placeholders (on Windows I think this is done via 
> the registry), the caller (e.g. email client) passes the URL to an API 
> function like ShellExecute() or a command-line tool like `start`, and OS 
> libraries are responsible for figuring out which URL handler is the 
> correct one and launching it with suitable options. On Windows, does the 
> URL handler (e.g. browser) treat the URLs it receives from the OS as 
> though they had been typed into the address bar, or as though a link had 
> been followed?

I tested if the same behavior is also present on Windows for reference 
and it is. Tested with Firefox 138.0.1 (64-bit) and Edge 129.0.2792.52 
on Windows 11 Home 23H2.

I opened WordPad with the document https://ass.si/f/nosmr.rtf and 
clicked the first link to set the samesite cookie, then closed the 
browser, then clicked the second link and the cookie was sent, despite 
SameSite being set to strict. Then I changed the default browser and the 
same behavior was present.

The cookie was correctly not sent to the server when navigating via an 
<a> tag from a different domain in both browsers.

Regards
Anton
