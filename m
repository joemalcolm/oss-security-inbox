X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/07/32
Message-ID: <b68daa8d-aa17-4568-8836-416c52971221@gmail.com>
Date: Wed, 7 Oct 2026 15:42:25 -0700
From: Goutham Pacha Ravi <gouthampravi@...il.com>
To: oss-security@...ts.openwall.com
Subject: [OSSN-0109] Cross-project metric association bypass in Gnocchi
Content-Type: text/plain; charset=utf-8

==========================================================================
OSSN-0109: Cross-project metric association bypass in Gnocchi (2026-10-07)
==========================================================================

Summary
~~~~~~~
The Gnocchi metric creation endpoint allows authenticated users to associate
metrics with resources owned by others by passing resource_id in the request
body bypassing proper authorization checks.

This improper access control enables attackers to inject arbitrary measures
into resources, squat on metric names, and trigger downstream actions 
including
Aodh alarms and Heat scaling policies across project boundaries.



Affected Services / Software
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
- Gnocchi (<4.6.6, ==4.7.0)


Discussion
~~~~~~~~~~
The Gnocchi API did not apply any policy when passing ``resource_id`` in the
request body when creating metrics using ``POST /v1/metric``.

This allowed an attacker to create metrics for another project's 
resources if
the resource UUID was known or could be enumerated.

The attacker can push measures to this metric potentially affecting Aodh 
alarms
and thus Heat scaling policies that could trigger stack changes that causes
changes in OpenStack resources on the project.

The attacker can use this to squat on metric names, other members in the 
project
cannot delete metrics created by the attacker due to (correct) policy 
enforcement.

This vulnerability was originally disclosed by gnocchi's upstream
at https://github.com/gnocchixyz/gnocchi.



Recommended Actions
~~~~~~~~~~~~~~~~~~~
Upgrade to a version containing the fix or apply the relevant patch and 
restart
the Gnocchi API service.

**Patches:**

- master (development): 
https://github.com/gnocchixyz/gnocchi/commit/db32814f594bae25a8483c6d9af4e6378191b7c3
- 4.7 release series: 
https://github.com/gnocchixyz/gnocchi/commit/5078143c29efa53cffaf8c456ce94baaa6e88724
- 4.6 release series: 
https://github.com/gnocchixyz/gnocchi/commit/0672fc6a40319e5d632d727afa6aaa5031651ff5


**Credits:** swdb


Contacts / References
~~~~~~~~~~~~~~~~~~~~~
**Author:** Tobias Urdin (Binero)


* This OSSN : https://docs.openstack.org/security-notes/OSSN-0109.html
* GitHub Advisory : 
https://github.com/gnocchixyz/gnocchi/security/advisories/GHSA-cjq3-6hm7-q33w

Download attachment "OpenPGP_0x0638DAD3B82C3988.asc" of type "application/pgp-keys" (3241 bytes)

Download attachment "OpenPGP_signature.asc" of type "application/pgp-signature" (841 bytes)
