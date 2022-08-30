Received: (qmail 13651 invoked by uid 550); 30 Aug 2022 17:07:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13366 invoked from network); 30 Aug 2022 17:07:08 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Kirk Lund <klund@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <e1baad62-b4a0-101a-c3bc-366d426e778c@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 30 Aug 2022 17:06:53 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-37022: Apache Geode deserialization of untrusted data
 flaw when using JMX over RMI on Java 11 

Severity: high - possible RCE

Description:

Apache Geode versions up to 1.12.2 and 1.13.2 are vulnerable to a deseriali=
zation of untrusted data flaw when using JMX over RMI on Java 11.

Any user wishing to protect against deserialization attacks involving JMX o=
r RMI should upgrade to Apache Geode 1.15. Use of 1.15 on Java 11 will auto=
matically protect JMX over RMI against deserialization attacks. This should=
 have no impact on performance since it only affects JMX/RMI which Gfsh use=
s to communicate with the JMX Manager which is hosted on a Locator.

This issue is being tracked as GEODE-9064

Mitigation:

Disable affected services such as JMX over RMI unless they are required. JM=
X over RMI can be disabled by setting Geode property `jmx-manager` to false=
; this property defaults to false on Servers and true on Locators.=20

