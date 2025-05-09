Received: (qmail 30000 invoked by uid 550); 9 May 2025 15:35:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 24455 invoked from network); 9 May 2025 09:29:41 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Arnout Engelen <engelen@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <625df810-d6f4-caee-ab2a-25154228bfb7@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 09 May 2025 09:29:22 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-46392: Apache Commons Configuration: StackOverflowError
 loading untrusted configuration 

Severity: low

Affected versions:

- Apache Commons Configuration 1 before 2.0.0

Description:

Uncontrolled Resource Consumption vulnerability in Apache Commons Configura=
tion 1.x.

There are a number of issues in Apache Commons Configuration 1.x that allow=
 excessive resource consumption when loading untrusted configurations or us=
ing unexpected usage patterns. The Apache Commons Configuration team does n=
ot intend to fix these issues in 1.x. Apache Commons Configuration 1.x is s=
till safe to use in scenario's where you only load trusted configurations.=
=20


Users that load untrusted configurations or give attackers control over usa=
ge patterns are recommended to upgrade to the 2.x version line, which fixes=
 these issues. Apache Commons Configuration 2.x is not a drop-in replacemen=
t, but as it uses a separate Maven groupId and Java package namespace they =
can be loaded side-by-side, making it possible to do a gradual migration.

References:

https://www.cve.org/CVERecord?id=3DCVE-2024-29131
https://www.cve.org/CVERecord?id=3DCVE-2024-29133
https://commons.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2025-46392

