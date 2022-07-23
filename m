X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/07/23/1
Message-ID: <6ae481de-39c2-c4a9-5274-59c2bcdb2dd6@gmail.com>
Date: Sat, 23 Jul 2022 19:35:42 +0700
From: Pedro Ribeiro <pedrib@...il.com>
To: oss-security@...ts.openwall.com
Subject: CVE Request: heap buffer overflow in gdk-pixbuf
Content-Type: text/plain; charset=utf-8

Hi,

A year ago I found and submitted a vulnerability to the gdk-pixbuf tracker:
https://gitlab.gnome.org/GNOME/gdk-pixbuf/-/issues/190

It's a heap buffer overflow using a crafted GIF, which is likely 
exploitable in 32 bit systems. Full details are in the link above in the 
bug tracker.

This was patched and the fix was merged 8 months ago as seen here:
https://gitlab.gnome.org/GNOME/gdk-pixbuf/-/merge_requests/121

The issue is now public, but since no CVE was attributed, it probably is 
not being considered as a problem for downstream users of the package.

As of today, the latest Debian stable package is affected by this 
vulnerability. Using a GNOME file system browser and browsing to that 
folder will cause a crash, as will opening it up in a GNOME image viewer 
and even attempting to load it in Chromium (should have submitted to 
them for a bounty :D).

Hence I'd like to get a CVE to raise awareness for this issue, so that 
downstream users of the package can get patched.

Thanks and regards,
Pedro Ribeiro
