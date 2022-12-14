Received: (qmail 1686 invoked by uid 550); 14 Dec 2022 11:17:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28595 invoked from network); 14 Dec 2022 01:07:36 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Madhan Neethiraj <madhan@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <36682633-71ed-3c1e-9e83-5e5f41d62c94@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 14 Dec 2022 01:07:22 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-34271: Apache Atlas: zip path traversal in import
 functionality 

Severity: moderate

Description:

A vulnerability in import module of Apache Atlas allows an authenticated us=
er to write to web server filesystem.  This issue affects Apache Atlas vers=
ions from 0.8.4 to 2.2.0.

This issue is being tracked as ATLAS-4622=20

Credit:

Huangzhicong (finder)

References:

https://atlas.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2022-34271
https://issues.apache.org/jira/browse/ATLAS-4622

