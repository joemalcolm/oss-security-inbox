X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1416" "Thursday" "13" "January" "2022" "16:21:09" "+0800" "tr3e wang" "tr3e.wang@gmail.com" nil "47" "[oss-security] Linux Kernel eBPF Improper Input Validation Vulnerability" nil nil nil "1" nil nil (number mark "U       tr3e.wang@gm Jan 13   47/1416  " thread-indent "\"[oss-security] Linux Kernel eBPF Improper Input Validation Vulnerability\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Linux Kernel eBPF Improper Input Validation Vulnerability" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3408 invoked by uid 550); 13 Jan 2022 10:04:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29834 invoked from network); 13 Jan 2022 08:21:33 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=AF3GBgvm0irr2JUutuvhEcZt2JYHDCHgNKhv7Jvxq3A=;
        b=RIOT9e5Ox+pS6bqnpHbx4q8Ytcw5a8T4ET3XF8+eFjXDDltnFSCIB8OnseRBilGndz
         GlaGpU0Sa9vjvvu14EESQ1foVwS+gRrmhguMW+4cMZzSZRKvt36lnZIySYwNva3h+3ku
         tsSC0QJp50y25PCUxnwyi4iGvgOaWNnQV+thDYzRzrcnlBHJFllsHVScFPb71WqD3cl3
         DQ2oOK4InQroBlzzRjFRofsMK02ar5NLEcn8VCRMm3EFXFJ69kbckhCOP4RHMMsLsK/N
         L0e7Po/U64nW0ghLKmObCkWfqSdTHq+K9nsMQLtm/7iSyhgZb7J32RjhoTRDGnNiIQuU
         MxAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=AF3GBgvm0irr2JUutuvhEcZt2JYHDCHgNKhv7Jvxq3A=;
        b=LI3chwmKMp2tZkzznYtcaULbxajcnIFr9oDgbJTOhP2FXmrShOjSwZkG96V5exzSOZ
         i4kIYykJRHr3ONmP8JvTk2hwRsb7JbbtDRId5h9cEyfGscUniRdr50MK9Ls074+tCrQc
         qOfJPXbgagFvtQLcNE7R05KdM0652NOK3jjZiLyfcBlbM2NDOSPYUggEumgy++UKYfHs
         uPUtWFYSsHs40v9w6CQ4dFjIP+XzKMcLNPsbfTE/hhcM5p+hRLLJtAICJ/pfAcRsp5C/
         5ZQex7yrXs8/lmnS0CYR+UDqby7uaU8WIGirym9Ra82VkXm3d0cXUptYrOU0ANZDXXWM
         iblg==
X-Gm-Message-State: AOAM5309WFDuBAQlE4hHazMuJxwO5Kn5ob6kzkhfuqfeNw6WdHN58+lx
	AB5UVUHH2kBt3ecJnVgA0IS3iKF5IeYENTsQw2cRwNACIOs=
X-Google-Smtp-Source: ABdhPJzJ+Sn4DADNFR6FKrrWdJtbRBix4wkxLFAPQsbtA4PemQJoVr8LtnY3Br94NT8ZLMt590XO9DcCTb7wExJebu8=
X-Received: by 2002:a05:6830:2645:: with SMTP id f5mr2396972otu.19.1642062080597;
 Thu, 13 Jan 2022 00:21:20 -0800 (PST)
MIME-Version: 1.0
From: tr3e wang <tr3e.wang@gmail.com>
Date: Thu, 13 Jan 2022 16:21:09 +0800
Message-ID: <CA+eGCHaJ8Vcgm=+KqmFwmLd8BP+Vn8aos6RZzvbzHd544SdQZg@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: Daniel Borkmann <daniel@iogearbox.net>
Content-Type: multipart/alternative; boundary="0000000000000361af05d5725f84"
Subject: [oss-security] Linux Kernel eBPF Improper Input Validation Vulnerability

--0000000000000361af05d5725f84
Content-Type: text/plain; charset="UTF-8"

Hi all,

This vulnerability allows local attackers to escalate privileges on
affected installations of Linux Kernel. An attacker must first obtain the
ability to execute low-privileged code on the target system in order to
exploit this vulnerability.

The specific flaw exists within the handling of eBPF programs. The issue
results from the lack of proper validation of user-supplied eBPF programs
prior to executing them. An attacker can leverage this vulnerability to
escalate privileges and execute code in the context of the kernel.
BE AWARE, unprivileged bpf is disabled by default in most distros.

*Affected Version*

    Linux Kernel 5.8 or later

*Root Cause Analysis*

The bpf verifier(kernel/bpf/verifier.c) did not properly restrict several
*_OR_NULL pointer types which allows these types to do pointer arithmetic.
This can be leveraged to bypass the verifier check and escalate privilege.
(see
https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/tree/kernel/bpf/verifier.c?h=v5.10.83#n6022
)

*Exploit Code*

Exploit code will be delayed for 5 days and will be posted at 12:00 UTC,
Jan 18, 2022

*Mitigations*

set kernel.unprivileged_bpf_disabled to 1

BE AWARE AGAIN, unprivileged bpf is disabled by default in most distros.

*Credits*

tr3e of SecCoder Security Lab
Best,
tr3e

--0000000000000361af05d5725f84--
