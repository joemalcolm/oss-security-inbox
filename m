X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2089" "Wednesday" "30" "August" "2017" "22:03:46" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20170830200346.dhmg6koiwpn3rauh@eldamar.local>" "55" "[oss-security] mbed TLS: CVE-2017-14032: Bypass of authentication of peer possible when the authentication mode is configured as 'optional'" nil nil nil "8" "2017083020:03:46" "[oss-security] mbed TLS: CVE-2017-14032: Bypass of authentication of peer possible when the authentication mode is configured as 'optional'" (number mark "U       carnil@debia Aug 30   55/2089  " thread-indent "\"[oss-security] mbed TLS: CVE-2017-14032: Bypass of authentication of peer possible when the authentication mode is configured as 'optional'\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21736 invoked by uid 550); 30 Aug 2017 20:04:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20414 invoked from network); 30 Aug 2017 20:03:59 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=+hajqGv91dQTB/J46sq4O27/vlFw/4SGNfzd7nvg7GE=;
        b=X1scDMFd+clTeNnC/8sJdp63Ef9YuNzA5AjoKkSKuORJoz24WfmL1x3WftitdU2JMo
         Xe3sXBpaHPCxNv2ifc94zfUrBj/khxe8/mrwZTNU26Nd5zLqwWMPLvJ90GBPqea/+13e
         qfl5vTQZGmkpd08IVOibiWuJgBh6nNWtlUoddIXFQyMUfPYBRT9Nigm/UR1x0kC/AOoN
         Bt4NM7ynBKJlzysTfoZbiO7mcbVSZ1yp9vI8kvhAoTTLYFLmftCE/HME3QenRws4Ta6c
         aEdEagSgTGw3vk2FlN/3JKYm+LidTC0cG9y813I6RyOHBDMjk0UABUlxe0UwNtbln1OS
         kw3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent;
        bh=+hajqGv91dQTB/J46sq4O27/vlFw/4SGNfzd7nvg7GE=;
        b=ih94Lh8jZREMVUZLEtFOZRB64J2+eqjVViZK9cJYNPb5Yg823z69x9OueYka2vvMSV
         4nAwRmNJ6Lq1EYskk4DVdTOv+TEtU8uyQ2g/ezkaZxciCN/aIHda87MhrTsSJENYYfMT
         d6INcVTLtgWU8PAW3sY2/HbnNlu3QxnalENtw6Duwmo4UZctePAxD4yK/Y6ZkD1T1iO6
         deB42XlBtgAb62+LBoI46rmV3OveWVffUp8/IlOQ7vNpga/DG61844g2QiYWma0nmNMv
         uW1ltZXVCVkxTjlzXdGWuFO9JChH6/CDkbPzKmPK0m+z9K2J7J+PtpnTKGHSTlqaI0Qy
         Ep3g==
X-Gm-Message-State: AHYfb5iRmvEoo8/fdG9x8VdeJT/DowcOpdsgz0dNZSSSlR3eQuxH4GmX
	8v8+kUuP6i/k+uqa
X-Received: by 10.28.152.87 with SMTP id a84mr1940771wme.173.1504123427872;
        Wed, 30 Aug 2017 13:03:47 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Wed, 30 Aug 2017 22:03:46 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: OSS Security Mailinglist <oss-security@lists.openwall.com>
Cc: James Cowgill <jcowgill@debian.org>
Message-ID: <20170830200346.dhmg6koiwpn3rauh@eldamar.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20170609 (1.8.3)
Subject: [oss-security] mbed TLS: CVE-2017-14032: Bypass of authentication of peer possible
 when the authentication mode is configured as 'optional'

Hi

MITRE has assigned CVE-2017-14032 for the following issue in mbed TLS:

https://tls.mbed.org/tech-updates/security-advisories/mbedtls-security-advisory-2017-02

>   Title     Bypass of authentication of peer possible when the authentication
>                             mode is configured as 'optional'
> Date      28th August 2017
> Affects   All versions of mbed TLS from version 1.3.10 and up, including all
>           2.1 and later releases
> Not       mbed TLS 1.3.9 and earlier
> affected
> Impact    Use of the 'optional' authentication mode can permit the peer to
>           bypass peer authentication
> Severity  High
> 
> Vulnerability
> -------------
> If a malicious peer supplies an X.509 certificate chain that has more than
> MBEDTLS_X509_MAX_INTERMEDIATE_CA intermediates (which by default is 8), it
> could bypass authentication of the certificates, when the authentication mode
> was set to 'optional' eg. MBEDTLS_SSL_VERIFY_OPTIONAL. The issue could be
> triggered remotely by both the client and server sides.
> 
> If the authentication mode, which can be set by the function
> mbedtls_ssl_conf_authmode(), was set to 'required' eg.
> MBEDTLS_SSL_VERIFY_REQUIRED which is the default, authentication would occur
> normally as intended.
> 
> Impact
> ------
> Depending on the platform, an attack exploiting this vulnerability could allow
> successful impersonation of the intended peer and permit man-in-the-middle
> attacks.
> 
> Resolution
> ----------
> Affected users should upgrade to mbed TLS 1.3.21, mbed TLS 2.1.9 or mbed TLS
> 2.6.0.
> 
> Workaround
> ----------
> Users should wherever possible upgrade to the newer version of mbed TLS. Where
> this is not practical, users should consider if changing the authentication to
> the 'required' mode MBEDTLS_SSL_VERIFY_REQUIRED is practical for their
> application.

References:
 -  https://github.com/ARMmbed/mbedtls/commit/31458a18788b0cf0b722acda9bb2f2fe13a3fb32
 - https://github.com/ARMmbed/mbedtls/commit/d15795acd5074e0b44e71f7ede8bdfe1b48591fc
 - https://bugs.debian.org/873557

Regards,
Salvatore
