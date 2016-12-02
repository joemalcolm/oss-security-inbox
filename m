X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["280" "Saturday" "3" "December" "2016" "00:29:12" "+0100" "Andrey Konovalov" "andreyknvl@google.com" "<CAAeHK+yMo_kYnhJf_rJX7tNkBefWXuKMsXTF1aB6-RqsLZn4ZQ@mail.gmail.com>" "11" "[oss-security] CVE Request: Linux: signed overflows for SO_{SND|RCV}BUFFORCE" nil nil nil "12" "2016120223:29:12" "[oss-security] CVE Request: Linux: signed overflows for SO_{SND|RCV}BUFFORCE" (number mark "U       andreyknvl@g Dec  3   11/280   " thread-indent "\"[oss-security] CVE Request: Linux: signed overflows for SO_{SND|RCV}BUFFORCE\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30438 invoked by uid 550); 2 Dec 2016 23:32:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29768 invoked from network); 2 Dec 2016 23:29:24 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=HNvmb/qbKessJg5Gs+dAvejOTPKos4B5uZ4DUzsoYa8=;
        b=CDry47P+zQxB/X9fbsBgeppN7o3KWddrVqGitdNU/stGiGbOvlVxPrAJEEFkA4sW2+
         bJebyWdaweuUDRa5H4oKx7QBgGuTSyceyEIcdHTdpUALz3bFMKk8CD3aYClV02Dixoqo
         w0yYdvGtEg3ZMhrFes6/aOYgU9iotIUVW2MOgkO1cZ5grU5zIW1KxGz5U688m/XlD+98
         eRQLTYj7/d9s5RRBFNKBlhJMnIQZeihlCMOrvBeVttqR4OZ12vn03z0ZqLzyyXQY4Ovv
         X1EnwV89fppOFa1dywHUeAw8QPhrdvvsTR96IBc2czw5kAvI8sjbFvFNqIH0z4HEwSkz
         ATzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=HNvmb/qbKessJg5Gs+dAvejOTPKos4B5uZ4DUzsoYa8=;
        b=HG39SpOS6+cq/IeGsM51aJ2atitcOwXa2e2P9Rhae26tIXLQmSD7DEDK7L9f4Zne4j
         KBhhdHreysFiKyuT+FwGr96emzh2Rx/7ODz3U6mZuZNGX1NuvLPhWBKr0fzcG+3B6vdQ
         Boz4OcZnOLA2vaWOkxicsLQCDyJQbGkZ3P/VYDmKTp95OziYzG5mVodK8C/HQ1sG9A69
         dqkzGvk11Wtt+q4GfniSVyMHT1F0eEXZgJi/ybLP07SusTagCkKQ5SdntgtGJlrVVRPw
         Iy9/gIqHunrHw6fdkeYAYDmIDEW4SlvWtZYZS7ZZ4R7TpNfrOrl24G6hSAV9WVd3WScg
         n8KQ==
X-Gm-Message-State: AKaTC00i/J2D8zPHBMejPLtVuXib8aMKrS414XkZnamABmTx35fPB6myvW/bEe48Gu4FZX2mrK/e0u9lHfXyyj2L
X-Received: by 10.25.195.194 with SMTP id t185mr14171552lff.13.1480721352890;
 Fri, 02 Dec 2016 15:29:12 -0800 (PST)
MIME-Version: 1.0
From: Andrey Konovalov <andreyknvl@google.com>
Date: Sat, 3 Dec 2016 00:29:12 +0100
Message-ID: <CAAeHK+yMo_kYnhJf_rJX7tNkBefWXuKMsXTF1aB6-RqsLZn4ZQ@mail.gmail.com>
To: cve-assign@mitre.org
Cc: oss-security@lists.openwall.com, Kostya Serebryany <kcc@google.com>, 
	Dmitry Vyukov <dvyukov@google.com>, syzkaller <syzkaller@googlegroups.com>, 
	Eric Dumazet <edumazet@google.com>
Content-Type: text/plain; charset=UTF-8
Subject: [oss-security] CVE Request: Linux: signed overflows for SO_{SND|RCV}BUFFORCE

Hi!

There's a bug in SO_{SND|RCV}BUFFORCE setsockopt() implementation,
which allows CAP_NET_ADMIN users to cause memory corruption.

The fix is upstream:
https://github.com/torvalds/linux/commit/b98b0bc8c431e3ceb4b26b0dfc8db509518fb290

Could you assign a CVE for this?

Thanks!
