Received: (qmail 16209 invoked by uid 550); 9 Feb 2024 17:34:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22404 invoked from network); 9 Feb 2024 17:18:27 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Houston Putman <houston@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <7d5d3a96-7f33-e282-06b1-3bc28b8da908@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 09 Feb 2024 17:20:43 +0000
MIME-Version: 1.0
Subject: [oss-security] =?UTF-8?Q?CVE-2023-50292=3A_Apache_Solr=3A_Solr_Sc?=
 =?UTF-8?Q?hema_Designer_blindly_=22trusts=22_all_c?=
 =?UTF-8?Q?onfigsets=2C_possibly_leading_to_RCE_by_?=
 =?UTF-8?Q?unauthenticated_users=20?=

Severity: critical

Affected versions:

- Apache Solr 8.10.0 through 8.11.2
- Apache Solr 9.0.0 before 9.3.0

Description:

Incorrect Permission Assignment for Critical Resource, Improper Control of =
Dynamically-Managed Code Resources vulnerability in Apache Solr.

This issue affects Apache Solr: from 8.10.0 through 8.11.2, from 9.0.0 befo=
re 9.3.0.

The Schema Designer was introduced to allow users to more easily configure =
and test new Schemas and configSets.
However, when the feature was created, the "trust" (authentication) of thes=
e configSets was not considered.
External library loading is only available to configSets that are "trusted"=
 (created by authenticated users), thus non-authenticated users are unable =
to perform Remote Code Execution.
Since the Schema Designer loaded configSets without taking their "trust" in=
to account, configSets that were created by unauthenticated users were allo=
wed to load external libraries when used in the Schema Designer.

Users are recommended to upgrade to version 9.3.0, which fixes the issue.

This issue is being tracked as SOLR-16777=20

Credit:

Skay (reporter)

References:

https://solr.staged.apache.org/security.html#cve-2023-50298-apache-solr-can=
-expose-zookeeper-credentials-via-streaming-expressions
https://solr.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2023-50292
https://issues.apache.org/jira/browse/SOLR-16777

