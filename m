Received: (qmail 30366 invoked by uid 550); 23 Oct 2022 05:51:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30342 invoked from network); 23 Oct 2022 05:51:54 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=1U2ilj/XEVcRMnKBbE6OuctHglCLx5LWp9xuKeDUgFk=;
        b=guWF4FFimGla+66tLQsAaohMFyikrOzdFYKKoaSj6Jvf1v2TmBroW2s0WEByIs3cON
         8Be+kt4InnaS3Tvv7ElZdoCmYHXHANyECrAgWcAasgDaXuNQ+yF3/CN6uyK/42/6tjFC
         ZtcUS139OVqJ9HNI1fB/N1iWWra0HWqR0LchBNp8oMFLY/ca/l4lgOJ5UTABa0+KGjwq
         P4SSg6EHhwQBv65SqfggcO78VxM1wSRFcMvBy7usExKNLceBpUjDQ3pm2D5BXQH0VQKV
         ZAgeJCM3pI/MzJe3lBkjpmr1C/pm87X1atrsvF4pU9usIM+maZUMsp4mczgU8Gx9mVlr
         Q8qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1U2ilj/XEVcRMnKBbE6OuctHglCLx5LWp9xuKeDUgFk=;
        b=uIAeHogllqxlXkSM4GDRqfItbf/vex7Uw9175akNXHHd56ApS5fK33a3gQVcVKLSIz
         vWRLg9jFNzRVuOsPg5Rkj5wG1E1qMzOIkLp35+oIBHQNDIdPskl1Tj/LMRJFD1miwEni
         7uqZ67THdpLkn0QLzIk5ugvv4TArVXjdG/ATL31TYCwSRm5E7upxIk1OXfWKFYIR6WQF
         f/0zLv7/z1x1TX6zuTv4FOH9TQK+64svDyb7EHMuPDOA7A/LcoyXgeqG8LAyuRZQWBtr
         /TaivrMagWGXwzoHWRGv2FyKqE81jZtuR/Kc8092CW5nyRPeLfCfbBfBf0ZR7dv44wgQ
         +FaA==
X-Gm-Message-State: ACrzQf21BTq5ug0W/pJlYUaTATqcl+17ct+MpolUxFCs/UTrUpJTaYte
	rOHALEUuc+H8XaRaiJiuFBqOpRkwY8yhVzwGZKSkj4EnG3LN7g==
X-Google-Smtp-Source: AMsMyM6oD0TYy+WzCqe5rJMhhNptVVOYa2+a22uqd8+nDOew8WpX9Sf/5yC1xybzsN+lr8bzINLuP8jQfMEYBsQt5A8=
X-Received: by 2002:a25:c8c4:0:b0:6c0:c896:1208 with SMTP id
 y187-20020a25c8c4000000b006c0c8961208mr24106047ybf.494.1666504301785; Sat, 22
 Oct 2022 22:51:41 -0700 (PDT)
MIME-Version: 1.0
From: butt3rflyh4ck <butterflyhuangxx@gmail.com>
Date: Sun, 23 Oct 2022 13:51:31 +0800
Message-ID: <CAFcO6XNdzVKWQ3GEDvUxCTuSiauJU-qZT1yMMoKWEZV-cX5S4A@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] Linux kernel: net: mctp: A Use-After-Free bug in
 mctp_sk_unhash in net/mctp/af_mctp.c

Hi, there is a Use-After-Free bug in mctp_sk_unhash in
net/mctp/af_mctp.c in the last Linux kernel upstream.  An unprivileged
the user  reproduced it with new namespaces.It would cause Local Privilege
Escalation(LPE). It was introduced in v5.18.0, commit is
63ed1aab3d40aa61aaa66819bdce9377ac7f40fa. It affected all the way up
to upstream v6.0.0 and stable. Unfortunately, the mctp kernel module
is not automatically loaded.
I have reported to secuirty@kernel.org a month ago and Now the patch
was opened to the public.

##Root Cause
The bug was introduced in commit
63ed1aab3d40aa61aaa66819bdce9377ac7f40fa. It add
SIOCMCTP{ALLOC,DROP}TAG ioctls for tag control.This change adds a
couple of new ioctls for mctp sockets: SIOCMCTPALLOCTAG and
SIOCMCTPDROPTAG.
where a simultaneous DROPTAG ioctl and socket close may race, as we
attempt to remove a key from lists twice, and perform an unref for
each removal operation. This may result in a uaf when we attempt the
second unref.

##Fix
1.https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=3a732b46736cd8a29092e4b0b1a9ba83e672bf89

## CVE
Now no CVE number is assigned for this issue.

##Timeline
2022-9-26: reported to security@kernel.org.
2022-9-26: bug confirmed.
2022-10-06: patch it.
2022-10-12: patch released.
2022-10-12: reported to secalert@redhat.com.
2022-10-23: Announced on oss-security lists.

## Credit
this bus is reported by Active Defense Lab of Venustech.



Regards,
 butt3rflyh4ck.


--
Active Defense Lab of Venustech
