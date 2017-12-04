X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/12/04/1
Message-ID: <CAAYZd=nAiDbUuRuxz1tbeE6pnx7Tow7uedDxYJNDMgh2UE2c2g@mail.gmail.com>
Date: Mon, 4 Dec 2017 08:32:55 +0530
From: Himanshu Mehta <mehta.himanshu21@...il.com>
To: oss-security@...ts.openwall.com
Subject: ZKTime Web Software 2.0.1.12280 CVE-2017-17057 Cross Site Scripting
Content-Type: text/plain; charset=utf-8

*1. Introduction*

Vendor:                ZKTeco
Affected Product:      ZKTime Web - 2.0.1.12280
Fixed in:
Vendor Website:        https://www.zkteco.com/product/ZKTime_Web_2.0_435.html
Vulnerability Type:    Reflected XSS
Remote Exploitable:    Yes
CVE:                   CVE-2017-17057
*2. Overview*

There is a reflected XSS vulnerability in ZKTime Web. The
vulnerability exists due to insufficient filtration of user-supplied data.
A remote attacker can execute arbitrary HTML and script code in browser in
context of the vulnerable application.

*3. Affected Modules*

Go to
Personnel -> Personnel -> Advanced Query ->

Select Search Field as 'Department' and in 'Range' field mention
'<script>alert('XSS')</script>

*4. Payload*
<script>alert('XSS')</script>


*5. Credit*
Himanshu Mehta (@LionHeartRoxx)

