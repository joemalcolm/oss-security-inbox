X-Quarantine-ID: <fDFTlV60Aflp>
Received: (qmail 28239 invoked by uid 550); 24 Apr 2023 15:09:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17898 invoked from network); 24 Apr 2023 14:52:29 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Daniel Gaspar <dpgaspar@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <ead27614-dd19-1c40-1954-da3bf9197bf8@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 24 Apr 2023 14:51:36 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-30776: Apache Superset: Database connection password leak

Description:

An authenticated user with specific data permissions could access database =
connections stored passwords by requesting a specific REST API.=C2=A0This i=
ssue affects Apache Superset version 1.3.0 up to 2.0.1.

References:

https://superset.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2023-30776

