Received: (qmail 11747 invoked by uid 550); 8 Nov 2023 22:51:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28589 invoked from network); 8 Nov 2023 22:38:58 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=pobox.com; h=message-id
	:date:mime-version:subject:to:references:from:in-reply-to
	:content-type:content-transfer-encoding; s=sasl; bh=bRWGpfu1pvO4
	065d5mT81W6iBq7lJfHkphhaekdNRSE=; b=ixSCCQtVvYjltAOJLcH/OojBVjEY
	/elQOzYO2z90xnTl+V4yrbpGJYTYDPcv80R7/6yzM/Ovx9J+pipwbN+3v8r5OiFz
	02T4YySEhbKZ+tFx7Vk/ohqqUHmH61d9mNWxjdVNRhDZAhCGyHzDEuiDExPTrGk2
	udBgYbQXrmCMZfo=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=wichmann.us;
 h=message-id:date:mime-version:subject:to:references:from:in-reply-to:content-type:content-transfer-encoding; s=2018-07.pbsmtp; bh=bRWGpfu1pvO4065d5mT81W6iBq7lJfHkphhaekdNRSE=; b=sbj9QKuStTkzBQq/tiP0mF1DxqlZqs/pCAXof6xPMeXQVLFJwgBQaJ0TYUZuFErUz9sXUhT1tvmG73osGhORsdabJMxvuGijn2uqwGj0UCxZfLjpk3/pO1ZgYyBC/dPiYSlgJ0JAmJuu7JQxpN/Vqz9sH2czrOI7wBROiC4JGcg=
Message-ID: <59d6f796-3db7-4d56-881d-07866c73328f@wichmann.us>
Date: Wed, 8 Nov 2023 15:38:37 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: oss-security@lists.openwall.com
References: <c01c1617-641d-4ec2-847f-2e85ea4676f7@notcve.org>
 <720a3438-0411-4f13-8531-7e6bcac83e77@oracle.com>
 <B2EE9540-85EA-4866-85A4-D4A23979995A@dwheeler.com>
From: Mats Wichmann <mats@wichmann.us>
Autocrypt: addr=mats@wichmann.us; keydata=
 xsDiBD9xp6oRBAC1vd3YI8Gcr1CxpV1gldNQu0uQsNaICDk+Ai3+R163s/P83JOYG+SBEA3P
 v7iZx70qpQ3RzP7KrjF1Nm6j0em9ccUX2fPQUCAxXw5Hiq7CSMiwQQZRI6shcnyMh9XTKViT
 WK5MrKDyvjDEn7epjKzKwPS5SG039l6XaOKU0A4uGwCgsNqUQqC0gMMcbKlJV8ql58iKmbMD
 /ii8FPQrXmyS/FnsPs7UddV5qMHKm7NUH5oiKuMVyakInRyq9iIxuu3D4Ec6mWRKcGsjmIkW
 HXCSz0aefs6dsqNqpU54cYioJ3wP5LzHK7oclgJPryVt5Qezbdutf8SQf8gVkaNIlkxwGUzi
 bKTZ6CHzwlz9nNgeel0XPUcZzFxGA/4paeCg2rMSVuAhUQbsLYHu4XzTs9P16zaXkrtxc4m5
 b+BF5xsLgTpyO5l859XudS2Gp+7/Y37dAU4QlyGGOboWmF1y9U5DnzBwG8ghsnym+ga58MJh
 LdRdQQ6xQolCpEXOuzm40f2r5uMxF3KOJ7WpIPuGAkeCPru9BmlATH+zOs0gTWF0cyBXaWNo
 bWFubiA8bWF0c0B3aWNobWFubi51cz7CYQQTEQIAIQIbAwYLCQgHAwIDFQIDAxYCAQIeAQIX
 gAUCT0VyZwIZAQAKCRDAMaCQc9hUxiZBAJ9cWziGp7hVfsu5T+cQptc3rLNndQCgrZh8u5LW
 BfJ5e/Y+3PwZ8UEm+ELOwE0EP5is8BAEAMtwzcA8TYf5UTjDMgwcSNoErTc9ag+IX05QFgL8
 aF8sfJRv5atcitqQy0gSIsOzI+L/AFdPN/+QQI3dL1tCq14t32KPDtigDhzm6jVPXX5z+V9u
 xnD8XTp+ZvNcWoHXjViM8aXeLLEiCpiVCho307h3XShvqoKINWRQWeAsKKDDAAMFA/48zaey
 wiiEyvI0meJ1KkNHxdLP0yLODr1WV6j9xkPkLWOaIDw7dlwEOlF1N1YtZ2wa0p1wsttdIbIx
 ffgwXmcH4zrdxUIMz3U0BqYzk5H+5cYFXECXTFVOmweS+JECYMj80PjRoKCO1eVO1N30zksB
 36NnhZWPRWIhjK3ZarIYH8JGBBgRAgAGBQI/mKzwAAoJEMAxoJBz2FTG6VEAoKDYHfDp5Q3q
 PuPvPahCE9HsXMgAAJ9INTqcLSJrOfyJ8q95nBO1T26H2Q==
In-Reply-To: <B2EE9540-85EA-4866-85A4-D4A23979995A@dwheeler.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Pobox-Relay-ID:
 901CA7CE-7E87-11EE-B546-A19503B9AAD1-81526775!pb-smtp21.pobox.com
Subject: Re: [oss-security] !CVE: A new platform to track security issues not
 acknowledged by vendors

On 11/8/23 13:33, David A. Wheeler wrote:

> The "!CVE" group isn't using "CVE", they're using "!CVE". The question is,
> is that distinct enough, or will typical users be confused by it?
> I don't know the answer to that. However, I do worry that perhaps
> "!CVE" is not distinct enough.

I'd say it's pretty clear it's confusing, given that non-alpha 
characters have mysterious behaviors in non-human situations, and this 
particular character is probably confusing to humans too, depending on 
how clear/large the font is.  ICVE? 1CV? lCVE?  On the computer side of 
the equation,  I just put  !CVE  into the search bar of my browser. It 
didn't even bring up a page of results, it just sent me directly to:

https://cve.mitre.org/

Don't do this.

> I would *strongly* recommend that this group use "NotCVE" or "NCVE" instead of "!CVE".
> That would be more clearly distinct, and they already call themselves that.
> I'll also note that searching for "!CVE" and storing that prefix will also cause some problems.
+1

