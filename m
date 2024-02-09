Received: (qmail 15929 invoked by uid 550); 9 Feb 2024 17:34:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21602 invoked from network); 9 Feb 2024 17:17:49 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Houston Putman <houston@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <dcefdca1-178c-f1b9-4d48-0efa6e689640@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 09 Feb 2024 17:19:48 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-50298: Apache Solr: Solr can expose ZooKeeper credentials
 via Streaming Expressions 

Severity: low

Affected versions:

- Apache Solr 6.0.0 through 8.11.2
- Apache Solr 9.0.0 before 9.4.1

Description:

Exposure of Sensitive Information to an Unauthorized Actor vulnerability in=
 Apache Solr.This issue affects Apache Solr: from 6.0.0 through 8.11.2, fro=
m 9.0.0 before 9.4.1.

Solr Streaming Expressions allows users to extract data from other Solr Clo=
uds, using a "zkHost" parameter.
When original SolrCloud is setup to use ZooKeeper credentials and ACLs, the=
y will be sent to whatever "zkHost" the user provides.
An attacker could setup a server to mock ZooKeeper, that accepts ZooKeeper =
requests with credentials and ACLs and extracts the sensitive information,
then send a streaming expression using the mock server's address in "zkHost=
".
Streaming Expressions are exposed via the "/streaming" handler, with "read"=
 permissions.

Users are recommended to upgrade to version 8.11.3 or 9.4.1, which fix the =
issue.
From these versions on, only zkHost values that have the same server addres=
s (regardless of chroot), will use the given ZooKeeper credentials and ACLs=
 when connecting.

This issue is being tracked as SOLR-17098=20

Credit:

Qing Xu (reporter)

References:

https://solr.staged.apache.org/security.html#cve-2023-50298-apache-solr-can=
-expose-zookeeper-credentials-via-streaming-expressions
https://solr.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2023-50298
https://issues.apache.org/jira/browse/SOLR-17098

