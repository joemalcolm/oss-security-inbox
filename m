Received: (qmail 28641 invoked by uid 550); 29 May 2025 09:46:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 28620 invoked from network); 29 May 2025 09:46:25 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.stravinsky; h=X-Debian-User:In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=ZkifXpvGczrqqOj62e1TLmUIt4l6NObbUOY6Z8yBsDs=; b=JmRfYUxCrFVFOVSAr+bwsoZB7E
	nPSGkNynq52hChzxvarNyToQT272QqDVFsmf58f1Hm0PURG/S4sT4XNHBAeW/zE6YOenyUxvROVrx
	F2AVIyiSi864E/uTyVnbRZdGMfcYr6FsDjBevzbwj7sk4PK/KHMpdW6HbmXXw2NawgK+DxnAJ3PFs
	q3z63Wb6sqlGfO/UTbvWj/AyL8PnPrrw6jGgZ5OSkrmt/RX5ASdMqe4ogyvnwMa9Elcm3r0GXaBtw
	QHvnN131l8/epiFj9z/KN9KE9LP0fJ3AIygCbwBc0J6cZPfZB/fIMAVmYFuAmX5JtL4LFNYzbTpje
	8mYkqSNg==;
Date: Thu, 29 May 2025 10:46:13 +0100
From: Simon McVittie <smcv@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <aDgs5a-wtRQv2aqE@remnant.pseudorandom.co.uk>
References: <faad8379-ad8d-48fe-8de4-9cfea8046125@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <faad8379-ad8d-48fe-8de4-9cfea8046125@oracle.com>
X-Debian-User: smcv
Subject: Re: [oss-security] CVE-2025-5278: Heap Buffer Overflow in GNU
 Coreutils sort

On Tue, 27 May 2025 at 14:43:44 -0700, Alan Coopersmith forwarded:
>>The vulnerability is exploitable when:
>>
>>   1. A user passes the key specification in traditional format (
>>   +0.18446744073709551615R)

How would an attacker trigger this? Is this only exploitable if the 
attacker has control over the sort key (equivalent of -k), *and* the key 
is passed in to sort(1) via the traditional +POS syntax rather than the 
POSIX -k option?

I ask because, if there's no reasonable scenario where this is 
attacker-triggerable, then this would not be a security vulnerability 
but instead just an ordinary bug (which of course is worth fixing, but 
doesn't have to come with the urgency and overhead of dealing with a 
security vulnerability). Assigning CVE numbers to ordinary bugs dilutes 
their value for tracking genuinely exploitable vulnerabilities.

I would normally have assumed that sort(1) is meant to be resistant to 
attacker-supplied input (stdin or the contents of the file(s) given on 
the command-line), but not intended to be given untrusted and 
potentially attacker-chosen options?

In particular, if an attacker can give sort(1) completely arbitrary 
command-line options, then that's already an obvious arbitrary file 
overwrite via the -o option - which I would consider to be sort(1) 
operating as designed (not a vulnerability, it's only doing what its 
documentation says it will do), and instead a vulnerability in whatever 
higher-level component is providing it with attacker-chosen command-line 
options.

Thanks,
     smcv
