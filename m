Received: (qmail 13840 invoked by uid 550); 2 Mar 2026 20:19:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13819 invoked from network); 2 Mar 2026 20:19:21 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Velmurugan Periasamy <vel@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <cbedff95-f1bc-6d0a-73fc-5fe938ed329b@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 02 Mar 2026 20:19:09 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-59060: Apache Ranger: Hostname verification bypass in
 NiFiRegistryClient and NifiClient 

Severity: low=20

Affected versions:

- Apache Ranger through 2.7.0

Description:

Hostname verification bypass issue in Apache Ranger NiFiRegistryClient/NiFi=
Client is reported in Apache Ranger versions <=3D 2.7.0.

Users are recommended to upgrade to version 2.8.0, which fixes this issue.

Credit:

Nikita Markevich <markevich.nikita1@gmail.com> (finder)

References:

https://ranger.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2025-59060

