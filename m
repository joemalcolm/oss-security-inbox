X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/08/14
Message-ID: <r9s911n1-r026-9057-77rq-3n0s9r2sos35@inai.de>
Date: Thu, 9 Jul 2026 00:40:46 +0200 (CEST)
From: Jan Engelhardt <ej@...i.de>
To: oss-security@...ts.openwall.com
Subject: Re: CVE-2026-46242 ("Bad Epoll") local privilege escalation on Linux, including Android
Content-Type: text/plain; charset=utf-8


On Wednesday 2026-07-08 23:20, Jan Schaumann wrote:
>
>    No kill-switch. Copy Fail and its variants can be
>neutralized by unloading their vulnerable modules, but
>epoll has no such option. It is a core kernel feature
>that the operating system, network services, and
>browsers all rely on. The only way to fix it is to
>apply the patch.
>
>Mitigation
>
>Because epoll cannot be disabled, Bad Epoll has no
>simple workaround. The only remedy is to apply the
>patch.

What about turning off CONFIG_SMP and CONFIG_PREEMPT?
