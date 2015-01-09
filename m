X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2015/01/09/1
Message-ID: <CAO33bZX7RP0fZOns1Rn-AE7Da8Hxmo3YP5MAa1TMmO2AUM1Vrg@mail.gmail.com>
Date: Thu, 8 Jan 2015 20:10:18 -0800
From: David Jorm <david.jorm@...il.com>
To: oss-security@...ts.openwall.com
Subject: CVE request: local privilege escalation flaw in Red Star OS 3.0
Content-Type: text/plain; charset=utf-8

Hi All

Red Star OS 3.0 (붉은별) ships with the root account disabled. A flaw has been
identified that allows a local user to jailbreak the environment and gain
root access. As noted here:
http://richardg867.wordpress.com/2015/01/01/notes-on-red-star-os-3-0/

"The root user is disabled on Red Star, and it doesn’t look like there is a
way to enable it. Fortunately, they left a big security hole: the Software
Manager (swmng.app), which runs as root through sudo and will install any
RPM package, even if unsigned."

Please assign a CVE ID to this issue.

Thanks

David

