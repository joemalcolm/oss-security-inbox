Received: (qmail 9289 invoked by uid 550); 13 Aug 2022 06:35:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3228 invoked from network); 12 Aug 2022 22:38:45 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: "Carl B. Marcum" <cmarcum@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <962c0ceb-9aef-7a4b-aff4-ac84839c8f21@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 12 Aug 2022 22:38:26 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-37400: Apache OpenOffice Static Initialization Vector
 Allows to Recover Passwords for Web Connections Without Knowing the Master
 Password 

Severity: important

Description:

Apache OpenOffice supports the storage of passwords for web connections in =
the user's configuration database. The stored passwords are encrypted with =
a single master key provided by the user. A flaw in OpenOffice existed wher=
e the required initialization vector for encryption was always the same whi=
ch weakens the security of the encryption making them vulnerable if an atta=
cker has access to the user's configuration data. This issue affects: Apach=
e OpenOffice versions prior to 4.1.13.
Reference: CVE-2022-26306 - LibreOffice

Credit:

OpenSource Security GmbH on behalf of the German Federal Office for Informa=
tion Security

References:

https://www.openoffice.org/security/cves/CVE-2022-37400.html

