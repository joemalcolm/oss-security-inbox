Received: (qmail 12064 invoked by uid 550); 29 Mar 2024 14:29:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3162 invoked from network); 29 Mar 2024 14:24:53 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Arnout Engelen <engelen@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <c69b4af1-c0a3-0938-f690-4c05227e6524@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 29 Mar 2024 14:29:17 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-23537: Apache Fineract: Under certain circumstances, this
 vulnerability allowed users, without specific permissions, to escalate
 their privileges to any role.  

Severity: important

Affected versions:

- Apache Fineract before 1.9.0

Description:

Improper Privilege Management vulnerability in Apache Fineract.This issue a=
ffects Apache Fineract: <1.8.5.

Users are recommended to upgrade to version 1.9.0, which fixes the issue.

Credit:

 Yash Sancheti  (reporter)

References:

https://cwiki.apache.org/confluence/display/FINERACT/Apache+Fineract+Securi=
ty+Report
https://fineract.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-23537

