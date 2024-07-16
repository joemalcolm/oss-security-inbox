Received: (qmail 25638 invoked by uid 550); 16 Jul 2024 19:42:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29905 invoked from network); 16 Jul 2024 19:02:50 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Dominik Riemer <riemer@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <3dcd4d1f-03c4-0bc8-bf24-b24352ab1afd@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 16 Jul 2024 19:01:26 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-31411: Apache StreamPipes: Potential remote code
 execution (RCE) via file upload 

Severity: moderate

Affected versions:

- Apache StreamPipes through 0.93.0

Description:

Unrestricted Upload of File with dangerous type vulnerability in Apache Str=
eamPipes.
Such a dangerous type might be an executable file that may lead to a remote=
 code execution (RCE).
The unrestricted upload is only possible for authenticated and authorized u=
sers.
This issue affects Apache StreamPipes: through 0.93.0.

Users are recommended to upgrade to version 0.95.0, which fixes the issue.

Credit:

L0ne1y (finder)

References:

https://streampipes.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2024-31411

