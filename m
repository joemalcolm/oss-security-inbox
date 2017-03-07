X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/03/07/3
Message-ID: <CALy8Cw6nxZkzoodbfrdWJzj15GtyE8P08cDhP95bzHKGah4spQ@mail.gmail.com>
Date: Tue, 07 Mar 2017 10:44:26 +0000
From: Craig Small <csmall@....com.au>
To: oss-security@...ts.openwall.com
Subject: CVE Request: Wordpress: 6 security issues in Wordpress 4.7 2
Content-Type: text/plain; charset=utf-8

Hello again,
 Wordpress 4.7.3 fixes 6 security issues.  Summer of Pwnage has reported 2
here yesterday but here is the list from the wordpress site.

Cross-site scripting (XSS) via media file metadata. Reported by Chris Andrè
Dale, Yorick Koster, and Simon P. Briggs.

Control characters can trick redirect URL validation. Reported by Daniel
Chatfield.

Unintended files can be deleted by administrators using the plugin deletion
functionality. Reported by xuliang.

Cross-site scripting (XSS) via video URL in YouTube embeds. Reported by
Marc Montpas.

Cross-site scripting (XSS) via taxonomy term names. Reported by Delta.

Cross-site request forgery (CSRF) in Press This leading to excessive use of
server resources. Reported by Sipke Mellema.


Reference:
https://wordpress.org/news/2017/03/wordpress-4-7-3-security-and-maintenance-release/
-- 
Craig Small (@smallsees)   http://dropbear.xyz/     csmall at : enc.com.au
Debian GNU/Linux           http://www.debian.org/   csmall at : debian.org
GPG fingerprint:        5D2F B320 B825 D939 04D2  0519 3938 F96B DF50 FEA5

