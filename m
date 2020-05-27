X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["914" "Wednesday" "27" "May" "2020" "09:44:50" "+0200" "Ondrej Mosnacek" "omosnace@redhat.com" "<CAFqZXNvNR3FWeNz5eTPmG0HbB8dZF6_xQcOeUNowo-a+93QwdA@mail.gmail.com>" "30" "[oss-security] CVE-2020-10751 - Linux kernel: SELinux netlink permission check bypass" nil nil nil "5" "2020052707:44:50" "[oss-security] CVE-2020-10751 - Linux kernel: SELinux netlink permission check bypass" (number mark "U       omosnace@red May 27   30/914   " thread-indent "\"[oss-security] CVE-2020-10751 - Linux kernel: SELinux netlink permission check bypass\"\n") "<CAFqZXNsufm1HkGKSxONW9875aOUr5NeKT+Ny-8RaNx87gRJKAw@mail.gmail.com>" ("<CAFqZXNsufm1HkGKSxONW9875aOUr5NeKT+Ny-8RaNx87gRJKAw@mail.gmail.com>") nil nil nil nil nil nil nil "[oss-security] CVE-2020-10751 - Linux kernel: SELinux netlink permission check bypass" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 16114 invoked by uid 550); 27 May 2020 09:59:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7758 invoked from network); 27 May 2020 07:45:18 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1590565507;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=yYwzgEWnFtDrsmVmSzhWE9Fi9hZ1HD+v+6eaFSV1a80=;
	b=VRj83FWduXSmkiqrjRUgdjB2ASfkZ3ZY8NxTQYUNoesWvhZzBspvFpGtBRDzYqaFujyAJJ
	69F4hso/RUMiFKS/ulshYF0TnltHi/VcmcumYcuYuNYTnGCQY+26/uKIDaqEOAipXH2q9b
	J2d810gTsAj7HN4L6SkmPHwAGEMtIrI=
X-MC-Unique: Kda0iLs9MX-zpsa0PEulhA-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=yYwzgEWnFtDrsmVmSzhWE9Fi9hZ1HD+v+6eaFSV1a80=;
        b=Cv6AX8rC7lPWZLuQWK0GdYSb5tnpaoQCiC+wG2pIP62JMSGi3F0FNj4jfHCwclEqN7
         9Ie0Q1MjMiTAObMMNnhtku95WRmXJfsagB8AbW6w//2v6cOZQC8acgFVPSGWgYgoTRbm
         aAgLFnJULmu3uveAmvARor9w09vyHaM28ULyqjxeWJe1buDI0g98BCq20W5Bh0yCKoxK
         pg6NEL2BjgYNh0Ue2JjS4susICoSuZibMTPnDxA5bpllT7YXg5jLuMiMvVDBssVr4MU3
         p/wdtFUPIC15Q/5P6DXtwfhAR/y1BrwAEU2uVaWhFKAe4D+fHccBhHmV4XBuCrosEg56
         dKuw==
X-Gm-Message-State: AOAM533ZWx5M1/+hqGhQBoxpeeZqXXEfktlYk3+UVswyOp9tVir1ZuSk
	bfZpoGcW0mWIUBLrVpAM7e4YzvCvNOEhIvHMgb05OVAQrbNqFLOlx/ybL3Q30f8+zyZUS5jFYy7
	mVPWjkX0kD+iOebWP/9wdua9zebeI0HwuRYb8JQXq5XRC
X-Received: by 2002:aca:230e:: with SMTP id e14mr1838820oie.127.1590565501408;
        Wed, 27 May 2020 00:45:01 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzrB+1TyNsxMOszftQ1ex2VT/dDB8T2ZZ1Dt8XPwOWMb4tdBzcqWqw97CSOapqN2WTuAIwEq7Kh0d+0/Kgj7Mw=
X-Received: by 2002:aca:230e:: with SMTP id e14mr1838807oie.127.1590565501161;
 Wed, 27 May 2020 00:45:01 -0700 (PDT)
MIME-Version: 1.0
References: <CAFqZXNsufm1HkGKSxONW9875aOUr5NeKT+Ny-8RaNx87gRJKAw@mail.gmail.com>
In-Reply-To: <CAFqZXNsufm1HkGKSxONW9875aOUr5NeKT+Ny-8RaNx87gRJKAw@mail.gmail.com>
From: Ondrej Mosnacek <omosnace@redhat.com>
Date: Wed, 27 May 2020 09:44:50 +0200
Message-ID: <CAFqZXNvNR3FWeNz5eTPmG0HbB8dZF6_xQcOeUNowo-a+93QwdA@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: Paul Moore <paul@paul-moore.com>, Stephen Smalley <stephen.smalley.work@gmail.com>, 
	Jeff Vander Stoep <jeffv@google.com>, Wade Mealing <wmealing@redhat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2020-10751 - Linux kernel: SELinux netlink permission check bypass

(Resending with correct ML address...)

Hello,

This flaw has already been announced and described here:
https://www.openwall.com/lists/oss-security/2020/04/30/5

This is just a note to let you know that it has been assigned a
CVE-2020-10751 upon request from Red Hat.

The flaw is fixed by the following upstream commit:

commit fb73974172ffaaf57a7c42f35424d9aece1a5af6
Author: Paul Moore <paul@paul-moore.com>
Date:   Tue Apr 28 09:59:02 2020 -0400

   selinux: properly handle multiple messages in selinux_netlink_send()

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=fb73974172ffaaf57a7c42f35424d9aece1a5af6

The flaw dates back at least to Linux-2.6.12-rc2, so likely all
versions of Linux currently in use are affected.

RH tracker: https://bugzilla.redhat.com/show_bug.cgi?id=1839634

-- 
Ondrej Mosnacek
Software Engineer, Platform Security - SELinux kernel,
Red Hat, Inc.

