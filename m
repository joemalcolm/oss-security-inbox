Received: (qmail 11696 invoked by uid 550); 3 Nov 2022 19:21:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31781 invoked from network); 3 Nov 2022 18:40:49 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Michael Marshall <mmarshall@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <740d2f19-8818-9d6b-b356-8445e832f076@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 03 Nov 2022 18:40:12 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-33684: Apache Pulsar: Disabled Certificate Validation for
 OAuth Client Credential Requests makes C++/Python Clients vulnerable to
 MITM attack 

Severity: high

Description:

The Apache Pulsar C++ Client does not verify peer TLS certificates when mak=
ing HTTPS calls for the OAuth2.0 Client Credential Flow, even when tlsAllow=
InsecureConnection is disabled via configuration. This vulnerability allows=
 an attacker to perform a man in the middle attack and intercept and/or mod=
ify the GET request that is sent to the ClientCredentialFlow 'issuer url'. =
The intercepted credentials can be used to acquire authentication data from=
 the OAuth2.0 server to then authenticate with an Apache Pulsar cluster.

An attacker can only take advantage of this vulnerability by taking control=
 of a machine 'between' the client and the server. The attacker must then a=
ctively manipulate traffic to perform the attack.

The Apache Pulsar Python Client wraps the C++ client, so it is also vulnera=
ble in the same way.

This issue affects Apache Pulsar C++ Client and Python Client versions 2.7.=
0 to 2.7.4; 2.8.0 to 2.8.3; 2.9.0 to 2.9.2; 2.10.0 to 2.10.1; 2.6.4 and ear=
lier.

Mitigation:

Any users running affected versions of the C++ Client or the Python Client =
should rotate vulnerable OAuth2.0 credentials, including client_id and clie=
nt_secret.

2.7 C++ and Python Client users should upgrade to 2.7.5 and rotate vulnerab=
le OAuth2.0 credentials.
2.8 C++ and Python Client users should upgrade to 2.8.4 and rotate vulnerab=
le OAuth2.0 credentials.
2.9 C++ and Python Client users should upgrade to 2.9.3 and rotate vulnerab=
le OAuth2.0 credentials.
2.10 C++ and Python Client users should upgrade to 2.10.2 and rotate vulner=
able OAuth2.0 credentials.
3.0 C++ users are unaffected and 3.0 Python Client users will be unaffected=
 when it is released.
Any users running the C++ and Python Client for 2.6 or less should upgrade =
to one of the above patched versions.

Credit:

This issue was discovered by Michael Rowley, michaellrowley@protonmail.com

