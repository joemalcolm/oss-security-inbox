X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["859" "Sunday" "29" "December" "2019" "18:47:27" "+0100" "Frank Morgner" "frankmorgner@gmail.com" nil "22" nil "^Cc:" nil nil "12" nil nil (number mark "        frankmorgner Dec 29   22/859   " thread-indent "\"[oss-security] OpenSC 0.20.0 released\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] OpenSC 0.20.0 released" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 23754 invoked by uid 550); 29 Dec 2019 20:42:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 16311 invoked from network); 29 Dec 2019 17:47:40 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=LbtP3ocvRzQb7hA0yhwRYOPs5rsLbz27OrjVCXgnkSI=;
        b=qsUf4r09k4z1zlONELaV1wxEB6AxxUcWndDDNb4i818a3YexvPOeNq9k0tkdPP+whq
         rhabV1+N82WlCXmQ9wuo6V++CJclYcglvb7xTUDkRhLzl4rDifzhWX2PB5hNZAjD+78H
         /SKCEw1Lk8WZQv3L3Mg+HHhO5wPuq9n3snY9G+YbI09xX4GV7UAldj62FxEmGOChOzqa
         Z0Wf032q7rijqe7DJixMdUOxoaLYokl4d1DPbyrmGc52vMJ8voCK+L7NDexMNBkroKPb
         6HNEWlFEQYuNM5pxMUonKeJMgYsOf/R5RPpDUB12aAlsBKvWU5EVdEaTxNwYwaj4yihA
         WX/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=LbtP3ocvRzQb7hA0yhwRYOPs5rsLbz27OrjVCXgnkSI=;
        b=CgNOXBsKSSK0gSciAoSpzETvwWLZYh0H/807vkHxXn9b7VYn7mnSDuODdyDmSAsvPU
         oamLsy8Gy7ORuo4qiRh2GkGlcbp58czRI9RVGiEOIcYfdS5qtYTloRG4fqxnKGWdOwfG
         hxPiM288LZ2X5zMVide5IHzx4dVBlnzTfBzzC4VcaFFngysw6Q6nbpck2ZFnvjU/CC80
         to2UggMf4pJ5KrQwNjBZxreBsmSUR0QT13h/fpki8ikucv6x/VKtF9+YzXiqNV1GzGZ6
         wOcm5DneqMuMFtC5egIP48/JFTDmBgVDcDlWgPI1lNbOeQ//pi6FJ/8SwS30CreDbgrU
         imZw==
X-Gm-Message-State: APjAAAUwegPiDpWrnLXAamLr7gCbiNjfJSL1updXPo10yinqPryFv5tp
	xPeED0A4xDRt1yLZXNBUc4QDTRqNMXzg4A05Hmg=
X-Google-Smtp-Source: APXvYqxLAUyposDkpo+JgA/e4mjqGC7925RC7bX6BQyn4sS5vIRJRpUHog0H3gqieKdFB0otP/4F8gwfEjHKHFZYyao=
X-Received: by 2002:a92:405a:: with SMTP id n87mr54271197ila.299.1577641648515;
 Sun, 29 Dec 2019 09:47:28 -0800 (PST)
MIME-Version: 1.0
Message-ID: <CAO8bUynPUPExH92au4cajrVW3xkHm3AjUnYzuHoS_fApMzc4bg@mail.gmail.com>
Content-Type: multipart/alternative; boundary="0000000000000af016059adb5235"
Cc: oss-security@lists.openwall.com
Date: Sun, 29 Dec 2019 18:47:27 +0100
From: Frank Morgner <frankmorgner@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] OpenSC 0.20.0 released
To: OpenSC Development <opensc-devel@lists.sourceforge.net>, 
	opensc-announce@lists.sourceforge.net

--0000000000000af016059adb5235
Content-Type: text/plain; charset="UTF-8"

Hi all!

I'm happy to finally announce the new release 0.20.0 of OpenSC. You can
read a full summary of the changes and get the release binaries on GitHub
<https://github.com/OpenSC/OpenSC/releases/tag/0.20.0>.

We've extended our continuous testing by fuzzing the code with OSS-Fuzz
<https://google.github.io/oss-fuzz>. It is running billions of tests each
weak and has found around 100 unique crashes, most notable the security
issues tracked as CVE-2019-6502, CVE-2019-15946, CVE-2019-15945,
CVE-2019-19480, CVE-2019-19481 and CVE-2019-19479. Getting our hands on all
the problems reported by the fuzzing was very challenging. Special thanks
to Jakub Jelen, who spend many hours on analyzing and fixing many of the
issues.

Regards,
Frank Morgner.

--0000000000000af016059adb5235--
