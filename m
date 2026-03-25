Received: (qmail 5825 invoked by uid 550); 25 Mar 2026 14:30:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5795 invoked from network); 25 Mar 2026 14:30:45 -0000
Date: Wed, 25 Mar 2026 10:30:35 -0400
From: Jan Schaumann <jschauma@netmeister.org>
To: oss-security@lists.openwall.com
Message-ID: <acPxcn816qOzTzPk@netmeister.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
Subject: [oss-security] backdoor in litellm version 1.82.7

The python package 'litellm' was compromised
(apparently via the earlier trivy compromise) and a
malicious version included code to steal credentials
and install a backdoor.

https://github.com/BerriAI/litellm/issues/24512
https://github.com/advisories/GHSA-5mg7-485q-xm76

https://futuresearch.ai/blog/litellm-pypi-supply-chain-attack/

Full PYSEC-2026-2 advisory below:

https://osv.dev/vulnerability/PYSEC-2026-2

---
Import Source
https://github.com/pypa/advisory-database/blob/main/vulns/litellm/PYSEC-2026-2.yaml

JSON Data
https://api.osv.dev/v1/vulns/PYSEC-2026-2

Aliases
* MAL-2026-2144

Published
2026-03-24T16:15:08.809028Z

Modified
2026-03-24T22:41:32.746566Z

Summary
Two litellm versions published containing credential harvesting
malware

Details

After an API Token exposure from an exploited Trivy dependency,
two new releases of litellm were uploaded to PyPI containing
automatically activated malware, harvesting sensitive credentials
and files, and exfiltrating to a remote API.

The malicious code runs during importing any module from the
package and scans the file system and environment variables,
collecting all kinds of sensitive data, including but not limited
to private SSH keys, credentials to Git and Docker repositories,
dotenv files, tokens to Kubernetes service accounts, databases and
LDAP configuration. Also exfiltrated are multiple shell history
files and cryptowallet keys. The malware actively attempts to
obtain cloud access tokens from metadata servers and retrieve
secrets stored in AWS Secrets Manager. All collected data are sent
to the domain models.litellm[.]cloud

Furthermore, the code includes a persistence mechanism by
configuring a SystemD service unit masqueraded as "System
Telemetry Service" on the host it runs on, and in a Kubernetes
environment also by creating a new pod. The persistence script
then contacts hxxps://checkmarx[.]zone/raw for further
instructions.

Anyone who has installed and run the project should assume any
credentials available to litellm environment may have been
exposed, and revoke/rotate them accordingly. The affected
environment should be isolated and carefully reviewed against any
unexpected modifications and network traffic.

References
* https://inspector.pypi.io/project/litellm/1.82.8/packages/f6/2c/731b614e6cee0bca1e010a36fd381fba69ee836fe3cb6753ba23ef2b9601/litellm-1.82.8.tar.gz/litellm-1.82.8/litellm_init.pth#line.1
* https://inspector.pypi.io/project/litellm/1.82.7/packages/79/5f/b6998d42c6ccd32d36e12661f2734602e72a576d52a51f4245aef0b20b4d/litellm-1.82.7-py3-none-any.whl/litellm/proxy/proxy_server.py#line.130
* https://github.com/BerriAI/litellm/issues/24518
* https://futuresearch.ai/blog/litellm-pypi-supply-chain-attack/
* https://www.wiz.io/blog/teampcp-attack-kics-github-action

Credits
*    * Callum McMahon, Futuresearch - REPORTER
*    * Mike Fiedler - COORDINATOR
*    * Kamil Mańkowski - ANALYST

Affected packages

PyPI / litellm

Package

Name
litellm
View open source insights on deps.dev

Purl
pkg:pypi/litellm

Affected ranges

Type
ECOSYSTEM

Events
Introduced
1.82.7
Last affected
1.82.8

Affected versions

1.*
1.82.7
1.82.8

Database specific

source

"https://github.com/pypa/advisory-database/blob/main/vulns/litellm/PYSEC-2026-2.yaml"

PYSEC-2026-2 - OSV
