Received: (qmail 30626 invoked by uid 550); 14 May 2025 02:45:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 9481 invoked from network); 14 May 2025 01:34:53 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Haonan Hou <haonan@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <f7dfed70-a7d5-960e-3853-6a0ba4b62e42@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 14 May 2025 01:34:05 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-26864: Apache IoTDB: Exposure of Sensitive Information in
 IoTDB OpenID Authentication 

Severity: low

Affected versions:

- Apache IoTDB 0.10.0 through 1.3.3
- Apache IoTDB 2.0.1-beta before 2.0.2

Description:

Exposure of Sensitive Information to an Unauthorized Actor, Insertion of Se=
nsitive Information into Log File vulnerability in the OpenIdAuthorizer of =
Apache IoTDB.

This issue affects Apache IoTDB: from 0.10.0 through 1.3.3, from 2.0.1-beta=
 before 2.0.2.

Users are recommended to upgrade to version 1.3.4 and 2.0.2, which fix the =
issue.

Credit:

Kyler Katz (finder)

References:

https://iotdb.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2025-26864

