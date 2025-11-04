Received: (qmail 18313 invoked by uid 550); 4 Nov 2025 16:03:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 16321 invoked from network); 4 Nov 2025 12:37:57 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Mingyu Chen <morningman@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <40888c89-bf79-f64b-4fd4-da9137d40615@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 04 Nov 2025 12:37:33 +0000
MIME-Version: 1.0
Subject: [oss-security] =?UTF-8?Q?CVE-2025-58337=3A_Apache_Doris-MCP-Serve?=
 =?UTF-8?Q?r=3A_Improper_Access_Control_results_in_?=
 =?UTF-8?Q?bypassing_a_=22read-only=22_mode_for_dor?=
 =?UTF-8?Q?is-mcp-server_MCP_Server=20?=

Severity: moderate=20

Affected versions:

- Apache Doris-MCP-Server 0.1.0 before 0.6.0

Description:

An attacker with a valid read-only account can bypass Doris MCP Server=E2=
=80=99s read-only mode due to improper access control, allowing modificatio=
ns that should have been prevented by read-only restrictions.


Impact:

Bypasses read-only mode; attackers with read-only access may perform unauth=
orized modifications.




Recommended action for operators: Upgrade to version 0.6.0 as soon as possi=
ble (this release contains the fix).

Credit:

Liran Tal, (liran@lirantal.com) (finder)

References:

https://doris.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2025-58337

