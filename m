Received: (qmail 5730 invoked by uid 550); 27 Mar 2023 16:23:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3628 invoked from network); 27 Mar 2023 16:22:08 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: James Dailey <jdailey@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <919ca824-7bfc-76a6-3d94-88b2c5bfea62@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 27 Mar 2023 16:21:18 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-25197: apache fineract: SQL injection vulnerability in
 certain procedure calls  

Severity: moderate

Description:

Improper Neutralization of Special Elements used in an SQL Command ('SQL In=
jection') vulnerability in Apache Software Foundation apache fineract.
Authorized users may be able to exploit this for limited impact on componen=
ts. =C2=A0

This issue affects apache fineract: from 1.4 through 1.8.2.

Credit:

Eugene Lim at Cyber Security Group (CSG) Government Technology Agency GOVTE=
CH.sg (reporter)
aleks@apache.org (remediation developer)

References:

https://fineract.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-25197

