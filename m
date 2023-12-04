Received: (qmail 5601 invoked by uid 550); 4 Dec 2023 21:08:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22190 invoked from network); 4 Dec 2023 21:04:52 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Jacques Le Roux <jleroux@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <67c898ae-6e2b-c959-8115-24663fa01305@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 04 Dec 2023 21:04:50 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-49070: Pre-auth RCE in Apache Ofbiz 18.12.09 due to
 XML-RPC still present 

Severity: moderate

Affected versions:

- Apache OFBiz before 18.12.10

Description:

Pre-auth RCE in Apache Ofbiz 18.12.09.

It's due to XML-RPC=C2=A0no longer maintained=C2=A0still present.
This issue affects Apache OFBiz: before 18.12.10.=C2=A0
Users are recommended to upgrade to version 18.12.10

This issue is being tracked as OFBIZ-12812=20

Credit:

Siebene@ (finder)

References:

https://ofbiz.apache.org/download.html
https://ofbiz.apache.org/security.html
https://ofbiz.apache.org/release-notes-18.12.10.html
https://ofbiz.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-49070
https://issues.apache.org/jira/browse/OFBIZ-12812

