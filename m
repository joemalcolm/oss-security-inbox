Received: (qmail 27658 invoked by uid 550); 21 Jun 2022 18:28:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31897 invoked from network); 21 Jun 2022 17:42:10 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cloudlinux.com; s=google;
        h=mime-version:from:date:message-id:subject:to;
        bh=sOe9msNt+/Sjb84Gm2sPwTH1vr7RRkyLAGh1M4Z2Vg8=;
        b=RwI2zSt0txnkW34X517HG76u4vEY1TeIOLNlEcRfBjuu87JxEY7eiC5qUWsa1K26y3
         ZxylvqU6Q7tjuWXbZ1da/IAHwpZuHXnGcWvmu7KT+etz7p19IUKAee6lOaBAxnzfADIr
         ykRpPhS+5hRqDYTRdmKm12kMuohjDQWXdrbv7b/oYlQb75aet9cyiO+MrbiLfEWV+REe
         tpTP3miqu7BiR0VJXLtq0mIlWZdkTUBLML5un/LgFVUKrIYuYnO4kY8Z04JrYXCMKpmg
         z1xz5fehyQNw9XpR7tnVdWaY81CnsO9MKKXeOOgKRtdKtbxt9VX/hdyLiCUaEU9pVon8
         xFxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=sOe9msNt+/Sjb84Gm2sPwTH1vr7RRkyLAGh1M4Z2Vg8=;
        b=6SbTb4fBOU7KPmdtV7NqKCggBVUF6Kdw93qU3KCuHPD6ea3bYGkjHrYzs/jpUnbzs1
         j5orw939of87LWQNMxFL6BzWNYMsuf1At9H7acxJpjxSaZ/KLWH6UrhhIQsXujzkP8ew
         pXLx+iWEeHLG6li0tXQ+aSpuch/IcH/gqBfcMP+8JLRay7wReRwj7+eWb4WWoNERTyme
         HsOCwLk7bSwWXZ0LOhyK6eq0IzcnuVIzMqDMa2j2SDq4hfkRl33GKRMqhwhY1WnLeJFm
         s6Qi7KJ2BND2BCZUW3DaeKl1NGO+cZv4fhHztGgjHKqLL8zAhSOJnrjfaDC4OsbeWBPp
         6rIQ==
X-Gm-Message-State: AJIora+5Z4No7/hpZA7ycMbJYCNCYPCae84OBSc8qP/d8NdCtW5Kq7J1
	nSSv2mD7/dUBUUfI/nK2G0VvI+5fvgkxhVejrmPaP5FxTH1Zjw==
X-Google-Smtp-Source: AGRyM1sAdeXAg1U1G6TUOkD3j5LPT5QnUDMDTD+LL9npUNsPugCGYbmQ2MDb7XQXl2MiVS09gLWnd+EkGKrtvl7n+zo=
X-Received: by 2002:a81:a047:0:b0:317:8761:14f8 with SMTP id
 x68-20020a81a047000000b00317876114f8mr26390437ywg.469.1655833318265; Tue, 21
 Jun 2022 10:41:58 -0700 (PDT)
MIME-Version: 1.0
From: Igor Seletskiy <i@cloudlinux.com>
Date: Tue, 21 Jun 2022 10:41:22 -0700
Message-ID: <CA+-XxSF2JKURyb3o7Y4ZR1P20rEH7zOoeSzHfUJLj+m_G_3kcg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000be302f05e1f8bc56"
Subject: [oss-security] Request for comment: kmod signing by AlmaLinux OS Foundation

--000000000000be302f05e1f8bc56
Content-Type: text/plain; charset="UTF-8"

Hello list, I have a security-related question for the Linux community at
large.

AlmaLinux OS is a community rebuild of RHEL 8.x & RHEL 9.x done by the
non-profit AlmaLinux OS Foundation. The foundation is community-driven and
done for the benefit of the community. As part of its service, it has
signed shim, kernel & signs kmods that come as part of RHEL to provide
SecureBoot & ability to load kmods when secure boot is enabled. Note that
our shim is already signed and works without OEM/customers adding any keys
to the BIOS

Yet, the goal of the organization is to serve the community beyond where
RHEL servers, which might include the need to ship additional kernels &
kernel modules.

AlmaLinux technical team is considering starting signing:

1. Additional kernels (like kernel for RaspberryPi or the latest mainline
kernel)

2. Additional kernel modules from AlmaLinux OS Foundation sponsors.

We believe that such an approach might benefit the community as a whole.
Yet, we are mindful of security implications and want to ask for feedback
from the AlmaLinux community, the broader Linux community, as well as from
security experts.


At this moment we want to focus on kmod signing. Here are some of the
conditions that the AlmaLinux technical team considers to require

*The conditions would be: *1. The module should be GPLv2, published to
Github/available to all 2. AlmaLinux will publish the signed modules in its
main repository, maintaining an additional repository for such module 3.
The module can only come from sponsoring members 4. It has to be approved
by the AlmaLinux tech committee 5. Additionally, it might require the
approval of the board. 6. AlmaLinux OS would publish information for all
such modules built. 7. Require 3rd audit from vetted security audit vendors
(optional? how to deal with security issues/need for quick release
turnaround for security-related vulnerabilities/changes?)

We would appreciate feedback from the community.


Regards,
Igor Seletskiy @ AlmaLinux OS Foundation

--000000000000be302f05e1f8bc56--
