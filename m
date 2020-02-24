X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2020/02/25/3
Message-ID: <d22f908e-2c27-4067-cdef-a009ddebf344@oracle.com>
Date: Mon, 24 Feb 2020 14:41:35 -0500
From: Boris Ostrovsky <boris.ostrovsky@...cle.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2020-2732: Nested VMX vulnerability
Content-Type: text/plain; charset=utf-8

Under certain circumstances, an L2 guest may trick the L0 hypervisor into accessing sensitive L1 resources that are supposed to be inaccessible to the L2 guest
according to L1 hypervisor configuration.

Only Intel processors are affected.

Patches are attached. From cover letter:

  vmx_check_intercept is not yet fully implemented by KVM on Intel processors,
  causing e.g. the I/O or MSR interception bitmaps not to be checked.
  In general we can just disallow instruction emulation on behalf of L1,
  but this series also implements I/O port checks.


Thanks.
-boris


Download attachment "CVE-2020-2732.tgz" of type "application/x-compressed-tar" (2744 bytes)
