X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/09/26/24
Message-ID: <CADBjfCFcmZ-UNiP1-W=Lwp8rU6RLnsDBmy48Ct-ER8C=0Uq-aQ@mail.gmail.com>
Date: Fri, 26 Sep 2014 17:03:35 +0100
From: Riot <rain.backnet@...il.com>
To: oss-security@...ts.openwall.com
Subject: Re: CVE-2014-6271: remote code execution through bash
Content-Type: text/plain; charset=utf-8

For anyone running Fail2ban, here is a simple filter to detect this attack
with Apache:

https://github.com/slowriot/fail2ban/blob/master/config/filter.d/apache-shellshock.conf

