Received: (qmail 24224 invoked by uid 550); 16 Jul 2024 19:42:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25661 invoked from network); 16 Jul 2024 19:01:00 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Dominik Riemer <riemer@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <f30bb525-c054-fb1a-b814-001b450d74cd@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 16 Jul 2024 19:00:49 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-30471: Apache StreamPipes: Potential creation of multiple
 identical accounts 

Severity: moderate

Affected versions:

- Apache StreamPipes through 0.93.0

Description:

Time-of-check Time-of-use (TOCTOU) Race Condition vulnerability in Apache S=
treamPipes in user self-registration.
This allows an attacker to potentially request the creation of multiple acc=
ounts with the same email address until the email address is registered, cr=
eating many identical users and corrupting StreamPipe's user management.
This issue affects Apache StreamPipes: through 0.93.0.

Users are recommended to upgrade to version 0.95.0, which fixes the issue.

Credit:

TonyNT from VNPT-NET (finder)

References:

https://streampipes.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2024-30471

