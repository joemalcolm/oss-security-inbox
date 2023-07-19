Received: (qmail 7311 invoked by uid 550); 19 Jul 2023 11:18:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1864 invoked from network); 19 Jul 2023 06:25:08 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Weijie Wu <wuweijie@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <a3830426-0e83-631c-df91-6ba69c00a333@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 19 Jul 2023 06:24:52 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-28754: ShardingSphere-Agent: Deserialization
 vulnerability in ShardingSphere Agent 

Severity: low

Affected versions:

- ShardingSphere-Agent through 5.3.2

Description:

Deserialization of Untrusted Data vulnerability in Apache ShardingSphere-Ag=
ent, which allows attackers to execute arbitrary code by constructing a spe=
cial YAML configuration file.

The attacker needs to have permission to modify the ShardingSphere Agent YA=
ML configuration file on the target machine, and the target machine can acc=
ess the URL with the arbitrary code JAR.
An attacker can use SnakeYAML to deserialize java.net.URLClassLoader and ma=
ke it load a JAR from a specified URL, and then deserialize javax.script.Sc=
riptEngineManager to load code using that ClassLoader. When the ShardingSph=
ere JVM process starts and uses the ShardingSphere-Agent, the arbitrary cod=
e specified by the attacker will be executed during the deserialization of =
the YAML configuration file by the Agent.

This issue affects ShardingSphere-Agent: through 5.3.2. This vulnerability =
is fixed in Apache ShardingSphere 5.4.0.

Credit:

Liav Gutman of the JFrog CSO Research team (finder)

References:

https://shardingsphere.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2023-28754

