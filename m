Received: (qmail 8063 invoked by uid 550); 24 Mar 2023 15:22:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32469 invoked from network); 24 Mar 2023 15:06:43 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Marcus Lange <marcus@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <150baa70-a243-0405-55e2-ee8525034fc4@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 24 Mar 2023 15:05:00 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-47502: Apache OpenOffice: Macro URL arbitrary script
 execution 

Severity: critical

Description:

Apache OpenOffice documents can contain links that call internal macros wit=
h arbitrary arguments. Several URI Schemes are defined for this purpose.


Links can be activated by clicks, or by automatic document events.

The execution of such links must be subject to user approval.

In the affected versions of OpenOffice, approval for certain links is not  =
 requested; when activated, such links could therefore result in arbitrary =
script execution.

Credit:

Altin Thartori (tin-z) (reporter)

References:

https://openoffice.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2022-47502

