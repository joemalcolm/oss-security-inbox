Received: (qmail 5788 invoked by uid 550); 17 Apr 2026 15:54:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 30515 invoked from network); 17 Apr 2026 09:34:42 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Mingyu Chen <morningman@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <721f27f6-7330-4d79-1608-c8d7de6afbc8@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 17 Apr 2026 09:34:31 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-66335: Apache Doris MCP Server: MCP SQL inject 

Severity: moderate=20

Affected versions:

- Apache Doris MCP Server 0.1.0 before 0.6.1

Description:

Apache Doris MCP Server versions earlier than 0.6.1 are affected by an impr=
oper neutralization flaw in query context handling that may allow execution=
 of unintended SQL statements and bypass of intended query validation and a=
ccess restrictions through the MCP query execution interface. Version 0.6.1=
 and later are not affected.

Credit:

Tomer Peled, Senior Security Researcher at Akamai (reporter)

References:

https://doris.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2025-66335

