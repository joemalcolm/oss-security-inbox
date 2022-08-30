Received: (qmail 19857 invoked by uid 550); 30 Aug 2022 14:57:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28208 invoked from network); 30 Aug 2022 14:25:24 -0000
Message-ID: <7378c405-5150-ebea-b81d-74f32cff7516@lexfo.fr>
Date: Tue, 30 Aug 2022 16:25:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
To: oss-security@lists.openwall.com
Content-Language: en-US
From: Charles Fol <c.fol@lexfo.fr>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE-2022-31790 CVE-2022-31789: Watchguard XTM/Firebox firewalls:
 Multiple vulnerabilities

Hello,

While performing a red-team assessment we discovered a few 
vulnerabilities on Watchguard firewalls of the XTM/Firebox brand:

Here are the different CVEs and WSGA references for the bugs:

- Xpath time-based injection in wgcgi: CVE-2022-31790, WSGA-2022-00017
- Integer overflow leading to UAF/overflow in wgagent: CVE-2022-31789, 
WSGA-2022-00015
- Local privilege escalation from nobody to root: WSGA-2022-00018

Combined, the two latter bugs lead to pre-authentication remote code 
execution as root on XTM/Firebox devices.
Although the second bug is present in both XTM and Firebox models, the 
exploitation differs as the libc (ptmalloc) version is different, 
(respectively 2.19 and 2.28).

A very in-depth blog-post is available here:
https://www.ambionics.io/blog/hacking-watchguard-firewalls

References:

https://www.watchguard.com/wgrd-psirt/advisory/wgsa-2022-00015
https://www.watchguard.com/wgrd-psirt/advisory/wgsa-2022-00017
https://www.watchguard.com/wgrd-psirt/advisory/wgsa-2022-00018

Regards,
Charles

