Received: (qmail 8097 invoked by uid 550); 22 Sep 2022 18:49:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20086 invoked from network); 22 Sep 2022 17:45:56 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Michael Marshall <mmarshall@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <182c53cf-4478-dd22-915b-b54f8c8f21b0@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 22 Sep 2022 17:45:36 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-33683: Apache Pulsar: Disabled Certificate Validation
 makes Broker, Proxy Admin Clients vulnerable to MITM attack  

Severity: high

Description:

Apache Pulsar Brokers and Proxies create an internal Pulsar Admin Client th=
at does not verify peer TLS certificates, even when tlsAllowInsecureConnect=
ion is disabled via configuration. The Pulsar Admin Client's intra-cluster =
and geo-replication HTTPS connections are vulnerable to man in the middle a=
ttacks, which could leak authentication data, configuration data, and any o=
ther data sent by these clients.

An attacker can only take advantage of this vulnerability by taking control=
 of a machine 'between' the client and the server. The attacker must then a=
ctively manipulate traffic to perform the attack.

This issue affects Apache Pulsar Broker and Proxy versions 2.7.0 to 2.7.4; =
2.8.0 to 2.8.3; 2.9.0 to 2.9.2; 2.10.0; 2.6.4 and earlier.

Mitigation:

Any users running affected versions of the Pulsar Broker or Pulsar Proxy sh=
ould rotate static authentication data vulnerable to man in the middle atta=
cks used by these applications, including tokens and passwords.

2.7 users should upgrade Pulsar Brokers and Proxies to 2.7.5, and rotate vu=
lnerable authentication data, including tokens and passwords.
2.8 users should upgrade Pulsar Brokers and Proxies to 2.8.4, and rotate vu=
lnerable authentication data, including tokens and passwords.
2.9 users should upgrade Pulsar Brokers and Proxies to 2.9.3, and rotate vu=
lnerable authentication data, including tokens and passwords.
2.10 users should upgrade Pulsar Brokers and Proxies to 2.10.1, and rotate =
vulnerable authentication data, including tokens and passwords.
Any users running Pulsar Brokers and Proxies for 2.6 and earlier should upg=
rade to one of the above patched versions, and rotate vulnerable authentica=
tion data, including tokens and passwords.

In addition to upgrading, it is also necessary to enable hostname verificat=
ion to prevent man in the middle attacks. Please see CVE-2022-33682 for mor=
e information.

Credit:

This issue was discovered by Michael Marshall of DataStax.

