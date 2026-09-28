X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/28/1
Message-ID: <CADB963yW_1kdoNGF4TzQ7kiLQMourkMhF9rt_Wjo3G=c9=nPQQ@mail.gmail.com>
Date: Mon, 28 Sep 2026 17:02:56 +0530
From: Vyom Yadav <vyom.yadav@...onical.com>
To: oss-security@...ts.openwall.com
Subject: [kubernetes] CVE-2026-19444: kubectl cp path traversal on Windows allows arbitrary file writes
Content-Type: text/plain; charset=utf-8

Hello Kubernetes Community,

A security issue was discovered in Kubernetes where a malicious tar binary
in a container may be able to write files to arbitrary paths on the local
machine of a user running kubectl cp on Windows, limited only by the
permissions of the local user.

This issue has been rated *Medium* (CVSS calculator:
https://www.first.org/cvss/calculator/3.1) (score 6.5), and assigned
*CVE-2026-19444*.

*Am I vulnerable?*

You are affected if you run the kubectl client on Windows and use kubectl cp
to copy files *from* a container whose contents you do not fully control.
This issue only affects clients on Windows platforms; Linux and macOS
clients are not affected.

To determine whether your kubectl client is an affected version, run:
kubectl version --client

*Affected Versions*

   - kubectl v1.34.0 to v1.34.11
   - kubectl v1.35.0 to v1.35.8
   - kubectl v1.36.0 to v1.36.4

*How do I mitigate this vulnerability?*

Prior to upgrading, this vulnerability can be mitigated by only copying
files from containers you trust, or by avoiding kubectl cp from untrusted
containers on Windows.

*Fixed Versions*

   - kubectl >= v1.34.12
   - kubectl >= v1.35.9
   - kubectl >= v1.36.5

If you find evidence that this vulnerability has been exploited, please
contact security@...ernetes.io

*Additional Details*

See the GitHub issue for more details:
https://github.com/kubernetes/kubernetes/issues/141294

*Acknowledgements*

This vulnerability was reported by Moriel Harush.

The issue was fixed and coordinated by Marly Salazar, Maciej Szulik, and
Vyom Yadav.

Thank You,

Vyom Yadav on behalf of the Kubernetes Security Response Committee

