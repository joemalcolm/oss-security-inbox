Received: (qmail 14180 invoked by uid 550); 9 Mar 2026 04:05:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 22057 invoked from network); 9 Mar 2026 03:57:01 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Haonan Hou <haonan@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <0e88c343-db3e-4302-d00f-0355e46cf608@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 09 Mar 2026 03:55:30 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-24713: Apache IoTDB: JEXL Expression Injection
 Vulnerability 

Severity: important=20

Affected versions:

- Apache IoTDB 1.0.0 before 1.3.7
- Apache IoTDB 2.0.0 before 2.0.7

Description:

Improper Input Validation vulnerability in Apache IoTDB.

This issue affects Apache IoTDB: from 1.0.0 before 1.3.7, from 2.0.0 before=
 2.0.7.

Users are recommended to upgrade to version 1.3.7 or 2.0.7, which fixes the=
 issue.

Credit:

Yongzhi Liu of Tencent YunDing Security Lab (finder)

References:

https://iotdb.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2026-24713

