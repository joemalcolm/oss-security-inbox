X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/01/11/2
Message-ID: <4F0D6964.6000206@redhat.com>
Date: Wed, 11 Jan 2012 18:50:12 +0800
From: Eugene Teo <eugene@...hat.com>
To: oss-security@...ts.openwall.com
CC: "Steven M. Christey" <coley@...us.mitre.org>
Subject: CVE request - kernel: drm: integer overflow in drm_mode_dirtyfb_ioctl()
Content-Type: text/plain; charset=utf-8

There is a potential integer overflow in drm_mode_dirtyfb_ioctl() if
userspace passes in a large num_clips.  The call to kmalloc would
allocate a small buffer, and the call to fb->funcs->dirty may result in
a memory corruption.

Reported-by: Haogang Chen <haogangchen@...il.com>
Signed-off-by: Xi Wang <xi.wang@...il.com>

Upstream commit:
http://git.kernel.org/linus/a5cd335165e31db9dbab636fd29895d41da55dd2
