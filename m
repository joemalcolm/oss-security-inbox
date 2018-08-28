X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["858" "Tuesday" "28" "August" "2018" "16:49:14" "+1000" "Wade Mealing" "wmealing@redhat.com" "<CALJHwhQyQQjyWxczrjtBgt8GSmHHarzfSDPPFKt3xY0Sk0Sd_g@mail.gmail.com>" "28" "[oss-security] Linux kernel: CVE-2018-14619 kernel: crash (possible privesc) in kernel crypto subsystem." "^Date:" nil nil "8" "2018082806:49:14" "[oss-security] Linux kernel: CVE-2018-14619 kernel: crash (possible privesc) in kernel crypto subsystem." (number mark "U       wmealing@red Aug 28   28/858   " thread-indent "\"[oss-security] Linux kernel: CVE-2018-14619 kernel: crash (possible privesc) in kernel crypto subsystem.\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19828 invoked by uid 550); 28 Aug 2018 06:49:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19809 invoked from network); 28 Aug 2018 06:49:37 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=t68HjqaHxEnsVM1yEwfi2zUI7UVyYqV1d0f+iCaK5Hk=;
        b=UVWV952VAUAyGYmVb3nsWey9BQezE6wLxjjWkN39lzvCMMEzPhXZ41mVeogOp4u9D0
         LSROYAcp4t6eycM/DU/w7Y7ugRW5O0ehkKN2SiKZtoUWPvVlxwki5CkM+6yA9LDLZeKM
         wyh8w5AN22lClIns0NX605JxVCG8EyefDnUe89/47JNTYA9i8XaBwSz2YTKTcH85UtTC
         e9YOSKhvrm8kis0Tkv0SRdgbAmmgU36wf7n8sSM7DZGKg5Rlxcm0K/901XogPiGNrGL7
         rpSE4ehJWZOE6nW3rmSXsDZN6OPfR0a16Mww06UVGpWt+6LSpMRsrv62lVZJh+dhSmVc
         tenw==
X-Gm-Message-State: APzg51BtzViM9CkceWSwozzB8KPgqL80EMmrQ/AYScxa/YVrTW3XAoG/
	tg7EbbQ93CnVw0oDREsE1jEAu52kbNAPOparv0wZLenReOw=
X-Google-Smtp-Source: ANB0VdbXKLcHPDfk7GqIvSpl7bfl4CT4nE+e0ZBPZ7CIn0QKBlece9jpKMRcFzb687iM4+VGPosWJgcUIRXjMfc/LUU=
X-Received: by 2002:a02:8341:: with SMTP id w1-v6mr146057jag.61.1535438965710;
 Mon, 27 Aug 2018 23:49:25 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CALJHwhQyQQjyWxczrjtBgt8GSmHHarzfSDPPFKt3xY0Sk0Sd_g@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Date: Tue, 28 Aug 2018 16:49:14 +1000
From: Wade Mealing <wmealing@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Linux kernel: CVE-2018-14619 kernel: crash (possible privesc) in
 kernel crypto subsystem.
To: oss-security@lists.openwall.com

Gday,

Syzkaller/syzbot found a use-after-free bug in the cryptographic
subsystem of the Linux kernel [1], that can be used to panic the
system and possibly escalate privileges.

The bug was introduced in commit 72548b093ee3, and has been addressed
in b32a7dc8aef1882fbf983eb354837488cc9d54dc, a reproducer is available
on the tail end of  syzbots email to kernel list (
https://lkml.org/lkml/2017/11/27/866 ).  Most RHEL kernels are not
affected as they do not have the feature, but it does affect the
kernel-alt package (the 4.11 based kernel for 64-bit ARM , IBM POWER9
(little endian ) and IBM z Systems ).

Upstream fix:
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=b32a7dc8aef1882fbf983eb354837488cc9d54dc

Reproducer:
https://lkml.org/lkml/2017/11/27/866

Thanks.

-- 
Wade Mealing

Product Security - Kernel

Red Hat
