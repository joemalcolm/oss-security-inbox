Received: (qmail 15889 invoked by uid 550); 10 Apr 2023 08:27:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16347 invoked from network); 10 Apr 2023 06:14:53 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Heping Wang <peacewong@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <be3b46f7-0dbf-95cf-b512-1e4a4450763a@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 10 Apr 2023 06:14:37 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-27602: Apache Linkis publicsercice module unrestricted
 upload of file 

Severity: important

Description:

In Apache Linkis <=3D1.3.1, The PublicService module uploads=C2=A0files wit=
hout restrictions on the path to the uploaded=C2=A0files, and file types.


We recommend users upgrade the version of Linkis to version 1.3.2.=C2=A0

For versions=20

<=3D1.3.1, we suggest turning on the file path check switch in linkis.prope=
rties

`wds.linkis.workspace.filesystem.owner.check=3Dtrue`
`wds.linkis.workspace.filesystem.path.check=3Dtrue`

Credit:

Laihan (reporter)

References:

https://linkis.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2023-27602

