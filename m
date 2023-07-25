Received: (qmail 1115 invoked by uid 550); 25 Jul 2023 17:06:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26563 invoked from network); 25 Jul 2023 16:54:31 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Junkai Xue <jxue@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <d8fb0f6d-4865-c82f-91b7-d18788aaa16e@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 25 Jul 2023 16:54:17 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-38647: Apache Helix: Deserialization vulnerability in
 Helix workflow and REST 

Severity: important

Affected versions:

- Apache Helix through 1.2.0

Description:

An attacker can use SnakeYAML to deserialize java.net.URLClassLoader and ma=
ke it load a JAR from a specified URL, and then deserialize javax.script.Sc=
riptEngineManager to load code using that ClassLoader. This unbounded deser=
ialization can likely lead to remote code execution.=C2=A0The code can be r=
un in Helix REST start and Workflow creation.

Affect all the versions lower and include 1.2.0.

Affected products: helix-core, helix-rest

Mitigation: Short term, stop using any YAML based configuration and workflo=
w creation.
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Long term, a=
ll Helix version bumping up to 1.3.0

Credit:

Qing Xu (reporter)

References:

https://helix.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-38647

