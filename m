Received: (qmail 22263 invoked by uid 550); 20 Dec 2023 07:41:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15921 invoked from network); 20 Dec 2023 03:25:30 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Michael Marshall <mmarshall@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <18193dfc-fdc7-566c-ff72-f2543331de43@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 20 Dec 2023 03:25:55 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-37544: Apache Pulsar WebSocket Proxy: Improper
 Authentication for WebSocket Proxy Endpoint Allows DoS 

Affected versions:

- Apache Pulsar WebSocket Proxy 2.8.0 through 2.8.*
- Apache Pulsar WebSocket Proxy 2.9.0 through 2.9.*
- Apache Pulsar WebSocket Proxy 2.10.0 through 2.10.4
- Apache Pulsar WebSocket Proxy 2.11.0 through 2.11.1
- Apache Pulsar WebSocket Proxy 3.0.0

Description:

Improper Authentication vulnerability in Apache Pulsar WebSocket Proxy allo=
ws an attacker to connect to the /pingpong endpoint without authentication.

This issue affects Apache Pulsar WebSocket Proxy: from 2.8.0 through 2.8.*,=
 from 2.9.0 through 2.9.*, from 2.10.0 through 2.10.4, from 2.11.0 through =
2.11.1, 3.0.0.

The known risks include a denial of service due to the WebSocket Proxy acce=
pting any connections, and excessive data transfer due to misuse of the Web=
Socket ping/pong feature.

2.10 Pulsar WebSocket Proxy users should upgrade to at least 2.10.5.
2.11 Pulsar WebSocket Proxy users should upgrade to at least 2.11.2.
3.0 Pulsar WebSocket Proxy users should upgrade to at least 3.0.1.
3.1 Pulsar WebSocket Proxy users are unaffected.
Any users running the Pulsar WebSocket Proxy for 2.8, 2.9, and earlier shou=
ld upgrade to one of the above patched versions.

Credit:

Michael Marshall of DataStax (finder)

References:

https://pulsar.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-37544

