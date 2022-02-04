X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["859" "Friday" "4" "February" "2022" "10:56:19" "-0600" "Tabitha Sable" "tabitha.c.sable@gmail.com" nil "27" "[oss-security] CVE-2022-0492: Linux kernel cgroups v1 missing capabilities check when setting release_agent" nil nil nil "2" nil nil (number mark "U       tabitha.c.sa Feb  4   27/859   " thread-indent "\"[oss-security] CVE-2022-0492: Linux kernel cgroups v1 missing capabilities check when setting release_agent\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2022-0492: Linux kernel cgroups v1 missing capabilities check when setting release_agent" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 12161 invoked by uid 550); 4 Feb 2022 18:21:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12279 invoked from network); 4 Feb 2022 16:56:43 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=7Dva2/JbmRC3RDjXofSRVZ8RQjyLYA70BIkZLRSAEr0=;
        b=KhIRUn4+az1+GYaLDEmx87p/By5Fhyc7S8QglSdRmxpdnHYoq5zmFYGzjc++7kjwUy
         xPb6j05kjFuKa8jpCkzeV0rb0wSPcvNgZu3mdpxYA8t0hWMKmLjA1lTany45tkjkCXMd
         n/sREwc1WX6JZGRVNdRnyiYDEss3x2ZN2dSLfDamr1MXhM1sTxRprKlq5BmfoCRepuPM
         cCThY5HvZ8S9tLnRfmm1sstHQAxWaZjgTeN2Vqs2X2j5aZaTr4KK6hm+3fT51d3DST/r
         CxD0/NHHCO/cygiMqdJ0A9e32jsqL3k0c1L3/JECvNOlYczwT7VoxitOvk1YbSm9M2GO
         wXDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=7Dva2/JbmRC3RDjXofSRVZ8RQjyLYA70BIkZLRSAEr0=;
        b=nWFjNPAy4mWkADS7WQtEMPBxTs45fyDGiUXvHx571ov34+UUpI6PyyXMULQC4KzDy/
         y3RZgsqe32HJYqWkY3fe3isuySXuTq6TZST7sqKIdD47zQ8z3cratQ78aSmfXBTWpl04
         nYh2ysdi5IIv0YhArCN0eF8fvgTR9DRZt0N5ngedGkE8ejmN/IgiAnfc11klxAUvKCT4
         taOtcDRYWM9VXA6mTaSBd9cCJzpyQjVw1uinLRAddgAdYLJ5HLob4nnJLWLslMOdTlRO
         4losEpGtbAvnGiG6gL3BObe0JxjVohHv3EARu1CXj7Aaif/UZCkmvxW5lbgi7spseKha
         nh1Q==
X-Gm-Message-State: AOAM533ALtURHUz3cCVqtAzqxlBNO7K4lNf9SAmwQEtU92UuDxLp48q9
	g+2ROIx97ys/Xzq1MW05idCJ7UlthB9q4myOy2yKi8RWx4qHoQ==
X-Google-Smtp-Source: ABdhPJyDxW1D6CjQZFXBxKQvOsMsfVR4Gljgz/RIIbvD9pdiEU3YX+bvocm66aHK3WwTZYyfiU0pcKZ8jVAsJKbqT3g=
X-Received: by 2002:a05:651c:17a7:: with SMTP id bn39mr2233625ljb.26.1643993791141;
 Fri, 04 Feb 2022 08:56:31 -0800 (PST)
MIME-Version: 1.0
From: Tabitha Sable <tabitha.c.sable@gmail.com>
Date: Fri, 4 Feb 2022 10:56:19 -0600
Message-ID: <CAM62SmJTkayhy-+dbne1veD+zH5Nyc3ZhMqk60YQQwBC1-MW7A@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000ef1caa05d73421ad"
Subject: [oss-security] CVE-2022-0492: Linux kernel cgroups v1 missing capabilities check
 when setting release_agent

--000000000000ef1caa05d73421ad
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello all,

It has been discovered that under certain circumstances, the Linux kernel=
=E2=80=99s
cgroups v1 release_agent feature can be used to escalate privilege and
bypass namespace isolation unexpectedly.

CVE-2022-0492 has been assigned to this issue, which is corrected by
requiring CAP_SYS_ADMIN in the initial user namespace when setting
release_agent. This has been included upstream in commit
24f6008564183aa120d07c03d9289519c2fe02af. (
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?=
id=3D24f6008564183aa120d07c03d9289519c2fe02af
)

Thank you to Yiqi Sun and Kevin Wang of Huawei Security Team for disclosing
their work that led to this fix.

Cheers,

Tabitha Sable

--000000000000ef1caa05d73421ad--
