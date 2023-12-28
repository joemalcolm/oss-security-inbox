Received: (qmail 18068 invoked by uid 550); 28 Dec 2023 21:22:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22023 invoked from network); 28 Dec 2023 21:07:17 -0000
Authentication-Results: apache.org; auth=none
Date: Thu, 28 Dec 2023 22:08:02 +0100
From: Arrigo Marchiori <ardovm@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <ZY3jsgyKFEVWZJW4@nuvolo>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Subject: [oss-security] CVE-2012-5639: Apache OpenOffice: Loading internal / external
 resources without warning

Severity: Moderate

Affected versions:

- Apache OpenOffice through 4.1.15

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
