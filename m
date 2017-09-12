X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["659" "Tuesday" "12" "September" "2017" "20:26:40" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20170912182640.eadivhvqx2v2gudh@eldamar.local>" "21" "[oss-security] Shibboleth plugin for WordPress: CVE-2017-14313: XSS vulnerability due to improper use of add_query_arg()" nil nil nil "9" "2017091218:26:40" "[oss-security] Shibboleth plugin for WordPress: CVE-2017-14313: XSS vulnerability due to improper use of add_query_arg()" (number mark "U       carnil@debia Sep 12   21/659   " thread-indent "\"[oss-security] Shibboleth plugin for WordPress: CVE-2017-14313: XSS vulnerability due to improper use of add_query_arg()\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 4034 invoked by uid 550); 12 Sep 2017 18:26:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 4008 invoked from network); 12 Sep 2017 18:26:55 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=udEfQJRe/665VkAMIR5Wzz+V11cujzGkjRVL7jUxpWU=;
        b=eLQNtC369883k1mIAIdMEx3nSGaHyBpvfmU/hSoyeRH6fiBTwUaJN7FRWs7dQ1Y0HI
         PeTLzdt96WB9EIFn+yg4p2k0g4vFXNtMRgQAdfGIPTohthRcfgYydQJxJuVe/9aox9UU
         WXA7SD40NAekImvRtm4UiES+2cSqdx2Z4vRKtYZggJSSbeDRflRuFfDgykRpo4V/aKSZ
         rvNMF/aTG+8NQ3HXGkbZLwEUH40QVhV24c5ka8/gxUPmVSS5BBMwZctM6cjiot4CHU5x
         QmapzF/nS/3xE/fDL5p7k3UrCp0h/156HIWz7trc8aKhmnFufAsJ+ElerOhIEgYRakzs
         WuUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :mime-version:content-disposition:user-agent;
        bh=udEfQJRe/665VkAMIR5Wzz+V11cujzGkjRVL7jUxpWU=;
        b=bhWd2loYiE4cQ0xyNwaP3fzX6r93L5RLrB4OUPXhWhfxlvYKEaRkRn8cNAiZzcWK4d
         44aaTgxIjPGDn0XAqJJkc1/QrJ7cisnm3u5v1mXCrFTddBO452RWizUxG10jAxVetXgL
         r86CSuISwHjxHi4jwS41fhjinkVIFNCniYGkTnbRfNe7IYKsCZ1iu0SWOA4UkyC3gDI0
         Vjt1niF9ELyR2UqA7qnhbD5vQzLLP8t9YFQxax+7WRHK1iEvyj+ZC0s7TU3fWqlO96NX
         eAKTX53Fx73qV2R6Y4MKcQf9868Bwp6ulNzYb7TsC/RomsahWu+pY6xw5NGoiEyejntl
         F00A==
X-Gm-Message-State: AHPjjUiScDOM61ktg5+UCYDj94iyg1Ouuwilu66dV8bv4Eo2YPFosW0x
	aW7tKA/r0Dr91/ZE
X-Google-Smtp-Source: AOwi7QAF9lRudtU6DyK0tzAk1yO026q7Ye2vxMkzHjI2VlXcQFT/CunRA6ztjDS5n3h7udz1EsMjzQ==
X-Received: by 10.223.174.194 with SMTP id y60mr1395553wrc.105.1505240803485;
        Tue, 12 Sep 2017 11:26:43 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Tue, 12 Sep 2017 20:26:40 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: OSS Security Mailinglist <oss-security@lists.openwall.com>
Message-ID: <20170912182640.eadivhvqx2v2gudh@eldamar.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20170609 (1.8.3)
Subject: [oss-security] Shibboleth plugin for WordPress: CVE-2017-14313: XSS vulnerability
 due to improper use of add_query_arg()

Hi

MITRE has assigned CVE-2017-14313 for the following cross-site
scripting vulnerability in the Shibboleth plugin for Wordpress, caused
due improper use of add_query_arg(), found in the
shibboleth_login_form function in shibboleth.php.

Decided to still forward the assignment here to the list even as
Dominic mentioned the issue was long known already, but apparently at
least never reported in Debian.

Only now a CVE was requested, triggered by the bugreport in Debian:

https://bugs.debian.org/874416

Upstream fix (contained in 1.8):

https://github.com/michaelryanmcneill/shibboleth/commit/1d65ad6786282d23ba1865f56e2fd19188e7c26a

Regards,
Salvatore
