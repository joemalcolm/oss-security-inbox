Received: (qmail 14310 invoked by uid 550); 3 Feb 2025 23:38:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 24300 invoked from network); 3 Feb 2025 23:20:23 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Paulo Motta <paulo@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <ef1196a8-7382-5ca2-ac1f-f6bf86ca0cbd@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 03 Feb 2025 23:19:11 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-24860: Apache Cassandra: CassandraNetworkAuthorizer and
 CassandraCIDRAuthorizer can be bypassed allowing access to different
 network regions 

Severity: moderate

Affected versions:

- Apache Cassandra 4.0.0 through 4.0.15
- Apache Cassandra 4.1.0 through 4.1.7
- Apache Cassandra 5.0.0 through 5.0.2

Description:

Incorrect Authorization vulnerability in Apache Cassandra allowing users to=
 access a datacenter or IP/CIDR groups they should not be able to when usin=
g CassandraNetworkAuthorizer or CassandraCIDRAuthorizer.

Users with restricted data center access can update their own permissions v=
ia data control language (DCL) statements on affected versions.




This issue affects Apache Cassandra: from 4.0.0 through 4.0.15 and from 4.1=
.0 through 4.1.7 for CassandraNetworkAuthorizer, and from 5.0.0 through 5.0=
.2 for both CassandraNetworkAuthorizer and CassandraCIDRAuthorizer.




Operators using=C2=A0CassandraNetworkAuthorizer or=C2=A0CassandraCIDRAuthor=
izer on affected versions should review data access rules for potential bre=
aches. Users are recommended to upgrade to versions 4.0.16, 4.1.8, 5.0.3, w=
hich fixes the issue.

This issue was reported by Stefan Miklosovic

References:

https://cassandra.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2025-24860

