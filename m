X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/02/18/1
Message-ID: <cb935607-d53a-5043-ddae-54c200e6734b@redhat.com>
Date: Thu, 17 Feb 2022 16:35:38 -0500
From: Devon Thompson <devthomp@...hat.com>
To: oss-security@...ts.openwall.com
Cc: jrybar@...hat.com, gsuckevi@...hat.com
Subject: CVE-2021-4115: polkit: file descriptor leak allows an unprivileged user to cause a crash.
Content-Type: text/plain; charset=utf-8

Description:
There is an error handing flaw in polkit which can allow an unprivileged user to cause polkit to crash.
The crash happens due to process file descriptor exhaustion.
NOTE: Polkit process outage duration is tied to the failing process being reaped and a new one being spawned.


References:
https://access.redhat.com/security/cve/cve-2021-4115
https://bugzilla.redhat.com/show_bug.cgi?id=2054127
https://pkgs.devel.redhat.com/cgit/rpms/polkit/commit/?h=rhel-8.6.0&id=a71b0b5bb6624858a16bfbc1e721757b243709c6

