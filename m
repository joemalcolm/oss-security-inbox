Received: (qmail 9744 invoked by uid 550); 13 Aug 2022 06:35:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5559 invoked from network); 12 Aug 2022 22:41:07 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: "Carl B. Marcum" <cmarcum@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <7644e755-cfdd-5fa1-6e85-ea43ef69802b@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 12 Aug 2022 22:38:45 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-37401: Apache OpenOffice Weak Master Keys 

Severity: important

Description:

Apache OpenOffice supports the storage of passwords for web connections in =
the user's configuration database. The stored passwords are encrypted with =
a single master key provided by the user. A flaw in OpenOffice existed wher=
e master key was poorly encoded resulting in weakening its entropy from 128=
 to 43 bits making the stored passwords vulnerable to a brute force attack =
if an attacker has access to the users stored config. This issue affects: A=
pache OpenOffice versions prior to 4.1.13.  Reference: CVE-2022-26307 - Lib=
reOffice

Credit:

 OpenSource Security GmbH on behalf of the German Federal Office for Inform=
ation Security

References:

https://www.openoffice.org/security/cves/CVE-2022-37401.html

