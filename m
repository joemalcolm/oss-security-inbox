X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2018/10/23/3
Message-ID: <79e2949f37a6495a19888772953b410e035e2f9c.camel@opteya.com>
Date: Tue, 23 Oct 2018 11:41:13 +0200
From: Yann Droneaud <ydroneaud@...eya.com>
To: oss-security@...ts.openwall.com
Subject: Re: GCC Compiler Induced Vulnerability - affects programs compiled with GCC 7 and 8 containing nested functions
Content-Type: text/plain; charset=utf-8

Hi,

Use -Werror=trampoline to prevent GCC from generating code that require
executable stack:


https://gcc.gnu.org/onlinedocs/gcc-8.2.0/gcc/Warning-Options.html#index-Wtrampolines

It's a recommanded warning from OWASP:


https://www.owasp.org/index.php/C-Based_Toolchain_Hardening#GCC.2FBinutils

-- 
Yann Droneaud
OPTEYA


