Received: (qmail 3386 invoked by uid 550); 12 Mar 2024 16:55:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1791 invoked from network); 12 Mar 2024 16:24:41 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Lari Hotari <lhotari@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <fd254354-936a-ef43-2d97-a59e35c97836@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 12 Mar 2024 16:28:25 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-27135: Apache Pulsar: Improper Input Validation in Pulsar
 Function Worker allows Remote Code Execution 

Severity: high

Affected versions:

- Apache Pulsar 2.4.0 before 2.10.6
- Apache Pulsar 2.11.0 before 2.11.4
- Apache Pulsar 3.0.0 before 3.0.3
- Apache Pulsar 3.1.0 before 3.1.3
- Apache Pulsar 3.2.0 before 3.2.1

Description:

Improper input validation in the Pulsar Function Worker allows a malicious =
authenticated user to execute arbitrary Java code on the Pulsar Function wo=
rker, outside of the sandboxes designated for running user-provided functio=
ns. This vulnerability also applies to the Pulsar Broker when it is configu=
red with "functionsWorkerEnabled=3Dtrue".

This issue affects Apache Pulsar versions from 2.4.0 to 2.10.5, from 2.11.0=
 to 2.11.3, from 3.0.0 to 3.0.2, from 3.1.0 to 3.1.2, and 3.2.0.=20

2.10 Pulsar Function Worker users should upgrade to at least 2.10.6.
2.11 Pulsar Function Worker users should upgrade to at least 2.11.4.
3.0 Pulsar Function Worker users should upgrade to at least 3.0.3.
3.1 Pulsar Function Worker users should upgrade to at least 3.1.3.
3.2 Pulsar Function Worker users should upgrade to at least 3.2.1.

Users operating versions prior to those listed above should upgrade to the =
aforementioned patched versions or newer versions.

Credit:

Lari Hotari of StreamNative (finder)

References:

https://pulsar.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-27135

