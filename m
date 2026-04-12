Received: (qmail 16191 invoked by uid 550); 12 Apr 2026 23:11:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 29743 invoked from network); 12 Apr 2026 18:23:45 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Richard Zowalla <rzo1@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <3f55d45c-12c3-7652-51bd-71290acf24e1@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sun, 12 Apr 2026 18:23:33 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-35337: Apache Storm Client: RCE through Unsafe
 Deserialization via Kerberos TGT Credential Handling 

Severity: important=20

Affected versions:

- Apache Storm Client (org.apache.storm:storm-client) before 2.8.6

Description:

Deserialization of Untrusted Data vulnerability in Apache Storm.

Versions Affected:
before 2.8.6.


Description:
When processing topology credentials submitted via the Nimbus Thrift API, S=
torm deserializes the base64-encoded TGT blob using ObjectInputStream.readO=
bject() without any class filtering or validation.=C2=A0An authenticated us=
er with topology submission rights could supply a crafted serialized object=
 in the "TGT" credential field, leading to remote code execution in both th=
e Nimbus and Worker JVMs.


Mitigation:
2.x users should upgrade to 2.8.6.


Users who cannot upgrade immediately should monkey-patch an ObjectInputFilt=
er allow-list to ClientAuthUtils.deserializeKerberosTicket() restricting de=
serialized classes to javax.security.auth.kerberos.KerberosTicket and its k=
nown dependencies. A guide on how to do this is available in the release no=
tes of 2.8.6.

Credit: This issue was discovered by K.

Credit:

K (finder)

References:

https://storm.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-35337

