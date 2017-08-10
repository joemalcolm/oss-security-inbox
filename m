X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/08/10/2
Message-ID: <CAM-ZzmuyxA6RjBSOb9ZSonP5A84ybXjKvemWMV4tv9MYBscvUg@mail.gmail.com>
Date: Thu, 10 Aug 2017 09:24:16 -0600
From: Annie Cherkaev <annie.cherk@...il.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2017-12762: buffer overflow in ISDN linux driver
Content-Type: text/plain; charset=utf-8

Description:
In /drivers/isdn/i4l/isdn_net.c: A user-controlled buffer is copied into a
local buffer of constant size using strcpy without a length check which can
cause a buffer overflow. Patched in the Linux kernel 4.9-stable tree,
4.12-stable tree, 3.18-stable tree, and 4.4-stable tree.

Reference:
https://patchwork.kernel.org/patch/9880041/

