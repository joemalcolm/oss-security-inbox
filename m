X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1131" "Monday" "29" "October" "2018" "16:11:34" "+0100" "Jann Horn" "jannh@google.com" "<CAG48ez2OYD-9P-YSozYs08Xx0TdmWjwYB0GEm=ztLnEfL8dmow@mail.gmail.com>" "26" "[oss-security] Linux kernel: TLB flush happens too late on mremap (CVE-2018-18281; fixed in 4.9.135, 4.14.78, 4.18.16, 4.19)" nil nil nil "10" "2018102915:11:34" "[oss-security] Linux kernel: TLB flush happens too late on mremap (CVE-2018-18281; fixed in 4.9.135, 4.14.78, 4.18.16, 4.19)" (number mark "U       jannh@google Oct 29   26/1131  " thread-indent "\"[oss-security] Linux kernel: TLB flush happens too late on mremap (CVE-2018-18281; fixed in 4.9.135, 4.14.78, 4.18.16, 4.19)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1186 invoked by uid 550); 29 Oct 2018 15:27:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19949 invoked from network); 29 Oct 2018 15:12:13 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=lf6ot9CvMmtdele3rd3RVaapyFQsx9XmfS5PxnLTx24=;
        b=koQCQ1p/KAGWNK/5/6RUna1FviCgcZHSfdEIglq6deQSJfIXH9lGh6m1rUo+2Eqh94
         IgrwbYNETsU+Bl5ZkqH91cmy9fo7S2ZgbTAFRro04DUMJ55RoqwoDn+RwIi9yIITca7Z
         Q8jxDYWkWFJr1tbzc0eBV6ftjH34mwPqdnd/E/sYtYU9lJLgFN4tkYsORIeGPapsBWV9
         Dt3ut0YFs9BMgKoiXwihkQZO0j8gZIRiQRolTaB0n1qEZdioLgnj8vnOwx9oT1eyuqGx
         hWWMftOSGxGnVby6XlsQmLaYJmO52/brno0auLmPCAclYAwn3fUIagJN/kOx1hVED3Pq
         DmNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=lf6ot9CvMmtdele3rd3RVaapyFQsx9XmfS5PxnLTx24=;
        b=VjvudiSKjQfFyaUY00OzMwbdZ/LM/OQqc+atsXu6d0FiSU1+l7+6DNLsPvpjvgcb7M
         gYRTpBKj54SaO57cAIuGbtZv/XDyrvJUP57JPoK+ms4q+SxssGh8Onp5ZNy4AU5tkRGV
         /KziH4cjT+V0RHLZXn3E5qro/Nb99l3/hJoncyvxz+PXOzS+cc9QqpP4cX/HpxQnbotn
         UoyFWRUXXycs3vo3OzrBMS2SXFVXwerhcrOFtUw6J8r8y3FwLboVDDjTbrW0nbWfBZ/Z
         iJP/uuu4H52W6BQVzjMuQn3d/qOTeoKOKTdiTUBPg3+Ziu1YelJAESMuPxW95xtkX9/V
         7tnA==
X-Gm-Message-State: AGRZ1gKnkLpkp0PtaxS8eBsumTsH7sIIxoTelduGuAIF/cIThqSUMXl8
	ivhvWAo71G23iWqqj+rZnii3s7Mtf3dBm13ax2YlXIf01JZjaA==
X-Google-Smtp-Source: AJdET5dHVQ1eg1chM62jMShKvTbf6T99xsCxgWo1iJ0izx3ZhufLZ1ICT/+puJaaCRIeXZg7gd3j1wPImsam7wl1i1o=
X-Received: by 2002:a9d:2117:: with SMTP id i23mr8433202otb.230.1540825920528;
 Mon, 29 Oct 2018 08:12:00 -0700 (PDT)
MIME-Version: 1.0
From: Jann Horn <jannh@google.com>
Date: Mon, 29 Oct 2018 16:11:34 +0100
Message-ID: <CAG48ez2OYD-9P-YSozYs08Xx0TdmWjwYB0GEm=ztLnEfL8dmow@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] Linux kernel: TLB flush happens too late on mremap (CVE-2018-18281;
 fixed in 4.9.135, 4.14.78, 4.18.16, 4.19)

NOTE: I have requested a CVE identifier, and I'm sending this message,
to make tracking of the fix easier; however, to avoid missing security
fixes without CVE identifiers, you should *NOT* be cherry-picking a
specific patch in response to a notification about a kernel security
bug.

Since Linux kernel version 3.2, the mremap() syscall performs TLB
flushes after dropping pagetable locks. If a syscall such as
ftruncate() removes entries from the pagetables of a task that is in
the middle of mremap(), a stale TLB entry can remain for a short time
that permits access to a physical page after it has been released back
to the page allocator and reused.

This is CVE-2018-18281.

This is fixed in the following kernel versions:
4.9.135
4.14.78
4.18.16
4.19

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=eb66ae030829605d61fbef1909ce310e29f78821
https://cdn.kernel.org/pub/linux/kernel/v4.x/ChangeLog-4.9.135
https://cdn.kernel.org/pub/linux/kernel/v4.x/ChangeLog-4.14.78
https://cdn.kernel.org/pub/linux/kernel/v4.x/ChangeLog-4.18.16
https://bugs.chromium.org/p/project-zero/issues/detail?id=1695
