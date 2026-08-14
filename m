X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/14/5
Message-ID: <CADE-WFd0FhWa=cc-w1_cm3C8kRdc3PE5HaFJ+uSM+99jjr_wjg@mail.gmail.com>
Date: Fri, 14 Aug 2026 21:27:43 +0400
From: Elman Shahbazov <shahbazovelman97@...il.com>
To: oss-security@...ts.openwall.com
Cc: linux-bluetooth@...r.kernel.org
Subject: CVE Request: BlueZ AVRCP Out-of-Bounds Read (CWE-125)
Content-Type: text/plain; charset=utf-8

Hello,

I would like to request a CVE ID for an Out-of-Bounds Read vulnerability
(CWE-125) that was recently fixed in the official BlueZ Bluetooth stack.

Vulnerability Type: CWE-125 (Out-of-bounds Read)
Component: profiles/audio/avrcp.c (AVRCP GetFolderItems parsing)
Impact: A remote Bluetooth device acting as an AVRCP controller can send
  a specially crafted response with an inflated name length field but a short
  packet size, causing bluetoothd to read past the allocated packet buffer
  (Denial of Service / Information Disclosure).

The vulnerability was discovered by me, and the patch has been officially
accepted and applied to the BlueZ master branch by the maintainers
(Red Hat / Intel).

Fixed Commit:
https://git.kernel.org/pub/scm/bluetooth/bluez.git/commit/?id=bd8989620ed6

Discoverer: Elman Shahbazov (shahbazovelman97@...il.com)

Thank you,
Elman Shahbazov
