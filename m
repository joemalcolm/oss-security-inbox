X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/07/07/17
Message-ID: <CABjXaGvqoh2z3jimtq5QzT1bO=+nQU99ak13XrV9Vr+4Yd42jQ@mail.gmail.com>
Date: Fri, 7 Jul 2017 14:58:27 -0600
From: Jeff Elsloo <elsloo@...che.org>
To: users@...fficcontrol.incubator.apache.org,  dev@...fficcontrol.incubator.apache.org,  security@...fficcontrol.incubator.apache.org, oss-security@...ts.openwall.com,  bugtraq@...urityfocus.com
Subject: [ANNOUNCE] Apache Traffic Control Traffic Router Slowloris Denial of Service Vulnerability - CVE-2017-7670
Content-Type: text/plain; charset=utf-8

CVE-2017-7670: Apache Traffic Control Traffic Router Slowloris Denial
of Service Vulnerability

Severity: High

Vendor:
The Apache Software Foundation

Versions Affected:
Traffic Control 1.8.0
Traffic Control 2.0.0 RC0
The unsupported Traffic Control 1.5.x, 1.6.x, and 1.7.x versions may
be also affected

Description:
The Traffic Router component of the incubating Apache Traffic Control
project is vulnerable to a Slowloris style Denial of Service attack.
TCP connections made on the configured DNS port will remain in the
ESTABLISHED state until the client explicitly closes the connection or
Traffic Router is restarted. If connections remain in the ESTABLISHED
state indefinitely and accumulate in number to match the size of the
thread pool dedicated to processing DNS requests, the thread pool
becomes exhausted. Once the thread pool is exhausted, Traffic Router
is unable to service any DNS request, regardless of transport
protocol.

Mitigation:
1.8.x users should upgrade to 1.8.1
2.0.x users should upgrade to 2.0.0
Pre 1.8.x users can apply this patch:
https://github.com/apache/incubator-trafficcontrol/commit/738c10fa1b5861e4cc3944dc7c3065d16f4a708c

References:
http://trafficcontrol.apache.org/security/index.html
--
Thanks,
Jeff
