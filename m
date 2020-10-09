X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2020/10/09/2
Message-ID: <CAFQnWdYH1hR3cVN6F+psHrUD2B6SK=QtvL40+HTXO0UuK16cXw@mail.gmail.com>
Date: Fri, 9 Oct 2020 10:06:46 +0200
From: Stamatis Zampetakis <zabetak@...il.com>
To: oss-security@...ts.openwall.com
Subject: [CVE-2020-13955] Apache Calcite Disabled HTTPS Hostname Verification
Content-Type: text/plain; charset=utf-8

Severity: Moderate

Vendor:
The Apache Software Foundation

Versions Affected:
Apache Calcite 0.8 to 1.25

Description:
HttpUtils#getURLConnection method disables explicitly hostname verification
for HTTPS connections making clients vulnerable to man-in-the-middle
attacks.
Calcite uses internally this method to connect with Druid and Splunk so
information leakage may happen when using the respective Calcite adapters.

The method itself is in a utility class so people may use it to create
vulnerable
HTTPS connections for other applications.

>From Apache Calcite 1.26 onwards, the hostname verification will be
performed using the default JVM truststore.

Mitigation:
Users should upgrade to 1.26 if:
they are using Druid or Splunk adapters via HTTPS;
they are using HttpUtils directly for HTTPS connections.

Credit:
This issue was discovered by ﻿Simon Gerst.

References:
https://issues.apache.org/jira/browse/CALCITE-4298

