Received: (qmail 30021 invoked by uid 550); 18 Mar 2024 20:32:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3542 invoked from network); 18 Mar 2024 19:59:54 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Hans Van Akelyen <hansva@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <10544beb-6e33-1f1d-ab77-0c6e221fd2ac@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 18 Mar 2024 20:02:00 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-24683: Apache Hop Engine: ID isn't escaped when
 generating HTML 

Severity: low

Affected versions:

- Apache Hop Engine before 2.8.0

Description:

Improper Input Validation vulnerability in Apache Hop Engine.This issue aff=
ects Apache Hop Engine: before 2.8.0.

Users are recommended to upgrade to version 2.8.0, which fixes the issue.

When Hop Server writes links to the=C2=A0PrepareExecutionPipelineServlet pa=
ge one of the parameters provided to the user was not properly escaped.
The variable not properly escaped is the "id", which is not directly access=
ible by users creating pipelines making the risk of exploiting this low.

This issue only affects users using the Hop Server component and does not d=
irectly affect the client.

Credit:

Jonathan Leitschuh (finder)

References:

https://hop.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2024-24683

