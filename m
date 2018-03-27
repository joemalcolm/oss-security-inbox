X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["580" "Tuesday" "27" "March" "2018" "14:50:32" "+0200" "Andrey Konovalov" "andreyknvl@gmail.com" "<CA+fCnZcF-sNgp=Z35B7SvktMsex3CKYh+VcBs_1me43ZkB6eOg@mail.gmail.com>" "19" "[oss-security] Linux kernel: syzkaller dashboard" nil nil nil "3" "2018032712:50:32" "[oss-security] Linux kernel: syzkaller dashboard" (number mark "U       andreyknvl@g Mar 27   19/580   " thread-indent "\"[oss-security] Linux kernel: syzkaller dashboard\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 31868 invoked by uid 550); 27 Mar 2018 12:50:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31822 invoked from network); 27 Mar 2018 12:50:45 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=8xJDNE0c/XESlIXDilay++Mx+FHIwBGPt8sivZJEFoI=;
        b=gvaHFGlitmFcrBiHwswAXhNk4YRuIWFhEcwogXBPl/v2QHFofycWuTL6O3+Jbvyz6E
         TB+lYml1n1TN2bc7Aicn7h4fM3C3JkAkVehmCYPfI/9PGL1tk+HQsVPL+girgFlq8oXI
         EK+vMt8SDsGX6NHiwHD0+ulD+72YMpGQoMjPNaJQA4FlrYaPTK1CTI2D3y8PR12sTIBu
         AtsGVUVkbG3TDgtqHt25edjXJKihGsq9Tq20Sxe/i55mLRr3+UDq/+h20pKZng9YVIV5
         jhjgbSDuh5AI76ow78ff3oExJTnJvcmkeMokWNNiHllJeM56tfRRK2blsulbQhr6pmB+
         ErLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=8xJDNE0c/XESlIXDilay++Mx+FHIwBGPt8sivZJEFoI=;
        b=hAxJmuTv0A2G/6VCmiHyuu2W0xCQ+MsDG5EG+Q2fPyiWelzqcExd2AT7V1jWuMAEF9
         OAYa+Bji7EciAiVTfYUpsKodIy3yReVM5UE0L9WgN7sT1sVisDQHkXdrhbCq7M5+MLci
         5T5gFMtQPLPpWWXp1pT95RyFN8NOvwTxDSvhJ2aVVLQ3mLyA7/OoNeSsEGB0mLtquCP3
         Yzyz557i8lBy1ATzMwjJI/UbL8ul0UjM1Y3jUxF9oCjUAb6/v4iycY+qr5s0tlueFcQ7
         il60rSfRoJ8++H5GunS6kEtjExtuoiDwd1x0qXNjEytWjOoTx+91M/xgd20wZXmEjoMY
         0baQ==
X-Gm-Message-State: AElRT7ErP2wchQKXUSniaEJ2c0EhPDfpUQesM5ADKytnl5VYKktPRAPc
	bAvU7WQGqbhJRpF/Jj9oV8iqpeNfhy49elaahxIEwFZe
X-Google-Smtp-Source: AG47ELtQ0tZmA3IPrma8LYpwPBzLyrPPKD+8QtlDiNbJYmcvWMCF4/p3VjLUhBbPN7dhggll6xJWDSdbHMIwQp9WNUY=
X-Received: by 10.80.220.73 with SMTP id y9mr33240974edk.176.1522155033102;
 Tue, 27 Mar 2018 05:50:33 -0700 (PDT)
MIME-Version: 1.0
From: Andrey Konovalov <andreyknvl@gmail.com>
Date: Tue, 27 Mar 2018 14:50:32 +0200
Message-ID: <CA+fCnZcF-sNgp=Z35B7SvktMsex3CKYh+VcBs_1me43ZkB6eOg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] Linux kernel: syzkaller dashboard

Hi!

Syzkaller dashboard is live:
https://syzkaller.appspot.com/

See the full announcement here:
https://lwn.net/Articles/749910/

Syzkaller [1] is an unsupervised coverage-guided kernel fuzzer, mostly
targeted at fuzzing the Linux kernel. Since some time ago, bugs found
by syzbot [2], a continuous fuzzing system for syzkaller, are
automatically reported to the kernel maintainers. The dashboard
provides a web interfaces for all the bugs reported by syzbot.

Thanks!

[1] https://github.com/google/syzkaller

[2] https://github.com/google/syzkaller/blob/master/docs/syzbot.md
