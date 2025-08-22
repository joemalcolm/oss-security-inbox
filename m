Received: (qmail 15939 invoked by uid 550); 22 Aug 2025 18:21:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 14128 invoked from network); 22 Aug 2025 18:15:45 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Piotr Karwasz <pkarwasz@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <f3026326-18ae-6aa6-2f4c-e94e177be962@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 22 Aug 2025 18:15:35 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-54812: Apache Log4cxx: Improper HTML escaping in
 HTMLLayout 

Severity: low=20

Affected versions:

- Apache Log4cxx before 1.5.0

Description:

Improper Output Neutralization for Logs vulnerability in Apache Log4cxx.


When using HTMLLayout, logger names are not properly escaped when writing o=
ut to the HTML file.
If untrusted data is used to retrieve the name of a logger, an attacker cou=
ld theoretically inject HTML or Javascript in order to hide information fro=
m logs or steal data from the user.
In order to activate this, the following sequence must occur:



  *  Log4cxx is configured to use HTMLLayout.

  *  Logger name comes from an untrusted string

  *  Logger with compromised name logs a message

  *  User opens the generated HTML log file in their browser, leading to po=
tential XSS


Because logger names are generally constant strings, we assess the impact t=
o users as LOW


This issue affects Apache Log4cxx: before 1.5.0.


Users are recommended to upgrade to version 1.5.0, which fixes the issue.

Credit:

Sovereign Tech Agency (sponsor)

References:

https://logging.apache.org/security.html#CVE-2025-54812
https://github.com/apache/logging-log4cxx/pull/509
https://github.com/apache/logging-log4cxx/pull/514
https://logging.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2025-54812

