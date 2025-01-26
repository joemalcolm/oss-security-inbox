Received: (qmail 5480 invoked by uid 550); 26 Jan 2025 12:34:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 27858 invoked from network); 26 Jan 2025 11:57:36 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Jason Gerlowski <gerlowskija@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <4c705481-0880-5c30-8d2a-f812d6545cd3@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sun, 26 Jan 2025 11:57:25 +0000
MIME-Version: 1.0
Subject: [oss-security] =?UTF-8?Q?CVE-2025-24814=3A_Apache_Solr=3A_Core-cr?=
 =?UTF-8?Q?eation_with_=22trusted=22_configset_can_?=
 =?UTF-8?Q?use_arbitrary_untrusted_files=20?=

Severity: moderate

Affected versions:

- Apache Solr through 9.7

Description:

Core creation allows users to replace "trusted" configset files with arbitr=
ary configuration

Solr instances that (1) use the "FileSystemConfigSetService" component (the=
 default in "standalone" or "user-managed" mode), and (2) are running witho=
ut authentication and authorization are vulnerable to a sort of privilege e=
scalation wherein individual "trusted" configset files can be ignored in fa=
vor of potentially-untrusted replacements available elsewhere on the filesy=
stem.=C2=A0 These replacement config files are treated as "trusted" and can=
 use "<lib>" tags to add to Solr's classpath, which an attacker might use t=
o load malicious code as a searchComponent or other plugin.

This issue affects all Apache Solr versions up through Solr 9.7.=C2=A0 User=
s can protect against the vulnerability by enabling authentication and auth=
orization on their Solr clusters or switching to SolrCloud (and away from "=
FileSystemConfigSetService").=C2=A0 Users are also recommended to upgrade t=
o Solr 9.8.0, which mitigates this issue by disabling use of "<lib>" tags b=
y default.

Credit:

pwn null (finder)

References:

https://solr.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2025-24814

