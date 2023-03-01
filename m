Received: (qmail 30543 invoked by uid 550); 1 Mar 2023 15:55:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30505 invoked from network); 1 Mar 2023 15:55:19 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1677686107;
	bh=GpMkqECy0OcPFiedqnKI0U9fQNQAUsllk7OBlk01DJw=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type;
	b=uhayrRIhAy9plipUYnM96+jZSgt8x0Dm+0/CPQvcUX5/Wt9yNfQRashKVJxHeSfjq
	 liFHpR3A/RRAtE6aC3M1W9mCM+bpgj0OYvA3xReXz3ZczJYWwnJnWQIB0NlTTBMy/Y
	 QEfDD08qmQTZRHr3Xg5EoLqYf+UmmXwuEc888sl4x+QqLDHYPVnXJ6KLotmChB1n7e
	 mJBvKWvF3B6n+aQII3SPfNnqFLH/RsfFbiRQUiXauiCwUAw+fbAD8yYv+Hvcsr4wIM
	 09KQJsO+qw/YPPK34wEN6YxcqJ5DuOowve/Zu+Euhmj/1lVno6/SLbKIPdzkxF2PjM
	 wmDuYJQomGqEg==
Message-ID: <a901d6be-4e2f-bc3f-c817-79fc362b142e@canonical.com>
Date: Wed, 1 Mar 2023 10:55:05 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Content-Language: en-CA
To: oss-security@lists.openwall.com
References: <6ce790cbffb04331@millert.dev> <Y/6wnzgxs4K7zeYp@gentoo.org>
 <6ce7a5966d933724@millert.dev>
From: Marc Deslauriers <marc.deslauriers@canonical.com>
In-Reply-To: <6ce7a5966d933724@millert.dev>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] sudo: double free with per-command chroot sudoers
 rules

On 2023-03-01 10:11, Todd C. Miller wrote:
> On Tue, 28 Feb 2023 19:55:43 -0600, John Helmert III wrote:
> 
>> Has a CVE been requeested?
> 
> No, and I don't plan on requesting one.  As far as I can tell, this
> doesn't actually affect any users.
> 
>   - todd

Well, it looks like CVE-2023-27320 already got assigned to this issue.

https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2023-27320

Marc.
