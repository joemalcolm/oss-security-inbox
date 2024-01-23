Received: (qmail 7427 invoked by uid 550); 23 Jan 2024 13:55:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12250 invoked from network); 23 Jan 2024 13:16:19 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Daniel Gaspar <dpgaspar@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <76e58427-f95c-0edf-2b96-8df659f0ddb0@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 23 Jan 2024 13:18:12 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-49657: Apache Superset: Stored XSS in Dashboard Title and
 Chart Title 

Affected versions:

- Apache Superset through 3.0.3

Description:

A stored cross-site scripting (XSS) vulnerability exists in Apache Superset=
 before 3.0.3.=C2=A0An authenticated attacker with create/update permission=
s on charts or dashboards could store a script or add a specific HTML snipp=
et that would act as a stored XSS.

For 2.X versions, users should change their config to include:

TALISMAN_CONFIG =3D {
=C2=A0 =C2=A0 "content_security_policy": {
=C2=A0 =C2=A0 =C2=A0 =C2=A0 "base-uri": ["'self'"],
=C2=A0 =C2=A0 =C2=A0 =C2=A0 "default-src": ["'self'"],
=C2=A0 =C2=A0 =C2=A0 =C2=A0 "img-src": ["'self'", "blob:", "data:"],
=C2=A0 =C2=A0 =C2=A0 =C2=A0 "worker-src": ["'self'", "blob:"],
=C2=A0 =C2=A0 =C2=A0 =C2=A0 "connect-src": [
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 "'self'",
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 " https://api.mapbox.com" https:/=
/api.mapbox.com" ;,
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 " https://events.mapbox.com" http=
s://events.mapbox.com" ;,
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ],
=C2=A0 =C2=A0 =C2=A0 =C2=A0 "object-src": "'none'",
=C2=A0 =C2=A0 =C2=A0 =C2=A0 "style-src": [
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 "'self'",
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 "'unsafe-inline'",
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ],
=C2=A0 =C2=A0 =C2=A0 =C2=A0 "script-src": ["'self'", "'strict-dynamic'"],
=C2=A0 =C2=A0 },
=C2=A0 =C2=A0 "content_security_policy_nonce_in": ["script-src"],
=C2=A0 =C2=A0 "force_https": False,
=C2=A0 =C2=A0 "session_cookie_secure": False,
}

Credit:

Nick Barnes, Praetorian Security Inc. (reporter)
Amit Laish =E2=80=93 GE Vernova (reporter)

References:

https://superset.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2023-49657

