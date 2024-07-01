Received: (qmail 32428 invoked by uid 550); 1 Jul 2024 15:40:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23720 invoked from network); 1 Jul 2024 15:36:58 -0000
X-Envelope-To: oss-security@lists.openwall.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dustri.org; s=key1;
	t=1719848210;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=q+welcDOU+msbZY0r8nXnZr8D/GbKhfZTs15NitA/uo=;
	b=jzsm5mTZylarWxt703gZZXqgjJDy01FDHAvKuDhLULYBoUFK8CJH5qC+gZi6tRiEXuDESy
	c72z5Q4l2Eo42aTVaM8/jvdmbGSX+r9MHjj4DEr5keSz4utsXdmY37rcDbAt5eJf3ZmRTK
	n3ZoSkJddBI+XNZ+xSkklttfgGGIPD3k+0vyKRhZQnNm8Y8Zyt1wnnbDf7y7veXU27qym6
	1XJNOnnWYQPVVt9mfCFDfsA9S8nwNLg/JTB5zA9C68xNoE4RQ0FhE9OUe3N4g7Napj2Tw2
	xa3gw8i77K+DDflAiuQRGH8zOcVOpVCzDt8pQn/kTVR5WwIdhvzC2QmyTFziuw==
Message-ID: <48e4430f-72b7-4a5c-a4c5-a8fca4094c62@dustri.org>
Date: Mon, 1 Jul 2024 17:36:48 +0200
MIME-Version: 1.0
To: oss-security@lists.openwall.com
References: <20240701083838.GA12787@localhost.localdomain>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: jvoisin <julien.voisin@dustri.org>
Autocrypt: addr=julien.voisin@dustri.org; keydata=
 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
 766VTOg4l2PTPCnIdNFy1Os=
In-Reply-To: <20240701083838.GA12787@localhost.localdomain>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Migadu-Flow: FLOW_OUT
Subject: Re: [oss-security] CVE-2024-6387: RCE in OpenSSH's server, on
 glibc-based Linux systems

> This vulnerability is exploitable remotely on glibc-based Linux systems,
> where syslog() itself calls async-signal-unsafe functions (for example,
> malloc() and free()): an unauthenticated remote code execution as root,
> because it affects sshd's privileged code, which is not sandboxed and
> runs with full privileges. We have not investigated any other libc or
> operating system; but OpenBSD is notably not vulnerable, because its
> SIGALRM handler calls syslog_r(), an async-signal-safer version of
> syslog() that was invented by OpenBSD in 2001.

I gave a cursory look at the musl libc (https://musl.libc.org/) with the
help of the lovely #musl people, and it doesn't seem to be affected:

- Its syslog implementation (
https://git.musl-libc.org/cgit/musl/tree/src/misc/syslog.c ) doesn't
seem to (sub)call async-signal-unsafe functions.
- Thanks to its small size, it's not affected by ALSRn't.

So the worse that can happen might be a deadlock. Which is good news,
since the FILE-based exploitation technique looks easier on musl than on
glibc.

Moreover, as said by the project
(https://fosstodon.org/@musl/112711796005712271):

```
OpenSSH sshd on musl-based systems is not vulnerable to RCE via
CVE-2024-6387 (regreSSHion).

This is because we do not use localtime in log timestamps and do not use
dynamic allocation (because it could fail under memory pressure) for
printf formatting.

While the sshd bug is UB (AS-unsafe syslog call from signal context),
very deliberate decisions we made for other good reasons reduced the
potential impact to deadlock taking a lock.
```
