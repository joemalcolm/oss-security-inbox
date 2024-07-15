Received: (qmail 27859 invoked by uid 550); 15 Jul 2024 23:12:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13853 invoked from network); 15 Jul 2024 23:05:15 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Huajie Wang <benjobs@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <5c661d31-4e97-a79c-b0ff-3f23b6bab847@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 15 Jul 2024 23:05:06 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-52290: Apache StreamPark (incubating): Unchecked SQL
 query fields trigger SQL injection vulnerability 

Severity: low

Affected versions:

- Apache StreamPark (incubating) 2.0.0 before 2.1.4

Description:

In streampark-console the list pages(e.g: application pages), users can sor=
t page by field. This sort field is sent from the front-end to the back-end=
, and the SQL query is generated using this field. However, because this so=
rt field isn't validated, there is a risk of SQL injection vulnerability.=
=C2=A0The attacker must successfully log into the system to launch an attac=
k, which may cause data leakage. Since no data will be written, so this is =
a low-impact vulnerability.

Mitigation:

all users should upgrade to 2.1.4,  Such parameters will be blocked.

Credit:

thiscodecc of MoyunSec Vlab and Bing (reporter)

References:

https://streampark.incubator.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2023-52290

