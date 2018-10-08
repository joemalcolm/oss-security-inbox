X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2018/10/08/3
Message-ID: <e6e0b960-faf3-175a-3730-46823ee69d3f@gmail.com>
Date: Mon, 8 Oct 2018 12:54:34 -0400
From: Nick Roessler <nicholas.e.roessler@...il.com>
To: oss security list <oss-security@...ts.openwall.com>
Subject: CVE-2018-17407: Tex-Live buffer overflow in handling of Type 1 fonts
Content-Type: text/plain; charset=utf-8

Hey all,

     I wanted to make everyone aware of a security update for TeX Live, 
a distribution of the TeX document preparation software. A buffer 
overflow in the handling of Type 1 fonts (.pfb files) allows arbitrary 
local code execution without privilege escalation when a malicious font 
is loaded by one of the vulnerable tools (pdflatex, pdftex, luatex, dvips).

     The patch was rolled out on Sept 21.  See:

https://www.debian.org/security/2018/dsa-4299
https://security-tracker.debian.org/tracker/CVE-2018-17407

Thanks,
--
Nick
