Received: (qmail 17809 invoked by uid 550); 12 Apr 2026 23:11:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 32709 invoked from network); 12 Apr 2026 18:24:39 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Richard Zowalla <rzo1@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <be1cf837-5a72-98f7-bccc-2046e79e7c6e@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sun, 12 Apr 2026 18:23:54 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-35565: Apache Storm UI: Stored Cross-Site Scripting (XSS)
 via Unsanitized Topology Metadata in Storm UI 

Severity: moderate=20

Affected versions:

- Apache Storm UI (org.apache.storm:storm-webapp) before 2.8.6

Description:

Stored Cross-Site Scripting (XSS) via Unsanitized Topology Metadata in Apac=
he Storm UI


Versions Affected: before 2.8.6


Description: The Storm UI visualization component interpolates topology met=
adata including component IDs, stream names, and grouping values directly i=
nto HTML via innerHTML in parseNode() and parseEdge() without sanitization =
at any layer. An authenticated user with topology submission rights could c=
raft a topology containing malicious HTML/JavaScript in component identifie=
rs (e.g., a bolt ID containing an onerror event handler). This payload flow=
s through Nimbus =E2=86=92 Thrift =E2=86=92 the Visualization API =E2=86=92=
 vis.js tooltip rendering, resulting in stored cross-site scripting.=C2=A0

In multi-tenant deployments where topology submission is available to less-=
trusted users but the UI is accessed by operators or administrators, this e=
nables privilege escalation through script execution in an admin's browser =
session.


Mitigation:=C2=A02.x users should upgrade to 2.8.6. Users who cannot upgrad=
e immediately should monkey-patch the parseNode() and parseEdge() functions=
 in the visualization JavaScript file to HTML-escape all API-supplied value=
s including nodeId, :capacity, :latency, :component, :stream, and :grouping=
=C2=A0before interpolation into tooltip HTML strings, and should additional=
ly restrict topology submission to trusted users via Nimbus ACLs as a defen=
se-in-depth measure.=C2=A0A guide on how to do this is available in the rel=
ease notes of 2.8.6.

Credit: This issue was discovered while investigating another report by K.

References:

https://storm.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-35565

