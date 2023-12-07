Received: (qmail 32739 invoked by uid 550); 7 Dec 2023 13:09:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15516 invoked from network); 7 Dec 2023 07:40:11 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Lukasz Lenart <lukaszlenart@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <0de3c6b5-0b22-ffee-d3c8-2cefbcdf6e80@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 07 Dec 2023 07:38:54 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-50164: Apache Struts: File upload component had a
 directory traversal vulnerability 

Severity: critical

Affected versions:

- Apache Struts 2.0.0 through 2.5.32
- Apache Struts 6.0.0 through 6.3.0.1

Description:

An attacker can manipulate file upload params to enable paths traversal and=
 under some circumstances this can lead to uploading a malicious file which=
 can be used to perform Remote Code Execution.
Users are recommended to upgrade to versions Struts 2.5.33 or=C2=A0 Struts =
6.3.0.1 or greater to=C2=A0fix this issue.

Credit:

Steven Seeley (reporter)

References:

https://lists.apache.org/thread/yh09b3fkf6vz5d6jdgrlvmg60lfwtqhj
https://struts.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-50164

