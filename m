X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["744" "Tuesday" "10" "May" "2016" "15:27:58" "-0400" "Kangjie Lu" "kangjielu@gmail.com" "<CABEk9YzHK2jN5YHzTSVWRaMyGZiNcqZXT29zD9=N+ZG9Vzw=RQ@mail.gmail.com>" "25" "[oss-security] CVE Request: alsa: kernel information leak vulnerability in Linux sound/core/timer" nil nil nil "5" "2016051019:27:58" "[oss-security] CVE Request: alsa: kernel information leak vulnerability in Linux sound/core/timer" (number mark "U       kangjielu@gm May 10   25/744   " thread-indent "\"[oss-security] CVE Request: alsa: kernel information leak vulnerability in Linux sound/core/timer\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14169 invoked by uid 550); 10 May 2016 19:28:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14146 invoked from network); 10 May 2016 19:28:10 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to;
        bh=EbkR/yJDStPwVmzJBJoqtnhp6oyUrIBhGPcPxWrQhDI=;
        b=XsUbYQxZkrN5mt5D3MHwSylNzTdvof2SjtUqaX66pHVlnCWZyBzCKqeHgtA3ZoS0sH
         ZioEUm+SzNrhsNEPgD+X6LFkYcylvh5abfhTNLZvIJtwfbqI8W24F1oR4LCkm1+zzVqm
         F313D2if5K3NjOfD+h+0WdAibafeLXm+qO7SQK6Ta6utp5vTQGO/kJUkG0SYxKH8dmgM
         HfqDmawtpiCjG1q7TP+NuqFhgOtWv6IHQSE5zf4uRTYgBzb1cVAEEyoZZN/eNX5JwNvd
         nFgveGrGjEZ7ZUSISL2j8oN2aJuf745Be46D7Tv2dhRc2q3zeqDAnWKyWkZHYDric5WG
         8IEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
        bh=EbkR/yJDStPwVmzJBJoqtnhp6oyUrIBhGPcPxWrQhDI=;
        b=YQ3+evSTEezth65md8Hv7eThfPRTcIcvmj46Cg0WZh4a9+K40rTISAM1c4JO+xcjK5
         OmiIyJa5BYAGTgHoIrx8Z8wKWPxOzpETBw02QrLWuLLs+b1xBRwedLxEftOuphx84aCF
         eDNy6OdRx7+8uXaD3QCsl/dS6TTwt6ZpA42AVspFHRzLSs6E7wlA2UG/krzHFswAP0Ng
         Fod4AXdFxD2uAoIGLyL4+N6JmMt0iGoCpWcw7lg4T+syT0B4hyruEud5WvPfPWD/WxjX
         Px2Xl3x6K24fKnhh+QOLsgzbbbGG3NaWN/GVo+CVaL56vWzl0dxM2wvsXHqSdBLSX667
         V3WA==
X-Gm-Message-State: AOPr4FVV2f9/ggpF3+fJ03/7OnVVkMfryGL/xk1a6Czo04uJ6NCKdFiiDZdFZkTB8CHh2RqCxW8JGQ3YBCC6Uw==
MIME-Version: 1.0
X-Received: by 10.202.60.5 with SMTP id j5mr19009777oia.43.1462908478583; Tue,
 10 May 2016 12:27:58 -0700 (PDT)
Date: Tue, 10 May 2016 15:27:58 -0400
Message-ID: <CABEk9YzHK2jN5YHzTSVWRaMyGZiNcqZXT29zD9=N+ZG9Vzw=RQ@mail.gmail.com>
From: Kangjie Lu <kangjielu@gmail.com>
To: oss-security@lists.openwall.com, Chengyu Song <csong84@gatech.edu>, 
	Insu Yun <insu@gatech.edu>, Taesoo Kim <taesoo@gatech.edu>
Content-Type: multipart/alternative; boundary=001a113cc26c347fce053281ecc4
Subject: [oss-security] CVE Request: alsa: kernel information leak vulnerability in Linux sound/core/timer

--001a113cc26c347fce053281ecc4
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,

In function snd_timer_user_ccallback() of file sound/core/timer.c,
the stack object =E2=80=9Cr1=E2=80=9D has a total size of 32 bytes. Its fie=
ld =E2=80=9Cevent=E2=80=9D and
=E2=80=9Cval=E2=80=9D both
contain 4 bytes padding. These 8 bytes padding bytes are sent to user
without
being initialized.

Fix info:
https://git.kernel.org/cgit/linux/kernel/git/tiwai/sound.git/commit/?h=3Dfo=
r-next&id=3D9a47e9cff994f37f7f0dbd9ae23740d0f64f9fe6
Patch has been applied: http://comments.gmane.org/gmane.linux.kernel/2214250

Please help assign a CVE to this vulnerability.

Thanks,
Kangjie Lu

--001a113cc26c347fce053281ecc4--
