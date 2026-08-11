X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/11/7
Message-ID: <428ff71d-ee61-40d5-a651-a39cc81bb19c@gmail.com>
Date: Tue, 11 Aug 2026 08:39:05 -0700
From: Goutham Pacha Ravi <gouthampravi@...il.com>
To: oss-security@...ts.openwall.com
Subject: [OSSN-0105] OpenStack Glance legacy Tasks import bypasses image import URI filtering
Content-Type: text/plain; charset=utf-8

OSSN-0105: OpenStack Glance legacy Tasks import bypasses image import 
URI filtering
---

### Summary ###
The deprecated Glance /v2/tasks API accepts type=import tasks that
bypass import_filtering_opts, allowing an admin to fetch internal
URLs from the Glance service network (SSRF). The tasks API has been
admin-only since Xena and deprecated for several releases.

### Affected Services / Software ###
- glance: >=30.0.0 <30.3.0, >=31.0.0 <31.1.1, ==32.0.0

### Discussion ###
The legacy tasks import path uses a permissive URI validator that
only checks for http:// or https:// prefixes, bypassing the host
and port restrictions enforced by the modern web-download import.

### Recommended Actions ###
Disable the legacy tasks API via policy if you are not using it.
Otherwise, upgrade Glance to a version containing the fix.

#### Patches ####
The following reviews contain the fix for this issue:

2026.2/hibiscus (development): https://review.opendev.org/993588
2026.1/gazpacho: https://review.opendev.org/994466
2025.2/flamingo: https://review.opendev.org/994592
2025.1/epoxy: https://review.opendev.org/1000061

### Credits ###
Tim Shephard, roiai.ca

### Contacts / References ###
Authors:
- Goutham Pacha Ravi, Red Hat

This OSSN: https://wiki.openstack.org/wiki/OSSN/OSSN-0105
Original Launchpad bug: https://bugs.launchpad.net/glance/+bug/2152110
Mailing List : [security-sig] tag on openstack-discuss@...ts.openstack.org
OpenStack Security : https://security.openstack.org/
CVE: none

Download attachment "OpenPGP_0x0638DAD3B82C3988.asc" of type "application/pgp-keys" (3241 bytes)

Download attachment "OpenPGP_signature.asc" of type "application/pgp-signature" (841 bytes)
