Received: (qmail 15693 invoked by uid 550); 11 Jul 2023 16:20:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3610 invoked from network); 11 Jul 2023 15:49:47 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Dave Fisher <wave@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <3701072d-3473-d682-a769-43a8c65deaf3@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 11 Jul 2023 15:49:33 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-30429: Apache Pulsar: Incorrect Authorization for
 Function Worker when using mTLS Authentication through Pulsar Proxy 

Affected versions:

- Apache Pulsar before 2.10.4
- Apache Pulsar 2.11.0

Description:

Incorrect Authorization vulnerability in Apache Software Foundation Apache =
Pulsar.

This issue affects Apache Pulsar: before 2.10.4, and 2.11.0.

When a client connects to the Pulsar Function Worker via the Pulsar Proxy w=
here the Pulsar Proxy uses mTLS authentication to authenticate with the Pul=
sar Function Worker, the Pulsar Function Worker incorrectly performs author=
ization by using the Proxy's role for authorization instead of the client's=
 role, which can lead to privilege escalation, especially if the proxy is c=
onfigured with a superuser role.

The recommended mitigation for impacted users is to upgrade the Pulsar Func=
tion Worker to a patched version.

2.10 Pulsar Function Worker users should upgrade to at least 2.10.4.
2.11 Pulsar Function Worker users should upgrade to at least 2.11.1.
3.0 Pulsar Function Worker users are unaffected.
Any users running the Pulsar Function Worker for 2.9.* and earlier should u=
pgrade to one of the above patched versions.

Credit:

Michael Marshall of DataStax (finder)

References:

https://pulsar.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-30429

