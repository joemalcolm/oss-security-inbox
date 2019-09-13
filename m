X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2019/09/13/4
Message-ID: <CAE_88GZ56+bOh7t_Og1LOMmif4aQo3Y-Zdx_zzp_ufJciOhQ9w@mail.gmail.com>
Date: Fri, 13 Sep 2019 11:19:05 -0300
From: "Thiago H. de Paula Figueiredo" <thiagohp@...il.com>
To: oss-security@...ts.openwall.com
Subject: [CVE-2019-0195] Apache Tapestry vulnerability disclosure
Content-Type: text/plain; charset=utf-8

CVE-2019-0195: File reading Leads Java Deserialization Vulnerability
Severity: important
Vendor: The Apache Software Foundation
Versions affected: all Apache Tapestry versions between 5.4.0, including
its betas, and 5.4.3

Description:
Manipulating classpath asset file URLs, an attacker could guess the path to
a known file in the classpath and have it downloaded. If the attacker found
the file with the value of the tapestry.hmac-passphrase configuration
symbol, most probably the webapp's AppModule class, the value of this
symbol could be used to craft a Java deserialization attack, thus running
malicious injected Java code. The vector would be the t:formdata parameter
from the Form component.

Mitigation:
Upgrade to Tapestry 5.4.5, which is a drop-in replacement for any 5.4.x
version.

Credit:
Ricter Zheng

-- 
Thiago H. de Paula Figueiredo

