Received: (qmail 22119 invoked by uid 550); 27 Nov 2025 07:10:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 16226 invoked from network); 27 Nov 2025 06:35:29 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Harikrishna Patnala <harikrishna@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <09607e98-888f-db6b-9891-5d82be4932eb@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 27 Nov 2025 06:35:16 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-59302: Apache CloudStack: Potential remote code execution
 on Javascript engine defined rules 

Severity: low=20

Affected versions:

- Apache CloudStack 4.18.0 before 4.20.2
- Apache CloudStack 4.21.0 before 4.22.0

Description:

In  Apache CloudStack improper control of generation of code ('Code Injecti=
on') vulnerability is found in the following APIs which are accessible only=
 to admins.

  *  quotaTariffCreate
  *  quotaTariffUpdate
  *  createSecondaryStorageSelector
  *  updateSecondaryStorageSelector
  *  updateHost
  *  updateStorage


This issue affects Apache CloudStack: from 4.18.0 before 4.20.2, from 4.21.=
0 before 4.22.0.=C2=A0Users are recommended to upgrade to versions 4.20.2 o=
r 4.22.0, which contain the fix.

The fix introduces a new global configuration flag, js.interpretation.enabl=
ed, allowing administrators to control the interpretation of JavaScript exp=
ressions in these APIs, thereby mitigating the code injection risk.

Credit:

Tianyi Cheng <chengtianyi@huawei.com> (finder)

References:

https://cloudstack.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2025-59302

