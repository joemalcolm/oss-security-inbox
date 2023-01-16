Received: (qmail 7405 invoked by uid 550); 16 Jan 2023 11:56:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9939 invoked from network); 16 Jan 2023 09:20:14 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Daniel Gaspar <dpgaspar@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <28e387b6-3a42-cdc1-2477-a18329614f4e@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 16 Jan 2023 09:19:57 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-43719: Apache Superset: Cross Site Request Forgery (CSRF)
 on accept, request access API 

Severity: moderate

Description:

Two legacy REST API endpoints for approval and request access are vulnerabl=
e to cross site request forgery. This issue affects Apache Superset version=
 1.5.2 and prior versions and version 2.0.0.

Credit:

Positive Technologies (finder)

References:

https://superset.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2022-43719

