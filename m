X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["915" "Thursday" "23" "December" "2021" "15:33:30" "+0300" "Pavel Mayorov" "pmayorov@cloudlinux.com" nil "26" "[oss-security] binutils: Stack-overflow in debug_write_type in debug.c" nil nil nil "12" nil nil (number mark "U       pmayorov@clo Dec 23   26/915   " thread-indent "\"[oss-security] binutils: Stack-overflow in debug_write_type in debug.c\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] binutils: Stack-overflow in debug_write_type in debug.c" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5886 invoked by uid 550); 23 Dec 2021 12:34:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5644 invoked from network); 23 Dec 2021 12:33:52 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cloudlinux.com; s=google;
        h=mime-version:from:date:message-id:subject:to;
        bh=rlOjzqjbr31IK3BZIxVkQEEOJXZ4/EPAzX0FAoXD/EM=;
        b=ElqZ9CZrMYO/6okexV6kFNoR/WUMPOGQ2iJ/VjCipB9gF0AfWmV8ALo76tlgdm/TQN
         cG3G51c6ThkmPfiCU7yoI7tx3eOXc5iOj0RqRuphGlxF2neAuBTm6Cw4VmHFcP5Eg2fJ
         OGKJxVx9+8IuOivMz5Mjz6OIcWX2mpcKYX3NX6Ae+ilA5HRuOPDWAqbzT++jBvvL6gIf
         NUBxRajxgyJCNSuCATIVY/oeQx5TNfaHK2rBCUmaiBWQTQUJLuk43VP+xho0qTcMv3Wh
         nEnG08nnx0FvfyrDM0qkn9Z3aCaRvJfKueEOxRQPf+hJqm0DMjDLRe8/EzDHx8Yl0gK+
         VIlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=rlOjzqjbr31IK3BZIxVkQEEOJXZ4/EPAzX0FAoXD/EM=;
        b=qlYZY4vap5o+zd6BQUA15+U6fphf0AZVJsH8zhP9Y3lCllP5T+9cVbQc5Sgngkr0cV
         zfiKQymFXfJM3P/OPkFje7Cqkoc0lAzqOBi+O8hUZGhC+VA9iBRoX7vVYoXJaSucNTTk
         k34HpixN9W4rpQOGKDJ9KEakOSnk0R0BRMLRdqfXzOLBsy3z++GomTDIGQN5xNexRR4c
         gEWupZzz2QMfxX+N6WWnoDCPtX03ltRqC7GT76m+adK7fDDnUjDSDGmYXYPTOMNlFYK3
         FXEQBt/cstwH2MXChneEHPoOE5wYoVQMl4qST4EGdEKYgoBrutQnF1XyE3VHPztPrATT
         Wrhw==
X-Gm-Message-State: AOAM530aOyNcRZmntgubai3gA4nppgUmuGFvHuCbd8uep60+3/xxw+u0
	3CiNBhGP9W2hMy8YDzcwyCMplg7AZFVntJfqgPUCZwMOnk8Rlg==
X-Google-Smtp-Source: ABdhPJwPJ32dR5DIND5laQ3Zc8/TpjXq234SM29+4KW7EMuLyugqo0eWCYEjaYdCADhoYBJd6pnHWO+/kvt0oYgGdPQ=
X-Received: by 2002:a2e:7319:: with SMTP id o25mr1565953ljc.320.1640262821352;
 Thu, 23 Dec 2021 04:33:41 -0800 (PST)
MIME-Version: 1.0
From: Pavel Mayorov <pmayorov@cloudlinux.com>
Date: Thu, 23 Dec 2021 15:33:30 +0300
Message-ID: <CAPycaENa4y8oq9OFvgHNf+Y6ehO1zhJPE4ZTpTbr4jRzDqp+-Q@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] binutils: Stack-overflow in debug_write_type in debug.c

Hello!

It was observed that CVE-2018-12700 in binutils package wasn't completely fixed.
I was able to reproduce that issue by following instructions I had
described in https://sourceware.org/bugzilla/show_bug.cgi?id=28718
I assessed that this issue is only locally exploitable. Its impact is
to resource availability and
observable effects of objdump which I've tested range from fatal
signal reception to livelock (due to optimization of recursions).
The exact effect depends on compiler version and operating system.

Due to the nature of binutils which are normally used by developers
only and don't affect production environments, I've decided to
publicly report that issue.

-- 
Best regards,

Pavel Mayorov
Senior C Developer


CloudLinux.com  |  KernelCare.com  |  Imunify360  | AlmaLinux

helpdesk.cloudlinux.com: 24/7 Free, exceptionally good support
Follow twitter.com/CloudLinuxOS for technical updates
