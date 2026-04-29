Received: (qmail 7928 invoked by uid 550); 29 Apr 2026 23:01:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 24059 invoked from network); 29 Apr 2026 22:05:42 -0000
DKIM-Filter: OpenDKIM Filter v2.10.3 james.steelbluetech.co.uk CE365BFC14
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ehuk.net; s=default;
	t=1777500329; bh=iQKoO+Cx73SovsCz8wIzwOBdakcnAuWOeZHwzr1Igu4=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=M97gDyhI3+eby/weYUWryZI2U+PDV4rNuPOYGCDu1xbUwHv1vKfmaCTvY4zz3vrq+
	 SyJvkDNlZpySszYivxUnMlSjwrAH6CZ8SQNPh+HJKJLIXYjqzkYmx2uK3Vprb/msov
	 VVXEg2qzCgJ6XalDhbopJMlpnCJNzBa3FiuG3sgn/ysQ8VpFUe4LMuho/EMP43R9Od
	 kDdNSCU4M5+zPS/ZNoeutia7lz+LouZe6cVfSBdX3CGCzuLB3JG7gWhgubTLxuxi8J
	 dGh5gZKdUPLI6wwMHbT0Nh9ezOEjdOu4Zyd/BI86Fk/pLaB9EEmgycjMDSywR7IZAZ
	 Kx74Iq+Il0pzQ==
Message-ID: <d6111caa-db61-498a-92cb-ea7a0aa0a5e2@ehuk.net>
Date: Wed, 29 Apr 2026 23:05:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com, Jan Schaumann <jschauma@netmeister.org>
References: <afJorKIje4O6dXbH@netmeister.org>
Content-Language: en-GB
From: Eddie Chapman <eddie@ehuk.net>
In-Reply-To: <afJorKIje4O6dXbH@netmeister.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang
Subject: Re: [oss-security] CVE-2026-31431: CopyFail: linux local privilege
 scalation

On 29/04/2026 21:23, Jan Schaumann wrote:
> Affected and fixed versions
> ===========================
> 
> Issue introduced in 4.14 with commit
> 72548b093ee38a6d4f2a19e6ef1948ae05c181f7 and fixed in
> 6.18.22 with commit
> fafe0fa2995a0f7073c1c358d7d3145bcc9aedd8
> 
> Issue introduced in 4.14 with commit
> 72548b093ee38a6d4f2a19e6ef1948ae05c181f7 and fixed in
> 6.19.12 with commit
> ce42ee423e58dffa5ec03524054c9d8bfd4f6237
> 
> Issue introduced in 4.14 with commit
> 72548b093ee38a6d4f2a19e6ef1948ae05c181f7 and fixed in
> 7.0 with commit
> a664bf3d603dc3bdcf9ae47cc21e0daec706d7a5
> 
> https://git.kernel.org/stable/c/fafe0fa2995a0f7073c1c358d7d3145bcc9aedd8
> https://git.kernel.org/stable/c/ce42ee423e58dffa5ec03524054c9d8bfd4f6237
> https://git.kernel.org/stable/c/a664bf3d603dc3bdcf9ae47cc21e0daec706d7a5

So this is one of the worst make-me-root vulnerabilities in the kernel 
in recent times. I see that on the 11th of April 6.19.12 & 6.18.22 were 
released with the fix backported.

Longterm 6.12, 6.6, 6.1, 5.15, 5.10 have not received the fix and I 
don't see anything in the upstream stable queues yet as I write. My 
guess is backporting that far back is not as straightforward. As this 
was introduced in 2017 all those older kernels are affected, right? Or 
am I missing something?

If so, this is no reflection on Greg and Sasha, it's not up to them to 
produce backports, they have enough of a job co-ordinating stable 
releases for so many kernels, which I see them do an amazing job of week 
in, week out. Evidently no one produced the needed backports?

IIUC many installations with these older kernel could already be 
protected by now, in an ideal world.

What went wrong, has the embargo been broken early today? Not looking to 
point any fingers, those who make things happen in our communities work 
dam hard and deserve respect and support, especially with the extra 
burden of AI slop now.

Eddie
