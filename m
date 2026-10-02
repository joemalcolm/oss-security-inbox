X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/02/2
Message-ID: <a1c023a8-0da7-94a2-ca61-b5acb2617b7f@apache.org>
Date: Fri, 02 Oct 2026 17:30:55 +0000
From: Dave Fisher <wave@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-59265: Apache OpenOffice: Opening a malicious document can lead to system takeover 
Content-Type: text/plain; charset=utf-8

Severity: critical 

Affected versions:

- Apache OpenOffice through 4.1.16
- Apache OpenOffice before 95923fd437e06edd38a4f0e139a27c755a6f3ba6
- Apache OpenOffice before 181421139242694b309751fb666406eddc203c50

Description:

A code execution issue in the Java integration in Apache OpenOffice v4.1.16 and earlier allows a crafted untrusted document to trigger executing arbitrary (even remote) code when opened by the user.



This issue is expected to be fixed in version 4.1.17, which is in the release candidate phase.



Until then, users can mitigate this issue by disabling Java runtime integration in the Preferences dialog. This prevents the attack. If this is not possible, or as an extra precaution, you can avoid opening open untrusted files entirely. Once 4.1.17 is released, upgrade to that version to fix the issue.

Credit:

Thomas Rinsma and Edoardo Geraci from Codean Labs (finder)
Rick de Jager (finder)

References:

https://github.com/apache/openoffice/commit/c699bed3f75e79bd64ddec9dec49f9e210eed281.patch
https://github.com/apache/openoffice/commit/95923fd437e06edd38a4f0e139a27c755a6f3ba6.patch
https://openoffice.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-59265

