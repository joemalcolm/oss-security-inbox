Received: (qmail 32678 invoked by uid 550); 22 Apr 2022 09:50:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13729 invoked from network); 22 Apr 2022 00:43:41 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:content-language:to:from
         :subject:content-transfer-encoding;
        bh=0sXcmEUTwc0Fgng8oxFdQYJm8Lfr+IK0lh6YUOYX9zk=;
        b=UMmuI7GNkCh3gODYg3bVdFNWeN+LPFG0EVjZAdBSJxmc1nwROgYinnfIBzSZvHDjyQ
         ZnyZr4i0QPq/QDzDznnBA6dlibgEopwahBmRExb0DziNmhV68Tr6GurMNxNI7hwtVFb8
         fv+HTV7ZLvifNgwqHvHLJssJppztx4n/YWbBKJN2Ah+s5pLW1jlSyqR4MoDpNlYl8tPJ
         QtnGFOP9OULdkgeg+rtteOh4tBszJ6numxG7HikwCb5mdATHhencmKDU7BoDYuBmCNFC
         4qAgozuiprsEz2Nu9N7SFMb2baxptuu5+4+pnGwbKg9x5Q5tF3A0CRhqoflOevmNKD9K
         Qnxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent
         :content-language:to:from:subject:content-transfer-encoding;
        bh=0sXcmEUTwc0Fgng8oxFdQYJm8Lfr+IK0lh6YUOYX9zk=;
        b=71OBCm/xVtfTrG8PMPqw1e55+sW7e1/fjczCQrii3vjLt38FLayIMPERc6CIFvIxtw
         Meeh+rOfb3Cz1imO8qWwHdxHYEcYS5x9y30CPf/V1KOlGHOwAzBZyt477Iu3MZ1LBRTM
         0vDGLU+osORunon1WjW+ODxee1Na0AflIuOXeeBskoSspcoxP0/rY53jcinJuzjzcfPo
         UG3ynNwyUEnDdKE7ae7Xehpt8bRTvQpk/DB3XHUhJUEIuM8vRZtFt0zOK6z+Fnu/7tts
         6cojmL7mMbmpTdAWyK7FeXLgvoDCkiRw6jhuyS7Up748wz/KislnfMbI455jNrkBMkb9
         bATQ==
X-Gm-Message-State: AOAM533HyodBh+Qplm8isfHywkF5Cf1ZHAAOsyDr6waqZRF/xWeoaiwv
	2+f+YYBnGAbTwMoJ24jKy36ytudMYEHO+g==
X-Google-Smtp-Source: ABdhPJzFKyE8DUpSmNB+zI3x2UucIb3fHL36l9V8eyKpfb41b4YrYED5uibSVlDPbISc2zKo6qlBBw==
X-Received: by 2002:a05:6402:358a:b0:423:ec6a:7bd2 with SMTP id y10-20020a056402358a00b00423ec6a7bd2mr2302369edc.334.1650588209056;
        Thu, 21 Apr 2022 17:43:29 -0700 (PDT)
Message-ID: <d5567e4b-884c-9449-1cfc-0c21b6a4a752@gmail.com>
Date: Fri, 22 Apr 2022 02:43:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: oss-security@lists.openwall.com
From: David Bouman <dbouman03@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] Linux: UaF due to concurrency issue in io_uring timeouts

Hello list,

We (Jayden Rivers and David Bouman) are disclosing a bug we found in the 
Linux kernel's io_uring subsystem. We have written a local privilege 
escalation PoC that can successfully elevate to system root from an 
unprivileged process (in a container). We will be releasing a blog post 
(including exploit code) in a week or two. It should be noted that 
unlike many Linux vulnerabilities that have surfaced recently, 
triggering this one does not require an attacker to have any kind of 
privileges (e.g. in a user namespace). This leaves many systems vulnerable.

We are still looking for a CNA representative that can assign a CVE 
number for this vulnerability; please contact us!

Kernel versions 5.10+ are affected, and linux-stable patches are already 
pushed. The upstream patch commit is 
e677edbcabee849bfdd43f1602bccbecf736a646 ("io_uring: fix race between 
timeout flush and removal").

When the IORING_OP_TIMEOUT (T) and IORING_OP_LINK_TIMEOUT (LT) opcodes 
are combined in a linked submission queue entry, and another request (B) 
finishes, a race might occur: namely, when due to the completion of B, T 
is cancelled (through the completion event count), and LT is canceled by 
its hrtimer at the same time. Whilst T is still being cleaned up, LT is 
already freed by a different execution context, and since they are 
linked, the cleanup of T retains a dangling reference to the now-freed 
LT. Hence, there's a use-after-free.

Exploitation-wise, the attacker can reallocate LT to another `struct 
io_kiocb` and defer the UaF to e.g. a `struct file` (this is the 
technique we will describe in aforementioned blog post).

The race window is quite tight and the scenario is complicated, so the 
race can only be won very infrequently in our experience.

It is advised to upgrade your kernel to latest ASAP.

Greetings,

Jayden Rivers & David Bouman
