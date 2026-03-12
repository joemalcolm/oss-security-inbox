Received: (qmail 13698 invoked by uid 550); 12 Mar 2026 16:58:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 24433 invoked from network); 12 Mar 2026 16:44:02 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: =?UTF-8?Q?Gy=C3=B6rgy_G=C3=A1l?= <ggal@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <9c967c49-30aa-ba43-d60d-59623e4b8243@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 12 Mar 2026 16:41:49 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-66249: Apache Livy: Unauthorized directory access 

Severity: important=20

Affected versions:

- Apache Livy (org.apache.livy:livy-server) 0.3.0-incubating before 0.9.0-i=
ncubating

Description:

Improper Limitation of a Pathname to a Restricted Directory ('Path Traversa=
l') vulnerability in Apache Livy.

This issue affects Apache Livy: from 0.3.0 before 0.9.0.

The vulnerability can only be exploited with non-default Apache Livy Server=
 settings. If=C2=A0the configuration value "livy.file.local-dir-whitelist" =
is set to a non-default value, the directory checking can be bypassed.

Users are recommended to upgrade to version 0.9.0, which fixes the issue.

Credit:

Hiroki Egawa (finder)

References:

https://livy.incubator.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2025-66249

