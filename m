Received: (qmail 12151 invoked by uid 550); 11 Jan 2026 17:14:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 30670 invoked from network); 11 Jan 2026 11:42:01 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Lukasz Lenart <lukaszlenart@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <092d7ffa-d71b-22c4-2014-ce6c21cec8e3@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sun, 11 Jan 2026 11:40:53 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-68493: Apache Struts: XXE vulnerability in outdated XWork component

Severity: important=20

Affected versions:

- Apache Struts (com.opensymphony:xwork) 2.0.0 before 2.2.1
- Apache Struts (org.apache.struts.xwork:xwork-core) 2.2.1 through 6.1.0

Description:

Missing XML Validation vulnerability in Apache Struts, Apache Struts.

This issue affects Apache Struts: from 2.0.0 before 2.2.1; Apache Struts: f=
rom 2.2.1 through 6.1.0.

Users are recommended to upgrade to version 6.1.1, which fixes the issue.

References:

https://cwiki.apache.org/confluence/display/WW/S2-069
https://struts.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2025-68493

