X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/05/31/6
Message-Id: <201105311525.14786.thomas@suse.de>
Date: Tue, 31 May 2011 15:25:14 +0200
From: Thomas Biege <thomas@...e.de>
To: oss-security@...ts.openwall.com
Subject: CVE request: NetworkManager-openvpn logs cert password
Content-Type: text/plain; charset=utf-8


and another one from RH bz:
https://bugzilla.redhat.com/show_bug.cgi?id=708876

Robert Marcano 2011-05-29 20:28:01 EDT

Description of problem:

Password to unlock certificate is logged to /var/log/messages

May 29 19:46:42 localhost NetworkManager[4791]: destroy_one_secret: destroying
********

Version-Release number of selected component (if applicable):

NetworkManager-openvpn-0.8.999-1.fc15.x86_64


Additional info:

I would love to have the option to type the password at connection time instead
of it being stored, but adding the password to the system log is wrong

-- 
Thomas Biege <thomas@...e.de>, SUSE LINUX, Security Support & Auditing
SUSE LINUX GmbH, GF: Jeff Hawn, Jennifer Guild, Felix Imendörffer, HRB 21284 (AG Nürnberg
--
  Wer aufhoert besser werden zu wollen, hoert auf gut zu sein.
                            -- Marie von Ebner-Eschenbach

