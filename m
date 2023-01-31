Received: (qmail 1763 invoked by uid 550); 31 Jan 2023 07:35:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31896 invoked from network); 31 Jan 2023 07:31:19 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Heping Wang <peacewong@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <2aff3b25-81e9-1bbd-6338-cea12a825809@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 31 Jan 2023 07:31:04 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-44644: Apache Linkis (incubating): The DatasourceManager
 module has a Local File Read Vulnerability 

Severity: important

Description:

In Apache Linkis <=3D1.3.0 when used with the MySQL Connector/J, an authent=
icated attacker could read arbitrary local file by connecting a rogue mysql=
 server, By adding allowLoadLocalInfile to true in the jdbc parameter. Ther=
efore, the parameters in the jdbc url should be blacklisted. Versions of Ap=
ache Linkis <=3D 1.3.0 will be affected.=C2=A0

We recommend users upgrade the version of Linkis to version 1.3

Credit:

Department of Cyber Security Research (Jumbo, Unc1e), Beijing Zhiqian Techn=
ology Co., LTD (reporter)
s3gundo of Hundsun Tech  (reporter)

References:

https://linkis.incubator.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2022-44644

