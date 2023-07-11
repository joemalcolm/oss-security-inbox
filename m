Received: (qmail 16197 invoked by uid 550); 11 Jul 2023 16:20:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5596 invoked from network); 11 Jul 2023 15:51:03 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Dave Fisher <wave@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <593dd14d-afef-1ced-dda0-db0ff16d6f12@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 11 Jul 2023 15:50:50 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-37579: Apache Pulsar Function Worker: Incorrect
 Authorization for Function Worker Can Leak Sink/Source Credentials 

Affected versions:

- Apache Pulsar Function Worker before 2.10.4
- Apache Pulsar Function Worker 2.11.0

Description:

Incorrect Authorization vulnerability in Apache Software Foundation Apache =
Pulsar Function Worker.

This issue affects Apache Pulsar: before 2.10.4, and 2.11.0.

Any authenticated user can retrieve a source's configuration or a sink's co=
nfiguration without authorization. Many sources and sinks contain credentia=
ls in the configuration, which could lead to leaked credentials. This vulne=
rability is mitigated by the fact that there is not a known way for an auth=
enticated user to enumerate another tenant's sources or sinks, meaning the =
source or sink name would need to be guessed in order to exploit this vulne=
rability.

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
https://www.cve.org/CVERecord?id=3DCVE-2023-37579

