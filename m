Received: (qmail 32323 invoked by uid 550); 1 Jul 2025 17:58:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 9799 invoked from network); 1 Jul 2025 17:19:40 -0000
Authentication-Results: apache.org; auth=none
Message-ID: <0ad63b5d-3556-4077-868a-afa001c4e006@apache.org>
Date: Tue, 1 Jul 2025 10:19:26 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: oss-security@lists.openwall.com
From: Michael Jumper <mjumper@apache.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE-2024-35164: Apache Guacamole: Improper input validation of
 console codes

Severity: moderate
Base CVSS Score: 6.8 (CVSS:3.1/AV:N/AC:H/PR:L/UI:N/S:U/C:H/I:H/A:N)

Affected versions:

- Apache Guacamole 0.8.0 through 1.5.5

Description:

The terminal emulator of Apache Guacamole 1.5.5 and older does not 
properly validate console codes received from servers via text-based 
protocols like SSH. If a malicious user has access to a text-based 
connection, a specially-crafted sequence of console codes could allow 
arbitrary code to be executed with the privileges of the running guacd 
process.

Users are recommended to upgrade to version 1.6.0, which fixes this issue.

Credit:

We would like to thank Tizian Seehaus (Tibotix) for reporting this issue.

References:

https://guacamole.apache.org/
https://www.cve.org/CVERecord?id=CVE-2024-35164
