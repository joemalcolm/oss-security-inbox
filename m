X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["918" "Wednesday" "10" "February" "2021" "20:34:37" "+0530" "Rohit Keshri" "rkeshri@redhat.com" "<CAKx+4-rJk=tc6uRfvNFZhr33g4-vi7ZMpBzFu2bjZ=a_-Fu-8Q@mail.gmail.com>" "28" "[oss-security] CVE-2021-20200: Linux kernel: close race between munmap() and expand_upwards()/downwards()" "^Date:" nil nil "2" "2021021015:04:37" "[oss-security] CVE-2021-20200: Linux kernel: close race between munmap() and expand_upwards()/downwards()" (number mark "        rkeshri@redh Feb 10   28/918   " thread-indent "\"[oss-security] CVE-2021-20200: Linux kernel: close race between munmap() and expand_upwards()/downwards()\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-20200: Linux kernel: close race between munmap() and expand_upwards()/downwards()" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24186 invoked by uid 550); 10 Feb 2021 15:11:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7738 invoked from network); 10 Feb 2021 15:05:05 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1612969494;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=WSZR5Mko4WpUTcIkx1TRt4cYXRhx7mUGvgN2G/A4eFc=;
	b=faAcwOmmsQVR159JFJjTvklGTdAxPPsH3oMjLq9avJoPNEg9zTSXpTFijn7DyvGLzzp7SC
	HMmAkD12QftYQFmm6VNeYA/lG59XJSorUV5v5Mf8VawRAFg4NsTtWyhDFTf4rF5VMw7dAM
	c23dnspYpmEx8SCWvk6P+cCNPtnNLPY=
X-MC-Unique: DRev53toPgG-nzn8RmUFqg-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=WSZR5Mko4WpUTcIkx1TRt4cYXRhx7mUGvgN2G/A4eFc=;
        b=ZF/RikNFgYKpTHDH4ZZlcfFBG/HIfbWnShcLqCHXyA0sh/zNk0FYZ/4bkkuMSR6qqi
         Qg3TDquJeQSbm65KdU4GojEOO1pFbb0VLI8ZfEfr48qhbRF45um9zNXz0S84S9netxPP
         A/IJZ7m4GVRCrs/7kXaQIeKDWlNeLlg0Qv6mbnjcbp3i9S1Mul/wkL2s2oALn1LoMs5q
         jMUE5ZTNIuCHO/LUhjtycm8geL8pJtPEYqF+EcOS3vx9IfCcA+qbpajA6bdLoASv8Crr
         pG8q0P2onS8/jgwYiGVP52TenGxVuT0aqfbw5Y8Peu7AhR9+XAKbAslVTNVJsdxodJ7W
         T48Q==
X-Gm-Message-State: AOAM530LGrcMdSbiq2u+G/7zOdd2+KZyY/g0mTthlxaYl7tKt9Jspkb+
	ZVfZmxnvQO2vCIIFIJTpqtro08v0v1vhRtvEDSMurYG9bqwBAnhvIus0zc0EC1TJu1QrmjJl4az
	Gdf2+aKEdpalTSr5OH7kvsXTOyKw6FEnsHXL+ta/O0vjM
X-Received: by 2002:a05:651c:150:: with SMTP id c16mr1391201ljd.207.1612969489018;
        Wed, 10 Feb 2021 07:04:49 -0800 (PST)
X-Google-Smtp-Source: ABdhPJz1ZoFgID5tiHEiZFg8N6FgdmgR8IuDLI2U8tsGEyufSqvudIHIbdiTbEJVJHY0jgRySV6m4UPh4djbjv//6RY=
X-Received: by 2002:a05:651c:150:: with SMTP id c16mr1391187ljd.207.1612969488770;
 Wed, 10 Feb 2021 07:04:48 -0800 (PST)
MIME-Version: 1.0
Message-ID: <CAKx+4-rJk=tc6uRfvNFZhr33g4-vi7ZMpBzFu2bjZ=a_-Fu-8Q@mail.gmail.com>
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=rkeshri@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="000000000000697b6f05bafcb99b"
Date: Wed, 10 Feb 2021 20:34:37 +0530
From: Rohit Keshri <rkeshri@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2021-20200: Linux kernel: close race between munmap() and expand_upwards()/downwards()
To: oss-security@lists.openwall.com

--000000000000697b6f05bafcb99b
Content-Type: text/plain; charset="UTF-8"

Hello Team,

A use-after-free flaw may be seen due to a race problem while in
detach_vmas_to_be_unmapped() in mm/mmap.c in VMA access while
munmap(). This flaw could allow a local attacker with a user privilege
to crash the system, because VMA with VM_GROWSDOWN or VM_GROWSUP flag
set may change their size under mmap_read_lock(). This vulnerability
could even lead to a kernel information leak problem.


'CVE-2021-20200' was assigned by Red Hat.

References:
https://bugs.chromium.org/p/project-zero/issues/detail?id=2056
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=246c320a8cfe0b11d81a4af38fa9985ef0cc9a4c

Thanks and Regards
..
Rohit Keshri / Red Hat Product Security Team
PGP: OX01BC 858A 07B7 15C8 EF33 BFE2 2EEB 0CBC 84A4 4C2D

secalert@redhat.com for urgent response

--000000000000697b6f05bafcb99b--

