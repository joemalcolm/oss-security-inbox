Received: (qmail 30568 invoked by uid 550); 19 Nov 2023 13:42:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28671 invoked from network); 19 Nov 2023 08:00:23 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Xiang Chen <cdmikechen@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <9d46de17-2d89-2795-3096-6e2e46687e9a@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sun, 19 Nov 2023 07:59:35 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-46302: Apache Submarine: Fix CVE-2022-1471 SnakeYaml
 unsafe deserialization 

Severity: critical

Affected versions:

- Apache Submarine 0.7.0 before 0.8.0

Description:

Apache Software Foundation Apache Submarine has a bug when serializing agai=
nst yaml. The bug is caused by snakeyaml  https://nvd.nist.gov/vuln/detail/=
CVE-2022-1471 .

Apache Submarine uses JAXRS to define REST endpoints.  In order to
handle YAML requests (using application/yaml content-type), it defines
a YamlEntityProvider entity provider that will process all incoming
YAML requests.  In order to unmarshal the request, the readFrom method
is invoked, passing the entityStream containing the user-supplied data in `=
submarine-server/server-core/src/main/java/org/apache/submarine/server/util=
s/YamlUtils.java`.
=20
We have now fixed this issue in the new version by replacing to `jackson-da=
taformat-yaml`.
This issue affects Apache Submarine: from 0.7.0 before 0.8.0.=C2=A0Users ar=
e recommended to upgrade to version 0.8.0, which fixes this issue.
If using the version smaller than 0.8.0  and not want to upgrade, you can t=
ry cherry-pick PR  https://github.com/apache/submarine/pull/1054  and rebui=
ld the submart-server image to fix this.

This issue is being tracked as SUBMARINE-1371=20

Credit:

GHSL team member @jorgectf (Jorge Rosillo) (reporter)

References:

https://issues.apache.org/jira/browse/SUBMARINE-1371
https://github.com/apache/submarine/pull/1054
https://submarine.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-46302
https://issues.apache.org/jira/browse/SUBMARINE-1371

