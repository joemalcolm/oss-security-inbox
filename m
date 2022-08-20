Received: (qmail 26405 invoked by uid 550); 20 Aug 2022 23:23:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9643 invoked from network); 20 Aug 2022 22:56:15 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Ralph Goers <rgoers@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <7d1f3488-dc28-e05a-1eb7-3a1a7efc9901@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sat, 20 Aug 2022 22:55:58 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-34916: Apache Flume: Improper Input Validation (JNDI
 Injection) in JMSMessageConsumer 

Description:

Apache Flume versions 1.4.0 through 1.10.0 are vulnerable to a remote code =
execution (RCE) attack when a configuration uses a JMS Source with a JNDI L=
DAP data source URI when an attacker has control of the target LDAP server.=
 This issue is fixed by limiting JNDI to allow only the use of the java pro=
tocol or no protocol.=20

This issue is being tracked as FLUME-3428

Credit:

Apache Flume would like to thank Frentzen Amaral for reporting this issue.

References:

https://issues.apache.org/jira/browse/FLUME-3428
https://lists.apache.org/thread/qkmt4r2t9tbrxrdbjg1m2oczbvczd9zn

