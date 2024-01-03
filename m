Received: (qmail 17502 invoked by uid 550); 3 Jan 2024 10:54:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32209 invoked from network); 3 Jan 2024 08:59:25 -0000
Authentication-Results: apache.org; auth=none
Date: Wed, 3 Jan 2024 10:00:12 +0100
From: Arrigo Marchiori <ardovm@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <ZZUiHKyFw0WUBc_F@nuvolo>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Subject: [oss-security] CVE-2023-47804: Apache OpenOffice: Macro URL arbitrary script
 execution

*** This announcement is a correction to the one sent on 28 December 2023.
*** The "Affected versions" information was wrong.

Severity: important

Affected versions:

- Apache OpenOffice through 4.1.14

Description:

Apache OpenOffice documents can contain links that call internal macros with arbitrary arguments. Several URI Schemes are defined for this purpose.

Links can be activated by clicks, or by automatic document events.

The execution of such links must be subject to user approval.

In the affected versions of OpenOffice, approval for certain links is not requested; when activated, such links could therefore result in arbitrary script execution.

This is a corner case of CVE-2022-47502.

Credit:

Amel BOUZIANE-LEBLOND aka Icare Bug Bounty Hunter (reporter)

References:

https://openoffice.apache.org/
https://www.cve.org/CVERecord?id=CVE-2023-47804
-- 
Arrigo
