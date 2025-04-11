Received: (qmail 19585 invoked by uid 550); 11 Apr 2025 22:45:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 11433 invoked from network); 11 Apr 2025 22:33:01 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: "David M. Johnson" <snoopdave@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <b5d998a4-5f0f-d074-ff04-52974cd97e4d@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 11 Apr 2025 22:32:42 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-24859: Apache Roller: Insufficient Session Expiration on
 Password Change 

Severity: important

Affected versions:

- Apache Roller 1.0.0 before 6.1.5

Description:

A session management vulnerability exists in Apache Roller before version 6=
.1.5 where active user sessions are not properly invalidated after password=
 changes. When a user's password is changed, either by the user themselves =
or by an administrator, existing sessions remain active and usable. This al=
lows continued access to the application through old sessions even after pa=
ssword changes, potentially enabling unauthorized access if credentials wer=
e compromised.

This issue affects Apache Roller versions up to and including 6.1.4.

The vulnerability is fixed in Apache Roller 6.1.5 by implementing centraliz=
ed session management that properly invalidates all active sessions when pa=
sswords are changed or users are disabled.

Credit:

Haining Meng (finder)

References:

https://lists.apache.org/thread/vxv52vdr8nhtjlj6v02w43fdvo0cxw23
https://roller.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2025-24859

