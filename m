Received: (qmail 32725 invoked by uid 550); 23 Aug 2023 17:29:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3646 invoked from network); 23 Aug 2023 10:33:58 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Ephraim Anierobi <ephraimanierobi@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <df82d924-d2b9-dabd-7463-de632d8aa201@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 23 Aug 2023 10:33:44 +0000
MIME-Version: 1.0
Subject: [oss-security] =?UTF-8?Q?CVE-2023-37379=3A_Apache_Airflow=3A_Expo?=
 =?UTF-8?Q?sure_of_sensitive_connection_information?=
 =?UTF-8?Q?=2C_DOS_and_SSRF_on_=22test_connection?=
 =?UTF-8?Q?=22_feature=20?=

Severity: moderate

Affected versions:

- Apache Airflow before 2.7.0

Description:

Apache Airflow, in versions prior to 2.7.0, contains a security vulnerabili=
ty that can be exploited by an authenticated user possessing Connection edi=
t privileges. This vulnerability allows the user to access connection infor=
mation and exploit the test connection feature by sending many requests, le=
ading to a denial of service (DoS) condition on the server. Furthermore, ma=
licious actors can leverage this vulnerability to establish harmful connect=
ions with the server.

Users of Apache Airflow are strongly advised to upgrade to version 2.7.0 or=
 newer to mitigate the risk associated with this vulnerability. Additionall=
y, administrators are encouraged to review and adjust user permissions to r=
estrict access to sensitive functionalities, reducing the attack surface.

Credit:

kuteminh11 (finder)
khoabda of Zalo Security Team (finder)
Sayooj B Kumar(Team bi0s & CRED Security team) (finder)
Son Tran from VNPT - VCI (finder)
KmhlYXJ0 (finder)

References:

https://github.com/apache/airflow/pull/32052
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-37379

