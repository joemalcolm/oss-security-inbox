X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["648" "Tuesday" "30" "May" "2017" "21:12:52" "+0200" "Andrey Konovalov" "andreyknvl@google.com" "<CAAeHK+z89nmTPciwy5YyagE+0wRpssediCDDPU0RCutTb_+JKg@mail.gmail.com>" "14" "[oss-security] Linux kernel: CVE-2017-9074: out-of-bounds read in ip6_fragment" nil nil nil "5" "2017053019:12:52" "[oss-security] Linux kernel: CVE-2017-9074: out-of-bounds read in ip6_fragment" (number mark "U       andreyknvl@g May 30   14/648   " thread-indent "\"[oss-security] Linux kernel: CVE-2017-9074: out-of-bounds read in ip6_fragment\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32019 invoked by uid 550); 30 May 2017 19:13:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31963 invoked from network); 30 May 2017 19:13:05 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=tfdhOtHWgSJZE+w8kiLPxGe/L/N23mw7XqTcwKCYtAo=;
        b=YZkeyAg25CFI485xOLrRFOekuVh7P6rgZ/lImORalkFhX17FNjbW8RtMZO7tKvmJlx
         dJuyhHeML7bxRs0xmRFzwnYHP60lpXSqzQAb1+0DGgJpC5N5cf5Skmu8oJ1vmXcvwvVc
         zojNTFL57lulsEanuLgDBHanyQ8uzQvNru1o4gmjR7XTurAgoeTR0+85smhjZjLLyz2z
         v9gaMZyZjia5Sj3wfsmrMg3/EWhMiIQax+AkBrt+7cVBt67o/3ELD2zjAiwMOotpZNxY
         YYrJN1RU/NiJFNbg/MMowa0dXszOrjxvPWYX48rMHwcs6LqOvxqpPVaNnowPp3vHVJlR
         OXuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=tfdhOtHWgSJZE+w8kiLPxGe/L/N23mw7XqTcwKCYtAo=;
        b=bUYH2HQz8otTUwl8osUSc0/EQBiBykHNHmizHJ21CA7q+xj/SYop0lYhhfKq3ZQy+M
         qp8qpENIVgVbeH8lTIRfmCcrg1/ltghDtUX84DBTpLbOrY5E/h6flhm0Fpjli6ypibG7
         L8g3Dx+z2zOfek1vca2sTDSXtMyouvhh61euFzfjhF9mhtzOl3/SNTQqbEMnkPk/YwWb
         76DNz47pyUmub3M8IUefafM3ubOIJT/yV0Fpx70TPL0M+SqA+wob2i21V4qYkS3DeQ17
         16UWxQdPAGMlgRFPFkd3/AfOA/nPV2YPubDBs7kqJz2TwMcT/yj2EMbSD7fxyp/er5Hv
         x/3Q==
X-Gm-Message-State: AODbwcDjJKPC2YoPX5WY4QQUpfTgvBlcSqaRdMOKpGaAH+XGjKmf+5lC
	+bcRuJ1Gu9jZsxfGqCnXSkWUpt8knyA3
X-Received: by 10.37.246.28 with SMTP id t28mr50997712ybd.43.1496171573374;
 Tue, 30 May 2017 12:12:53 -0700 (PDT)
MIME-Version: 1.0
From: Andrey Konovalov <andreyknvl@google.com>
Date: Tue, 30 May 2017 21:12:52 +0200
Message-ID: <CAAeHK+z89nmTPciwy5YyagE+0wRpssediCDDPU0RCutTb_+JKg@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: Dmitry Vyukov <dvyukov@google.com>, Kostya Serebryany <kcc@google.com>
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] Linux kernel: CVE-2017-9074: out-of-bounds read in ip6_fragment

The following CVE was assigned for an out-of-bounds read in IPv6 socket buffers.

The bug was found with syzkaller.

* CVE-2017-9074

The IPv6 fragmentation implementation in the Linux kernel through
4.11.1 does not consider that the nexthdr field may be associated with
an invalid option, which allows local users to cause a denial of
service (out-of-bounds read and BUG) or possibly have unspecified
other impact via crafted socket and send system calls.

CVE: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-9074
Fix: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=2423496af35d94a87156b063ea5cedffc10a70a1
