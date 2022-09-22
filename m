Received: (qmail 3675 invoked by uid 550); 22 Sep 2022 18:48:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11678 invoked from network); 22 Sep 2022 17:32:08 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Lari Hotari <lhotari@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <2b8ef975-bde6-eed7-3265-8f4d74cc9391@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 22 Sep 2022 17:31:53 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-24280: Apache Pulsar Proxy target broker address isn't
 validated 

Severity: important

Description:

Improper Input Validation vulnerability in Proxy component of Apache Pulsar=
 allows an attacker to make TCP/IP connection attempts that originate from =
the Pulsar Proxy's IP address.

When the Apache Pulsar Proxy component is used, it is possible to attempt t=
o open TCP/IP connections to any IP address and port that the Pulsar Proxy =
can connect to. An attacker could use this as a way for DoS attacks that or=
iginate from the Pulsar Proxy's IP address.
It hasn=E2=80=99t been detected that the Pulsar Proxy authentication can be=
 bypassed. The attacker will have to have a valid token to a properly secur=
ed Pulsar Proxy.

This issue affects Apache Pulsar Proxy versions 2.7.0 to 2.7.4; 2.8.0 to 2.=
8.2; 2.9.0 to 2.9.1; 2.6.4 and earlier.

Mitigation:

To address the issue, upgraded versions of Apache Pulsar Proxy will only al=
low connections to known broker ports 6650 and 6651 by default. In addition=
, it is necessary to limit proxied broker connections further to known brok=
er addresses by specifying brokerProxyAllowedHostNames and brokerProxyAllow=
edIPAddresses Pulsar Proxy settings. In Pulsar Helm chart deployments, the =
setting names should be prefixed with "PULSAR_PREFIX_".

2.7 users should upgrade Pulsar Proxies to 2.7.5 and apply configuration ch=
anges.
2.8 users should upgrade Pulsar Proxies to at least 2.8.3 and apply configu=
ration changes.
2.9 users should upgrade Pulsar Proxies to at least 2.9.2 and apply configu=
ration changes.
2.10 users should apply configuration changes.
Any users running the Pulsar Proxy 2.6.4 and earlier should upgrade to one =
of the above patched versions and apply configuration changes.

Credit:

This issue was discovered by Lari Hotari of DataStax.

