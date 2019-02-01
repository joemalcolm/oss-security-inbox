X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["566" "Friday" "1" "February" "2019" "23:20:26" "+0100" "Jann Horn" "jannhorn@googlemail.com" "<CAG48ez1N30mTGj575XvEHQqrhOT+gF1yEEGpKAqw2dBMHwMxTA@mail.gmail.com>" "14" "[oss-security] Linux kernel: BPF spectre v1 mitigation bypass (CVE-2019-7308, fixed in 4.19.19 and 4.20.6)" "^Date:" nil nil "2" "2019020122:20:26" "[oss-security] Linux kernel: BPF spectre v1 mitigation bypass (CVE-2019-7308, fixed in 4.19.19 and 4.20.6)" (number mark "        jannhorn@goo Feb  1   14/566   " thread-indent "\"[oss-security] Linux kernel: BPF spectre v1 mitigation bypass (CVE-2019-7308, fixed in 4.19.19 and 4.20.6)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 4025 invoked by uid 550); 2 Feb 2019 08:50:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 14273 invoked from network); 1 Feb 2019 22:21:05 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=LSXcu3DvP/Ey0qEFnRGDPdXJJw2YVO1BLzpOkPV3o/k=;
        b=PJUMeYA+iYrQToBsdNlzD1wzHKLJ0ox/7/SIFxNbOhXsN4jtTcAfVPR8tBZ6SZMrGy
         GFcsIvocv9BfLkQKJYezYEGZLabonr7d6kOJBta/IPmz8207+ZDAVIsdRDlQX92Bv1fx
         1Eyw37jaPSefAcYyhjNiPfofaQof2rQIlIbF2A9u3JiLZMzaIi3batLyvKg/8Rga0J09
         1GFUSsFcjpF3Hg6tVxajQZQBSzlQ15eNdSfGrUlb/9V/2r3lFoXTxxtzrHUe1SLUnLyb
         ha1WGlwgaKUx2P3/DJQENJgDef5dhYMGYA6OGSvmGCuM4ME/M3mQy6jaLmvTqkhKvQEe
         kPpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=LSXcu3DvP/Ey0qEFnRGDPdXJJw2YVO1BLzpOkPV3o/k=;
        b=L30okI24BBbW9x2LiPG4++L1G7zFaAq1j+j1SP9JCtAjOqkrdPCuI2F7FHfX+elViz
         7stuXoUXD5xcuzOTdVSMk5uTlGc7UkwAMI77dke8SedL7TZCbcjdP7/KI9yy7wgypDtq
         bIMSs72/VsfCUqkBiRLBFvymh1AJRFW6A1sdzO8EO/qSlW3jJkCQBN0F5xtXMiVuPaxg
         5Rc6EwFZ08YxFTBDxE/g3Qb6yCXpTomUFJnepNtiJRK30lHFXk/aLpejazTTALTSb4Cd
         ioesdcRH8aRORm5vn3T5duzrSTFZD2CsLhbn+5iNyM1/ydmSmFq5b+4lOMjiJfCwAmWT
         3NJg==
X-Gm-Message-State: AHQUAub/ozHjP94hSuvC/7A8qUOYMZt5dFUZfh9+iNNlwqjp6+yflb3X
	Dj2X5ogYtgAbXw9SBbuWS6b+xmYY4SE=
X-Google-Smtp-Source: AHgI3IbZkLpSGrhPFMe8d2wLAmST9Id0kXs1c3RuLT3NN+lWY+V9hfn+iIF9vIkEH1SIDJimeuvx9w==
X-Received: by 2002:aca:6a02:: with SMTP id f2mr20654334oic.260.1549059653058;
        Fri, 01 Feb 2019 14:20:53 -0800 (PST)
X-Received: by 2002:a9d:4e06:: with SMTP id p6mr32091647otf.73.1549059652178;
 Fri, 01 Feb 2019 14:20:52 -0800 (PST)
MIME-Version: 1.0
X-Gmail-Original-Message-ID: <CAG48ez1N30mTGj575XvEHQqrhOT+gF1yEEGpKAqw2dBMHwMxTA@mail.gmail.com>
Message-ID: <CAG48ez1N30mTGj575XvEHQqrhOT+gF1yEEGpKAqw2dBMHwMxTA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Date: Fri, 1 Feb 2019 23:20:26 +0100
From: Jann Horn <jannhorn@googlemail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Linux kernel: BPF spectre v1 mitigation bypass (CVE-2019-7308, fixed
 in 4.19.19 and 4.20.6)
To: oss-security@lists.openwall.com

I discovered a bypass for the spectre v1 hardening in the eBPF engine
of the Linux kernel (which is exposed to unprivileged userspace since
kernel 4.4).

This is CVE-2019-7308. The issue has been fixed in 4.19.19 and 4.20.6
stable so far.

The main fix is
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=979d63d50c0c0f7bc537bf821e056cc9fe5abd38
, but it depends both on its parent commits and one ancestor that
fixes a new issue introduced by it.

Full bug report is at
<https://bugs.chromium.org/p/project-zero/issues/detail?id=1711>.
