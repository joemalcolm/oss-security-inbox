Received: (qmail 24359 invoked by uid 550); 30 Mar 2024 20:47:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7456 invoked from network); 30 Mar 2024 20:44:10 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=pobox.com; h=message-id
	:date:mime-version:subject:to:references:from:in-reply-to
	:content-type:content-transfer-encoding; s=sasl; bh=dzXDvO2qkaEN
	+eSICDqc6HLrYzdmU/foFx5kiaPpxHU=; b=opBzcNnuSAv0+PVcKoKY+CLWg5xz
	jW7IgHKr6pdvtqTgUoZr69i8lZ9RJsl6EnXyqjwNhq/MB79qw5xe8ZiWUH/wOq7O
	nbD0gT6m4ggA/iYxNAk4gWsF0M1aQBMaDQmavoaCjwhOdz2IYi7Cw+mVa2/QlJ7/
	pp7Mi7dQVEvD3y4=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=wichmann.us;
 h=message-id:date:mime-version:subject:to:references:from:in-reply-to:content-type:content-transfer-encoding; s=2018-07.pbsmtp; bh=dzXDvO2qkaEN+eSICDqc6HLrYzdmU/foFx5kiaPpxHU=; b=IhP+WjNlVt85DTqVipPsPqk/xrfOPID5Xv4GOyoJWx7hjdpPxAEyrwuwZrv1jJk+NjGDnIZkGj6YCFBgLIjoKxL8OI6A+UEbRhhI64ZWq2sH+sJiVtkwK/uCU0A7QdlnrQFsw5OQzNfJJTTYUhh9KYoNVuu91a79VqLiRcGsQIE=
Message-ID: <5e72e6db-733c-423a-8213-f4698780cbab@wichmann.us>
Date: Sat, 30 Mar 2024 14:43:58 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: oss-security@lists.openwall.com
References: <20240329155126.kjjfduxw2yrlxgzm@awork3.anarazel.de>
 <uu76c4$u7g$1@ciao.gmane.io> <20240329211052.GA2470@openwall.com>
 <uu7da3$87n$1@ciao.gmane.io>
 <20240329221938.dqit6xuh4es2v6gc@awork3.anarazel.de>
 <uu7g5q$8hl$1@ciao.gmane.io> <01322afdcf6b4dd7b81452dc5afed6b1@amazon.com>
 <6038e843-fc3f-4c51-a48c-feb283242b41@canonical.com>
 <uu7k2m$61a$1@ciao.gmane.io>
 <CAOp4FwT+kqoG1JRawFu6tkz0LUMgkT9RCVfh7vyaN3bbFkYx3Q@mail.gmail.com>
 <72a9dfe5-a88d-4711-bc90-cd9269124f08@schafweide.org>
 <87cyrbzw2z.fsf@daath.pimeys.fr>
 <CAH8yC8nw_5rvGtemqZ3ojSaOCoLZnb+5q8m4NxTf5QTJ=5hoQg@mail.gmail.com>
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
In-Reply-To: <CAH8yC8nw_5rvGtemqZ3ojSaOCoLZnb+5q8m4NxTf5QTJ=5hoQg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Pobox-Relay-ID:
 3C55F89C-EED6-11EE-B330-25B3960A682E-81526775!pb-smtp2.pobox.com
Subject: Re: [oss-security] Re: backdoor in upstream xz/liblzma leading to ssh
 server compromise

On 3/30/24 09:32, Jeffrey Walton wrote:

>> Someone asked what would become of xz as a project. I do hope in light
>> of this event, some people step in to help.
> 
> Perhaps Lasse should turn over control of the project to an entity
> like the Linux Foundation. Xz is critical to Linux now, and it needs
> more oversight than Lasse can provide. (Not to impugn Lasse; he seems
> to be very busy. Extra [trusted] helping hands would probably be
> welcomed).

In light of this scenario (at least what I understand about it), it's 
got to be even harder now for an overloaded maintainer to accept help of 
a significant nature. Some large projects have an incredibly high bar 
for getting commit rights. Some small ones, too.  It's not about to get 
easier after this.


