Received: (qmail 5455 invoked by uid 550); 27 Mar 2023 16:23:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3564 invoked from network); 27 Mar 2023 16:22:01 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: James Dailey <jdailey@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <eed59b0c-fd99-1a0f-00df-dfbc8c120ec5@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 27 Mar 2023 16:21:03 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-25196: Apache Fineract: SQL injection vulnerability  

Severity: important

Description:

Improper Neutralization of Special Elements used in an SQL Command ('SQL In=
jection') vulnerability in Apache Software Foundation Apache Fineract.
Authorized users may be able to change or add data in certain components. =
=C2=A0

This issue affects Apache Fineract: from 1.4 through 1.8.2.

Credit:

 Zhang Baocheng at Leng Jing Qi Cai Security Lab (reporter)
Aleks@apache.org (remediation developer)

References:

https://fineract.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-25196

