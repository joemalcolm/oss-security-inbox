Received: (qmail 24043 invoked by uid 550); 14 Oct 2025 16:08:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 15853 invoked from network); 14 Oct 2025 14:09:03 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: William Hodges <whodges@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <aeebc9d5-8d3f-f6fd-c49b-d35e5fe5326c@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 14 Oct 2025 14:06:40 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-44088: Apache Geode: Reflected XSS 

Severity: moderate=20

Affected versions:

- Apache Geode (org.apache.geode:geode-web-api) 1.1.0 before 1.15.2

Description:

Malicious script injection ('Cross-site Scripting') vulnerability in Apache=
 Geode=C2=A0web-api (REST). This vulnerability allows an attacker that tric=
ks a logged-in user into clicking a specially-crafted link to execute code =
on the returned page, which could lead to theft of the user's session infor=
mation and even account takeover.



This issue affects Apache Geode: all versions prior to 1.15.2

Users are recommended to upgrade to version 1.15.2, which fixes the issue.

Credit:

Nbxiglk (finder)

References:

https://geode.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-44088

