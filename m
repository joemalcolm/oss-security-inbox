Received: (qmail 26043 invoked by uid 550); 9 Apr 2024 14:43:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21899 invoked from network); 9 Apr 2024 14:43:17 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Jongyoul Lee <jongyoul@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <6d1d12dd-d7a3-0e2a-34c9-598283a59398@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 09 Apr 2024 14:43:06 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-31864: Apache Zeppelin: Remote code execution by adding
 malicious JDBC connection string 

Severity: moderate

Affected versions:

- Apache Zeppelin before 0.11.1

Description:

Improper Control of Generation of Code ('Code Injection') vulnerability in =
Apache Zeppelin.

The attacker can inject sensitive configuration or malicious code when conn=
ecting MySQL database via JDBC driver.
This issue affects Apache Zeppelin: before 0.11.1.

Users are recommended to upgrade to version 0.11.1, which fixes the issue.

This issue is being tracked as ZEPPELIN-5990=20

Credit:

rg (finder)

References:

https://github.com/apache/zeppelin/pull/4709
https://www.cve.org/CVERecord?id=3DCVE-2020-11974
https://zeppelin.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-31864
https://issues.apache.org/jira/browse/ZEPPELIN-5990

