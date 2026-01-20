Received: (qmail 22526 invoked by uid 550); 20 Jan 2026 16:01:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 21693 invoked from network); 20 Jan 2026 15:53:50 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Jason Gerlowski <gerlowskija@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <c9e84a7e-4693-3bbc-3d51-90b1374abb31@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 20 Jan 2026 15:52:12 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-22444: Apache Solr: Insufficient file-access checking in
 standalone core-creation requests 

Severity: moderate=20

Affected versions:

- Apache Solr 8.6 through 9.10.0

Description:

The "create core" API of Apache Solr 8.6 through 9.10.0 lacks sufficient in=
put validation on some API parameters, which can cause Solr to check the ex=
istence of and attempt to read file-system paths that should be disallowed =
by Solr's  "allowPaths" security setting https://https://solr.apache.org/gu=
ide/solr/latest/configuration-guide/configuring-solr-xml.html#the-solr-elem=
ent .=C2=A0 These read-only accesses can allow users to create cores using =
unexpected configsets if any are accessible via the filesystem.=C2=A0 On Wi=
ndows systems configured to allow UNC paths this can additionally cause dis=
closure of NTLM "user" hashes.=C2=A0

Solr deployments are subject to this vulnerability if they meet the followi=
ng criteria:
  *  Solr is running in its "standalone" mode.
  *  Solr's "allowPath" setting is being used to restrict file access to ce=
rtain directories.
  *  Solr's "create core" API is exposed and accessible to untrusted users.=
=C2=A0 This can happen if Solr's  RuleBasedAuthorizationPlugin https://solr=
.apache.org/guide/solr/latest/deployment-guide/rule-based-authorization-plu=
gin.html  is disabled, or if it is enabled but the "core-admin-edit" predef=
ined permission (or an equivalent custom permission) is given to low-trust =
(i.e. non-admin) user roles.

Users can mitigate this by enabling Solr's RuleBasedAuthorizationPlugin (if=
 disabled) and configuring a permission-list that prevents untrusted users =
from creating new Solr cores.=C2=A0 Users should also upgrade to Apache Sol=
r 9.10.1 or greater, which contain fixes for this issue.

This issue is being tracked as SOLR-18058=20

Credit:

Damon Toey (finder)

References:

https://solr.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2026-22444
https://issues.apache.org/jira/browse/SOLR-18058

