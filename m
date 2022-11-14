X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/11/14/4
Message-ID: <22eef24e-713c-9a69-36f7-06cc2c8df835@apache.org>
Date: Mon, 14 Nov 2022 13:27:39 +0000
From: Arnout Engelen <engelen@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2022-45378: Apache SOAP allows unauthenticated users to potentially invoke arbitrary code 
Content-Type: text/plain; charset=utf-8

Severity: moderate

Description:

** UNSUPPORTED WHEN ASSIGNED ** In the default configuration of Apache SOAP, an RPCRouterServlet is available without authentication. This gives an attacker the possibility to invoke methods on the classpath that meet certain criteria. Depending on what classes are available on the classpath this might even lead to arbitrary remote code execution. NOTE: This vulnerability only affects products that are no longer supported by the maintainer.

Credit:

  Apache would like to thank TsungShu Chiu (CHT Security) for reporting this issue

