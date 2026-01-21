Received: (qmail 25686 invoked by uid 550); 21 Jan 2026 13:09:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 25655 invoked from network); 21 Jan 2026 13:09:25 -0000
Authentication-Results:garm.ovh; auth=pass (GARM-98R0027b690a10-e8be-4415-86df-2bfd92b92b30,
                    D5D127BDDEA1D3972C6917FEE641D96ED74D0DB7) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp:31.0.178.54
Date: Wed, 21 Jan 2026 14:09:03 +0100
From: Jakub Wilk <jwilk@jwilk.net>
To: oss-security@lists.openwall.com
Message-ID: <20260121130903.ydfe42j5ovq2lnte@jwilk.net>
Mail-Followup-To: oss-security@lists.openwall.com
References: <87h5sg9yfs.fsf@josefsson.org>
 <aXAM3Sn3-xw28o-Z@gxis.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <aXAM3Sn3-xw28o-Z@gxis.de>
X-Ovh-Tracer-Id: 14986572188869733585
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: dmFkZTGQ1corhzqBelpQ3LHAojup8HkezRfpBnHyjrGOSaBZaWm0tyNN1ISji2jK+bhMf3y4yKoEuM9JWq37h0cpxEFggSFq2VctbiASvywPkVYqn9zEPjnned2wNeSJPMb0DFRiQ/Tce/LGI81dQpPWX4Gm6ukLErW1QVblo3HN4IBzH6TCjITjRsFr6ctB3xBa7OrSwXUkMqJ6QZWXZzXCbhWhk4Y7aP+g2cxyQuHUT3dWNhC3JQ61EaoHx4FEHjJhGLhYDoLiX4cZdIw9sm0O9W2IcVZU7lEWyvFQJClvTXQQ9fXX8rnbwxOsNnr8wZADKErishpV7cWdRNwsFH6NQ+aLOe96qurbbckAuHCISPcMUYBjqzzZhSwZtKDpDJGO9o7YWjFxLpGnor3zFlYyiSuyx3FyaOaGpgjToZEn2QxftQGZeBW9juRKqZsCdmjpY448Nofm8s4EYx0HuZd4IQBB1tVhbydTVN0eouHIv0EjMDUjXlO1VbaVocWEIz+a2L/l5pffwf07l4gkSqoDZBVA7kkVrfbLsNygNLpo0gwPqaOoRCRM87uN8pjfS4FGxXqkyvfU/he9zqi9tN+U0DFbYP6rgeada4VUwkqGWcyVnqZtwzznrnB+ovScOWaqNv6bWNrlrWKIIoeB4Dm/SXINjZcMjn1KbmeoAXUC+2VI+w
DKIM-Signature: a=rsa-sha256; bh=scY25rTFjSjSWQixgAh73jKmmWgImtKKKd+j5IPdSjs=;
 c=relaxed/relaxed; d=jwilk.net; h=From; s=ovhmo917968-selector1;
 t=1769000955; v=1;
 b=sFSKYkEA52DJq7deWfjs/2Dm405uq+dJyr9EL1pdv4LDrCbXcBlI7VDSYOhZkdGfj9w/dnbY
 aT87NQppSp6FQvglBoyfzNJ9qnw9DrthapZ7ZwfrAREZZkSV1gI+kttYBVq9rypAQ4VEC1jnEFX
 YYPqLuzOs7BDrq3G96StXNMxG4tx4OEREJStAUajzLREp4UYQXDfXe+Y1SlWCXDNZ6Dc9oxFmuU
 /f+JktJPVwOMkDyxPCSVEUWafvvSLS7/cstiSUK9GLFPtLPvr0kUMRKUprYAYQy/K5EiO8Qn0Am
 XNDNYzi+MQu6Py6NBK/APhHRQpcTVIlI2/mcDpSfD2RZw==
Subject: Re: [oss-security] GNU InetUtils Security Advisory: remote
 authentication by-pass in telnetd

* Alexander Bochmann <ab@lists.gxis.de>, 2026-01-21 00:16:
>...on 2026-01-20 15:00:07, Simon Josefsson wrote:
>
>>Vulnerable versions: GNU InetUtils since version 1.9.3 up to and 
>>including version 2.7.
>
>Looking at Debian, this gets even more hilarious... Their
>changelog for inetutils has:
>
>>inetutils (2:1.9.4-7) unstable; urgency=medium
>>[..]
>> * Take several patches from upstream git master:
>>[..]
>>   - 0028-telnetd-Scrub-USER-from-environment.patch

I think this is unrelated.

The bug is reproducible with inetutils-telnetd 2:1.9.4-7 too.

-- 
Jakub Wilk
