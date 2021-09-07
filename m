X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1559" "Tuesday" "7" "September" "2021" "14:09:52" "+0530" "Rohit Keshri" "rkeshri@redhat.com" nil "46" "[oss-security] CVE-2021-3715 Linux kernel: use-after-free in route4_change() in net/sched/cls_route.c" nil nil nil "9" nil nil (number mark "U       rkeshri@redh Sep  7   46/1559  " thread-indent "\"[oss-security] CVE-2021-3715 Linux kernel: use-after-free in route4_change() in net/sched/cls_route.c\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-3715 Linux kernel: use-after-free in route4_change() in net/sched/cls_route.c" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3422 invoked by uid 550); 7 Sep 2021 10:07:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21541 invoked from network); 7 Sep 2021 08:40:19 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1631004007;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=1D8H/0XSmYMyUymvGI5cqmEwiKIWfDFQ/1+oQofYDR8=;
	b=EW2NqYZ7vMaz95QOJxEUb6my0DNMEmxhjtjBpbso2uGaTPK44eHLsWN5XBzVMsxaQG7xYn
	zM/JRYQFXZx5FuMCdgosub/zzO5FrXxR/68Nyq6tcpWoLjOUWUdmKFCLKeRgGiTJy7+m/k
	jlYmJoh3pkeW0Ynkmnl372omvbVogTw=
X-MC-Unique: 7RPhdO5PPZ27hFSBCl1FjQ-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=1D8H/0XSmYMyUymvGI5cqmEwiKIWfDFQ/1+oQofYDR8=;
        b=JDwC0ysLJTCZEXHMq4QGlf+p5ur7WL2Yh2obBf9Ij5Qlbv0byW5fT0qgi+D/GreOFX
         JO91ZvCkX4CCYs52kDyeBeaoQBXMVskTOKe+eOkJd7Ia6SL5SA6vSYVR2FuifjBTmed5
         4pssX9R8jmThfZoTeHFYTWef+sb2kE4MMYyo8/IF4PUT4KWZJhRrDlJ5fm5ShVXmhz2c
         TLPkg5XI3ZrqvdbUoOjNhalv/pkWcDsgq34pPLawyN+TIFfT2qZHJkUB2fe4GmjcAuhs
         JorlS6TkJNa0QAdnKkbjK67BjHo2Tgn1xb0W5f5VR7rhO12KjcNnyLfGMm67pWo2G8DR
         Boqg==
X-Gm-Message-State: AOAM531oQDKTrf+7TES1878uMapF1IoSScBu76ZxJKO1guUgmzswaEJ4
	1m/SoKh1cjOu1IKAwnrj1Mccp6uelMVXkfTy6Ej07xZfY9hqHpLkU9AuJT91PEArx5vOFemjwJT
	MIyzWk+kRHbm7nEdDNBAI3bByQHMC6S/iPXCuHgJCceBK
X-Received: by 2002:a05:6512:220a:: with SMTP id h10mr11951325lfu.623.1631004003206;
        Tue, 07 Sep 2021 01:40:03 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyZg0IigiNgZwlmkuAPqnhye+2GaGnBdREqpn19ga4HCfSo9tQPwyAT/Ljv1bh5xF6vLyDscuEa0hpRIsfj9QY=
X-Received: by 2002:a05:6512:220a:: with SMTP id h10mr11951313lfu.623.1631004002910;
 Tue, 07 Sep 2021 01:40:02 -0700 (PDT)
MIME-Version: 1.0
From: Rohit Keshri <rkeshri@redhat.com>
Date: Tue, 7 Sep 2021 14:09:52 +0530
Message-ID: <CAKx+4-qZVEvOx+zD1R0r2UzNpT8eLUe+sTp78KJHjaEun7BVPA@mail.gmail.com>
To: oss-security@lists.openwall.com
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=rkeshri@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="000000000000389a3005cb63b667"
Subject: [oss-security] CVE-2021-3715 Linux kernel: use-after-free in
 route4_change() in net/sched/cls_route.c

--000000000000389a3005cb63b667
Content-Type: text/plain; charset="UTF-8"

Hello Team,

A flaw was found in the "Routing decision" classifier in the Linux kernel's
Traffic Control networking subsystem in the way it handled changing of
classification filters, leading to a use-after-free condition. This flaw
allows unprivileged local users to escalate their privileges on the system.
The highest threat from this vulnerability is confidentiality, integrity,
as well as system availability.

This issue was fixed in the upstream Kernel 5.10 onward with ef299cc3fa1a9
~~~
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=ef299cc3fa1a9e1288665a9fdc8bff55629fd359
~~~

This problem is considered a security threat because unprivileged
user/network namespaces can escalate privileges on the system.

'CVE-2021-3715' was assigned by Red Hat.

* acks (Zhenpeng Lin)

* Description from the reporter:

"Originally the bug was found by Syzkaller in
https://syzkaller.appspot.com/bug?id=6a039858238a38cbc7f372607fc5d49f4469cf2c
.
It shows a warning bug effect that is not exploitable, seemingly.
However, the bug can be turned into a use-after-free bug and eventually
results in a working exploit, with all the mitigation in centos being
bypassed." from zhenpeng

Updated packages for Red Hat are currently in QE and will be released when
available.

Regards,
..
Rohit Keshri / Red Hat Product Security Team
PGP: OX01BC 858A 07B7 15C8 EF33 BFE2 2EEB 0CBC 84A4 4C2D

secalert@redhat.com for urgent response

--000000000000389a3005cb63b667--

