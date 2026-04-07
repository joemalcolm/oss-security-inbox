Received: (qmail 22265 invoked by uid 550); 7 Apr 2026 14:40:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 18124 invoked from network); 7 Apr 2026 14:00:03 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Michael Semb Wever <mck@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <d3798384-1752-9075-fb65-4203017fdf3e@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 07 Apr 2026 13:57:54 +0000
MIME-Version: 1.0
Subject: [oss-security] CASSANDRA-21202: CVE-2026-32588: Apache Cassandra: Authenticated
 DoS via ALTER ROLE Password Hashing 

Severity: low=20

Affected versions:

- Apache Cassandra (org.apache.cassandra:cassandra-all) 4.0 through 4.0.19
- Apache Cassandra (org.apache.cassandra:cassandra-all) 4.1 through 4.1.10
- Apache Cassandra (org.apache.cassandra:cassandra-all) 5.0 through 5.0.6

Description:

Authenticated DoS over CQL in Apache Cassandra 4.0, 4.1, 5.0 allows authent=
icated user to raise query latencies via repeated password changes.
Users are recommended to upgrade to version 4.0.20, 4.1.11, 5.0.7, which fi=
xes this issue.

Credit:

Youlong Chen, Institute of Computing Technology, Chinese Academy of Science=
s (reporter)

References:

https://cassandra.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-32588

