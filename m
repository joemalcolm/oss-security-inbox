Received: (qmail 20428 invoked by uid 550); 7 Apr 2026 14:40:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13912 invoked from network); 7 Apr 2026 13:58:57 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Michael Semb Wever <mck@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <b64d5fc2-2b98-672e-6e3b-bedcc2951a24@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 07 Apr 2026 13:57:41 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-27314: Apache Cassandra: Privilege escalation via ADD
 IDENTITY authorization bypass 

Severity: low=20

Affected versions:

- Apache Cassandra (org.apache.cassandra:cassandra-all) 5.0 through 5.0.6

Description:

Privilege escalation=C2=A0in Apache Cassandra 5.0 on an mTLS environment us=
ing MutualTlsAuthenticator=C2=A0allows a user with only CREATE permission=
=C2=A0to associate their own certificate identity with an arbitrary role,
including a superuser role, and authenticate as that role=C2=A0via ADD IDEN=
TITY.

Users are recommended to upgrade to version 5.0.7+, which fixes this issue.

This issue is being tracked as CASSANDRA-21219=20

Credit:

Sho Odagiri, GMO Cybersecurity by Ierae, Inc. (reporter)

References:

https://cassandra.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-27314
https://issues.apache.org/jira/browse/CASSANDRA-21219

