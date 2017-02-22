X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/02/22/4
Message-ID: <20170222190849.qdh65xvhpsu5pao7@eldamar.local>
Date: Wed, 22 Feb 2017 20:08:49 +0100
From: Salvatore Bonaccorso <carnil@...ian.org>
To: OSS Security Mailinglist <oss-security@...ts.openwall.com>
Subject: munin: CVE-2017-6188: Local file write vulnerability
Content-Type: text/plain; charset=utf-8

Munin, at least up to 2.0.30 is prone to a local file write
vulnerability, when CGI graphs are enabled. Setting mutliple
'upper_limit' GET parameters allow overwriting any file (accessible by
the user running the cgi-process).

Upstream bug: https://github.com/munin-monitoring/munin/issues/721

MITRE has assigned CVE-2017-6188 for this issue.

Regards,
Salvatore
