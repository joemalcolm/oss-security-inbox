Received: (qmail 14080 invoked by uid 550); 11 Oct 2023 12:15:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22374 invoked from network); 11 Oct 2023 11:50:31 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Andor Molnar <andor@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <1f492976-2168-3281-af17-ff8d26d071d1@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 11 Oct 2023 11:49:52 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-44981: Apache ZooKeeper: Authorization bypass in SASL
 Quorum Peer Authentication 

Severity: critical

Affected versions:

- Apache ZooKeeper 3.9.0
- Apache ZooKeeper 3.8.0 through 3.8.2
- Apache ZooKeeper 3.7.0 through 3.7.1
- Apache ZooKeeper before 3.7.0

Description:

Authorization Bypass Through User-Controlled Key vulnerability in Apache Zo=
oKeeper. If SASL Quorum Peer authentication is enabled in ZooKeeper (quorum=
.auth.enableSasl=3Dtrue), the authorization is done by verifying that the i=
nstance part in SASL authentication ID is listed in zoo.cfg server list. Th=
e instance part in SASL auth ID is optional and if it's missing, like 'eve@=
EXAMPLE.COM', the authorization check will be skipped.=C2=A0As a result an =
arbitrary endpoint could join the cluster and begin propagating counterfeit=
 changes to the leader, essentially giving it complete read-write access to=
 the data tree.=C2=A0Quorum Peer authentication is not enabled by default.

Users are recommended to upgrade to version 3.9.1, 3.8.3, 3.7.2, which fixe=
s the issue.

Alternately ensure the ensemble election/quorum communication is protected =
by a firewall as this will mitigate the issue.

See the documentation for more details on correct cluster administration.

Credit:

Damien Diederen <ddiederen@apache.org> (reporter)

References:

https://zookeeper.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-44981

