Received: (qmail 5520 invoked by uid 550); 18 Dec 2025 20:05:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5211 invoked from network); 18 Dec 2025 19:53:18 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: David Handermann <exceptionfactory@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <0f47add6-164f-f58c-3b52-bbf66d589a61@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 18 Dec 2025 19:52:13 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-66524: Apache NiFi: Deserialization of Untrusted Data in
 GetAsanaObject Processor 

Severity:=20

Affected versions:

- Apache NiFi (org.apache.nifi:nifi-asana-processors) 1.20.0 through 2.6.0

Description:

Apache NiFi 1.20.0 through 2.6.0 include the GetAsanaObject Processor, whic=
h requires integration with a configurable Distribute Map Cache Client Serv=
ice for storing and retrieving state information. The GetAsanaObject Proces=
sor used generic Java Object serialization and deserialization without filt=
ering. Unfiltered Java object deserialization does not provide protection a=
gainst crafted state information stored in the cache server configured for =
GetAsanaObject. Exploitation requires an Apache NiFi system running with th=
e GetAsanaObject Processor, and direct access to the configured cache serve=
r. Upgrading to Apache NiFi 2.7.0 is the recommended mitigation, which repl=
aces Java Object serialization with JSON serialization. Removing the GetAsa=
naObject Processor located in the nifi-asana-processors-nar bundle also pre=
vents exploitation.

This issue is being tracked as NIFI-15292=20

Credit:

Jaeyeong Lee (finder)

References:

https://nifi.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2025-66524
https://issues.apache.org/jira/browse/NIFI-15292

Timeline:

2025-12-01: reported
2025-12-04: resolved

