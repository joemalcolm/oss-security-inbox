X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2021/03/10/1
Message-ID: <CADDz7ZtCRimpVJMqO=gz6F+TWf-NbR8j8n7HvcpPNYH2Mz3maQ@mail.gmail.com>
Date: Tue, 9 Mar 2021 22:48:11 -0800
From: Will Glass-Husain <wglass@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2020-13936: Velocity Sandbox Bypass
Content-Type: text/plain; charset=utf-8

Description:

An attacker that is able to modify Velocity templates may execute
arbitrary Java code or run arbitrary system commands with the same
privileges as the account running the Servlet container.  This applies
to applications that allow untrusted users to upload/modify velocity
templates running Apache Velocity Engine versions up to 2.2.

Mitigation:

Applications using Apache Velocity that allow untrusted users to
upload templates should upgrade to version 2.3.  This version adds
additional default restrictions on what methods/properties can be
accessed in a template.

Credit:

This issue was discovered by Alvaro Munoz pwntester@...hub.com of
Github Security Labs and was originally reported as GHSL-2020-048.
