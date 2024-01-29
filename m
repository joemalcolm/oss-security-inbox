Received: (qmail 5210 invoked by uid 550); 29 Jan 2024 11:55:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17819 invoked from network); 29 Jan 2024 11:03:57 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Li Yang <liyang@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <4614723d-7b0e-2a49-5f7a-0b011744eb60@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 29 Jan 2024 11:06:04 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-29055: Apache Kylin: Insufficiently protected credentials
 in config file 

Severity: low

Affected versions:

- Apache Kylin 2.0.0 through 4.0.3

Description:

In Apache Kylin version 2.0.0 to 4.0.3, there is a Server Config web interf=
ace that displays the content of file 'kylin.properties', that may contain =
serverside credentials. When the kylin service runs over HTTP (or other pla=
in text protocol), it is possible for network sniffers to hijack the HTTP p=
ayload and get access to the content of kylin.properties and potentially th=
e containing credentials.

To avoid this threat, users are recommended to=C2=A0

  *  Always turn on HTTPS so that network payload is encrypted.

  *  Avoid putting credentials in kylin.properties, or at least not in plai=
n text.
  *  Use network firewalls to protect the serverside such that it is not ac=
cessible to external attackers.

  *  Upgrade to version Apache Kylin 4.0.4, which filters out the sensitive=
 content that goes to the Server Config web interface.

Credit:

Li Jiakun <2839549219@qq.com> (reporter)

References:

https://kylin.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-29055

