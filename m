Received: (qmail 25606 invoked by uid 550); 23 Jul 2024 16:31:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9955 invoked from network); 23 Jul 2024 16:23:12 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Andrew Lamb <alamb@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <325aa1fb-ab3d-5f76-b9d6-b57dfaac80d6@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 23 Jul 2024 16:21:24 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-41178: Apache Arrow Rust Object Store: AWS
 WebIdentityToken exposure in log files 

Severity: moderate

Affected versions:

- Apache Arrow Rust Object Store 0.5.0 through 0.10.1

Description:

Exposure of temporary credentials in logs=C2=A0in Apache Arrow Rust Object =
Store, version 0.10.1 and earlier on all platforms using AWS WebIdentityTok=
ens.=20

On certain error conditions, the logs may contain the OIDC token passed to =
 AssumeRoleWithWebIdentity https://docs.aws.amazon.com/STS/latest/APIRefere=
nce/API_AssumeRoleWithWebIdentity.html . This allows someone with access to=
 the logs to impersonate that identity, including performing their own call=
s to AssumeRoleWithWebIdentity, until the OIDC token expires. Typically OID=
C tokens are valid for up to an hour, although this will vary depending on =
the issuer.

Users are recommended to use a different AWS authentication mechanism, disa=
ble logging or upgrade to version 0.10.2, which fixes this issue.

Details:

When using AWS WebIdentityTokens with the object_store crate, in the event =
of a failure and automatic retry, the underlying reqwest error, including t=
he full URL with the credentials, potentially in the parameters, is written=
 to the logs.=C2=A0

Thanks to Paul=C2=A0Hatcherian for reporting this vulnerability

Credit:

Paul=C2=A0Hatcherian (finder)

References:

https://arrow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-41178

