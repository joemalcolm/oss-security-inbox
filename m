X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1107" "Tuesday" "21" "April" "2020" "17:18:53" "+0530" "Rohit Keshri" "rkeshri@redhat.com" "<CAKx+4-oiN_VbfmnYv=T27zbH0gp3NVcVQeQDixUwiPR_yyB6BA@mail.gmail.com>" "32" "[oss-security] CVE-2020-10690 kernel: use-after-free in cdev_put() when a PTP device is removed while it's chardev is open" nil nil nil "4" "2020042111:48:53" "[oss-security] CVE-2020-10690 kernel: use-after-free in cdev_put() when a PTP device is removed while it's chardev is open" (number mark "U       rkeshri@redh Apr 21   32/1107  " thread-indent "\"[oss-security] CVE-2020-10690 kernel: use-after-free in cdev_put() when a PTP device is removed while it's chardev is open\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-10690 kernel: use-after-free in cdev_put() when a PTP device is removed while it's chardev is open" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23638 invoked by uid 550); 21 Apr 2020 12:34:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16335 invoked from network); 21 Apr 2020 11:49:21 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1587469750;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=u7OdkjfHn5Z3RbChcfoI9KXfUs0AOSjUsxI9WyZjIR8=;
	b=NaRaqWZLFIy4lWixQuWao4RB9Ia0cQENWPC/1kGq94i9zzNSwvrgkEgurMagzRzzNOQlij
	zns+F3kgpwwvtLjkfuLKIEB+LjLXWhDP3GKqUDGPrwt3hVP9WFT2jmktYX6R8+RVMnBqZt
	7pDJ6L3oQdbRqKCn9hfo+/zBa/XvfTM=
X-MC-Unique: _RO4AAlnMB-fAu-byQOGFQ-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=R5evIe56oZd+RKFUSyPCr62dlPYk8dXqBpqTHvH0Yws=;
        b=V4+ogh1jTQlCu08HH+WcBtK3M4stdObFm90qpWD9tAabGOlwAF1Oc3BE6/y2yim+5M
         HqAC3hSWbEIgQZJLfyqGd2NnlFRMNGy/VRbNKhfyxOjuPUZUJa+a1TAYBdza/Ji+mt0W
         3WMyXVAagUviF5Oq0izqfPfzWuvGRTavKthZnkJOXuqnYZRR1wXEdjDd0jtAAK2qvker
         3n7P4adKTvcataoxCP8m2xYge5ME7sissHIhFQiO4bbkKIQ3HYV9Lytx4xOp8kXoZmOU
         X0AjN8HGZyvUK4KQGfB6qolYPETcbORdrxiEQLKa+CSX79ZuM1J1NEc50HYEUqOsfy0x
         7N7g==
X-Gm-Message-State: AGi0PuaTqGieCy/M4Zj0yEaZWERuTIqhgLAiRkbno7g8+byaPciQoRaQ
	QWEXenAYZawqynyJapcxaMmdKnHEHJicZ1n6qSh9CrjbAwbnJwqtfyO3Kpxggo44aedTS2BTjEu
	N5FouDnV/ibTxk8o2uQ9Guk0kh0PoIl5vBXmZdRQ7CkKq
X-Received: by 2002:a9f:22e5:: with SMTP id 92mr11275219uan.114.1587469744914;
        Tue, 21 Apr 2020 04:49:04 -0700 (PDT)
X-Google-Smtp-Source: APiQypJjnNOEAa6KPP9J0f1KSISKLF777YR22IiZE8hXkHmS3uO8mZ4FO0VfMW0hbyQewSzjLIkdhRtp1G5F6/0beFM=
X-Received: by 2002:a9f:22e5:: with SMTP id 92mr11275207uan.114.1587469744546;
 Tue, 21 Apr 2020 04:49:04 -0700 (PDT)
MIME-Version: 1.0
From: Rohit Keshri <rkeshri@redhat.com>
Date: Tue, 21 Apr 2020 17:18:53 +0530
Message-ID: <CAKx+4-oiN_VbfmnYv=T27zbH0gp3NVcVQeQDixUwiPR_yyB6BA@mail.gmail.com>
To: oss-security@lists.openwall.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="000000000000373e1905a3cb9ae3"
Subject: [oss-security] CVE-2020-10690 kernel: use-after-free in cdev_put()
 when a PTP device is removed while it's chardev is open

--000000000000373e1905a3cb9ae3
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Team,

Red Hats kernel has a flaw in Precision Time Protocol (PTP), which can
cause a kernel panic with 'general protection fault' with below details.

A use-after-free flaw was found in Linux Kernels implementation of __fput.
When a (high privileged) process allocates a ptp device file (like
/dev/ptpX) and voluntarily goes to sleep. During this time if the
underlying device is removed (potential privilege escalation) by the user
with administrator privilege, it can cause a denial of service (DoS)
problem as the process wakes up to terminate and clean all attached files.
The system crashes due to the cdev structure being invalid (as already
freed) which is pointed to by the inode.

'CVE-2020-10690' was assigned by Red Hat Inc.

Upstream fix:
https://lore.kernel.org/linux-fsdevel/20191125125342.6189-1-vdronov@redhat.=
com/T/#u


Thank You
..
Rohit Keshri / Red Hat Product Security Team
01BC 858A 07B7 15C8 EF33 BFE2 2EEB 0CBC 84A4 4C2D

--000000000000373e1905a3cb9ae3--

