X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/17/31
Message-ID: <avzM8KQgJxBCszA9@netmeister.org>
Date: Tue, 17 Nov 2026 16:53:52 -0500
From: Jan Schaumann <jschauma@...meister.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-114938: OpenJDK pre-auth RCE via memory-corruption in Base64 decoder
Content-Type: text/plain; charset=utf-8

Today's internet hyped vulnerability appears to be
CVE-2026-114938, obligatorily named
"<something>[2|4]shell".

In this case, it's Java, specifically a
memory-corruption vulnerability in OpenJDK's Base64
decoder on x86-64 processors with AVX-512 VBMI
support leading to memory disclosure and RCE.


Calif.io set their priorities on publicity-maxxing, it
seems:

"After we disclosed PHP2Shell, we realized many people
didn't know what PHP was. So we decided to go after
something a little more familiar: Java."

Anyway, full details here:
https://calif.io/java4shell/

OpenJDK advisory (without any technical details) here:
https://openjdk.org/groups/vulnerability/advisories/2026-11-17

Oracle JDK release notes here:
https://www.oracle.com/security-alerts/cspunov2026.html

I haven't yet seen a link to the actual source code
fixes.

The Calif.io advisory includes many details, including
a self-contained PoC.  Notably, it appears the
corruption can trivially be triggered by simple 64 or
128
"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA="
strings to the decoder and their advisory lists at
least the following common applications as being
verified pre-auth RCE in their default
configuration:

- Keycloak
- Atlassian Jira
- Atlassian Confluence
- JFrog Artifactory
- Jenkins
- PingFederate

The vulnerability is said to affect OpenJDK
from version 17.0.6 or newer and the Calif.io advisory
lists the following distributions as vulnerable as
well:

- Amazon Corretto
- Eclipse Temurin
- Microsoft Build of OpenJDK
- Azul Zulu
- BellSoft Liberica
- SAP SapMachine
- Red Hat OpenJDK
- Oracle OpenJDK
- Oracle Java SE
- Oracle GraalVM for JDK
- Oracle Java SE 8u511b33-perf, 17.0.21.0.3,
  21.0.13.0.3, 25.0.5.0.3, 27.0.1.0.3. 

For CPUs that are affected, it lists

"
- Intel Xeon: Ice Lake, Sapphire Rapids, Emerald
  Rapids, Granite Rapids
- AMD EPYC and Ryzen: Zen 4 or newer

On Linux, you can check whether your CPU is vulnerable
with this command:

grep -m1 '^flags' /proc/cpuinfo | tr ' ' '\n' | \
	grep -E '^(avx512f|avx512bw|avx512vbmi|bmi2)$'

The output must include all four flags.
"

Besides upgrading, the advisory also says:

"
You can also mitigate Java4Shell by starting OpenJDK
with either:

-XX:-UseBASE64Intrinsics to disable hardware-accelerated
  Base64 encoding and decoding, or
-XX:UseAVX=2 to disable AVX-512. Apply this flag only
  on x86-64 hosts. OpenJDK on ARM doesn't recognize it
  and will fail to start.
"
