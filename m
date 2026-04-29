Received: (qmail 9512 invoked by uid 550); 29 Apr 2026 19:36:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13904 invoked from network); 29 Apr 2026 17:56:52 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; s=default; bh=uNaa39ZdvT
	tuTzSxu0Ak58BTLnIp5BZN3/vLTqXCGYg=; h=in-reply-to:from:references:to:
	subject:date; d=allard.it; b=cYL2ea9ZjICA8QTGFlLGScbpndQkYe/N3mR2DuYax
	vyKIZCG/AsoTcYJ9F0Z82yl3AEq4E9u6l1m+3cQiQ0Cy/FsN8OFmazfiRxz1hmPHZuwiWP
	32b9YrYOgdA4r3JacoVCMvdI6+4bRplos7Hu+30o6DvqGMTi8EmXTAz8Kpos+HXJKkw3ZP
	A3vCk28zH4iHudbeUkPKNz+EZiNeYLMos1D4lKbrtGY63dQ0uzmDO4DaTHIlMbXWkl2IFl
	+MaRWWAqi531uSyED0etxrCHeuKAqoyDR0xRawTAeXBqE8mqEpLsuPeOikB5MsOJvpGlnF
	AP2ugNvUlZBHMMA9iCmYg==
Message-ID: <1e1968a6-0f39-468e-ad5e-43a47eaed64c@allard.it>
Date: Wed, 29 Apr 2026 19:56:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: oss-security@lists.openwall.com
References: <afDLFWVMK-r70PB0@yuggoth.org>
 <521d0295-6a93-4a28-be55-332d663ec457@gmail.com> <afI-PPAr7EP8SEsu@1wt.eu>
From: Renaud Allard <renaud@allard.it>
In-Reply-To: <afI-PPAr7EP8SEsu@1wt.eu>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] Coordinated Disclosure in the LLM Age

On 29/04/2026 19:22, Willy Tarreau wrote:
> Embargoes now play against security, for all the time we don't act,
> users stay exposed to anyone having the luck to find the same problem.

It has always been like this, embargoes have always been a very poor idea.
