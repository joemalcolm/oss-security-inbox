X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["623" "Tuesday" "28" "February" "2017" "17:25:24" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<20170228162524.47jesr3zopycriir@eldamar.local>" "23" "[oss-security] Linux: packet: fix races in fanout_add() (CVE-2017-6346)" nil nil nil "2" "2017022816:25:24" "[oss-security] Linux: packet: fix races in fanout_add() (CVE-2017-6346)" (number mark "U       carnil@debia Feb 28   23/623   " thread-indent "\"[oss-security] Linux: packet: fix races in fanout_add() (CVE-2017-6346)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 10002 invoked by uid 550); 28 Feb 2017 16:25:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9984 invoked from network); 28 Feb 2017 16:25:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=byNyKYMgGNRpSghBJRd48Z4l6ImQCO11PFcFt+3r+8s=;
        b=hoXjfdXp4nOSLVs6EnWzLkl0ScjPlJudmEQdrgmZVFp2BpikOlQD/AZlEB4GmFaWYT
         3KoV2F1MAHqBAar85CjK9k4vTb6/2mJsDwXMCHfjyd9tm4M6+CL36Hsi10a8sD/JhE6g
         Ce3yp3q0gq6GgAS7elkd9UMROmMlX8YGYEsfttQCJ9uFaOFLtqmstF3ObR+wHW7a3sgT
         RoFAN1C9gKy4ANp8FsDGGfW/J9ZNnFIu2OnG7wMH7dLZVxFV8eZlTA55+A+oy2Q8s38/
         DOc2Hvr+ppA63HTW3Qs6LAC/SzXpYbsgXBDIufi1bfHL/uO1C1Gpbtg9EKxucYjMw2ei
         D4Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :mime-version:content-disposition:user-agent;
        bh=byNyKYMgGNRpSghBJRd48Z4l6ImQCO11PFcFt+3r+8s=;
        b=XROMpbiNAiHG7maWg7Kr9P22RQswQ4ZFH0NSM55xAqXRNXTeN4To9+eiTo89PBhC3h
         /1si9y84/S6jRJUoPhwNzVo/f1sYhR0+n3exwRdHHmg1WByE0MI0ekhoIrp5M39DjQD8
         dclZZOEiVdk6AOrWNdftWlkBB06peZfFLVIwQuL2wujqV+jjUIve+53CDiyoolTdeYOT
         3fp7Yo5lE+jDhbquZc8AOezF7T5vv3P8bN1ZF556pLHtJgNukSfVLv6XqtvWEEwFuKMN
         JcMww3Z/Y62lC0MPNQML2ElZK3b3R45N5J7hvxwowuzwRpkziRywtV3ycrnaLfeSghov
         qAHQ==
X-Gm-Message-State: AMke39kiR5eTFosoUqhqshYNu3WM4t9B1Mi8GkPsStUTERQmxdFR4TQEHOjDvHDyHj7mzQ==
X-Received: by 10.223.164.9 with SMTP id d9mr3169421wra.146.1488299126426;
        Tue, 28 Feb 2017 08:25:26 -0800 (PST)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Tue, 28 Feb 2017 17:25:24 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
To: OSS Security Mailinglist <oss-security@lists.openwall.com>
Message-ID: <20170228162524.47jesr3zopycriir@eldamar.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)
Subject: [oss-security] Linux: packet: fix races in fanout_add() (CVE-2017-6346)

Hi

CVE-2017-6346 was assigned by MITRE to the following (via
https://cveform.mitre.org/):

https://git.kernel.org/linus/d199fab63c11998a602205f7ee7ff7c05c97164b

> packet: fix races in fanout_add()
> 
> Multiple threads can call fanout_add() at the same time.
> 
> We need to grab fanout_mutex earlier to avoid races that could
> lead to one thread freeing po->rollover that was set by another thread.
> 
> Do the same in fanout_release(), for peace of mind, and to help us
> finding lockdep issues earlier.

Since 4.2 the races can lead to a use-after-free.

The fix was backported to 4.9.13 as well.

Regards,
Salvatore
