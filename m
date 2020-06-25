X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2020/06/25/1
Message-ID: <96bf2c19-1a4d-494a-a643-a7501a22fc67@kde.org>
Date: Thu, 25 Jun 2020 12:05:03 +0200
From: Jan Kundrát <jkt@....org>
To: <oss-security@...ts.openwall.com>
Cc: <security@....org>
Subject: Requesting a CVE id for Trojitá, an e-mail client: Improper Certificate Validation
Content-Type: text/plain; charset=utf-8

Hi folks, I would appreciate a Cc on responses as I'm not subscribed to 
this list. I would like to request a CVE for the following vulnerability:

Summary
-------

Damian Poddebniak discovered a TLS verification failure (CWE-295) in 
Trojitá [1], a fast Qt IMAP e-mail client. When sending e-mails over SMTP, 
all TLS errors were ignored.

Background
----------

Trojita first gained support for SMTP submission in patch 0083eea5ed [2]. 
Since that commit (May 2009), there's been a FIXME comment in the code that 
SSL errors should be handled properly. Unfortunately, this issue kept 
falling through the cracks and we never re-enabled TLS validation as the 
SMTP backend matured. As a result, outgoing SMTP connections were 
suspectible to a MITM attack, with authentication details including 
passwords and the message content potentially available to attackers.

IMAP connections are not suspectible to this bug.

Affected versions
-----------------

All versions of Trojita up to and including v0.7 are affected. The fix [3] 
will be included in version v0.8 which will be released once the CVE gets 
assigned.

Acknowledgement
---------------

Thanks to Damian Poddebniak for reporting [4] this bug.

[1] http://trojita.flaska.net/
[2] https://invent.kde.org/pim/trojita/-/commit/0083eea5ed
[3] https://gerrit.vesnicky.cesnet.cz/r/1035
[4] https://bugs.kde.org/show_bug.cgi?id=423453

With kind regards,
Jan

-- 
Trojitá, a fast Qt IMAP e-mail client -- http://trojita.flaska.net/
