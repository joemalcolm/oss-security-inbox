Received: (qmail 5581 invoked by uid 550); 6 Aug 2022 18:06:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11651 invoked from network); 6 Aug 2022 16:41:05 -0000
X-Yandex-Fwd: 1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vulndisco.cc; s=mail; t=1659804052;
	bh=qW5AZoWtvVMNqJAjbqD5SoxUSZ8+I9Zg5vXTGrxqWIs=;
	h=In-Reply-To:From:Date:References:To:Subject:Message-ID;
	b=fyK6ebnRxN180NyFR8FyUHkm/8xAC0YV8f+G3b+0IMJ2mMMYN8jQwq57cSGXkPoBD
	 8alSVL5Yycan+r6N/I1u/VZ0LZVpNXe76921ti1jjTmnzxXsuhrHQMsjc3KXnN2NpZ
	 SzUVGsTQ3z/nUQ346eVqVluBdiC19nTkcoK77XBY=
Authentication-Results: iva4-143b1447cf50.qloud-c.yandex.net; dkim=pass header.i=@vulndisco.cc
Message-ID: <5f0712ff-44b4-cef2-1276-424c1cfa094e@vulndisco.cc>
Date: Sat, 6 Aug 2022 19:40:49 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: oss-security@lists.openwall.com
References: <2007d258-97ab-fb3c-bfa8-0544c63ec1b8@vulndisco.cc>
 <Yu5+6SlKH6n6afZv@gentoo.org>
From: Evgeny Legerov <admin@vulndisco.cc>
In-Reply-To: <Yu5+6SlKH6n6afZv@gentoo.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] Exim 4.95 invalid free

My bad.

Fix is here 
https://github.com/Exim/exim/commit/51be321b27825c01829dffd90f11bfff256f7e42

On 06.08.2022 17:47, John Helmert III wrote:
> Hi, please keep in mind the list content guidelines:
>
> "At least the most essential part of your message (e.g., vulnerability detail and/or exploit) should be directly included in the message itself (and in plain text), rather than only included by reference to an external resource. Posting links to relevant external resources as well is acceptable, but posting only links is not. Your message should remain valuable even with all of the external resources gone."
>
> Do you have any upstream references or commits of the fix?
>
> On Sat, Aug 06, 2022 at 12:06:36PM +0300, Evgeny Legerov wrote:
>> Hi,
>>
>>
>> The issue has been silently fixed in Exim 4.96 -
>> https://github.com/ivd38/exim_invalid_free
>>
>>
>>
>> regards,
>>
>> -e
>>
