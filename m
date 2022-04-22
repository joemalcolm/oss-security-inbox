Received: (qmail 28389 invoked by uid 550); 22 Apr 2022 16:03:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28371 invoked from network); 22 Apr 2022 16:03:11 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=a3Yo+V/AnQc7ALLTfN+On0jWYHWOYbXb1KN+xVdmWpU=;
        b=Fn0LcVyBPBkqDc3REg4YPmQCSbkTZUXunSWVRBx/HoX9eqUfOQAkjXkpM3Yx5Mp48k
         iZqzkh3DOxQiCvMH4b6QfsDzB/4l0AVFQFKSdiBxgCCrhF5DnPSXBPvDNYzQXA41gD/n
         cHZNgBPOJmmZAbA0XO3iIgcLx5pFEHEqa/YsR/yPKIgn4saf9sGICN/e9yCOesNI4m9S
         jX8oeVmUR+4JY5+W9c4+BqXb+FUo9/qWGJ62QKHI+Fsqmuqym74I3xrMttSJN3nHOvOA
         VRHlnS7+oilnulTm8QhV07JNMhIhiuRP/KJeWrMIswbZAOGQNeNL7H2+qQOs7cbV71Rz
         yl6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to;
        bh=a3Yo+V/AnQc7ALLTfN+On0jWYHWOYbXb1KN+xVdmWpU=;
        b=cdyzXiAPpONQUGGUWEvN8lpjicyrEtymd6bqhpqh0gFFpeOtsDg6GojbMZpW9GYngW
         VGfW/AJViSvpFqp7/iR6x6ltNIlzAFYZFFY7hLEbyCg5jGYqzaNKvfo2vZGBTZ0tV/tQ
         XUkFAwfwjJl+sTSzVv9KcVRWIN829JaW7DoC7zKXY8HU+3+b0KzYEnd+0/omFte3uGug
         Rrw34DP4t9STYlhTF0syglq0Kcf8bVxDgm0GXrsuC8e94mP3ecJYx9gYeivUsFEDxaHP
         a982wGtXjdwG5+RDX7/8pzVf3gCY0YkRtFqIBPxvhLbqfgnox47p77IDHDBtoswOiVog
         VR7w==
X-Gm-Message-State: AOAM532yQVxyQGJp31SaKlQkIKpx+v5MWWFjqAGhHuyMMQdF56P/sT9B
	0ZYTMWdsN55FVK/u1wvVnrvDqg0wIbMu3w==
X-Google-Smtp-Source: ABdhPJzz8MVnUyU8mvOew3n3dPpnYtByV2EAdKJBulgusUwi8Awg56GU1IoOBlnaCKO8n4KnXa8Qlg==
X-Received: by 2002:a17:907:9602:b0:6df:e82c:f84 with SMTP id gb2-20020a170907960200b006dfe82c0f84mr4788976ejc.590.1650643379580;
        Fri, 22 Apr 2022 09:02:59 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Fri, 22 Apr 2022 18:02:58 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: David Bouman <dbouman03@gmail.com>
Cc: oss-security@lists.openwall.com
Message-ID: <YmLRsltx7Y1s0vo2@eldamar.lan>
References: <d5567e4b-884c-9449-1cfc-0c21b6a4a752@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d5567e4b-884c-9449-1cfc-0c21b6a4a752@gmail.com>
Subject: Re: [oss-security] Linux: UaF due to concurrency issue in io_uring
 timeouts

Hi David,

On Fri, Apr 22, 2022 at 02:43:27AM +0200, David Bouman wrote:
> Hello list,
> 
> We (Jayden Rivers and David Bouman) are disclosing a bug we found in the
> Linux kernel's io_uring subsystem. We have written a local privilege
> escalation PoC that can successfully elevate to system root from an
> unprivileged process (in a container). We will be releasing a blog post
> (including exploit code) in a week or two. It should be noted that unlike
> many Linux vulnerabilities that have surfaced recently, triggering this one
> does not require an attacker to have any kind of privileges (e.g. in a user
> namespace). This leaves many systems vulnerable.
> 
> We are still looking for a CNA representative that can assign a CVE number
> for this vulnerability; please contact us!
> 
> Kernel versions 5.10+ are affected, and linux-stable patches are already
> pushed. The upstream patch commit is
> e677edbcabee849bfdd43f1602bccbecf736a646 ("io_uring: fix race between
> timeout flush and removal").
> 
> When the IORING_OP_TIMEOUT (T) and IORING_OP_LINK_TIMEOUT (LT) opcodes are
> combined in a linked submission queue entry, and another request (B)
> finishes, a race might occur: namely, when due to the completion of B, T is
> cancelled (through the completion event count), and LT is canceled by its
> hrtimer at the same time. Whilst T is still being cleaned up, LT is already
> freed by a different execution context, and since they are linked, the
> cleanup of T retains a dangling reference to the now-freed LT. Hence,
> there's a use-after-free.
> 
> Exploitation-wise, the attacker can reallocate LT to another `struct
> io_kiocb` and defer the UaF to e.g. a `struct file` (this is the technique
> we will describe in aforementioned blog post).
> 
> The race window is quite tight and the scenario is complicated, so the race
> can only be won very infrequently in our experience.
> 
> It is advised to upgrade your kernel to latest ASAP.
> 
> Greetings,
> 
> Jayden Rivers & David Bouman

This has CVE-2022-29582 assigned.

https://www.cve.org/CVERecord?id=CVE-2022-29582

Regards,
Salvatore
