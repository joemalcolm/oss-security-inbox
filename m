Received: (qmail 14105 invoked by uid 550); 4 Feb 2026 16:22:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 28168 invoked from network); 4 Feb 2026 10:34:55 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Enxin Xie <linkinstar@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <1e84ae22-4804-9e9c-bce7-00c22cd7e7ff@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 04 Feb 2026 10:34:44 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-24735: Apache Answer: Revision API Improper Access
 Control leads to Information Disclosure 

Severity: important=20

Affected versions:

- Apache Answer through 1.7.1

Description:

Exposure of Private Personal Information to an Unauthorized Actor vulnerabi=
lity in Apache Answer.

This issue affects Apache Answer: through 1.7.1.

An unauthenticated API endpoint incorrectly exposes full revision history f=
or deleted content. This allows unauthorized user to retrieve restricted or=
 sensitive information.
Users are recommended to upgrade to version 2.0.0, which fixes the issue.

Credit:

Sho Odagiri of GMO Cybersecurity by Ierae, Inc. (reporter)

References:

https://answer.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2026-24735

