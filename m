X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["488" "Saturday" "3" "December" "2016" "10:44:05" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<20161203094405.udrlvszru3jxezia@eldamar.local>" "16" "[oss-security] CVE Request: SimpleSAMLphp: SSPSA 201612-01: Incorrect signature verification" nil nil nil "12" "2016120309:44:05" "[oss-security] CVE Request: SimpleSAMLphp: SSPSA 201612-01: Incorrect signature verification" (number mark "U       carnil@debia Dec  3   16/488   " thread-indent "\"[oss-security] CVE Request: SimpleSAMLphp: SSPSA 201612-01: Incorrect signature verification\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22436 invoked by uid 550); 3 Dec 2016 09:44:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22397 invoked from network); 3 Dec 2016 09:44:19 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=FYpsJ6r/gMwkldxUkq7ERnG4qzx2RHKFxcojYVG0oQQ=;
        b=n3gEw+6OAwN2SyhOE9oujw0mDZOugo8CjzybAUBafpRvwwrkiuZK8wrYw74sVkxfXQ
         2kctWis+92qn6LnlE5BpytVZza7Dyu4oo8cvnVOXksEbixazm96HXxT/2miUeLxbIZpG
         wQ/L1QaSPiCpP1i4l4kh7jPKRJoFiEJUY+6DRTwwV1Upmur2cnqGGK2CV+t9vMfnSNCJ
         ty9HY7yuhADSIVEg/+hzu1n8j07YFa0qx0gn6mi5ycaXEFy4HflPWMAqIEUUgsH/TXUN
         R0Lr509nCy7wjlCdOS6/76fRatgXAaitubH6LRc1RTQf3dO4R61Uu7ZVZFcbQNW4fZBi
         uWFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :mime-version:content-disposition:user-agent;
        bh=FYpsJ6r/gMwkldxUkq7ERnG4qzx2RHKFxcojYVG0oQQ=;
        b=ikWKpD42L3vENeE9dw2Dcd5Spq+pHjiCrqP91ide26CfQ2pTvzVIudnleCl553zm7j
         yxchKhBw9ecrRxRlNbQhPCmYMYHj+6ofOYfCOzut0o55ojSeTdE9MtsaMqTu5BSCcS8J
         5xIhBido6oG6XJSdgSL5efZe142D1v6VvlmpJs4HWrAPjAqUpGIXaSX1GQ+4Sd/Unj9x
         S5IIzcrK/hnTvGfqCTBgYS/RNJnhlQKToNnVgRQMXxgmD+DJqw0+PweD6R4ijK2zUXcn
         EaIfWeVzs6EjvxcUq/lWcIMt10XgVF5o/IuT1+gLEBwCo4ZujVLntlOt/y3r082KKA0u
         q5ag==
X-Gm-Message-State: AKaTC005w7FsLlUqV6bttP48O24cyxuuoPRGOCjtwhSdSkeg5g2iyTWRq/MXLIsOQzo8GA==
X-Received: by 10.194.148.134 with SMTP id ts6mr41715293wjb.220.1480758248177;
        Sat, 03 Dec 2016 01:44:08 -0800 (PST)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Sat, 3 Dec 2016 10:44:05 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
To: OSS Security Mailinglist <oss-security@lists.openwall.com>
Message-ID: <20161203094405.udrlvszru3jxezia@eldamar.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20161126 (1.7.1)
Subject: [oss-security] CVE Request: SimpleSAMLphp: SSPSA 201612-01: Incorrect signature
 verification

Hi

SimpleSAMLphp has released an update fixing an incorrect signature
verification issue. Affected versions are all SimpeSAMLphp before
1.14.10, and the SimpleSAMLphp SAML2 library, prior to 1.9.1, 1.10.3
and 2.3.3.

Upstream advisory: https://simplesamlphp.org/security/201612-01

Refrences: https://github.com/simplesamlphp/saml2/pull/81
https://github.com/simplesamlphp/saml2/commit/7008b0916426212c1cc2fc238b38ab9ebff0748c

Could you assign a CVE for this issue?

Regards,
Salvatore
