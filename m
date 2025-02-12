Received: (qmail 22004 invoked by uid 550); 12 Feb 2025 19:03:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 19927 invoked from network); 12 Feb 2025 19:02:40 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Madhan Neethiraj <madhan@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <fccf9ddf-ae1d-74f0-5a73-40eee496a50c@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 12 Feb 2025 19:02:31 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-46910: Apache Atlas: An authenticated user can perform
 XSS and potentially impersonate another user 

Severity: important

Affected versions:

- Apache Atlas 2.0.0 through 2.3.0

Description:

An authenticated user can perform XSS and potentially impersonate another u=
ser.

This issue affects Apache Atlas versions=C2=A02.3.0 and earlier.

Users are recommended to upgrade to version 2.4.0, which fixes the issue.

Credit:

basavaraj@seciqtech.com (finder)

References:

https://atlas.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-46910

