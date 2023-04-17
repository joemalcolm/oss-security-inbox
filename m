Received: (qmail 25723 invoked by uid 550); 17 Apr 2023 11:12:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1886 invoked from network); 17 Apr 2023 09:57:42 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Daniel Gaspar <dpgaspar@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <8b244a2b-5079-02db-135d-f584af57add3@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 17 Apr 2023 09:57:11 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-25504: Apache Superset: Possible SSRF on import datasets 

Description:

A malicious actor who has been authenticated and granted specific permissio=
ns in Apache Superset may use the import dataset feature in order to conduc=
t Server-Side Request Forgery
attacks and query internal resources on behalf of the server where Superset
is deployed. This vulnerability exists=C2=A0in Apache Superset versions up =
to and including 2.0.1.

Credit:

Alexey Sabadash, VK (finder)

References:

https://superset.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2023-25504

