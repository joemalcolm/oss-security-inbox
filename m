Received: (qmail 30002 invoked by uid 550); 12 Nov 2024 14:24:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1082 invoked from network); 12 Nov 2024 13:37:28 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Daniel Augusto Veronezi Salvador <gutoveronezi@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <9f7004a5-fac8-2968-4fac-d050cffe15da@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 12 Nov 2024 13:37:16 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-50386: Apache CloudStack: Directly downloaded templates
 can be used to abuse KVM-based infrastructure 

Severity: important

Affected versions:

- Apache CloudStack 4.0.0 through 4.18.2.4
- Apache CloudStack 4.19.0.0 through 4.19.1.2

Description:

Account users in Apache CloudStack by default are allowed to register templ=
ates to be downloaded directly to the primary storage for deploying instanc=
es. Due to missing validation checks for KVM-compatible templates in CloudS=
tack 4.0.0 through 4.18.2.4 and 4.19.0.0 through 4.19.1.2, an attacker that=
 can register templates, can use them to deploy malicious instances on KVM-=
based environments and exploit this to gain access to the host filesystems =
that could result in the compromise of resource integrity and confidentiali=
ty, data loss, denial of service, and availability of KVM-based infrastruct=
ure managed by CloudStack.


Users are recommended to upgrade to Apache CloudStack 4.18.2.5 or 4.19.1.3,=
 or later, which addresses this issue.=20

Additionally, all user-registered KVM-compatible templates can be scanned a=
nd checked that they are flat files that should not be using any additional=
 or unnecessary features. For example, operators can run the following comm=
and on their file-based primary storage(s) and inspect the output. An empty=
 output for the disk being validated means it has no references to the host=
 filesystems; on the other hand, if the output for the disk being validated=
 is not empty, it might indicate a compromised disk. However, bear in mind =
that (i) volumes created from templates will have references for the templa=
tes at first and (ii) volumes can be consolidated while migrating, losing t=
heir references to the templates. Therefore, the command execution for the =
primary storages can show both false positives and false negatives.


for file in $(find /path/to/storage/ -type f -regex [a-f0-9\-]*.*); do echo=
 "Retrieving file [$file] info. If the output is not empty, that might indi=
cate a compromised disk; check it carefully."; qemu-img info -U $file | gre=
p file: ; printf "\n\n"; done
For checking the whole template/volume features of each disk, operators can=
 run the following command:


for file in $(find /path/to/storage/ -type f -regex [a-f0-9\-]*.*); do echo=
 "Retrieving file [$file] info."; qemu-img info -U $file; printf "\n\n"; do=
ne

Credit:

Kiran Chavala <kiranchavala@apache.org> (reporter)

References:

https://cloudstack.apache.org/blog/security-release-advisory-4.18.2.5-4.19.=
1.3
https://lists.apache.org/thread/d0x83c2cyglzzdw8csbop7mj7h83z95y
https://cloudstack.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-50386

