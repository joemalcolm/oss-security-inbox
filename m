Received: (qmail 13907 invoked by uid 550); 6 Jun 2023 17:18:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9730 invoked from network); 6 Jun 2023 17:12:33 -0000
Authentication-Results: apache.org; auth=none
Message-ID: <8d7e4288-c676-d775-2064-533734d70ef5@apache.org>
Date: Tue, 6 Jun 2023 10:12:15 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
From: Michael Jumper <mjumper@apache.org>
Content-Language: en-US
To: announce@apache.org, announce@guacamole.apache.org,
 dev@guacamole.apache.org, user@guacamole.apache.org
Cc: security@guacamole.apache.org, oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] [SECURITY] CVE-2023-30575: Apache Guacamole: Incorrect calculation of
 Guacamole protocol element lengths

Severity: moderate
Base CVSS Score: 6.5 (AV:N/AC:L/PR:L/UI:N/S:U/C:N/I:H/A:N)

Affected versions:

- Apache Guacamole through 1.5.1

Description:

Apache Guacamole 1.5.1 and older may incorrectly calculate the lengths 
of instruction elements sent during the Guacamole protocol handshake, 
potentially allowing an attacker to inject Guacamole instructions during 
the handshake through specially-crafted data.

Mitigation:

Users of versions of Apache Guacamole 1.5.1 and older should upgrade to 
the 1.5.2 release.

Credit:

We would like to thank Stefan Schiller (Sonar) for reporting this issue.

References:

https://guacamole.apache.org/
https://www.cve.org/CVERecord?id=CVE-2023-30575

Timeline:

2023-04-11: Reported to security@guacamole.apache.org
2023-04-11: Report acknowledged by project
2023-04-12: Report confirmed by project
2023-05-09: Fix completed and merged
2023-05-09: Fix tested and confirmed by reporter
2023-05-25: Fix released
