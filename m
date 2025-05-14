Received: (qmail 19865 invoked by uid 550); 14 May 2025 02:44:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 32333 invoked from network); 14 May 2025 01:32:34 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Haonan Hou <haonan@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <f7a59c48-7050-c513-fed6-df5dbf383c69@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 14 May 2025 01:32:24 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-24780: Apache IoTDB: Remote Code Execution with untrusted
 URI of User-defined function 

Severity: moderate

Affected versions:

- Apache IoTDB 1.0.0 before 1.3.4

Description:

Remote Code Execution with untrusted URI of UDF vulnerability in Apache IoT=
DB. The attacker who has=C2=A0privilege to create UDF can register maliciou=
s function from=C2=A0untrusted URI.

This issue affects Apache IoTDB: from 1.0.0 before 1.3.4.

Users are recommended to upgrade to version 1.3.4, which fixes the issue.

Credit:

Y4 tacker (finder)
Nbxiglk (finder)

References:

https://iotdb.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2024-24780

