X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/15/1
Message-ID: <Ak5tYD8q03hxr18pmwxEsxn3qXoTWoUhFw3NCrOIwJGKGGGaKTkQ3jhdsNFASsw6byI9z5GZUl2KNSFVnEkbbgx9pzx2u5P5ncpBod2cP5k=@pm.me>
Date: Tue, 15 Sep 2026 01:39:26 +0000
From: manizada <manizada@...me>
To: "oss-security@...ts.openwall.com" <oss-security@...ts.openwall.com>
Subject: CVE-2026-60163: MySQL Group Replication unauthenticated remote arbitrary SQL execution
Content-Type: text/plain; charset=utf-8

Hi folks,

Sharing (belatedly) the July disclosure of the MySQL CVE-2026-60163 + an
update on its reclassification. The vulnerability permits an
unauthenticated remote attacker to execute arbitrary SQL on the
destination.

Following discussion, Oracle revised the attack vector rating from 'Local'
to 'Adjacent Network'. Posting to clarify this further; the attack
surface -- in the extreme -- is reachable fully remotely (not just from
an 'Adjacent' network), but beyond-local/private-network reachability
requires a non-default config.

Impact:
An attacker whose source address is permitted by
group_replication_ip_allowlist can execute arbitrary SQL through the XCom
replication listener, without a MySQL account or group membership. This
includes, e.g., privileged global-setting changes. The issue requires
Group Replication using the XCOM stack.

group_replication_ip_allowlist defaults to AUTOMATIC, which permits
private subnets detected on the host's active interfaces + localhost. It
can also be explicitly configured to allow arbitrary (incl. public)
addresses.

Bug:
In xcom_base.cc, incoming client_msg input from a non-member is accepted
and marked with the receiving member's own identity. Attacker-supplied
transactions then reach the replication applier as the member's proposals.

Scope:
Oracle lists the following supported affected versions:

MySQL Server: 8.4.0–8.4.10, 9.7.0–9.7.1
MySQL Cluster: 8.0.0–8.0.47, 8.4.0–8.4.10, 9.7.0–9.7.1

More details: https://www.oracle.com/security-alerts/cpujul2026.html

Thanks,-Asim Manizada
