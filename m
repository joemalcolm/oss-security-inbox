Received: (qmail 19640 invoked by uid 550); 2 Sep 2023 20:43:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18103 invoked from network); 2 Sep 2023 20:42:12 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Marton Szasz <szaszm@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <254f89c1-4e22-9920-273e-2bc4a3642dc3@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sat, 02 Sep 2023 20:41:50 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-41180: Apache NiFi MiNiFi C++: Incorrect Certificate
 Validation in InvokeHTTP for MiNiFi C++ 

Severity: important

Affected versions:

- Apache NiFi MiNiFi C++ 0.13.0 through 0.14.0

Description:

Incorrect certificate validation in InvokeHTTP on Apache NiFi MiNiFi C++ ve=
rsions 0.13 to 0.14 allows an intermediary to present a forged certificate =
during TLS handshake negotation. The Disable Peer Verification property of =
InvokeHTTP was effectively flipped,  disabling verification by default, whe=
n using HTTPS.

Mitigation: Set the Disable Peer Verification property of InvokeHTTP to tru=
e when using MiNiFi C++ versions 0.13.0 or 0.14.0. Upgrading to MiNiFi C++ =
0.15.0 corrects the default behavior.

This issue is being tracked as MINIFICPP-2170=20

Credit:

Ferenc Gerlits (finder)

References:

https://nifi.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-41180
https://issues.apache.org/jira/browse/MINIFICPP-2170

