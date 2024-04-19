Received: (qmail 7745 invoked by uid 550); 19 Apr 2024 10:02:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16143 invoked from network); 19 Apr 2024 02:07:57 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Enxin Xie <linkinstar@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <f7354f86-7b55-333d-1dd8-66dca1ea484b@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 19 Apr 2024 02:07:48 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-29217: Apache Answer: XSS vulnerability when changing
 personal website 

Severity: important

Affected versions:

- Apache Answer before 1.3.0

Description:

Improper Neutralization of Input During Web Page Generation ('Cross-site Sc=
ripting') vulnerability in Apache Answer.This issue affects Apache Answer: =
before 1.3.0.

XSS attack when user changes personal website. A logged-in user, when modif=
ying their personal website, can input malicious code in the website to cre=
ate such an attack.
Users are recommended to upgrade to version [1.3.0], which fixes the issue.

Credit:

Tsubasa Umeuchi (reporter)

References:

https://answer.incubator.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2024-29217

