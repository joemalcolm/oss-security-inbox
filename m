Received: (qmail 24191 invoked by uid 550); 19 Oct 2023 13:17:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26367 invoked from network); 19 Oct 2023 09:45:31 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Stefan Eissing <icing@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <a0276903-ad5c-7dfb-250e-9c812502a56c@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 19 Oct 2023 09:41:13 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-45802: Apache HTTP Server: HTTP/2 stream memory not
 reclaimed right away on RST 

Severity: moderate

Affected versions:

- Apache HTTP Server 2.4.17 through 2.4.57

Description:

When a HTTP/2 stream was reset (RST frame) by a client, there was a time wi=
ndow were the request's memory resources were not reclaimed immediately. In=
stead, de-allocation was deferred to connection close. A client could send =
new requests and resets, keeping the connection busy and open and causing t=
he memory footprint to keep on growing. On connection close, all resources =
were reclaimed, but the process might run out of memory before that.

This was found by the reporter during testing of=C2=A0CVE-2023-44487 (HTTP/=
2 Rapid Reset Exploit) with their own test client. During "normal" HTTP/2 u=
se, the probability to hit this bug is very low. The kept memory would not =
become noticeable before the connection closes or times out.

Users are recommended to upgrade to version 2.4.58, which fixes the issue.

Credit:

Will Dormann of Vul Labs (finder)
David Warren of Vul Labs (finder)

References:

https://httpd.apache.org/security/vulnerabilities_24.html
https://httpd.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-45802

Timeline:

2023-10-12: reported

