Received: (qmail 18308 invoked by uid 550); 4 Apr 2024 14:01:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9563 invoked from network); 4 Apr 2024 13:59:30 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Eric Covener <covener@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <adff0383-6beb-d16d-c056-4f5ce5b497d7@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 04 Apr 2024 13:56:54 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-27316: Apache HTTP Server: HTTP/2 DoS by memory
 exhaustion on endless continuation frames 

Severity: moderate

Affected versions:

- Apache HTTP Server 2.4.17 through 2.4.58

Description:

HTTP/2 incoming headers exceeding the limit are temporarily buffered in ngh=
ttp2 in order to generate an informative HTTP 413 response. If a client doe=
s not stop sending headers, this leads to memory exhaustion.

Credit:

Bartek Nowotarski (https://nowotarski.info/)  (finder)

References:

https://httpd.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-27316

Timeline:

2024-02-22: Reported to security team

