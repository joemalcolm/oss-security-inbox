Received: (qmail 9820 invoked by uid 550); 28 Dec 2023 21:21:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32488 invoked from network); 28 Dec 2023 20:54:52 -0000
Authentication-Results: apache.org; auth=none
Date: Thu, 28 Dec 2023 21:55:38 +0100
From: Arrigo Marchiori <ardovm@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <ZY3gyvwqE8oxamz3@nuvolo>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Subject: [oss-security] CVE-2023-1183: Apache OpenOffice: Arbitrary file write in Apache
 OpenOffice Base

Severity: Moderate

Affected versions:

- Apache OpenOffice through 4.1.15

Description:

An attacker can craft an OBD containing a "database/script" file with
a SCRIPT command where the contents of the file could be written to a
new file whose location was determined by the attacker.

There are no known exploits of this vulnerability.
A proof-of-concept demonstration exists.

Thanks to the reporter for discovering this issue.

Credit:

The Apache OpenOffice Security Team would like to thank Gregor Kopf of Secfault Security GmbH (Germany) for discovering and reporting this attack vector and Fred Toussi for kindly providing a solution to this issue within HSQLDB.

References:
https://openoffice.apache.org/
https://www.cve.org/CVERecord?id=CVE-2023-1183
-- 
Arrigo
