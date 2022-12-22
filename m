Received: (qmail 26486 invoked by uid 550); 22 Dec 2022 07:37:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26457 invoked from network); 22 Dec 2022 07:37:03 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ui5I7dY9UW2d5vfuYQQSmGZ8Fwg0288yl/I4g/OlDGI=;
        b=nd5NyJw6GfbVOkXQT6XZs6pgvcsb5cvxkG2TiScSERxhDFUqr4Zl3HlC732tzxl6rP
         fAcD3riQQ2ZYoCGe9V99967u/aRLFYCgA0EAlk8kLGbCUKlXEWV9joVFbMjl0hYmA/ig
         Y2cUcmF6psYM6CZjXMiPcI/5EmdBG1LMhXGykioNBObYlE3mBHApBWc0BHClvkzl7r6N
         gCWon1aUGRLX3OgGWLusGQp7EBG7zOb++RhT/lqRoOxr5yTfwl3QRpGN+Pkj86ZEmqd1
         wE2mZXSDCp6nM2my+ts1JPYvMUgqgO9Jb5Glm6cYnbnQ2j06iYu0d9k02/JkPFXYwTtl
         JIyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ui5I7dY9UW2d5vfuYQQSmGZ8Fwg0288yl/I4g/OlDGI=;
        b=0Eo3GUzSkRvuxMMyiRk6ojD64DAVSxyiHN22or9FKcJCRHXa3xcQEBDm7BJED+8cDF
         ro8hI5aU9iRA9l2BrmPIMG5uRNffLIMm8+ZWGLwc94Mzib0pMpcswqEHrdWwIQXiUo7F
         L8c3ZKSQz8C0osGb+VDWyQoX6QoF27xaSeqTTHP3jdYjyGFJX4ZK3lPk/AaiUv/Ahwf4
         kzGB21xWx4KTgkJtsPvRfgcf+9dtoCqy7ycmA8ENU5JQav4XYSxZuSgbS9oO4U9RF6pk
         reMzUZuZaDKLmQpPzkpuvWNxHfFvuqro0KI/eZw5MD87L1RwvcDSimlOQ1YXPwNaAG9j
         Cg9A==
X-Gm-Message-State: AFqh2ko7VCLLXbULdKy4XPOWTs4p7sT0hVfXpYPEGVP6W0A3aRf7tPUC
	pe9nhj2U4ZeA77Cc0pRYsKt9hXu0Z19lfMyMGnxau+clATgGW76y
X-Google-Smtp-Source: AMrXdXtsAz9rvydcPAMaWcdmqvASjlWzGzAuiYH0u+ja8Y4IvR57WXJiqnylt7vCS52FTwSH8XoU0wlLyJ1E8fwkQHg=
X-Received: by 2002:a9d:162:0:b0:673:b0f9:285a with SMTP id
 89-20020a9d0162000000b00673b0f9285amr271501otu.342.1671694610441; Wed, 21 Dec
 2022 23:36:50 -0800 (PST)
MIME-Version: 1.0
References: <CACT4Y+aqb9V=WO0gsN1DgqimrjHiY3x+KvKGiz7b95jh9gubhw@mail.gmail.com>
 <Y6NBGsQ+7FAaWuv/@itl-email> <cad6e3380e53431ae91d5a3b520e59a59043ab90@opteya.com>
In-Reply-To: <cad6e3380e53431ae91d5a3b520e59a59043ab90@opteya.com>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Thu, 22 Dec 2022 08:36:39 +0100
Message-ID: <CACT4Y+YS3U8DQrFAaznZfxXRv5H9=xqe-PHNfiDx1LdrSuNVxQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] [Linux] /proc/pid/stat parsing bugs

On Wed, 21 Dec 2022 at 19:25, Yann Droneaud <ydroneaud@opteya.com> wrote:
>
> Hi,
>
> 21 d=C3=A9cembre 2022 =C3=A0 18:59 "Demi Marie Obenour" <demi@invisibleth=
ingslab.com> a =C3=A9crit:
> > On Wed, Dec 21, 2022 at 06:13:17PM +0100, Dmitry Vyukov wrote:
> >
> > >
> > > Hello,
> > >
> > >  This is not a single vulnerability, the list of affected software is
> > >  large, but it's not a security issue for all of it.
> > >
> > >  It occurred to me that most of the Linux procfs /proc/pid/stat and
> > >  /proc/pid/task/tid/stat parsing code out there is buggy. The fine
> > >  contains a set of numbers about the task:
> > >  https://man7.org/linux/man-pages/man5/proc.5.html
> > >
> > >  e.g. $ cat /proc/self/stat
> > >  1715376 (cat) R 1544883 1715376 1544883 34819 1715376 4194304 106 0 0
> > >  0 0 0 0 0 20 0 1 0 42505561 9207808 237 18446744073709551615
> > >  93955355631616 93955355651497 140737444557056 0 0 0 0 0 0 0 0 0 17 36
> > >  0 0 0 0 0 93955355667504 93955355669120 93955385581568 1407374445597=
45
> > >  140737444559765 140737444559765 140737444564971 0
> > >
> > >  Most of the code splits it by space and takes an N-th field.
> > >  The problem is that the process name "(cat)" can contain spaces (and
> > >  brackets). Potentially some important software (containers/sandboxes)
> > >  can be tricked into getting wrong data, and I've seen cases close to
> > >  stack overflows (buffer for a fixed number of fields is allocated on
> > >  stack).
> > >
> > >  Some examples:
> > >  OpenJDK:
> > >  https://sourcegraph.com/github.com/openjdk/jdk/-/blob/src/jdk.manage=
ment/unix/native/libmanagement_ext/OperatingSystemImpl.c?L133-139
> > >  https://sourcegraph.com/github.com/openjdk/jdk8u/-/blob/jdk/src/sola=
ris/native/sun/management/OperatingSystemImpl.c?L223-229
> > >
> > >  Ansible:
> > >  https://sourcegraph.com/github.com/ansible/ansible/-/blob/lib/ansibl=
e/modules/yum.py?L507-510
> > >
> > >  Libuv:
> > >  https://sourcegraph.com/github.com/libuv/libuv/-/blob/src/unix/linux=
.c?L674-701
> > >
> > >  bdwgc:
> > >  https://sourcegraph.com/github.com/mono/linux-packaging-mono/-/blob/=
external/bdwgc/os_dep.c?L1138-1155
> > >
> > >  But really most of the code that does it:
> > >  https://sourcegraph.com/search?q=3Dcontext:global+/%5C%22%5C/proc%5C=
/.*%5C/stat%5C%22/
> > >
> > >  The only way to parse it is to do strrchr(')') first (fortunately it
> > >  contains just one unescaped string).
> > >
> > >  Thanks
> > >
> >
> > Should Linux be patched to somehow escape the spaces, or replace them
> > with something else? /proc/pid/status is even harder to parse robustly.
>
> It might be difficult because of Linux's policy to not break userspace AB=
I.
>
> For example, I've suggested some sort of escaping on /proc/net/unix, and
> it was not welcomed.
>
> https://lore.kernel.org/all/20220406102213.2020784-1-ydroneaud@opteya.com/
>
> In a follow up, I've added a PoC for injecting fake entries in /proc/net/=
unix
>
> https://lore.kernel.org/all/8a87957e-4d33-9351-ae74-243441cb03cd@opteya.c=
om/
>
> I didn't found a way to abuse this issue: no vulnerability, no need for
> a change that would break userspace ABI.

Somebody filed a Debian bug to fix the kernel:
https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=3D1024811
(kernel docs claim the name can be parsed with %s, but it can't)

> Regards.
>
> --
> Yann Droneaud
> OPTEYA
