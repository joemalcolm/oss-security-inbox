Received: (qmail 2022 invoked by uid 550); 1 Jul 2024 13:56:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24453 invoked from network); 1 Jul 2024 12:41:05 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Eric Covener <covener@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <2cf18b93-ec73-c716-a816-862771eaff8d@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 01 Jul 2024 12:40:54 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-36387: Apache HTTP Server: DoS by Null pointer in
 websocket over HTTP/2 

Severity: low

Affected versions:

- Apache HTTP Server 2.4.55 through 2.4.59

Description:

Serving WebSocket protocol upgrades over a HTTP/2 connection could result i=
n a Null Pointer dereference, leading to a crash of the server process, deg=
rading performance.

Credit:

Marc Stern (<marc.stern approach.be>) (finder)

References:

https://httpd.apache.org/security/vulnerabilities_24.html
https://httpd.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-36387

Timeline:

2024-05-27: fixed in r1918003 in trunk

