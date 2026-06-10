X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/10/2
Message-ID: <77f246b9-77ed-4413-992f-472c52286b8b@nlnetlabs.nl>
Date: Wed, 10 Jun 2026 09:27:34 +0200
From: Willem Toorop <willem@...etlabs.nl>
To: oss-security@...ts.openwall.com
Subject: ldns insufficiently verifies that responses belong to a query
Content-Type: text/plain; charset=utf-8


The CVE number for this vulnerability will be CVE-2026-10846

CVSS:4.0/AV:N/AC:L/AT:P/PR:N/UI:N/VC:N/VI:H/VA:N/SC:N/SI:N/SA:N
Score: 8.2, Severity: High

== Summary
When ldns is used by applications for (stub) resolving, it does not 
sufficiently verify that received responses belong to a sent query.

== Affected products
ldns 1.2.0 up to and including 1.9.0

== Description
NLnet Labs ldns 1.2.0 up to and including versions 1.9.0, when used in 
applications as (stub) resolver over UDP, lacks matching the query 
destination address and port with the response source address and port. 
Furthermore not the query ID, neither the question of the query is 
matched with that of the response. This makes applications, that use 
ldns for (stub) resolver functionality, vulnerable for off-path 
poisoning attacks.

The drill tool, which is shipped with ldns and uses ldns for stub 
resolving, inherently suffers from this vulnerability.

== Solution
Use the patched version of ldns 1.9.1 that has been releases Wednesday 
the 10th of June 2026

Or apply the patch manually. For ldns 1.9.0 the patch is attached as
patch_cve_2026-10846.diff

Apply the patch on ldns source directory with:
'patch -p0 < patch_cve_2026-10846.diff'
then run 'make install' to install ldns.

== Acknowledgments
We would like to thank Pablo Ruiz from 'codecome.ai' for finding and 
reporting this vulnerability.
View attachment "patch_cve_2026-10846.diff" of type "text/x-patch" (5896 bytes)
