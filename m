Received: (qmail 14062 invoked by uid 550); 15 Jan 2024 13:32:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24376 invoked from network); 15 Jan 2024 10:04:06 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Haonan Hou <haonan@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <8cd192bb-6b7f-5212-a338-113b5e5d6a31@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 15 Jan 2024 10:05:39 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-46226: Apache IoTDB: Remote Code Execution (RCE) risk via
 the UDF 

Severity: moderate

Affected versions:

- Apache IoTDB 1.0.0 through 1.2.2

Description:

Remote Code Execution vulnerability in Apache IoTDB.This issue affects Apac=
he IoTDB: from 1.0.0 through 1.2.2.

Users are recommended to upgrade to version 1.3.0, which fixes the issue.

Credit:

Glassy of EagleCloud (finder)

References:

https://iotdb.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2023-46226

