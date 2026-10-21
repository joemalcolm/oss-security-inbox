X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/21/26
Message-ID: <5a7698ea-0fc6-4560-8b2d-41e54980d017@apache.org>
Date: Wed, 21 Oct 2026 23:32:29 +0300
From: Lari Hotari <lhotari@...che.org>
To: oss-security@...ts.openwall.com
Subject: Apache Pulsar Manager: CVE-2026-105944, missing authentication and admin credential disclosure; end of life
Content-Type: text/plain; charset=utf-8

The Apache Pulsar PMC has published the following security advisory for 
Apache Pulsar Manager. Apache Pulsar Manager has reached end of life and 
has been retired, and these issues will not be fixed. The advisory was 
announced on users@...sar.apache.org: 
https://lists.apache.org/thread/hol3z7fzhjntwvrv8xqqwx4l4d2jx796

CVE-2026-105944: Apache Pulsar Manager: Missing authentication and 
authorization and disclosure of the Pulsar admin credential; end of life

Severity: critical (CVSS 4.0 base score 10.0, 
CVSS:4.0/AV:N/AC:L/AT:N/PR:N/UI:N/VC:H/VI:H/VA:H/SC:H/SI:H/SA:H)

Affected versions:

- Apache Pulsar Manager: all released versions, from 0.1.0 through 0.4.0 
(the last release)

Description:

Apache Pulsar Manager is a web console for administering Apache Pulsar 
clusters. It has its own user accounts and login, and it can be 
configured with an HTTP authentication credential, such as a token, that 
it uses to call the Pulsar admin API on behalf of its users. Pulsar 
Manager has the following security issues:

- The operation for creating the initial administrator (superuser) 
account is available without authentication, and it remains available 
after the instance has been initialized. Anyone who can reach Pulsar 
Manager can create an additional administrator account at any time and 
log in with it. This issue affects versions 0.3.0 and later.
- Requests to the Pulsar admin API that Pulsar Manager proxies to the 
configured Pulsar cluster are not subject to Pulsar Manager's 
authentication. Version 0.2.0 checks the caller's permissions for some 
of these requests, but not for all of them. An unauthenticated user can 
therefore use Pulsar Manager to send requests to the Pulsar admin API, 
which the cluster processes with the credential configured in Pulsar 
Manager.
- The destination of a proxied request can be chosen by the requester, 
and Pulsar Manager attaches its configured Pulsar admin credential to 
the request. An unauthenticated user can make Pulsar Manager send this 
credential to a host of the user's choosing, and the credential can then 
be used directly against the Pulsar cluster.
- In versions 0.3.0 and later, Pulsar Manager does not distinguish 
between privilege levels of its accounts. Every account, including one 
created through the first issue, effectively has full administrative 
privileges in Pulsar Manager.

The impact depends on the version and the deployment. In versions 0.3.0 
and later, any user who can reach Pulsar Manager over the network can 
take full control of Pulsar Manager. In all versions, when Pulsar 
Manager is configured with an HTTP authentication credential for a 
Pulsar cluster, any user who can reach Pulsar Manager can perform the 
Pulsar admin operations that this credential permits and can obtain the 
credential itself. When Pulsar Manager is configured with the token 
signing key of a Pulsar cluster, an administrator of Pulsar Manager can 
create tokens for the cluster.

End of life:

Apache Pulsar Manager is no longer maintained and is completely 
unsupported. The Apache Pulsar PMC has retired it. There are no 
supported versions, and no further releases, fixes or security updates 
will be made for any version. These issues will not be fixed.

Using Pulsar Manager is not recommended. Users should stop using Pulsar 
Manager, remove existing deployments, and move to one of the 
alternatives described in the Administration UI documentation 
(https://pulsar.apache.org/docs/administration-ui). Users who have 
exposed Pulsar Manager configured with a Pulsar credential or token 
signing key should also consider replacing that credential or key.

Until a deployment is removed, users should not expose Pulsar Manager to 
untrusted networks, and should restrict network access to it to trusted 
administrators.

Credit:

- Aleksandar Djordjevic (finder)
- Mike Read (finder)

References:

- https://lists.apache.org/thread/hol3z7fzhjntwvrv8xqqwx4l4d2jx796
- https://www.cve.org/CVERecord?id=CVE-2026-105944
- https://pulsar.apache.org/docs/administration-ui

Regards,

Lari Hotari
on behalf of the Apache Pulsar PMC
