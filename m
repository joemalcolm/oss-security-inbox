X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["720" "Monday" "24" "August" "2015" "17:27:54" "-0700" "Andy Lutomirski" "luto@amacapital.net" "<CALCETrUvz+ABna38d-at13Z=X=O_juH1FROqg5YDNSvzAZj3sQ@mail.gmail.com>" "18" "[oss-security] CVE Request: Linux x86_64 NT flag issue" nil nil nil "8" "2015082500:27:54" "[oss-security] CVE Request: Linux x86_64 NT flag issue" (number mark "        luto@amacapi Aug 24   18/720   " thread-indent "\"[oss-security] CVE Request: Linux x86_64 NT flag issue\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 14041 invoked by uid 550); 25 Aug 2015 00:28:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 14017 invoked from network); 25 Aug 2015 00:28:26 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to
         :content-type;
        bh=fmjMZxxslSGSZXogUvbdLitKP+sUlezDHwelPsX5z+U=;
        b=ZOFpXq5MT8Tf7apHaWQG4pi7mbAaYAIcweDODceWo2JZ36i+2zatpqH6mVZleu65lj
         yOrIF94VVpWC9uBz0UI+l4Q6CnQIndWHTE2jtcr/ZDorSLIiN+cgSKFv4j5Kc0U0v3Cj
         xqFY6wZ/1LCMMIqyW78Uk5hsPIIpeEm6QMH/kiwgKc85Ni97m3W9SCiyvxnqhjnKaNQC
         wN5QQ5qOfn3NiT4ICw/wDn3Uycy6yDbUeKuL3xNiWxRUY46Cyi6/tiPBD3a3PLpXKUTt
         X7thkRWEED4cNvJW30hoU0BtiMC/zPOam61gOFBur7xawXOn2Evt63KGAXDfmhX49UyG
         eAng==
X-Gm-Message-State: ALoCoQk1EZHOC3XSNqqsumjzIlVrjWOxkD/wbXtTrwXsix9b02LJjL4XcERzw2Y1fPCkBLsh+4ft
X-Received: by 10.202.75.2 with SMTP id y2mr23007720oia.116.1440462493926;
 Mon, 24 Aug 2015 17:28:13 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CALCETrUvz+ABna38d-at13Z=X=O_juH1FROqg5YDNSvzAZj3sQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Date: Mon, 24 Aug 2015 17:27:54 -0700
From: Andy Lutomirski <luto@amacapital.net>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request: Linux x86_64 NT flag issue
To: oss security list <oss-security@lists.openwall.com>

When I fixed Linux's NT flag handling, I added an optimization to
Linux 3.19 and up.  A malicious 32-bit program might be able to leak
NT into an unrelated task.  On a CONFIG_PREEMPT=y kernel, this is a
straightforward DoS.  On a CONFIG_PREEMPT=n kernel, it's probably
still exploitable for DoS with some more care.

I believe that this could be used for privilege escalation, too, but
it won't be easy.

The fix is just to revert the optimization:

https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=512255a2ad2c832ca7d4de9f31245f73781922d0

Mitigation: CONFIG_IA32_EMULATION=n.  Seccomp does *not* mitigate this bug.

--Andy

P.S. This is yet another x86 mis-design leading to garbage results.
