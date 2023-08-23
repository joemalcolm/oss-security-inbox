Received: (qmail 27851 invoked by uid 550); 23 Aug 2023 17:29:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3280 invoked from network); 23 Aug 2023 10:33:10 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Ephraim Anierobi <ephraimanierobi@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <924cd47e-e1b8-b70e-88b1-4a7ddf11e15a@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 23 Aug 2023 10:32:26 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-40273: Session fixation in Apache Airflow web interface 

Severity: low

Affected versions:

- Apache Airflow before 2.7.0

Description:

The session fixation vulnerability allowed the authenticated user to contin=
ue accessing Airflow webserver even after the password of the user has been=
 reset by the admin - up until the expiry of the session of the user. Other=
 than manually cleaning the session database (for database=C2=A0session bac=
kend), or changing the secure_key and restarting the webserver, there were =
no mechanisms to force-logout the user (and all other users with that).

With this fix implemented, when using the=C2=A0database=C2=A0session backen=
d, the existing sessions of the user are invalidated when the password of t=
he user is reset. When using the securecookie=C2=A0session backend, the ses=
sions are NOT invalidated and still require changing the secure key and res=
tarting the webserver (and logging out all other users), but the user reset=
ting the password is informed about it with a flash message warning display=
ed in the UI. Documentation is also updated explaining this behaviour.

Users of Apache Airflow are advised to upgrade to version 2.7.0 or newer to=
 mitigate the risk associated with this vulnerability.

Credit:

Yusuf AYDIN (@h1_yusuf) (finder)
L3yx of Syclover Security Team. (finder)

References:

https://github.com/apache/airflow/pull/33347
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-40273

