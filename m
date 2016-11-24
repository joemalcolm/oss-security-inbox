X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/11/24/4
Message-Id: <F0516C22-C2D6-4C52-8AD1-86F33F6A2513@gmail.com>
Date: Thu, 24 Nov 2016 15:18:02 +0800
From: haojun hou <haojunhou@...il.com>
To: oss-security@...ts.openwall.com
Subject: CVE request - BigTree CMS 4.2.13 - Cross-Site Scripting (XSS)
Content-Type: text/plain; charset=utf-8

Hi:
BigTree CMS 4.2.13 - Cross-Site Scripting (XSS) 

Procuct: BigTree CMS

Vendor: BigTree CMS (https://www.bigtreecms.org/)

Vunlerable Version: 4.2.13 and probably prior

Tested Version: 4.2.13

Author: Haojun Hou in ADLab of Venustech

 

Advisory Details:

Haojun Hou in ADLab of Venustech discovered a Cross-Site Scripting (XSS) in BigTree CMS, which can be exploited to add,modify or delete information in application`s database and gain complete control over the application.

 

The vulnerability exists due to insufficientfiltration of user-supplied data in “id” HTTP GET parameter passed to “core/admin/adjax/dashboard/check-module-integrity.php” url. An attacker could execute arbitrary HTML and script code in browser in context of the vulnerable website.

The exploitation example below uses the "alert()" JavaScript function to see a  pop-up messagebox:

http://localhost/BigTreeCMS/core/admin/adjax/dashboard/check-module-integrity.php?id=“><script>alert(1);</script>< <http://localhost/BigTreeCMS/core/admin/adjax/dashboard/check-module-integrity.php?id=>”

 

Could you please help me assign a CVE for this issue?
