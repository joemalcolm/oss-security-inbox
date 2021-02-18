X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2021/02/18/1
Message-ID: <41A7FAA9-5814-47A7-A9A5-B36D9DE550A8@secuinfra.com>
Date: Thu, 18 Feb 2021 10:15:20 +0000
From: Felix Kosterhon <felix.kosterhon@...uinfra.com>
To: "oss-security@...ts.openwall.com" <oss-security@...ts.openwall.com>
Subject: Vulnerability in the Linux Audit Framework Auditd
Content-Type: text/plain; charset=utf-8

Dear Sir or Madam,

my name is Felix Kosterhon and i am Cyber Defense Analyst at SECUINFRA GmbH, Germany. 

We discovered a security vulnerability in the Linux Audit Framework (Auditd). During our research we discovered that the usage of a certain open-syscall (open_by_handle_at) is not covered by the current file watch implementation of Auditd. This allows a local attacker with elevated privileges (CAP_DAC_READ_SEARCH capability) to read and modify files without being noticed by the implemented Auditd file watches.

We disclosed our finding to RedHat, Inc. in November and it will be published today, Feb 18, under CVE-2020-35501. As suggested by RedHat, Inc., we want to inform you about this security flaw. If you have any further questions, we are happy to help you.

We would also like to subscribe to your mailing list to stay informed about current security topics.

Best Regards,

 

Felix Kosterhon

Cyber Defense Analyst

 

 

SECUINFRA GmbH

Münchener Straße 36

60329 Frankfurt/Main

 

Mobile:  +49 151 18975666

 

felix.kosterhon@...uinfra.com

www.secuinfra.com

 

Follow us on XING.


Content of type "text/html" skipped

Download attachment "image001.jpg" of type "image/jpeg" (46782 bytes)

Download attachment "image002.png" of type "image/png" (201747 bytes)

Download attachment "smime.p7s" of type "application/pkcs7-signature" (4196 bytes)
