X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/11/08/2
Message-Id: <20131108040211.EA670C0624@smtp.hushmail.com>
Date: Fri, 08 Nov 2013 04:02:11 +0000
From: "mancha" <mancha1@...h.com>
To: oss-security@...ts.openwall.com
Subject: CVE Request - OpenSSH
Content-Type: text/plain; charset=utf-8

Hello Kurt, vendors, et al.

OpenSSH has released an advisory[1] detailing a memory corruption
vulnerability in the post-authentication sshd process when using an
aes*-gcm@...nssh.com cipher.

OpenSSH 6.4/6.4p1 were released to address the problem.

Would you please allocate a CVE for this issue? Thanks.

--mancha

[1] http://www.openssh.com/txt/gcmrekey.adv

