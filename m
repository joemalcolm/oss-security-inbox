Received: (qmail 3602 invoked by uid 550); 19 May 2026 16:18:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 29910 invoked from network); 19 May 2026 08:30:55 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Jacopo Cappellato <jacopoc@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <7196ee96-aadd-c830-9469-e20c5324c885@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 19 May 2026 08:29:20 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-29207: Apache OFBiz: Low-Privilege SSTI Leading to RCE in
 the Content Component 

Severity: important=20

Affected versions:

- Apache OFBiz before 24.09.06

Description:

Improper Neutralization of Special Elements Used in a Template Engine vulne=
rability in Apache OFBiz.

This issue affects Apache OFBiz: before 24.09.06.

Users are recommended to upgrade to version 24.09.06, which fixes the issue.

Please note that in the updated version, "Data Resource" records with dataT=
emplateTypeId =3D "FTL" are no longer supported.

Additionally, in the updated version, the "Ecommerce Customer" security gro=
up no longer includes content management grants. Users are advised to remov=
e these permissions from any production site as well.

Credit:

Lidor B / thisis0xczar of Novee Security (reporter)
Sho Odagiri of GMO Cybersecurity by Ierae, Inc. (reporter)

References:

https://ofbiz.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-29207

