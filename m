Received: (qmail 13846 invoked by uid 550); 14 Apr 2026 02:48:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 7175 invoked from network); 14 Apr 2026 02:38:09 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Abhishek Choudhary <shreemaanabhishek@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <19fe6f5f-517f-8b25-3eda-732323c55735@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 14 Apr 2026 02:36:29 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-31923: Apache APISIX: Openid-connect `tls_verify` field
 is disabled by default 

Severity: low=20

Affected versions:

- Apache APISIX 0.7 through 3.15.0

Description:

Cleartext Transmission of Sensitive Information vulnerability in Apache API=
SIX.

This can occur due to `ssl_verify` in openid-connect plugin configuration b=
eing set to false by default.
This issue affects Apache APISIX: from 0.7 through 3.15.0.

Users are recommended to upgrade to version 3.16.0, which fixes the issue.

Credit:

Oleh Konko (reporter)

References:

https://apisix.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2026-31923

