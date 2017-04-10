X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["360" "Monday" "10" "April" "2017" "17:08:12" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20170410150812.g3vijutg36dqafhf@eldamar.local>" "14" "[oss-security] web2py: CVE-2016-10321: does not check if a host is denied before verifying passwords" nil nil nil "4" "2017041015:08:12" "[oss-security] web2py: CVE-2016-10321: does not check if a host is denied before verifying passwords" (number mark "U       carnil@debia Apr 10   14/360   " thread-indent "\"[oss-security] web2py: CVE-2016-10321: does not check if a host is denied before verifying passwords\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11927 invoked by uid 550); 10 Apr 2017 15:08:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11870 invoked from network); 10 Apr 2017 15:08:25 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=PBlY4Kh/NCyP5WOuc5UcUv/qBoFfo1oVIMAaxtIHADU=;
        b=k1W7lIFne9p2eyISC+YXg1VKFoZs3i4Wzq2/b0yWG3a7LFZj2BnF5AAMQTCKsCJm5l
         dtp4xxYTP+6LrtVSrNFDcPvfYbJ7ZIFgPenvAcV255qkma9JrFpezVe0X6DEpBMZBKCm
         elWEnUwJ7cTu7lEQ3v0CFP1MB2ICTA6Z10A7wrZQVDZ8C8APJm/iWmmI+g3OLmsGZTRm
         dCczNPKmHmd+LBdUvcFdv4SNGX1PAU2OcodsIEwId3W/unqcZfTbizmdJD6QQ5yrbczH
         7ansNfxbF86SiHglC3NbjS0fwhfaEzOJ1wXEwiqYzxeJOOkr5mneDJWnv+feViylRCeg
         mEKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :mime-version:content-disposition:user-agent;
        bh=PBlY4Kh/NCyP5WOuc5UcUv/qBoFfo1oVIMAaxtIHADU=;
        b=jauP2lHiMfeHbQUay3QPn1GhIWtqx6ymKR6II9WnVjYl8V0MPjT+FUfFwHgAYepsyf
         QeP9/ANFmGpOXnJyEpcaP7WAZu2MmPeD1aDYZeXXVZGxRh5G0z+zrTOYvrTntor30qhR
         5iOeeYDuEKNjxUmlVk9ZeieSGbfru5XGqkwPOxwOh7JAxUXg1msN4I/yQEZZg4y7qTxp
         +PkGoGkZmoRt/UYB6C52S4zf6M7SayOBLSYwQ+MUNjdJuPbSJf1BmMKvNXVbQdmlPe7T
         b2yUTBTR/vIkCCIZE8vjKgwqeuXnzrx7oExsvM/OPLi2o61ZXqAvu+j9r9yCpsOEvaM6
         7Grw==
X-Gm-Message-State: AN3rC/4Vk2TltbWQ1HAcPqGwWmbn3gT3chMIb6OZCK5AxUy+j78UyyOsht7FTJ2/Vhm2Bg==
X-Received: by 10.28.7.144 with SMTP id 138mr10655288wmh.125.1491836894247;
        Mon, 10 Apr 2017 08:08:14 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Mon, 10 Apr 2017 17:08:12 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: OSS Security Mailinglist <oss-security@lists.openwall.com>
Message-ID: <20170410150812.g3vijutg36dqafhf@eldamar.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20170306 (1.8.0)
Subject: [oss-security] web2py: CVE-2016-10321: does not check if a host is denied before
 verifying passwords

Hi

CVE-2016-10321 was assigned (via cveform.mitre.org) to the following
issue in web2py:

web2py before 2.14.6 does not properly check if a host is denied
before verifying passwords, allowing a remote attacker to perform
brute-force attacks.

Fixing commit:
https://github.com/web2py/web2py/commit/944d8bd8f3c5cf8ae296fc03d149056c65358426

Regards,
Salvatore
