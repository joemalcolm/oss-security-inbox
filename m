Received: (qmail 13692 invoked by uid 550); 12 Apr 2024 01:08:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20175 invoked from network); 11 Apr 2024 22:46:05 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Colin McCabe <cmccabe@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <1b463333-a906-8c9c-db58-34ad940518cf@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 11 Apr 2024 22:45:54 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-27309: Apache Kafka: Potential incorrect access control
 during migration from ZK mode to KRaft mode 

Severity: critical

Affected versions:

- Apache Kafka 3.5.0, 3.5.1, 3.5.2, 3.6.0, 3.6.1

Description:

While an Apache Kafka cluster is being migrated from ZooKeeper mode to KRaf=
t mode, in some cases ACLs will not be correctly enforced.

Two preconditions are needed to trigger the bug:
1. The administrator decides to remove an ACL
2. The resource associated with the removed ACL continues to have two or mo=
re other ACLs associated with it after the removal.

When those two preconditions are met, Kafka will treat the resource as if i=
t had only one ACL associated with it after the removal, rather than the tw=
o or more that would be correct.

The incorrect condition is cleared by removing all brokers in ZK mode, or b=
y adding a new ACL to the affected resource. Once the migration is complete=
d, there is no metadata loss (the ACLs all remain).

The full impact depends on the ACLs in use. If only ALLOW ACLs were configu=
red during the migration, the impact would be limited to availability impac=
t. if DENY ACLs were configured, the impact could include confidentiality a=
nd integrity impact depending on the ACLs configured, as the DENY ACLs migh=
t be ignored due to this vulnerability during the migration period.

References:

https://kafka.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-27309

