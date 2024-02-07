Received: (qmail 21680 invoked by uid 550); 7 Feb 2024 13:00:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1181 invoked from network); 7 Feb 2024 12:46:46 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: =?UTF-8?Q?Istv=C3=A1n_Fajth?= <pifta@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <dfb97456-33c7-be39-5288-c341a34fef0a@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 07 Feb 2024 12:49:17 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-39196: Apache Ozone: Missing mutual TLS authentication in
 one of the service internal Ozone Storage Container Manager endpoints 

Severity: moderate

Affected versions:

- Apache Ozone 1.2.0 through 1.3.0

Description:

Improper Authentication vulnerability in Apache Ozone.

The vulnerability allows an attacker to download metadata internal to the S=
torage Container Manager service without proper authentication.
The attacker is not allowed to do any modification within the Ozone Storage=
 Container Manager service using this vulnerability.
The accessible metadata does not contain sensitive information that can be =
used to exploit the system later on, and the accessible data does not make =
it possible to gain access to actual user data within Ozone.
This issue affects Apache Ozone: 1.2.0 and subsequent releases up until 1.3=
.0.

Users are recommended to upgrade to version 1.4.0, which fixes the issue.

References:

https://ozone.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2023-39196

