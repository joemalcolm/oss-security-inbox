X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/16/5
Message-ID: <CANgsvg0fRGTRehZLYvuhPL2bcrBgivXaejE5GZVJui2Rcydo3Q@mail.gmail.com>
Date: Mon, 16 Nov 2026 02:04:45 -0800
From: info@...erealitylabs.com
To: oss-security@...ts.openwall.com
Subject: BenchProctor 2026.11.16: a smaller public SAST benchmark
Content-Type: text/plain; charset=utf-8

Hi oss-security,

I maintain BenchProctor, an Apache-2.0 corpus for evaluating static
application security scanners. Release 2026.11.16 replaces the July
corpus, which I withdrew after finding bad safe labels and cases whose
modeled flow was unrealistic.

This release has 2,142 standalone cases (1,071 safe, 1,071 vulnerable)
across 11 languages and 21 framework targets. It also has 60
two-service applications with 860 labeled flows. The 12 ZIPs total 3.1
MiB and include CSV answer keys, checksums and Python scorers for
compatible SARIF 2.1.0 output.

The standalone set is a baseline for common weaknesses. It covers
direct and medium-depth flows with working safeguards in the safe
cases. The application flow checks were static. If you maintain an
open-source analyzer, I'd be interested in cases where the scorer
misses a valid result or the label conflicts with what the source
actually does.

https://github.com/TheAuditorTool/BenchProctor#release-status

John
BenchProctor maintainer, Code Reality Labs
