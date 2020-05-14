X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2020/05/14/6
Message-ID: <a73ad353-2640-99a5-90cf-5964b260458d@onecht.net>
Date: Thu, 14 May 2020 14:21:56 +0200
From: Daan Hoogland <dahn@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2019-17562 buffer overflow in baremetal plugin.
Content-Type: text/plain; charset=utf-8

LS, please take note of the following;

[CVEID]:CVE-2019-17562
[PRODUCT]:Apache  CloudStack
[VERSION]:Apache  CloudStack all versions up to 4.13.0.0
[PROBLEMTYPE]:buffer overflow  exploit
[DESCRIPTION]:A buffer overflow vulnerability has been found in the baremetal component of Apache CloudStack. This applies to all versions prior to 4.13.1.


The vulnerability is due to the lack of validation of the mac parameter 
in baremetal virtual router.
If you insert an arbitrary shell command into the mac parameter, 
v-router will process the command.
*For example*:
    - Normal     : http://{GW}:10086/baremetal/provisiondone/{mac}
    - Abnormal : http://{GW}:10086/baremetal/provisiondone/#';whoami;#

Mitigation of this issue is an upgrade to Apache CloudStack 4.13.1.0 or 
beyond.

The Apache CloudStack security team would like to acknowledge and say 
thanks to libi2181 <libi2181@...il.com> for reporting this issue.


-- 
Daan

