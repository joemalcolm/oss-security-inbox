Received: (qmail 3489 invoked by uid 550); 21 Dec 2023 14:30:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20343 invoked from network); 21 Dec 2023 10:57:16 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Haonan Hou <haonan@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <5627ee07-06b9-69d4-0556-a1e65699008e@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 21 Dec 2023 10:57:26 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-51656: Apache IoTDB: Unsafe deserialize map in Sync Tool 

Severity: low

Affected versions:

- Apache IoTDB 0.13.0 through 0.13.4

Description:

Deserialization of Untrusted Data vulnerability in Apache IoTDB.This issue =
affects Apache IoTDB: from 0.13.0 through 0.13.4.

Users are recommended to upgrade to version 1.2.2, which fixes the issue.

References:

https://iotdb.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2023-51656

