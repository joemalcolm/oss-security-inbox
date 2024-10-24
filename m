Received: (qmail 5755 invoked by uid 550); 24 Oct 2024 09:44:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 11493 invoked from network); 24 Oct 2024 07:55:41 -0000
Authentication-Results: apache.org; auth=none
Content-Type: multipart/alternative;
 boundary="------------gfQDnmcJX8yR0CGBa9ZVsC1R"
Message-ID: <e80016d8-a542-418c-a52f-293fe9ec1151@apache.org>
Date: Thu, 24 Oct 2024 09:54:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: =?UTF-8?Q?Francesco_Chicchiricc=C3=B2?= <ilgrosso@apache.org>
To: oss-security@lists.openwall.com
Content-Language: it
Subject: [oss-security] CVE-2024-45031: Apache Syncope: Stored XSS in Console and Enduser

--------------gfQDnmcJX8yR0CGBa9ZVsC1R
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Severity: moderate

Affected versions:

- Apache Syncope 2.1 through 2.1.14
- Apache Syncope 3.0 through 3.0.8

Description:

When editing objects in the Syncope Console, incomplete HTML tags could be used to bypass HTML sanitization. This made it possible to inject stored XSS payloads which would trigger for other users during ordinary usage of the application.
XSS payloads could also be injected in Syncope Enduser when editing “Personal Information” or “User Requests”: such payloads would trigger for administrators in Syncope Console, thus enabling session hijacking.

Users are recommended to upgrade to version 3.0.9, which fixes this issue.

Credit:

Kasper Karlsson, Omegapoint (finder)
Pontus Hanssen, Omegapoint (finder)

References:

https://syncope.apache.org/
https://www.cve.org/CVERecord?id=CVE-2024-45031

--------------gfQDnmcJX8yR0CGBa9ZVsC1R--
