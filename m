Received: (qmail 12022 invoked by uid 550); 15 Oct 2024 19:02:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5389 invoked from network); 15 Oct 2024 18:32:18 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Daniel Augusto Veronezi Salvador <gutoveronezi@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <426f18fd-2fb7-fe9b-6be2-2f575b8a783f@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 15 Oct 2024 18:30:52 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-45219: Apache CloudStack: Uploaded and registered
 templates and volumes can be used to abuse KVM-based infrastructure 

Severity: important

Affected versions:

- Apache CloudStack 4.0.0 through 4.18.2.3
- Apache CloudStack 4.19.0.0 through 4.19.1.1

Description:

Account users in Apache CloudStack by default are allowed to upload and reg=
ister templates for deploying instances and volumes for attaching them as d=
ata disks to their existing instances. Due to missing validation checks for=
 KVM-compatible templates or volumes in CloudStack 4.0.0 through 4.18.2.3 a=
nd 4.19.0.0 through 4.19.1.1, an attacker that can upload or register templ=
ates and volumes, can use them to deploy malicious instances or attach uplo=
aded volumes to their existing instances on KVM-based environments and expl=
oit this to gain access to the host filesystems that could result in the co=
mpromise of resource integrity and confidentiality, data loss, denial of se=
rvice, and availability of KVM-based infrastructure managed by CloudStack.


Users are recommended to upgrade to Apache CloudStack 4.18.2.4 or 4.19.1.2,=
 or later, which addresses this issue.=20

Additionally, all user-uploaded or registered KVM-compatible templates and =
volumes can be scanned and checked that they are flat files that should not=
 be using any additional or unnecessary features. For example, operators ca=
n run this on their secondary storage(s) and inspect output. An empty outpu=
t for the disk being validated means it has no references to the host files=
ystems; on the other hand, if the output for the disk being validated is no=
t empty, it might indicate a compromised disk.


for file in $(find /path/to/storage/ -type f -regex [a-f0-9\-]*.*); do echo=
 "Retrieving file [$file] info. If the output is not empty, that might indi=
cate a compromised disk; check it carefully."; qemu-img info -U $file | gre=
p file: ; printf "\n\n"; done
The command can also be run for the file-based primary storages; however, b=
ear in mind that (i) volumes created from templates will have references fo=
r the templates at first and (ii) volumes can be consolidated while migrati=
ng, losing their references to the templates. Therefore, the command execut=
ion for the primary storages can show both false positives and false negati=
ves.

For checking the whole template/volume features of each disk, operators can=
 run the following command:


for file in $(find /path/to/storage/ -type f -regex [a-f0-9\-]*.*); do echo=
 "Retrieving file [$file] info."; qemu-img info -U $file; printf "\n\n"; do=
ne

Credit:

Daniel Augusto Veronezi Salvador <gutoveronezi@apache.org> (reporter)

References:

https://cloudstack.apache.org/blog/security-release-advisory-4.18.2.4-4.19.=
1.2
https://lists.apache.org/thread/ktsfjcnj22x4kg49ctock3d9tq7jnvlo
https://cloudstack.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-45219

