Received: (qmail 26467 invoked by uid 550); 9 Dec 2023 15:34:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11911 invoked from network); 9 Dec 2023 06:55:20 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Lukasz Lenart <lukaszlenart@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <a82d6fd8-190f-8920-81ff-b063da186927@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sat, 09 Dec 2023 06:55:17 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-41835: Apache Struts: excessive disk usage 

Severity: moderate

Affected versions:

- Apache Struts 2.0.0 through 2.5.31
- Apache Struts 6.1.2.1 through 6.3.0

Description:

When a Multipart request is performed but some of the fields exceed the max=
StringLength=C2=A0 limit, the upload files will remain in struts.multipart.=
saveDir=C2=A0 even if the request has been denied.
Users are recommended to upgrade to versions Struts 2.5.32 or 6.1.2.2 or St=
ruts 6.3.0.1 or greater, which fixe this issue.

References:

https://lists.apache.org/thread/6wj530kh3ono8phr642y9sqkl67ys2ft
https://struts.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-41835

