X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/11/02/6
Message-ID: <20171102121654.GA5905@gremlin.ru>
Date: Thu, 2 Nov 2017 15:16:55 +0300
From: gremlin@...mlin.ru
To: oss-security@...ts.openwall.com
Subject: tftpd-hpa - insecure chroot()
Content-Type: text/plain; charset=utf-8

Just look at this code and guess how it would be compiled on most
systems:

========================================
    /* Chroot and drop privileges */
    if (secure) {
        if (chroot(".")) {
            syslog(LOG_ERR, "chroot: %m");
            exit(EX_OSERR);
        }
#ifdef __CYGWIN__
        chdir("/");             /* Cygwin chroot() bug workaround */
#endif
    }
========================================

:-)


-- 
Alexey V. Vissarionov aka Gremlin from Kremlin
GPG: 8832FE9FA791F7968AC96E4E909DAC45EF3B1FA8

Content of type "application/pgp-signature" skipped
