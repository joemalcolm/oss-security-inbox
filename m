X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/05/07/2
Message-Id: <201005071235.26905.oeriksson@mandriva.com>
Date: Fri, 7 May 2010 12:35:26 +0200
From: Oden Eriksson <oeriksson@...driva.com>
To: oss-security@...ts.openwall.com
Subject: A mysql flaw.
Content-Type: text/plain; charset=utf-8

Hello.

With the mysql-5.1.46 release they fixed a security issue mentioned here:

http://bugs.mysql.com/bug.php?id=51770

[...]

3375 Davi Arnaut    2010-03-09
      Bug#51770: UNINSTALL PLUGIN requires no privileges

      The problem was that UNINSTALL PLUGIN wasn't performing privilege
      checks before removing a plugin. Any user (including users without 
      any kind of privileges) could uninstall any plugin.

      The solution is to verify if the user has the DELETE privilege for
      the mysql.plugin table before uninstalling a plugin.

[...]

A CVE should probably be assigned for this.


-- 
Regards // Oden Eriksson
Security team manager - Mandriva
C∞O @ NUX™ AB
