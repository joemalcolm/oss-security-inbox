X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["966" "Tuesday" "17" "January" "2017" "09:06:10" "-0600" "Nathan Van Gheem" "nathan.van.gheem@plone.org" "<CAL8hw9Et3-hdcmJPZk7cY+Z87Ggk3+yGpbbVZgMXJbuQ9CAdrw@mail.gmail.com>" "33" "[oss-security] CVE Request: Plone Sandbox escape vulnerability" nil nil nil "1" "2017011715:06:10" "[oss-security] CVE Request: Plone Sandbox escape vulnerability" (number mark "U       nathan.van.g Jan 17   33/966   " thread-indent "\"[oss-security] CVE Request: Plone Sandbox escape vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3298 invoked by uid 550); 17 Jan 2017 15:45:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15443 invoked from network); 17 Jan 2017 15:06:23 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:sender:from:date:message-id:subject:to;
        bh=uNzaT13YWmy23VI0qZy/ZIlsbXKB2gq/D5RQGe12S+o=;
        b=rsR787MXUQxCHI03gQqCXMVQMD7C8kddzIRzWxNanKVvx6xSZiuSOUoixvOSQDf2wx
         2vRr8iV8hHIRJKWhTPCOz7/kB4P8/wTiiU98Qo/w8AtbMbvW/Bs+MGb3wt/nPYKTm+5Y
         +CFU2sXJYRSrTfaaYGk4sjV5IeOON056D8M5PNdIMoIe7FBLbUO1YhBtrVH73iBj2ASQ
         nHXftbsCBbtn+4k6oXqpMQqptkdV2w3sn/q0hSBcMCWOYtphoSfwH49FnFtMVAJI7qnl
         LC21FB4q5EU9Pf3DaOvqjVy9CxjMplD88TAfLZMH/DktnRD0z/DQGabH0JuvO/iXZnP9
         iuRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
         :to;
        bh=uNzaT13YWmy23VI0qZy/ZIlsbXKB2gq/D5RQGe12S+o=;
        b=SragBIlV0a5Jz4JqZS42DpDZqkJ0suHvvYt7jesQqxzb1zeeOmgzbkE8jkVTPreb5j
         M8EUz1jikS3DSB1DMtoM1WGVN/qQHOIDU3ss79dF0McdkZ/hyhbP5ECAEHv5fEQIe8z9
         6yxkUBGQFERMPcUT+bfHySgX97XjjmgiM3MohNpu/anyDJ5cOXtVB64AbxIgAvYCv9Lt
         1WSqswf4mHxy6WM7pIsQVDvZe4iCc9KSGQS4DeK602fO/ov8w45+NdF2XbA2rPIIAwRM
         isR7r4GM2GBbNDWx5GxOxbQj8xImPcfbajNloTqODrMdGyhePGSXAn3GHvFGN/e7ExoJ
         sOdg==
X-Gm-Message-State: AIkVDXJV/EbYHlqNsRn2KXKwg1lHh+ixwJDzBKtO5B8OR8PJnbmTAKXcwtg9iPPTQrrQR+PAuYwMJYHS6IIN4g==
X-Received: by 10.159.38.131 with SMTP id 3mr16595356uay.59.1484665571838;
 Tue, 17 Jan 2017 07:06:11 -0800 (PST)
MIME-Version: 1.0
Sender: vangheem@gmail.com
From: Nathan Van Gheem <nathan.van.gheem@plone.org>
Date: Tue, 17 Jan 2017 09:06:10 -0600
X-Google-Sender-Auth: JO-hzA0eaiUKTUnBIdyWHacLNJo
Message-ID: <CAL8hw9Et3-hdcmJPZk7cY+Z87Ggk3+yGpbbVZgMXJbuQ9CAdrw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=94eb2c0932a605112b05464ba49f
Subject: [oss-security] CVE Request: Plone Sandbox escape vulnerability

--94eb2c0932a605112b05464ba49f
Content-Type: text/plain; charset=UTF-8

Dear oss-security List,

Please provide a CVE for the following issue:

Sandbox escape
    Accessing private content via `str.format` in through-the-web templates
and scripts. See this blog post by Armin Ronacher (
http://lucumr.pocoo.org/2016/12/29/careful-with-str-format/) for the
general idea. Since the `format` method was introduced in Python 2.6, this
part of the hotfix is only relevant for Plone 4 and 5, not Plone 3.
    Credit: Plone security team, Armin Ronacher
    Reference: https://plone.org/security/hotfix/20170117/sandbox-escape


Versions Affected:
4.3.11 and any earlier 4.x version, 5.0.6 and any earlier 5.x version

Code fixes:
https://pypi.python.org/pypi/Products.PloneHotfix20170117

Recommended action:
Install the https://pypi.python.org/pypi/Products.PloneHotfix20170117
package.


Thank you,
Nathan Van Gheem
Plone Security Team

--94eb2c0932a605112b05464ba49f--
