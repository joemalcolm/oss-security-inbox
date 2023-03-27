Received: (qmail 5146 invoked by uid 550); 27 Mar 2023 16:23:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3474 invoked from network); 27 Mar 2023 16:21:50 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: James Dailey <jdailey@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <7fe42fad-2af9-3df6-b782-f527e99c1430@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 27 Mar 2023 16:20:40 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-25195: Apache Fineract: SSRF template type vulnerability
 in certain authenticated users 

Severity: moderate

Description:

Server-Side Request Forgery (SSRF) vulnerability in Apache Software Foundat=
ion Apache Fineract.
Authorized users with limited permissions can gain access to server and may=
 be able to use server for any outbound traffic.=C2=A0

This issue affects Apache Fineract: from 1.4 through 1.8.3.

Credit:

Huydoppa from GHTK  (reporter)
Aleksander (remediation developer)

References:

https://fineract.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-25195

