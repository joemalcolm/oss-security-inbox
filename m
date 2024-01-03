Received: (qmail 19741 invoked by uid 550); 3 Jan 2024 10:54:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1107 invoked from network); 3 Jan 2024 09:00:21 -0000
Authentication-Results: apache.org; auth=none
Date: Wed, 3 Jan 2024 10:01:23 +0100
From: Arrigo Marchiori <ardovm@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <ZZUiY7E8lePAGXq_@nuvolo>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Subject: [oss-security] CVE-2012-5639: Apache OpenOffice: Loading internal / external
 resources without warning

*** This announcement is a correction to the one sent on 28 December 2023.
*** The "Affected versions" information was wrong.

Severity: Moderate

Affected versions:

- Apache OpenOffice through 4.1.14

Description:

In Apache OpenOffice and LibreOffice embedded content will be opened
automatically without that a warning is shown.

Credit:

The Apache OpenOffice Security Team would like to thank Timo Warns and
Joachim Mammele for discovering and reporting this attack vector.

References:
https://openoffice.apache.org/
https://www.cve.org/CVERecord?id=CVE-2012-5639
-- 
Arrigo
