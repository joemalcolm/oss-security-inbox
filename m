Received: (qmail 14263 invoked by uid 550); 3 Mar 2025 15:47:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 15375 invoked from network); 3 Mar 2025 10:35:38 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Philipp Zehnder <zehnder@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <f3d67560-300e-67a5-f2c2-8a9ff9dd5486@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 03 Mar 2025 10:34:02 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-24778: Apache StreamPipes: Resources Permission
 Escalation 

Severity: important

Affected versions:

- Apache StreamPipes through 0.95.1

Description:

Improper privilege management in a REST interface allowed registered users =
to access unauthorized resources if the resource ID was know.=20





This issue affects Apache StreamPipes: through 0.95.1.

Users are recommended to upgrade to version 0.97.0 which fixes the issue.

References:

https://streampipes.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2024-24778

