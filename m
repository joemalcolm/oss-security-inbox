Received: (qmail 17603 invoked by uid 550); 18 Aug 2023 20:51:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16376 invoked from network); 18 Aug 2023 20:50:33 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: David Handermann <exceptionfactory@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <7c583366-9388-6d73-bafe-aba03be24df9@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 18 Aug 2023 20:50:18 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-40037: Apache NiFi: Incomplete Validation of JDBC and
 JNDI Connection URLs 

Severity: moderate

Affected versions:

- Apache NiFi 1.21.0 through 1.23.0

Description:

Apache NiFi 1.21.0 through 1.23.0 support JDBC and JNDI JMS access in sever=
al Processors and Controller Services with connection URL validation that d=
oes not provide sufficient protection against crafted inputs. An authentica=
ted and authorized user can bypass connection URL validation using custom i=
nput formatting. The resolution enhances connection URL validation and intr=
oduces validation for additional related properties. Upgrading to Apache Ni=
Fi 1.23.1 is the recommended mitigation.

This issue is being tracked as NIFI-11920=20

Credit:

Matei "Mal" Badanoiu (finder)

References:

https://nifi.apache.org/security.html#CVE-2023-40037
https://nifi.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-40037
https://issues.apache.org/jira/browse/NIFI-11920

Timeline:

2023-08-06: reported

