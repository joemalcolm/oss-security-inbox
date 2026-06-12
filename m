X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/12/2
Message-ID: <CANU=pJtY1Ei8OoLLnrCPEdu=KCknCDBxAmUwRBHVgBU+Wq97+w@mail.gmail.com>
Date: Fri, 12 Jun 2026 12:28:45 +0300
From: Dimitris Glynos <dglynos@...wave.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-33590: Insecure default settings of Portainer < 2.38.0 allow host takeover
Content-Type: text/plain; charset=utf-8

Dear all,

Portainer (https://www.portainer.io/), a popular open source software
for the management of containers was found to be vulnerable to
insecure default settings in versions prior to 2.38.0.

Through the insecure default settings (such as allowing "bind mounts"
and "privileged mode" on user-spawned containers) it was possible for
regular users of Portainer to execute arbitrary commands with elevated
privileges on the container hosting environment, which could lead to a
host takeover.

This design flaw could be interpreted as a 8.2 HIGH risk issue on the
CVSS 3.1 scoring system:
https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:U/C:H/I:H/A:H/E:F/RL:O/RC:C

More information on the technical details of the issue can be found in
the following blog post:
https://intwave.com/blog/2026/02/26/improving-portainer-security.html

The issue was identified by intWave intern Sifis Bampionitakis.

The Portainer project released versions 2.38.0 (short term support)
and 2.39.0 (long term support) with fixes for the issue. It is
recommended to review your setup's "Docker Security Settings" once the
fixes have been applied.

CVE-2026-33590 was allocated for the issue by ENISA on May 28th 2026.

More information about the issue timeline can be found in our advisory page:
https://intwave.com/advisory/2026/06/12/cve-2026-33590-portainer.html

Best regards,

Dimitris Glynos
