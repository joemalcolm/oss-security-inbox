Received: (qmail 16372 invoked by uid 550); 27 Feb 2024 13:36:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19885 invoked from network); 27 Feb 2024 10:20:13 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Arnout Engelen <engelen@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <1a565ece-cddc-2da2-a21d-bfe2a3c6e748@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 27 Feb 2024 10:21:39 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-27905: Apache Aurora: padding oracle can allow
 construction an authentication cookie 

Severity: important

Affected versions:

- Apache Aurora 0.5.0 or later

Description:

** UNSUPPORTED WHEN ASSIGNED ** Exposure of Sensitive Information to an Una=
uthorized Actor vulnerability in Apache Aurora.

An endpoint exposing internals to unauthenticated users can be used as a "p=
adding oracle" allowing an anonymous attacker to construct a valid authenti=
cation cookie. Potentially this could be combined with vulnerabilities in o=
ther components to achieve remote code execution.

As this project is retired, we do not plan to release a version that fixes =
this issue. Users are recommended to find an alternative or restrict access=
 to the instance to trusted users.

NOTE: This vulnerability only affects products that are no longer supported=
 by the maintainer.

Credit:

Quang Luong (reporter)
Duc Nguyen (reporter)

References:

https://attic.apache.org/projects/aurora.html
https://www.cve.org/CVERecord?id=3DCVE-2024-27905

