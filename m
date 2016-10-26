X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["747" "Wednesday" "26" "October" "2016" "19:21:24" "-0300" "Gustavo Grieco" "gustavo.grieco@gmail.com" "<CACn5sdQdpOjojXJRfKsHvRR0p+PNmvxciH+hFL-6Xq9mx3Y-Uw@mail.gmail.com>" "28" "[oss-security] CVE requests: some issues in gif2webp" nil nil nil "10" "2016102622:21:24" "[oss-security] CVE requests: some issues in gif2webp" (number mark "U       gustavo.grie Oct 26   28/747   " thread-indent "\"[oss-security] CVE requests: some issues in gif2webp\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 31784 invoked by uid 550); 26 Oct 2016 22:21:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31760 invoked from network); 26 Oct 2016 22:21:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to;
        bh=9IPruyoknsLDmmCWBN/Kz9Gvy4JR2U0TDDRKh4UYKfo=;
        b=i3Mm0c7ntm9KZdfJvIy7ZDuDAlRkMH+bkecWDdxprkChmiXsYQ3F7F2yPqBQ5bG3X1
         PjVidxfNsS+n0Bg6mzkguBtk6kDW0bMPoNhDnG+a85wy6XqbGi0AVNx2o5Dl7g4wqphF
         xB+Shxo72xmu9vDKODdM7HXzY/oPWsYMlHEuYXiWAIfcxaatkUHvlTIauDxc3bh0yooU
         Sfkz15+GL0esYn/2l5/LaAp9bFMrBKzYIDiCvB+Vf7h5P79PgOqt3TrtBCgvOYgWsjN7
         dAgdGpsXOomD704o+J02LMTW1KjRqZ7VYhBBQi8BjwuBJBakxhgwzMlwqULqVaIGEzzC
         NQYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=9IPruyoknsLDmmCWBN/Kz9Gvy4JR2U0TDDRKh4UYKfo=;
        b=fcBb4SfWLtQGq9aD/DOcqaOYxF+eZ47D97x0WjkkVaBttipGM9rDhcU5gzfEjmS2xt
         tZyZHw2uCt/86CEG1lcc0oTXzoOxuTO0Rpp9KiMmJVpYCqzMuM1xb16glHxwiT2xc5vw
         FUFKBWWbkaegD9DRDl4inO8SrTaj1VUUVBmkywfMU8PU3F0mw/2bVxOyJWKUmN97maoz
         TGURTvvwh/jU61DnAe8fbsk6op4bo5Ak1jgooV5LAXUqBBP/rcazBLSZ2MGMU7Vabz3M
         rQGyIq0MciDOj1XJXEQyYHWhygN0OBVdd5t+Di0Tfgo/PYFuSaUwSq46ESD1lr7iNVnj
         WySQ==
X-Gm-Message-State: ABUngvflnX2V0nkMlvpu8uoiATU4Al7K3TM82wmHTqkgIfrNtEgOEdqFDi0gcN8cCsAwKjIP62DUgwBiBNxbdA==
X-Received: by 10.36.127.213 with SMTP id r204mr8528548itc.8.1477520485293;
 Wed, 26 Oct 2016 15:21:25 -0700 (PDT)
MIME-Version: 1.0
From: Gustavo Grieco <gustavo.grieco@gmail.com>
Date: Wed, 26 Oct 2016 19:21:24 -0300
Message-ID: <CACn5sdQdpOjojXJRfKsHvRR0p+PNmvxciH+hFL-6Xq9mx3Y-Uw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=001a1147cc34aca30a053fcc0b01
Subject: [oss-security] CVE requests: some issues in gif2webp

--001a1147cc34aca30a053fcc0b01
Content-Type: text/plain; charset=UTF-8

Hello,

We recently reported some issues in gif2webp. These issues were tested in
ArchLinux using libwebp 0.5.1 (recompiled with ASAN support).

* NULL pointer derreference

Bug report: https://bugs.chromium.org/p/webp/issues/detail?id=310 (private)

Fix:
https://chromium.googlesource.com/webm/libwebp/+/806f6279aef4de8deca01c8e727db4a508716e95

* Several integer overflows:

Report: https://bugs.chromium.org/p/webp/issues/detail?id=314 (private)

Fix:
https://chromium.googlesource.com/webm/libwebp/+/e2affacc35f1df6cc3b1a9fa0ceff5ce2d0cce83

The reproducers are available upon request. Please assign CVEs if suitable.

Regards,
Gustavo.

--001a1147cc34aca30a053fcc0b01--
