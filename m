Received: (qmail 14176 invoked by uid 550); 28 Dec 2023 21:21:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17696 invoked from network); 28 Dec 2023 21:04:45 -0000
Authentication-Results: apache.org; auth=none
Date: Thu, 28 Dec 2023 22:05:32 +0100
From: Arrigo Marchiori <ardovm@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <ZY3jHLo_uf0pDj9q@nuvolo>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Subject: [oss-security] CVE-2022-43680: Apache OpenOffice: "Use after free" fixed in libexpat

Severity: Moderate

Affected versions:

- Apache OpenOffice through 4.1.15

Description:

In libexpat through 2.4.9, there is a use-after free caused by
overeager destruction of a shared DTD in
XML_ExternalEntityParserCreate in out-of-memory situations.

References:
https://openoffice.apache.org/
https://www.cve.org/CVERecord?id=CVE-2022-43680
-- 
Arrigo
