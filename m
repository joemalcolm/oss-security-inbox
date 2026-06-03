Received: (qmail 8138 invoked by uid 550); 3 Jun 2026 06:38:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1716 invoked from network); 3 Jun 2026 03:02:43 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780455754; x=1781060554; darn=lists.openwall.com;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:reply-to:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=qbKdWF8bfZqjvY9xmvCTFnZmPa4x3Kpdc6BOr/5FIfk=;
        b=DP+clNpXFnMJZGsxOOyrwF2T1MMAaqjgplk6Np7sIDuFqcj02WoXRmhyYQrZ3IqzTS
         ywawhWQEJxR5y4p7T0F02mUky44toE1BApox8jMduE0ZiF/iTuJyVr+WIDtpNDGzY4Dh
         uz51uMT0SrRSkV6jO3j/ihWml829OdjS1WBvHbsoCn7QJSd7Z5Kr1BheKFsz09LbjVd/
         id8CKfZhT6wqlPIhc6zC3xrBT7c8rm3rh0JqCXi6YkbjS8Js378mi07gM5XpT9oRPVFo
         tgN2F2y4iaK34eiKcu7fPhqVIxCbHUvrdk6+i9n5OohItBeS1VnHbh/xsp6pvlYZKjl9
         ol8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780455754; x=1781060554;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:reply-to:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qbKdWF8bfZqjvY9xmvCTFnZmPa4x3Kpdc6BOr/5FIfk=;
        b=sxyJDZ/FHLMkcwkgLmzJyrFdC9VARuxqS7iFocuVdlfi9PsrUgjciyocGZJixXWxff
         2GLq5MiHSop1yXQ1vRIc09PHksD9Q6Ku6cXva19wsXZMXiOjQADhvng37vp4NGDlTIsc
         mWPxHGRXC7cUewySGxbrCxWTETpw+XLXXciK5fssjyKBn22ADK0i+J6nOVhGNdiOFvZz
         IVSs8IwYH/ax0HtPNC3jBqu1vE6SFF0c45x7r21wxwfD5Ivf1fIM+RkKRgFMCGEyKtIv
         DSs6K4ZXOKmnJbWWluKyCXGPcK2r8cceFfVjX38oL/9a5UsviNkH13Ej+Epn/awMVz7p
         dLEg==
X-Gm-Message-State: AOJu0YyarVmoZKqlIinzJ56GwwZwUG4ZXGLecZU1hLwgZQz6GVqEipTF
	z8+NEUZVB3dj3MNDEwo+QmsELfPyCtH4DM63dK/0CFm/164Kx2Wf/NlR4t8zYqLi7Q0=
X-Gm-Gg: Acq92OFmEKP/a4U7YaNS20brA/AzpTtS0Qzgf5YOk6H9ffK9eTbxgx0ATAbGCnxryWq
	V9OU2ln7D2Zv7YT3knIqjRYwuCyDWl/G1YdSySfXhBIkXpAlXLOkVaUTU7Bb5ZG5Ooj+aJf8lYR
	pWrQZTViuUGN9JG1kxsevbm733UNJY6xCTgDTsm5opZz939Y93aFjqH7SVNOHP+JuPQsyvdYoKs
	Ebpb+MFknqL5IO9V4I72YbaKYLtjStKHw41rKoawPAb0oAj/ax7QpHs5Sz027MrB4GxuRoDerRc
	5nTJ+mf3qAdCV0aZJR6tU2ELi1tfY5/f5yXidZBnf4y1LYMlQKyNi2Gi0fEFEEAb+xy6isFEWUh
	HGOOdJVnhuQWjoDst103LsjoGaugugBwQM96x2ePVgep5f9opINAtjsBdODMRAiJFjaUQjhzSR0
	LNzQxGV93yL6cYQuI8eVGgnRi/XBNxSnQ=
X-Received: by 2002:a05:6808:144f:b0:482:5bd1:d8e5 with SMTP id 5614622812f47-4865a9256ddmr911914b6e.9.1780455754554;
        Tue, 02 Jun 2026 20:02:34 -0700 (PDT)
Message-ID: <dba33ac5-e1de-47d1-ac39-05fc42dfa3f4@gmail.com>
Date: Tue, 2 Jun 2026 22:02:28 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com, Oleg Sevostyanov <savant05@gmail.com>
References: <CAJv4Csu5=C04SfEWEWe7QuUTTYbwRieTxCXQ4chO3tPXDvGxHw@mail.gmail.com>
Content-Language: en-US
From: Jacob Bachmeyer <jcb62281@gmail.com>
In-Reply-To: <CAJv4Csu5=C04SfEWEWe7QuUTTYbwRieTxCXQ4chO3tPXDvGxHw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] Linux kernel TLS ULP use-after-free in
 tls_sk_proto_close()

On 6/2/26 14:59, Oleg Sevostyanov wrote:
> Hello oss-security,
>
> I am disclosing a Linux kernel vulnerability in the TLS ULP subsystem.
>
> [...]
>
> Summary:
>   There is a race between close() and setsockopt(SOL_TLS, TLS_TX) in the
>   Linux kernel TLS ULP subsystem. Under certain interleavings, one 
> thread can
>   close a TLS socket while another thread is still operating on 
> TLS-related
>   socket state through setsockopt(). This can lead to a use-after-free 
> in the
>   TLS socket teardown path.

Looking at the kernel code in the report, I suspect that there is a 
pattern here:  a lock that will be unconditionally taken is deferred 
until later instead of being taken at the first opportunity.

In this example, in tls_sk_proto_close, lock_sock(sk) is *always* 
called, so there is no reason for it to not be the very first call after 
the accessors that are used to initialize local variables.

In fact, maybe Linux should adopt a new pattern where lock_* functions 
return a meaningless but non-void value, simply to allow moving them to 
the very first step in a function, as the first local variable initializer.

>
> [...]
>
> Status:
>   This issue was reported to linux-distros on 2026-05-16. I incorrectly
>   contacted linux-distros before first getting a fix accepted by the Linux
>   kernel maintainers. The latest proposed public disclosure date was
>   2026-05-30, and this oss-security posting is being made late.

At least you owned up to this; I believe this to be quite rare. (Not the 
screw-up---admitting it---usually the list moderator ends up having to 
make the public post as I recall.)

> [...]
>
> Reproducer:
>   I have a reproducer for the race. I am not including it in this 
> initial public
>   posting to avoid unnecessarily increasing harm before a fix is 
> available, but
>   I can share it with kernel maintainers on request.

Oops; it was included in your message and is now in the public archives.

> [...]
>
> AI disclosure:
>   AI assistance was used during analysis and report preparation. 
> Specifically,
>   OpenAI Codex was used to help inspect the relevant code path, reason 
> about
>   the race condition, and draft portions of the vulnerability report. 
> I reviewed
>   and take responsibility for the report contents.

This is at least the proverbial breath of fresh air---the use of "AI" 
openly admitted.


-- Jacob

