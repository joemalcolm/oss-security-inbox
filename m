Received: (qmail 22185 invoked by uid 550); 10 Nov 2022 13:45:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18230 invoked from network); 10 Nov 2022 03:43:04 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dgl-cx.20210112.gappssmtp.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=LGlVh1yAYW8wyImYvZMXZJb+X6zGo4+ygpfPZIYfRqc=;
        b=cFqEQ6jvAxrmupVQGn1Lq8nTv8/JiiTB9jIidzNDlx2PWABSiHmOunllTnu1STVUC8
         fGo7B18K8t4Ywk8QOHxHYn47tjOgK/2Iu75w16uO43GezvgK6jNeU4lh8IPl3xHT644a
         wnWdE/N0NGLbKqYpr1iiLxFJsumjQTTTEklUULEqFosFAS7rbD4t1Yy6dAZP+CwYARSs
         xvCw+FBRq2/tfywfXUJaNbQejtFAeqhMGZVwsgURIwQwv+f/gU5LcY2ZKFzuyq/qDd/w
         EBwLv020OZuZhvEqQA+5va9hI8rNt+mWg6nrMiLdZLydoPMEp2P6TAxeNdRchOuqsIAZ
         Ni0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LGlVh1yAYW8wyImYvZMXZJb+X6zGo4+ygpfPZIYfRqc=;
        b=H8Fa1ZjNL/oJ/FdKHonhJUxKtzbxFQ4avzN3KrRoiKC5ggc1Bb7pq8fkojXCbiHqE6
         2wwdAF0YPlq2o9f6yeteIsJ3UW67YXlk/kJ0XqrAXEPzOb165nU2eqggApEaNmLWWtgw
         f4WiWHrEfYNWG0MMM9oiqvhZs9oMEw3Ikp3Zc/CrkFZoXghRzLjLhXd7rF/D8H93PuwS
         kDCBCj+DYCIZA5pWY06u4ozGfnWaCNLs9Iu8cuY++RfKJvXGjo0OxGfZEw9vQKcb5pfu
         rr6hYszLpWWvGiRIiOiqVw80vy7MLtIOUHC8SseYS5MsmDjEbA99spWZ2MMjKZkuKo3i
         +fww==
X-Gm-Message-State: ACrzQf38ud621CVRgX7fuafmkdxO7Bnz0Oo6Fo3NNCY2COKs54Ihremp
	LrlFtqoCGdxG5w0U1S60pDpA55mqjE/CmSWMFkgUlMuXojru4g==
X-Google-Smtp-Source: AMsMyM5y6tO+JGBFy3Kp0aOzZ4wi/BBsnJpQdh19ss2xTH1ZgK6ZFNlVslFrfplv3fmHhYsybhQkOtsSBrz6I/ifgek=
X-Received: by 2002:a25:d8d7:0:b0:6ca:f81a:8ec0 with SMTP id
 p206-20020a25d8d7000000b006caf81a8ec0mr59736889ybg.446.1668051772357; Wed, 09
 Nov 2022 19:42:52 -0800 (PST)
MIME-Version: 1.0
From: David Leadbeater <dgl@dgl.cx>
Date: Thu, 10 Nov 2022 14:42:41 +1100
Message-ID: <CAP9KPhDsQSfQ5Y=uDS+x3s4SDBEHqkLaHLghrBVEpf3NETyQyQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2022-45063: xterm <375 code execution via font ops

xterm before patch 375 can enable an RCE under certain conditions.

Fix:

Upgrade to xterm patch #375
https://invisible-island.net/xterm/xterm.log.html

Mitigation:

Set this Xresource:
XTerm*allowFontOps: false

Details:

The issue is in the OSC 50 sequence, which is for setting and querying
the font. If a given font does not exist, it is not set, but a query
will return the name that was set. Control characters can't be
included, but the response string can be terminated with ^G. This
essentially gives us a primitive for echoing text back to the terminal
and ending it with ^G.

It so happens ^G is in Zsh when in vi line editing mode bound to
"list-expand". Which can run commands as part of the expansion leading
to command execution without pressing enter!

This does mean to exploit this vulnerability the user needs to be
using Zsh in vi line editing mode (usually via $EDITOR having "vi" in
it). While somewhat obscure this is not a totally unknown
configuration.

In that configuration, something like:
printf "\e]50;i\$(touch /tmp/hack-like-its-1999)\a\e]50;?\a" > cve-2022-45063
cat cve-2022-45063  # or another way to deliver this to the victim

Will touch that file. It will leave the line on the user's screen;
I'll leave it as an exercise for the reader to use the vi line editing
commands to hide the evidence.

Debian, Red Hat and others disable font ops by default (see some
good foresight at[1] or this very list[2]), but users can re-enable them
via a configuration option or menu. Additionally upstream xterm does
not disable them by default, so some distributions include a
vulnerable default configuration.

This has been assigned CVE-2022-45063.

David


[1]: https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=510030
[2]: https://www.openwall.com/lists/oss-security/2015/09/20/2 towards the end.
