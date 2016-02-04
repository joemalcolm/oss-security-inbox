X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/02/04/5
Message-ID: <56B3B4D9.3000806@trylinux.us>
Date: Thu, 4 Feb 2016 12:30:17 -0800
From: "Zach W." <kestrel@...linux.us>
To: oss-security@...ts.openwall.com, cve-assign@...re.org
Subject: CVE Request: Open Source Media Center insecure default config
Content-Type: text/plain; charset=utf-8

Hey all,

Using several other CVEs as an example (such as
http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2015-6850), I am
requesting a CVE for "OSMC: Open Source Media Center" default config.

1) Default user is osmc/osmc
2) SSH, and FTP are enabled by default, which osmc has access to
3) The interface does not require or request a password change for the
default user
4) osmc has full sudoers access and can gain root access via sudo

Thanks!

Zach W.
