Received: (qmail 1809 invoked by uid 550); 6 Jul 2023 21:55:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16176 invoked from network); 6 Jul 2023 21:26:04 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: "Jean-Louis Monteiro" <jlmonteiro@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <dc55490f-ec97-15ba-c4e2-531d2f0d6e92@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 06 Jul 2023 21:25:50 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-33008: Apache Johnzon: Prevent inefficient internal
 conversion from BigDecimal at large scale 

Severity: important

Affected versions:

- Apache Johnzon through 1.2.20

Description:

Deserialization of Untrusted Data vulnerability in Apache Software Foundati=
on Apache Johnzon.


A malicious attacker can craft up some JSON input that uses large numbers (=
numbers such as=C2=A01e20000000) that Apache Johnzon will deserialize into =
BigDecimal and maybe use numbers too large which may result in a slow conve=
rsion (Denial of service risk). Apache Johnzon 1.2.21 mitigates this by set=
ting a scale limit of 1000 (by default) to the BigDecimal.=20


This issue affects Apache Johnzon: through 1.2.20.

This issue is being tracked as JOHNZON-397=20

Credit:

PJ Fanning (reporter)
Jean-Louis Monteiro (remediation developer)
Romain Manni-Bucau (remediation reviewer)

References:

https://johnzon.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-33008
https://issues.apache.org/jira/browse/JOHNZON-397

