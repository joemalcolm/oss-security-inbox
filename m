Received: (qmail 14188 invoked by uid 550); 6 Jun 2023 17:18:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9817 invoked from network); 6 Jun 2023 17:12:45 -0000
Authentication-Results: apache.org; auth=none
Message-ID: <ac30264b-daba-2c9f-95bd-224cdccee419@apache.org>
Date: Tue, 6 Jun 2023 10:12:29 -0700
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
Subject: [oss-security] [SECURITY] CVE-2023-30576: Apache Guacamole: Use-after-free in
 handling of RDP audio input buffer

Severity: moderate
Base CVSS Score: 6.8 (AV:N/AC:H/PR:L/UI:N/S:U/C:H/I:H/A:N)

Affected versions:

- Apache Guacamole 0.9.10 through 1.5.1

Description:

Apache Guacamole 0.9.10 through 1.5.1 may continue to reference a freed 
RDP audio input buffer. Depending on timing, this may allow an attacker 
to execute arbitrary code with the privileges of the guacd process.

Mitigation:

Users of versions of Apache Guacamole 1.5.1 and older should upgrade to 
the 1.5.2 release.

Credit:

We would like to thank Stefan Schiller (Sonar) for reporting this issue.

References:

https://guacamole.apache.org/
https://www.cve.org/CVERecord?id=CVE-2023-30576

Timeline:

2023-04-11: Reported to security@guacamole.apache.org
2023-04-11: Report acknowledged by project
2023-04-12: Report confirmed by project
2023-05-09: Fix completed and merged
2023-05-09: Fix tested and confirmed by reporter
2023-05-25: Fix released
