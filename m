Received: (qmail 7273 invoked by uid 550); 19 Mar 2026 17:03:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 7229 invoked from network); 19 Mar 2026 17:03:29 -0000
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=spacehopper.org;
	s=s3e; t=1773939795; h=from:from:subject:subject:date:date:message-id:message-id:
	 in-reply-to:in-reply-to:references:references;
	bh=MqCGp+wWgSpERAJxX7GKUb4UQdRtU0z6we5dwUZpRhU=;
	b=adKQDN4XhV6qNF2DO98kGNKwRJjvn1p6mvQYAd5A9g+qKhmocVNZF8OBbWxj/JJs2UDFF/
	OAxCIq34LeJUL/Aw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=spacehopper.org;
	s=s3; t=1773939795; h=from:from:subject:subject:date:date:message-id:message-id:
	 in-reply-to:in-reply-to:references:references;
	bh=MqCGp+wWgSpERAJxX7GKUb4UQdRtU0z6we5dwUZpRhU=;
	b=KW1OSW6uoMeMPx14vxTtlZcPL/daGrJjdV6pUk8mQbuP0KRHrvwH1FYCC1KUNMpZjOo4QQ
	tZOreFqa9/uoPwQN9MMKF7rXFUH1X5CWJV/6l/9bHoZgbQjb9bx5ascEfmD1MQu1Xx0BaB
	njPpMMZbfiAYjz4NHyZSsWA0P/h6mi4iP6mE9MzY9ZVkmp2ozfPoPyQIMeaeMATSkt/Pyu
	sHTwhV1gUmtrq0rlOl3q2xw47smxGhLlyvN/tQE5OmJ3qiv7uzG70ceJYvmtTA1sVblUWw
	FOo06TPwCk7Xe/xNmCKxa88/bZ7X4108JKmJ86EUMWui7xOovq1kMGt3Q1z0Nw==
Date: Thu, 19 Mar 2026 17:03:15 +0000
From: Stuart Henderson <stu@spacehopper.org>
To: oss-security@lists.openwall.com
Message-ID: <abwsU8O48wEKqJb2@symphytum.spacehopper.org>
References: <CALrEReYUaSySTPo_N1qYv3ah_4MGf-sCTZbEEm6dkuVcHGtNVA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CALrEReYUaSySTPo_N1qYv3ah_4MGf-sCTZbEEm6dkuVcHGtNVA@mail.gmail.com>
Subject: Re: [oss-security] Off-by-one heap buffer overflow in libuv

On 2026/03/19 21:45, Ali Raza wrote:
> Last few days ago I found an off-by-one heap buffer overflow in libuv.
> Off-by-one NUL write past a heap buffer in `uv_utf16_to_wtf8()` when called
> from the Windows TTY line-read path. When a user types or pastes CJK
> characters into a Windows console application backed by libuv, a 1-byte
> out-of-bounds NUL write occurs if the read buffer size is divisible by 3.
> 
> I found this while reading through the TTY code. `uv_utf16_to_wtf8()` in
> src/idna.c unconditionally writes a NUL terminator at:
> ```c
> *target++ = '\0';   // idna.c:550 -- writes at target[target_len] when
> buffer is full
> ```
> 
> The function's own comment says `*target_len_ptr` should be the length
> _excluding_ space for NUL. Two callers in util.c handle this correctly:
> ```c
> utf8_len = *size_ptr - 1; /* Reserve space for NUL */    // util.c:126
> *size -= 1; /* Reserve space for NUL. */                   // util.c:1121
> ```
> 
> But the TTY line-read path passes the full buffer size without the
> subtraction:
> ```c
> read_bytes = bytes;    // tty.c:558 — should be bytes - 1
> uv_utf16_to_wtf8(utf16, read_chars,
>                  &handle->tty.rd.read_line_buffer.base,
>                  &read_bytes);
> ```
> 
> The overflow happens when all the input characters encode to exactly 3
> UTF-8 bytes each (BMP characters in U+0800–U+FFFF range, like CJK
> ideographs). The TTY code computes `chars = bytes / 3` (tty.c:540), so when
> `bytes % 3 == 0`, the worst-case output `chars * 3` equals `bytes` exactly,
> and the NUL terminator writes one byte past the buffer.
> 
> The buffer size comes from the application's `alloc_cb`. libuv suggests
> 8192 (not divisible by 3), but any application returning a size that's
> divisible by 3 hits this.
> 
> Introduced in v1.47.0 (commit f3889085, PR #4021), still present on v1.x
> HEAD.

Seems the fix for this was merged last week?

https://github.com/libuv/libuv/commit/ec0ab5d77d32d836a60b024fa43d54ed3ce3ce87

