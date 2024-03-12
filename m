Received: (qmail 5319 invoked by uid 550); 12 Mar 2024 16:55:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3525 invoked from network); 12 Mar 2024 16:25:24 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Lari Hotari <lhotari@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <e3f919a5-2924-3eb5-3fbe-a383343a5f29@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 12 Mar 2024 16:29:16 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-27894: Apache Pulsar: Pulsar Functions Worker Allows
 Unauthorized File Access and Unauthorized HTTP/HTTPS Proxying 

Affected versions:

- Apache Pulsar 2.4.0 before 2.10.6
- Apache Pulsar 2.11.0 before 2.11.4
- Apache Pulsar 3.0.0 before 3.0.3
- Apache Pulsar 3.1.0 before 3.1.3
- Apache Pulsar 3.2.0 before 3.2.1

Description:

The Pulsar Functions Worker includes a capability that permits authenticate=
d users to create functions where the function's implementation is referenc=
ed by a URL. The supported URL schemes include "file", "http", and "https".=
 When a function is created using this method, the Functions Worker will re=
trieve the implementation from the URL provided by the user. However, this =
feature introduces a vulnerability that can be exploited by an attacker to =
gain unauthorized access to any file that the Pulsar Functions Worker proce=
ss has permissions to read. This includes reading the process environment w=
hich potentially includes sensitive information, such as secrets. Furthermo=
re, an attacker could leverage this vulnerability to use the Pulsar Functio=
ns Worker as a proxy to access the content of remote HTTP and HTTPS endpoin=
t URLs. This could also be used to carry out denial of service attacks.
This vulnerability also applies to the Pulsar Broker when it is configured =
with "functionsWorkerEnabled=3Dtrue".

This issue affects Apache Pulsar versions from 2.4.0 to 2.10.5, from 2.11.0=
 to 2.11.3, from 3.0.0 to 3.0.2, from 3.1.0 to 3.1.2, and 3.2.0.=20

2.10 Pulsar Function Worker users should upgrade to at least 2.10.6.
2.11 Pulsar Function Worker users should upgrade to at least 2.11.4.
3.0 Pulsar Function Worker users should upgrade to at least 3.0.3.
3.1 Pulsar Function Worker users should upgrade to at least 3.1.3.
3.2 Pulsar Function Worker users should upgrade to at least 3.2.1.

Users operating versions prior to those listed above should upgrade to the =
aforementioned patched versions or newer versions.

The updated versions of Pulsar Functions Worker will, by default, impose re=
strictions on the creation of functions using URLs. For users who rely on t=
his functionality, the Function Worker configuration provides two configura=
tion keys: "additionalEnabledConnectorUrlPatterns" and "additionalEnabledFu=
nctionsUrlPatterns". These keys allow users to specify a set of URL pattern=
s that are permitted, enabling the creation of functions using URLs that ma=
tch the defined patterns. This approach ensures that the feature remains av=
ailable to those who require it, while limiting the potential for unauthori=
zed access and exploitation.

Credit:

Lari Hotari of StreamNative (finder)

References:

https://pulsar.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-27894

