X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/10/26/9
Message-ID: <CACn5sdQdpOjojXJRfKsHvRR0p+PNmvxciH+hFL-6Xq9mx3Y-Uw@mail.gmail.com>
Date: Wed, 26 Oct 2016 19:21:24 -0300
From: Gustavo Grieco <gustavo.grieco@...il.com>
To: oss-security@...ts.openwall.com
Subject: CVE requests: some issues in gif2webp
Content-Type: text/plain; charset=utf-8

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

