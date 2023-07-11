Received: (qmail 15930 invoked by uid 550); 11 Jul 2023 16:20:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 4072 invoked from network); 11 Jul 2023 15:50:29 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Dave Fisher <wave@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <6ced3d94-54c0-3b5d-2582-25dc94110b03@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 11 Jul 2023 15:50:17 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-31007: Apache Pulsar: Broker does not always disconnect
 client when authentication data expires 

Affected versions:

- Apache Pulsar before 2.9.5
- Apache Pulsar 2.10.0 through 2.10.3
- Apache Pulsar 2.11.0

Description:

Improper Authentication vulnerability in Apache Software Foundation Apache =
Pulsar Broker allows a client to stay connected to a broker after authentic=
ation data expires if the client connected through the Pulsar Proxy when th=
e broker is configured with authenticateOriginalAuthData=3Dfalse or if a cl=
ient connects directly to a broker with a specially crafted connect command=
 when the broker is configured with authenticateOriginalAuthData=3Dfalse.

This issue affects Apache Pulsar: through 2.9.4, from 2.10.0 through 2.10.3=
, 2.11.0.

2.9 Pulsar Broker users should upgrade to at least 2.9.5.
2.10 Pulsar Broker users should upgrade to at least 2.10.4.
2.11 Pulsar Broker users should upgrade to at least 2.11.1.
3.0 Pulsar Broker users are unaffected.
Any users running the Pulsar Broker for 2.8.* and earlier should upgrade to=
 one of the above patched versions.

Credit:

Michael Marshall of DataStax (finder)

References:

https://pulsar.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-31007

