Received: (qmail 18046 invoked by uid 550); 3 Jan 2024 10:54:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32380 invoked from network); 3 Jan 2024 08:59:40 -0000
Authentication-Results: apache.org; auth=none
Date: Wed, 3 Jan 2024 10:00:42 +0100
From: Arrigo Marchiori <ardovm@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <ZZUiOjAZENfE5D7e@nuvolo>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Subject: [oss-security] CVE-2023-1183: Apache OpenOffice: Arbitrary file write in Apache
 OpenOffice Base

*** This announcement is a correction to the one sent on 28 December 2023.
*** The "Affected versions" information was wrong.

Severity: Moderate

Affected versions:

- Apache OpenOffice through 4.1.14

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
