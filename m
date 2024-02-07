Received: (qmail 7988 invoked by uid 550); 7 Feb 2024 10:58:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18180 invoked from network); 7 Feb 2024 06:40:57 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Michael Marshall <mmarshall@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <7b3190de-1e90-3539-9d60-55b1045d62ee@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 07 Feb 2024 06:43:26 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-51437: Apache Pulsar: Timing attack in SASL token
 signature verification 

Affected versions:

- Apache Pulsar through 2.10.5
- Apache Pulsar 2.11.0 through 2.11.2
- Apache Pulsar 3.0.0 through 3.0.1
- Apache Pulsar 3.1.0

Description:

Observable timing discrepancy vulnerability in Apache Pulsar SASL Authentic=
ation Provider can allow an attacker to forge a SASL Role Token that will p=
ass signature verification.
Users are recommended to upgrade to version 2.11.3, 3.0.2, or 3.1.1 which f=
ixes the issue. Users should also consider updating the configured secret i=
n the `saslJaasServerRoleTokenSignerSecretPath` file.

Any component matching an above version running the SASL Authentication Pro=
vider is affected. That includes the Pulsar Broker, Proxy, Websocket Proxy,=
 or Function Worker.

2.11 Pulsar users should upgrade to at least 2.11.3.
3.0 Pulsar users should upgrade to at least 3.0.2.
3.1 Pulsar users should upgrade to at least 3.1.1.
Any users running Pulsar 2.8, 2.9, 2.10, and earlier should upgrade to one =
of the above patched versions.

For additional details on this attack vector, please refer to  https://coda=
hale.com/a-lesson-in-timing-attacks/ .

Credit:

Yiheng Cao (finder)
Chenhao Lu  (finder)
Kaifeng Huang (finder)

References:

https://pulsar.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-51437

