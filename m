Received: (qmail 17748 invoked by uid 550); 7 Nov 2023 10:23:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19725 invoked from network); 7 Nov 2023 09:53:49 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Jacques Le Roux <jleroux@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <ab5131d7-9e35-8e4b-1e13-48504f3eb9b2@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 07 Nov 2023 09:53:35 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-46819: Apache OFBiz: Execution of Solr plugin queries
 without authentication 

Severity: moderate

Affected versions:

- Apache OFBiz before 18.12.09

Description:

Missing Authentication in Apache Software Foundation Apache OFBiz when usin=
g the Solr plugin.
This issue affects Apache OFBiz: before 18.12.09.=C2=A0

Users are recommended to upgrade to version 18.12.09

Credit:

Anonymous by demand (finder)

References:

https://ofbiz.apache.org/download.html
https://ofbiz.apache.org/security.html
https://ofbiz.apache.org/release-notes-18.12.09.html
https://ofbiz.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-46819

