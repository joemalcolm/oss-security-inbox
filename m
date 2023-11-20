X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/11/20/2
Message-ID: <64c644b1-9c98-406c-b947-689faf39efd0@oracle.com>
Date: Mon, 20 Nov 2023 11:48:11 -0800
From: Alan Coopersmith <alan.coopersmith@...cle.com>
To: oss-security@...ts.openwall.com
Subject: GNUTLS-SA-2023-10-23, CVE-2023-5981: timing sidechannel in RSA-PSK key exchange
Content-Type: text/plain; charset=utf-8

https://gnutls.org/security-new.html#GNUTLS-SA-2023-10-23 reports:

A vulnerability was found that the response times to malformed ciphertexts in
RSA-PSK ClientKeyExchange differ from response times of ciphertexts with correct
PKCS#1 v1.5 padding. Only TLS ciphertext processing is affected. The issue was
reported in the issue tracker as https://gitlab.com/gnutls/gnutls/-/issues/1511

https://lists.gnupg.org/pipermail/gnutls-help/2023-November/004837.html
announced the release of version 3.8.2 with a fix for this vulnerability.

-- 
         -Alan Coopersmith-                 alan.coopersmith@...cle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
