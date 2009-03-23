X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2009/03/23/3
Message-Id: <1237810902.3229.15.camel@dhcp-lab-164.englab.brq.redhat.com>
Date: Mon, 23 Mar 2009 13:21:42 +0100
From: Jan Lieskovsky <jlieskov@...hat.com>
To: "Steven M. Christey" <coley@...us.mitre.org>
Cc: oss-security <oss-security@...ts.openwall.com>
Subject: CVE request -- ucd-snmp / net-snmp, libnss-ldapd / nss_ldap
Content-Type: text/plain; charset=utf-8

Hello Steve,

  could you please assign CVE ids for following
two low security issues:

1, ucd-snmp / net-snmp snmpd runs with privileges of privileged user
   a, Red Hat Enterprise Linux / Fedora snmpd runs with UID=0, GID=0
   b, Debian snmpd runs with GID=0
   References:
   https://bugzilla.redhat.com/show_bug.cgi?id=491621
   http://bugs.debian.org/cgi-bin/bugreport.cgi?bug=520724

2, libnss-ldapd / nss_ldap: LDAP service configuration file
                                 shipped with world readable permissions
   References: 
   https://bugzilla.redhat.com/show_bug.cgi?id=491623
   http://bugs.debian.org/cgi-bin/bugreport.cgi?bug=520476


Thanks, Jan.
--
Jan iankko Lieskovsky / Red Hat Security Response Team

