X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/08/01/3
Message-Id: <1501597646.744346.23695.25373@mail.rambler.ru>
Date: Tue, 1 Aug 2017 17:27:26 +0300
From: Александр Носарев <nosarev-ay@...bler.ru>
To: oss-security@...ts.openwall.com
Subject: Syslog forwarding with IP spoofing
Content-Type: text/plain; charset=utf-8

Good day!


I need to recive syslog messages, filter them and send them forward to the SIEM.

Also HOST field is not represented in syslog, so i need to spoof IP of forwarding
packets to bind messages recived by SIEM to it's original source IP.

If i will try to add some marks to syslog message, I will need to override
parsers for each syslog source type, so it seems like abad idea.

Is there any open source tool for that task?


--

.

