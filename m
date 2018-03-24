X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2018/03/24/3
Message-Id: <E1ezZFo-00031j-Ew@romulus.home.bitnebula.com>
Date: Fri, 23 Mar 2018 21:50:00 -0500
From: Daniel Ruggeri <druggeri@...che.org>
To: announce@...pd.apache.org, oss-security@...ts.openwall.com, security@...pd.apache.org
Subject: CVE-2018-1303: Possible out of bound read in mod_cache_socache
Content-Type: text/plain; charset=utf-8


CVE-2018-1303: Possible out of bound read in mod_cache_socache

Severity: Low

Vendor: The Apache Software Foundation

Versions Affected:
httpd 2.4.5 to 2.4.29

Description:
A specially crafted HTTP request header could have crashed the Apache HTTP
Server prior to version 2.4.30 due to an out of bound read while preparing data
to be cached in shared memory. It could be used as a Denial of Service attack
against users of mod_cache_socache.

Mitigation:
All httpd users should upgrade to 2.4.30 or later.

Credit:
The issue was discovered by Robert Swiecki, bug found by honggfuzz

References:
https://httpd.apache.org/security/vulnerabilities_24.html
