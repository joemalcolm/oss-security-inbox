Received: (qmail 24549 invoked by uid 550); 9 Dec 2024 16:10:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 28112 invoked from network); 9 Dec 2024 12:22:34 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Daniel Gaspar <dpgaspar@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <08d32082-d670-2e56-2054-a3cafe84439b@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 09 Dec 2024 12:22:22 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-53948: Apache Superset: Error verbosity exposes metadata
 in analytics databases 

Affected versions:

- Apache Superset before 4.1.0

Description:

Generation of Error Message Containing analytics metadata Information in Ap=
ache Superset.

This issue affects Apache Superset: before 4.1.0.

Users are recommended to upgrade to version 4.1.0, which fixes the issue.

Credit:

Bartosz Galaszewski (reporter)
Daniel Gaspar (remediation developer)

References:

https://superset.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2024-53948

