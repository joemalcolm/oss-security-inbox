Received: (qmail 7650 invoked by uid 550); 25 Sep 2025 04:18:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5341 invoked from network); 25 Sep 2025 03:52:16 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758772327; x=1759377127; darn=lists.openwall.com;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:reply-to:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=HkBiYxgE5Y0vLCKs3ScfXV1LDr8o8PqW2eBBKjNFlno=;
        b=QIJKxX257zyHu/gzd0s08P3YN6jIZLZYFxwLIWuM4/fya6WgFmkVbwWjvGcXe7Bsb3
         SXWYWiUHGgfvVvcNVo6Vlvgs6P9MnazGji6+glZM0CZTbigz8CXkG5IU4hm4xlu+7fbc
         tsACZVfsBtJGZ/5XjHsV+bpyrd9AZk+aXjYmL9CTz5T9niz/sW38DxFBc1GiGJ1Bhw7z
         Fs+uKCDZGcy2Kgq3SQJiUbjNAuGfSc3Xcns121Ie/vG1Nu2KCizFr8Sv5UqGigWvUORZ
         0KWr8HrQUzyjX00VhDqpQQnOrT4Bfd2IUL1pUzathFTGOwLVez671XYWysh0RBXOGEeo
         Cx0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758772327; x=1759377127;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:reply-to:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HkBiYxgE5Y0vLCKs3ScfXV1LDr8o8PqW2eBBKjNFlno=;
        b=KpKp78aQnbVoLPjW1us6JIc3Nj8I2L73fGNHh4uLyCjXs+r1l5hMsUA+sJrVoYnxyj
         +tdhcnBRbvm4woDo+hsXQGU/MVfCxJL8VrB7E/+VgKJPJ7TQa+rn0xj+0OzodUuSfWzr
         PG1ZoyNZ6SGJ4tCu5VkTbqw1WEimmygpJLDtfLLDGPVib9+1/cDad5wkUtbQaHlzDK+m
         tGOTYwtnHhrQrkbSX+rNSHj0u/IawrR8L6ggpNi3yvc+Srx9eVmiB5Vgaff8ZMidLrBU
         K0UtOPI9Rn/5N0/vfL/T78x++4aUf/IiF36qv6cEIbEvkUxBTj1XfUR4GQWa+TpzEsEW
         QOYA==
X-Forwarded-Encrypted: i=1; AJvYcCWQK6iwnUj/HnHq1BO+37AvsivAGJh5KUNdC6KaK1fTi8JiWcItPOTQVTU945KlmrfEtbSp9qmNfd4tr+E=@lists.openwall.com
X-Gm-Message-State: AOJu0YyG+TTE2+x2J2jb7+ybPb5MlZ3mj94jVVk+6L8kZYZOXMosOKxr
	8+OM2HmHJuJVzyUXTsrdo5dJATwT/xedu0qCOOXpCyOAuC3KpENSIKhI
X-Gm-Gg: ASbGncuOVYe+VrgQ/wBdM9qI6xoq4FXQDZ1AaLU5wHNaaGPBe//h8jkUV7UqszeIR3/
	BhBZyGOvGhlbibBsTRHnnGJIsLMh2eBT8vbd+84iTkxtXflrRPbX60Cpb2X0jmX78OkhQu123hL
	rqbmpx0yxoHtrKIiekV2VZ5DlNy/I9JI21y1axxvS0baz84P+3SfguXiK8Bn12wmcTkZyTMvL78
	PoPM/Ja7WZeasjctY66Z/xd1eSe/DjVNAsz3d3s4F5TZZ6jmn+pGNsoHfCb+ax4WuW8HVWPGWzL
	jdcwyfMDH2vVQ8eNJI59b/WJ1tiiqa/DEgqRWwCsWvYfjFg6YwXzUp5imy/6JDHALxGuSMCLUTq
	mhxlxcQrJMJQU0se4VZY=
X-Google-Smtp-Source: AGHT+IEe8ojlLT44dAhKjT0iiML5Ck9qbmiwmTQ1G/TiJRcVJBoVJm60vjHYLQ5C5rFfO3XrEZnsUQ==
X-Received: by 2002:a05:690c:88a:b0:731:1bc7:7836 with SMTP id 00721157ae682-76403423a7cmr22503717b3.41.1758772327476;
        Wed, 24 Sep 2025 20:52:07 -0700 (PDT)
Message-ID: <0ea3da20-739e-4608-8869-9d5882a8f003@gmail.com>
Date: Wed, 24 Sep 2025 22:51:56 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Peter Gutmann <pgut001@cs.auckland.ac.nz>,
 "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>,
 "Adiletta, Andrew" <ajadiletta@wpi.edu>, Solar Designer <solar@openwall.com>
Cc: "openssh@openssh.com" <openssh@openssh.com>, "Tol, Caner" <mtol@wpi.edu>,
 "Sunar, Berk" <sunar@wpi.edu>, "Doroz, Yarkin" <ydoroz@wpi.edu>,
 "Todd C. Miller" <Todd.Miller@courtesan.com>
References: <92a89d5d-e0de-c713-e7d2-83f971574eff@mindrot.org>
 <20250923032113.GA14348@openwall.com>
 <BL1PR01MB772308134BF946DF07159A05C11CA@BL1PR01MB7723.prod.exchangelabs.com>
 <43743160-7c83-4c4e-ad77-52e5058636c5@gmail.com>
 <ME0P300MB0713919015F954023D6D63FAEE1CA@ME0P300MB0713.AUSP300.PROD.OUTLOOK.COM>
Content-Language: en-US
From: Jacob Bachmeyer <jcb62281@gmail.com>
In-Reply-To: <ME0P300MB0713919015F954023D6D63FAEE1CA@ME0P300MB0713.AUSP300.PROD.OUTLOOK.COM>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] Re: [EXT] Re: [oss-security] CVE-2023-51767: a
 bogus CVE in OpenSSH

On 9/24/25 06:45, Peter Gutmann wrote:
> Jacob Bachmeyer <jcb62281@gmail.com> writes:
>
>> The critical issue for exploiting Rowhammer to corrupt spilled register
>> values seems to be how long those spilled values remain live in DRAM before
>> they are reloaded into the register file and ultimately used.
> It also depends on whether they're ever actually read back from RAM or just
> end up sitting in cache for a microsecond or two before they're re-fetched
> from there.  There are some attacks that exploit the difference between
> (glitched) data in RAM and data in cache, but in this case it'd mitigate
> Rowhammer by having the corrupted data in RAM ignored if it's still in cache.

Indeed, if the spilled value is never evicted from cache, then it is 
never live in DRAM and Rowhammer cannot be used to corrupt it. However, 
if I understand correctly, modern systems aggressively flush caches on 
process context switches in order to close cache-related side channels.

This seems to suggest that the solution to "Rowhammer Mayhem" may lie in 
improvements to kernel scheduler and VM management subsystems.

Perhaps a yield primitive that yields the rest of the current timeslice 
but guarantees a full unpreemptable timeslice upon resume?  That would 
allow a brief sensitive computation to be effectively made 
uninterruptible but would not permit monopolization of the processor.

Perhaps more randomization in assigning physical page frames to prevent 
the kernel from reliably using "bait" pages?  The attack in the paper 
seems to depend on predictable page frame allocation.

The latter could also be implemented in user processes:  allocate a 
randomly-sized pad on the stack to shift "inner" stack variables away 
from their predictable locations.  Making the pad multiple pages plus a 
fraction of a page could also counter predictable kernel page frame 
allocations by shifting the sequence of pages allocated.


-- Jacob


