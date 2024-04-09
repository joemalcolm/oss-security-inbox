Received: (qmail 17794 invoked by uid 550); 9 Apr 2024 13:06:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3423 invoked from network); 9 Apr 2024 02:36:34 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Jongyoul Lee <jongyoul@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <72f4014c-c1bc-bf7f-fccb-21e6009de87f@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 09 Apr 2024 02:36:20 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-47894: Apache Zeppelin SAP: connecting to a malicious SAP
 server allowed it to perform XXE 

Severity: moderate

Affected versions:

- Apache Zeppelin SAP 0.8.0 before 0.11.0

Description:

Improper Input Validation vulnerability in Apache Zeppelin SAP.This issue a=
ffects Apache Zeppelin SAP: from 0.8.0 before 0.11.0.

As this project is retired, we do not plan to release a version that fixes =
this issue. Users are recommended to find an alternative or restrict access=
 to the instance to trusted users.

For more information, the fix already was merged in the source code but Zep=
pelin decided to retire the SAP component
NOTE: This vulnerability only affects products that are no longer supported=
 by the maintainer.

This issue is being tracked as ZEPPELIN-5665=20

Credit:

kuiplatain@knownsec 404 Team (finder)

References:

https://github.com/apache/zeppelin/pull/4302
https://zeppelin.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2022-47894
https://issues.apache.org/jira/browse/ZEPPELIN-5665

