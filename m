Received: (qmail 9271 invoked by uid 550); 18 Nov 2022 10:54:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32065 invoked from network); 18 Nov 2022 03:59:22 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=01elNcFpgCtlWAdHEMnBlSE/txa9nqQLhh6aty5uMVU=;
        b=M2z7m2CegrjgiwBpt2Hak1tzJI5ogNwe1xeALUPvyG9JEXr0XJ97NUpHolk0ajj2Nh
         X+9T0GFib/l4fPYY2rwQlMPdi/ZFXI7HrrE6EhfVJi2ejZBB9plVP5i6OED/kpIrgFnC
         P7j9LiVQ3bgtBoDzDl5PbwgOBuGt8sbzPh0tSuYvH8NKU2zSNQr6mCXoTSbIRlHV9XKY
         VgR0qd2K2D58Al/y5IZ05vJy1XDvPQj3XIPIdtDd2/dWj8f0k7yfR6x0UAjGayMsVC8m
         e5BK6q+Gm4V3AIluMBXx8mW1FvOnmRCCKMDerUHfr8rJ/Z8IXiMmfqejXtUNxiaCyY2a
         7IOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=01elNcFpgCtlWAdHEMnBlSE/txa9nqQLhh6aty5uMVU=;
        b=fk1GXLJs1DWuCaKNmczFc0M3piMnZR/h2FkKROq1062sILeAQHVQFp9AGHq6REy9R/
         +hK/ok/WDmQdDZM2DAbnxdganiW+uIwcpR7psJ0QXhGjsp+HFqvgKgnFPQ05ba5JIM+u
         XRMGgLsW9xu6mHM3KxcCw0xrLMsCSGUe4bo/dTSyfYZqVBR0sJlEudyXvp3WQSUruJlL
         EIpN+JbcG90oKDuU8gDdlYkpHo60r5zUfIXSnHUgF6uh9AyxU6KOSWP9FkI7rHybF0w7
         Qmz2X/kNassI+zwj6pSpXT1h0dgOBSReZtLRuUVEviSWSEy1CzaNlb3ggTSPD3cQrJ4I
         L0cQ==
X-Gm-Message-State: ANoB5pnKewdfDnWzfkQ3hKjcVo05mmESxsM10VhTUNuKytg/pI1Q0S12
	MK9e4sLboG1PN0rJk4+y1KqXoDwwpc3331MKLmQh+yyXblhZXM5r
X-Google-Smtp-Source: AA0mqf5N/FIXt+F33Tf9cc+38Z5FuidSwuOJRt6bnV29SASFhAwnsCoL+Vi1hBqvRFyVrkrL4ktfcg0Aj2zat98zwMw=
X-Received: by 2002:a05:6870:89a1:b0:13c:45c8:ab01 with SMTP id
 f33-20020a05687089a100b0013c45c8ab01mr6025618oaq.189.1668743949659; Thu, 17
 Nov 2022 19:59:09 -0800 (PST)
MIME-Version: 1.0
From: Zheng Hacker <hackerzheng666@gmail.com>
Date: Fri, 18 Nov 2022 11:58:55 +0800
Message-ID: <CAJedcCyz-uNq+tyK+BqG0xCD9_WOOC8nta77Up7gaOBs+pfwyA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] Linux kernel: staging: rtl8712: A Use-after-Free/Double-Free bug in
 read_bbreg_hdl in drivers/staging/rtl8712/rtl8712_cmd.c

hi,
This is a bug I've found in linux kernel before 5.19.2, which is
in cmd_hdl_filter in drivers/staging/rtl8712/rtl8712_cmd.c, allows
attacker to launch Local Denial of Service attack and gain escalation
of privileges.
I reported it to linux kernel in 2022.8.29 and the upstream fixed it in
2022.09.06. Now the patch was opened to the public

## Root cause && possible exploit

This is a uaf / double free bug. Whenrtl8712 wireless networdk adapter
initialized, for example using command "ifconfig wlan0 up",
it calls netdev_open function, which final calls cmd_hdl_filter function.
As we can control the command code, we can trigger the vulnerabiliy.
After pcmd object was freed, we can use msg_msg heap spray to
get the object, and design the layout of it. By controlling the parambuf
address, we can leak infomation to pcmbuf, which will finally write to
adapater's memory. By using msg_msg tech we can also leak the information.
Then in r8712_free_cmd_obj funtion , as we have access to pcmd->parmbuf. Now
we have a Arbitrary Free bug. This is a powerful primitive and there is some
common skill after that.

## Fix

[1] https://lore.kernel.org/all/20220906132823.157986856@linuxfoundation.org/
[2] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=c53b3dcb9942b8ed7f81ee3921c4085d87070c73

## CVE

Now no CVE number is assigned for this issue.

## Timeline

2022-08-29: reported to security@kernel.org
2022-08-29: bug confirmed
2022-09-06: patch it
2022-09-06: patch released
2022-09-07: apply for a CVE number in MITRE
2022-09-29: reported to secalert@redhat.com
2022-11-18: Announced on oss-security lists.

## Credit

Zheng Wang(@xmzyshypnc) and Zhuorao Yang(@A1ex)

## Additional Information

This is a bug reported to Linux kernel. Although staging driver is not
a so important driver module in Linux. [1] This vulnerability has been
introduced as far as the driver was added in 2010. I've checked the
issue doesn't affect the vendor in the CNA-project list. But this
issue can affect othe company who use it as their rtl8712 adapter
driver module like D-link [2] . I  searched the related issue like
CVE-2021-28660. I think its NOTE description(NOTE: from the
perspective of kernel.org releases, CVE IDs are not normally used for
drivers/staging/* (unfinished work); however, system integrators may
have situations in which a drivers/staging issue is relevant to their
own customer base) is very appropriate for my situation.  This is a
long-existing issue as far as the driver module was added so I think
it's necessary to assign a CVE number so that anyone using it can fix
the bug.

[1] https://github.com/torvalds/linux/commit/2865d42c78a9121caad52cb02d1fbb7f5cdbc4ef
[2] https://cateee.net/lkddb/web-lkddb/R8712U.html


Best regards,
Zheng Wang
