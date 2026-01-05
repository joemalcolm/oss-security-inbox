Received: (qmail 10046 invoked by uid 550); 5 Jan 2026 09:54:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13563 invoked from network); 5 Jan 2026 05:05:03 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Akira Ajisaka <aajisaka@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <381394ec-30e1-1a96-4f53-72558550966d@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 05 Jan 2026 05:03:54 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-66518: Apache Kyuubi: Unauthorized directory access due
 to missing path normalization 

Severity:=20

Affected versions:

- Apache Kyuubi (org.apache.kyuubi:kyuubi-server) 1.6.0 through <=3D1.10.2

Description:

Any client who can access to Apache Kyuubi Server via Kyuubi frontend proto=
cols can bypass server-side config kyuubi.session.local.dir.allow.list and =
use local files which are not listed in the config.

This issue affects Apache Kyuubi: from 1.6.0 through 1.10.2.

Users are recommended to upgrade to version 1.10.3 or upper, which fixes th=
e issue.

Credit:

Hiroki Egawa (reporter)
Hiroki Egawa (remediation developer)

References:

https://kyuubi.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2025-66518

