Received: (qmail 18356 invoked by uid 550); 3 Jan 2024 10:54:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32658 invoked from network); 3 Jan 2024 09:00:07 -0000
Authentication-Results: apache.org; auth=none
Date: Wed, 3 Jan 2024 10:01:09 +0100
From: Arrigo Marchiori <ardovm@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <ZZUiVTg5aqxXWaO2@nuvolo>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Subject: [oss-security] CVE-2022-43680: Apache OpenOffice: "Use after free" fixed in libexpat

*** This announcement is a correction to the one sent on 28 December 2023.
*** The "Affected versions" information was wrong.

Severity: Moderate

Affected versions:

- Apache OpenOffice through 4.1.14

Description:

In libexpat through 2.4.9, there is a use-after free caused by
overeager destruction of a shared DTD in
XML_ExternalEntityParserCreate in out-of-memory situations.

References:
https://openoffice.apache.org/
https://www.cve.org/CVERecord?id=CVE-2022-43680
-- 
Arrigo
