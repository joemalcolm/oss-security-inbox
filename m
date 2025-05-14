Received: (qmail 30166 invoked by uid 550); 14 May 2025 02:45:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 11589 invoked from network); 14 May 2025 01:35:11 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Haonan Hou <haonan@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <97613d0f-8708-9fec-4df8-3303df615b06@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 14 May 2025 01:33:29 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-26795: Apache IoTDB JDBC driver: Exposure of Sensitive
 Information in IoTDB JDBC driver 

Severity: moderate

Affected versions:

- Apache IoTDB JDBC driver 0.10.0 through 1.3.3
- Apache IoTDB JDBC driver 2.0.1-beta before 2.0.2

Description:

Exposure of Sensitive Information to an Unauthorized Actor, Insertion of Se=
nsitive Information into Log File vulnerability in Apache IoTDB JDBC driver.

This issue affects iotdb-jdbc: from 0.10.0 through 1.3.3, from 2.0.1-beta b=
efore 2.0.2.

Users are recommended to upgrade to version 2.0.2 and 1.3.4, which fix the =
issue.

Credit:

Kyler Katz (finder)

References:

https://iotdb.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2025-26795

