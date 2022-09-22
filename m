Received: (qmail 3826 invoked by uid 550); 22 Sep 2022 18:48:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13618 invoked from network); 22 Sep 2022 17:35:06 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Michael Marshall <mmarshall@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <9e8dd09b-ec97-41bf-f741-16a35009e97c@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 22 Sep 2022 17:34:52 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-33681: Apache Pulsar: Improper Hostname Verification in
 Java Client and Proxy can expose authentication data via MITM 

Severity: high

Description:

Delayed TLS hostname verification in the Pulsar Java Client and the Pulsar =
Proxy make each client vulnerable to a man in the middle attack. Connection=
s from the Pulsar Java Client to the Pulsar Broker/Proxy and connections fr=
om the Pulsar Proxy to the Pulsar Broker are vulnerable. Authentication dat=
a is sent before verifying the server=E2=80=99s TLS certificate matches the=
 hostname, which means authentication data could be exposed to an attacker.

An attacker can only take advantage of this vulnerability by taking control=
 of a machine 'between' the client and the server. The attacker must then a=
ctively manipulate traffic to perform the attack by providing the client wi=
th a cryptographically valid certificate for an unrelated host. Because the=
 client sends authentication data before performing hostname verification, =
an attacker could gain access to the client=E2=80=99s authentication data. =
The client eventually closes the connection when it verifies the hostname a=
nd identifies the targeted hostname does not match a hostname on the certif=
icate.

Because the client eventually closes the connection, the value of the inter=
cepted authentication data depends on the authentication method used by the=
 client. Token based authentication and username/password authentication me=
thods are vulnerable because the authentication data can be used to imperso=
nate the client in a separate session.

This issue affects Apache Pulsar Java Client versions 2.7.0 to 2.7.4; 2.8.0=
 to 2.8.3; 2.9.0 to 2.9.2; 2.10.0; 2.6.4 and earlier.

Mitigation:

Any users running affected versions of the Java Client should rotate vulner=
able authentication data, including tokens and passwords.

2.7 Pulsar Java Client users should upgrade to 2.7.5, and rotate vulnerable=
 authentication data, including tokens and passwords.
2.8 Pulsar Java Client users should upgrade to 2.8.4, and rotate vulnerable=
 authentication data, including tokens and passwords.
2.9 Pulsar Java Client users should upgrade to 2.9.3, and rotate vulnerable=
 authentication data, including tokens and passwords.
2.10 Pulsar Java Client users should upgrade to 2.10.1, and rotate vulnerab=
le authentication data, including tokens and passwords.
Any users running the Pulsar Java Client for 2.6.4 and earlier should upgra=
de to one of the above patched versions, and rotate vulnerable authenticati=
on data, including tokens and passwords.

Credit:

This issue was discovered by Michael Marshall of DataStax.

