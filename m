X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/21/25
Message-ID: <04a01fe1-6576-48ea-a853-3662858e1091@apache.org>
Date: Wed, 21 Oct 2026 23:31:34 +0300
From: Lari Hotari <lhotari@...che.org>
To: oss-security@...ts.openwall.com
Subject: Apache Pulsar: 14 CVEs fixed in 4.0.14, 4.2.5 and 5.0.0 (combined announcement)
Content-Type: text/plain; charset=utf-8

The Apache Pulsar PMC published 14 security advisories for Apache Pulsar 
on 21 October 2026 (1 critical, 4 high, 4 medium, 5 low). All of them 
are fixed in Apache Pulsar 4.0.14, 4.2.5 and 5.0.0, and users are 
recommended to upgrade:

- 4.0.14: https://lists.apache.org/thread/039cmmk4938zmqn2k8g8joqbpfmy1r1y
- 4.2.5: https://lists.apache.org/thread/x8v4r6kpyftzlphh3z18s6ywmrn66gxd
- 5.0.0: https://lists.apache.org/thread/ns4xjcz4cmnw778vljhbvd9zdf33867f

Each advisory was announced separately on users@...sar.apache.org. Each 
entry below gives the severity, the CVSS 4.0 base score, the affected 
versions, a short summary and a link to the full announcement with the 
description, CVSS vector and credit.

A separate message covers CVE-2026-105944 for Apache Pulsar Manager, 
which has reached end of life.

CVE-2026-105869 (critical, CVSS 4.0 9.2)
Apache Pulsar: MultiRolesTokenAuthorizationProvider uses roles from 
unverified tokens for HTTP requests that fall back to the anonymous user 
role
In deployments that use MultiRolesTokenAuthorizationProvider with a 
non-empty anonymousUserRole, HTTP and WebSocket requests whose 
credentials fail authentication fall back to the anonymous user role, 
and the provider then authorized them with the roles listed in the 
unverified bearer token. An unauthenticated client could send a forged 
or unsigned token and be authorized with any role, including a superuser 
role.
Affected: 2.8.1 before 4.0.14; 4.1.0 before 4.2.5
https://lists.apache.org/thread/lf36z1tlcsokp4gv97obkdjtt74ngmrw

CVE-2026-105937 (high, CVSS 4.0 8.7)
Apache Pulsar: Missing authorization of the shadow topic source allows 
cross-tenant message disclosure and deletion of source topic data
When creating a topic or updating topic properties, the broker did not 
authorize the caller against the source topic named in the reserved 
PULSAR.SHADOW_SOURCE property. A tenant admin of one tenant could bind a 
shadow topic to a persistent topic in another tenant, read its messages 
and delete source topic data.
Affected: 3.0.0 before 4.0.14; 4.1.0 before 4.2.5
https://lists.apache.org/thread/80foc311bwn839skc1p7fh89pgsrhyoj

CVE-2026-105942 (high, CVSS 4.0 7.7)
Apache Pulsar: Original principal of proxied requests authorized with 
the proxy's authentication data, allowing privilege escalation
For requests sent by a proxy on behalf of another user, the broker 
authorized the original principal with the proxy's authentication data, 
so with MultiRolesTokenAuthorizationProvider the user gained the roles 
in the proxy's token. Independently of the authorization provider, the 
tenant admin check of a proxied admin REST API request passed without 
checking the original principal when the proxy role was a tenant admin.
Affected: 2.8.1 before 4.0.14; 4.1.0 before 4.2.5
https://lists.apache.org/thread/4jmsbztr1fwws5fmxk36q5326wvjlwx4

CVE-2026-105945 (high, CVSS 4.0 7.7)
Apache Pulsar: Improper Validation of Package Name Components Allows 
Cross-Tenant Package Access in Filesystem Package Storage
The version component of package names was not validated, so with the 
filesystem package storage provider an authenticated user with the 
packages permission on any namespace could download, overwrite or delete 
packages stored in other tenants and namespaces.
Affected: 2.10.0 before 4.0.14; 4.1.0 before 4.2.5
https://lists.apache.org/thread/o5jt8zrg1qxqdrqlb06jjmj4lzydfm2k

CVE-2026-105934 (high, CVSS 4.0 7.2)
Apache Pulsar: Missing tenant admin authorization check when truncating 
a partitioned topic
Truncating a partitioned topic through the admin REST API did not apply 
the tenant admin check to the caller, and the broker truncated the 
partitions with its own internal admin client. A user with only produce 
or consume permission could permanently delete the messages of a 
partitioned topic when the broker's internal identity is authorized for 
the tenant.
Affected: 2.8.0 before 4.0.14; 4.1.0 before 4.2.5
https://lists.apache.org/thread/ox0vy41jlb41y2l04y7b6h2srlyqoj8o

CVE-2026-105930 (medium, CVSS 4.0 6.0)
Apache Pulsar: Improper Authorization of Function, Source and Sink 
Package URLs Allows Cross-Tenant Package Download
When registering or updating a function, source or sink from a package 
URL, the Functions worker did not check the caller's permission on the 
namespace of the package and downloaded it with its own credentials. A 
user allowed to register functions in their own tenant could obtain 
packages stored in another tenant.
Affected: 2.8.0 before 4.0.14; 4.1.0 through 4.1.3; 4.2.0 before 4.2.5
https://lists.apache.org/thread/dqschrfvb7l0sdhj4sx1qccyywbfp4jg

CVE-2026-105926 (medium, CVSS 4.0 5.3)
Apache Pulsar: Missing Topic Authorization on Binary Protocol GetSchema 
and GetOrCreateSchema Commands
The GetSchema and GetOrCreateSchema commands of the binary protocol did 
not check topic authorization. An authenticated client could read the 
schema of, and register a new schema version on, a topic in another 
tenant. Message payloads were not disclosed.
Affected: 2.2.0 before 4.0.14; 4.1.0 through 4.1.3; 4.2.0 before 4.2.5
https://lists.apache.org/thread/45y22fqoqyfpc2hdmoct8cmgslz8ogkh

CVE-2026-105936 (medium, CVSS 4.0 5.3)
Apache Pulsar: Functions connectors list endpoint does not apply the 
super-user check of the worker connectors endpoint
The deprecated functions connectors endpoint returned the catalog of 
installed Pulsar IO connectors without the super-user check applied by 
the worker connectors endpoint, so any authenticated client could read it.
Affected: 2.4.1 before 4.0.14; 4.1.0 before 4.2.5
https://lists.apache.org/thread/dn0cg4l3yolw90f8rjyvv4dl7k340jkz

CVE-2026-105935 (medium, CVSS 4.0 4.9)
Apache Pulsar: Function trigger publishes to the input topic without 
checking the caller's produce permission
The Functions worker trigger endpoint did not check that the caller may 
produce to the function's input topic, and published the message with 
the worker's own credentials. A user allowed to manage functions in a 
namespace could publish messages to input topics they cannot produce to, 
including topics in other tenants.
Affected: 2.0.0-rc1-incubating before 4.0.14; 4.1.0 before 4.2.5
https://lists.apache.org/thread/nrk7hkyzgo447gm58ry6n8ohl8z5j6nl

CVE-2026-105927 (low, CVSS 4.0 2.3)
Apache Pulsar: Improper authorization of WebSocket consumer dead letter 
topic allows writes without PRODUCE permission
The WebSocket service did not check the PRODUCE permission on the topic 
named in a consumer's deadLetterTopic parameter, and wrote dead letter 
messages with its own identity. A user with CONSUME permission on any 
topic could write messages to topics in other tenants.
Affected: 2.3.0 before 4.0.14; 4.1.0 before 4.2.5
https://lists.apache.org/thread/1577zmjsxssb9zkg34sjzcl71om145bd

CVE-2026-105931 (low, CVSS 4.0 2.3)
Apache Pulsar: Missing authorization on transaction admin endpoints 
exposes transaction coordinator and transaction statistics of other tenants
Most read endpoints of the transaction admin REST API did not check the 
caller's permissions, so any authenticated user could read transaction 
coordinator, transaction and transaction buffer information of other 
tenants.
Affected: 2.8.0 before 4.0.14; 4.1.0 before 4.2.5
https://lists.apache.org/thread/82g78kf9q7gmf9m8fvsryq78g4chwktz

CVE-2026-105932 (low, CVSS 4.0 2.3)
Apache Pulsar: Missing topic policy authorization on non-persistent 
topic entry filter endpoints
The admin REST API endpoints for the topic-level entry filter policy of 
non-persistent topics lacked the topic policy authorization check, so a 
user with produce or consume permission could read, replace or remove 
the policy. Practical impact requires operator-installed entry filters 
and allowOverrideEntryFilters=true, neither of which is the default.
Affected: 3.3.0 before 4.0.14; 4.1.0 before 4.2.5
https://lists.apache.org/thread/y30v2pv2gyj3kn4p1xxmgzfv73x6v1mo

CVE-2026-105933 (low, CVSS 4.0 2.3)
Apache Pulsar: Namespace encryption requirement not enforced after a 
failure during topic initialization
If a step of topic initialization failed, the broker disabled the 
namespace's encryption_required policy for that topic and served it 
anyway, so messages published without encryption were accepted.
Affected: 1.22.0-incubating before 4.0.14; 4.1.0 before 4.2.5
https://lists.apache.org/thread/f9xdlh72zf7got2y3vxww5fv4rxvmjbq

CVE-2026-105938 (low, CVSS 4.0 2.3)
Apache Pulsar: Subscription authorization policies not enforced by 
namespace-level backlog and unsubscribe operations and by topic expire-all
The namespace-level and bundle-level clear backlog and unsubscribe 
operations, and the topic-level expire-all operation, did not apply 
subscription authorization policies (the Prefix subscription 
authentication mode or subscription permissions). A user with consume 
permission could clear, expire or delete subscriptions that the policies 
deny to that user.
Affected: 2.8.0 before 4.0.14; 4.1.0 before 4.2.5
https://lists.apache.org/thread/zhc6wjydybdd1msnlcxmmbg8oj0kjmog

Regards,

Lari Hotari
on behalf of the Apache Pulsar PMC
