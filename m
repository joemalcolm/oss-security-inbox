Received: (qmail 14238 invoked by uid 550); 30 Aug 2022 16:44:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11912 invoked from network); 30 Aug 2022 16:41:09 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Kirk Lund <klund@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <fc373d19-9e46-80b5-fc19-c9aeed275c91@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 30 Aug 2022 16:40:52 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-37021: Apache Geode deserialization of untrusted data
 flaw when using JMX over RMI on Java 8.  

Severity: high - possible RCE

Description:

Apache Geode versions up to 1.12.5, 1.13.4 and 1.14.0 are vulnerable to a d=
eserialization of untrusted data flaw when using JMX over RMI on Java 8.=20

Any user still on Java 8 who wishes to protect against deserialization atta=
cks involving JMX or RMI should upgrade to Apache Geode 1.15 and Java 11.=20

If upgrading to Java 11 is not possible, then upgrade to Apache Geode 1.15 =
and specify "--J=3D-Dgeode.enableGlobalSerialFilter=3Dtrue" when starting a=
ny Locators or Servers. Follow the documentation for details on specifying =
any user classes that may be serialized/deserialized with the "serializable=
-object-filter" configuration option. Using a global serial filter will imp=
act performance.

This issue is being tracked as GEODE-9758

Mitigation:

Disable affected services such as JMX over RMI unless they are required. JM=
X over RMI can be disabled by setting Geode property `jmx-manager` to false=
; this property defaults to false on Servers and true on Locators.=20

