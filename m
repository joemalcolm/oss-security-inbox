X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["934" "Friday" "16" "November" "2018" "00:38:18" "+0100" "Jann Horn" "jannh@google.com" "<CAG48ez3sBak6JSO6p=qZ8S3mo8kARevAmUOY2TtFawaxXBk3wA@mail.gmail.com>" "18" "[oss-security] Linux kernel: broken uid/gid mapping for nested user namespaces with >5 ranges (CVE-2018-18955; since 4.15; fixed in 4.18.19 and 4.19.2)" "^Date:" nil nil "11" "2018111523:38:18" "[oss-security] Linux kernel: broken uid/gid mapping for nested user namespaces with >5 ranges (CVE-2018-18955; since 4.15; fixed in 4.18.19 and 4.19.2)" (number mark "        jannh@google Nov 16   18/934   " thread-indent "\"[oss-security] Linux kernel: broken uid/gid mapping for nested user namespaces with >5 ranges (CVE-2018-18955; since 4.15; fixed in 4.18.19 and 4.19.2)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5527 invoked by uid 550); 16 Nov 2018 07:33:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3454 invoked from network); 15 Nov 2018 23:38:56 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=+WrXXGQt3gR4nJSIfTyrltMwJEAy9y3bP9SNGyc+7to=;
        b=KuImK3aUSx2SuFcPr4zk4mUdPcWPxMaXAMQZzDRLk0Nbj0y7USQDTPSbI6BFpRo6Oe
         oFm+WdNObshrRmq2+DOIhTnezBcVBrVcj5TlST2cUs/DtafM6lAu7PcdF79qgU+raR1L
         TkzwE7m4XTBm+2vWpOnQtxqe63ZxFGJnbuZw6/pI/AJJBlqWZYFHCL9bKc0CUxk18nWh
         qXRgFNm14CIcr9vnZbgnC9QGGMBwpIFjVqxuDme+qSZTT7gngwHe3bbtEN/pa469kXQE
         BrWXQLY7w4tf6yxai/tRZpuYXWpidBR/YP2uyynNNz7XN++dZWr5pZi0EZd0Znl/rP8V
         vleg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=+WrXXGQt3gR4nJSIfTyrltMwJEAy9y3bP9SNGyc+7to=;
        b=tdQSwbYR+bxcwgFn3kn4d5LmAQakED96cr3+kOOQc49IFfzv69S1UCE+zjhoAPCHDP
         /ke9ARloJNtCJ8RsTVOL/diGO8Svw2+0Xokp6LWHAEoVrey2mfHEYthCghcc3inWt3N7
         l+1rp1Srxx8LZo70Wtv4uqMUYnnqbhp3eez4nJtISWMPJjW+A/WleRMShQawtPUOyIgV
         boy5aHZ04zYX9ncdyWaq+gXKkN9jrsyFZwMyN66sCG8tSA40ORtoFEGZpzVtruUGwtav
         rbJrj3Bw+F17//bLLUWKWhwRrby1NCcH33MoA1vNUu/nM5EzpdB/dqlaU7/hnJjNAmQi
         QEmw==
X-Gm-Message-State: AGRZ1gKHwVc8YNx8A52v+Ljafqiz3xyGQ7Fz2vRmcjn0+VJB5U33PeTu
	JtamC/axEwEMBi9keSyZEFq+dyLIdyaijGk0BY0olmzxEwpYUw==
X-Google-Smtp-Source: AJdET5c+REz8Uie1uiNvv7zkpW+yFumD14B15OggiiYBDaWVO41NoCtEsd82C+iThfGchBt25Ihfkh4gIN/VpKHVyJg=
X-Received: by 2002:a9d:3a44:: with SMTP id j62mr4597621otc.292.1542325124324;
 Thu, 15 Nov 2018 15:38:44 -0800 (PST)
MIME-Version: 1.0
Message-ID: <CAG48ez3sBak6JSO6p=qZ8S3mo8kARevAmUOY2TtFawaxXBk3wA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Date: Fri, 16 Nov 2018 00:38:18 +0100
From: Jann Horn <jannh@google.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Linux kernel: broken uid/gid mapping for nested user namespaces with
 >5 ranges (CVE-2018-18955; since 4.15; fixed in 4.18.19 and 4.19.2)
To: oss-security@lists.openwall.com

NOTE: I have requested a CVE identifier, and I'm sending this message,
to make tracking of the fix easier; however, to avoid missing security
fixes without CVE identifiers, you should *NOT* be cherry-picking a
specific patch in response to a notification about a kernel security
bug.

In Linux kernel versions since 4.15, map_write() in
kernel/user_namespace.c handles nested user namespaces with more than
5 UID or GID ranges incorrectly. This can allow a user who has
CAP_SYS_ADMIN in a user namespace which maps at least 6 UIDs or GIDs
to bypass access controls on resources outside the namespace.

This is CVE-2018-18955.

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=d2f007dbe7e4c9583eea6eb04d60001e85c6f1bd
https://cdn.kernel.org/pub/linux/kernel/v4.x/ChangeLog-4.18.19
https://cdn.kernel.org/pub/linux/kernel/v4.x/ChangeLog-4.19.2
https://bugs.chromium.org/p/project-zero/issues/detail?id=1712
