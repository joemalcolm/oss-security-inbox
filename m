Received: (qmail 11504 invoked by uid 550); 28 Apr 2026 16:26:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13720 invoked from network); 28 Apr 2026 15:18:19 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Arnout Engelen <engelen@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <e77676e5-be58-77ad-2db7-ea34a4303c5a@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 28 Apr 2026 15:18:07 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-41873: Pony Mail: Admin account takeover via request
 smuggling 

Severity: critical=20

Affected versions:

- Pony Mail: all versions

Description:

** UNSUPPORTED WHEN ASSIGNED ** Inconsistent Interpretation of HTTP Request=
s ('HTTP Request/Response Smuggling') vulnerability in Pony Mail leading to=
 admin account takeover.

This issue affects all versions of the Lua implementation of Pony Mail. The=
re is a Python implementation under development under the name "Pony Mail F=
oal" that is not affected by this issue, but hasn't been released yet.

As the Lua implementation of this project is retired, we do not plan to rel=
ease a version that fixes this issue. Users are recommended to find an alte=
rnative or restrict access to the instance to trusted users.

NOTE: This vulnerability only affects products that are no longer supported=
 by the maintainer.

Credit:

Li Jiantao (@CurseRed) of STAR Labs SG Pte. Ltd. (@starlabs_sg) (finder)
Tevel Sho of STAR Labs SG Pte. Ltd (finder)

References:

https://ponymail.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2026-41873

