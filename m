Received: (qmail 14251 invoked by uid 550); 27 Nov 2023 09:53:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32649 invoked from network); 27 Nov 2023 09:39:22 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Daniel Gaspar <dpgaspar@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <aae46329-1847-01a5-95f0-6fa1d5672c0c@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 27 Nov 2023 09:39:08 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-42501: Apache Superset: Unnecessary read permissions
 within the Gamma role 

Affected versions:

- Apache Superset before 2.1.2

Description:

Unnecessary read permissions within the Gamma role would allow authenticate=
d users to read configured CSS templates and annotations.
This issue affects Apache Superset: before 2.1.2.
Users should upgrade to version or above 2.1.2 and run `superset init` to r=
econstruct the Gamma role or remove `can_read` permission from the mentione=
d resources.

Credit:

Miguel Segovia Gil (finder)

References:

https://superset.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2023-42501

