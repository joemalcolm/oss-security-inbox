X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/09/13/9
Message-ID: <20120913181817.371dda1b@redhat.com>
Date: Thu, 13 Sep 2012 18:18:17 +0200
From: Tomas Hoger <thoger@...hat.com>
To: oss-security@...ts.openwall.com
Subject: Re: libdbus hardening
Content-Type: text/plain; charset=utf-8

On Tue, 10 Jul 2012 16:11:12 +0200 Sebastian Krahmer wrote:

> If you compile your openssh '--with-ssl-engine' you have
> an easy root exploit (given that ssh-keysign is mode 04755
> such as on Debian) via OPENSSL_config().

Even though the above is not correct to the best of my knowledge (no
openssh version I checked would call OPENSSL_config(NULL) from
ssh-keysign, even when it's complied with --with-ssl-engine and
installed setuid root; even though other openssh command line tools do
end up calling OPENSSL_config(NULL)), this shows OpenSSL is not
unlikely to be used in a privileged application and hence may allow
privilege escalation via special OPENSSL_CONF or OPENSSL_ENGINES
environment variables.

OpenSSL also already protects access to certain environment variables
(there are OPENSSL_issetugid() calls before getenv()), it does not do
the same check for all variables it reads.  It seems that problem
deserves a CVE.

-- 
Tomas Hoger / Red Hat Security Response Team
