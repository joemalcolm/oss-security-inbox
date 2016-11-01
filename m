X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["414" "Tuesday" "1" "November" "2016" "14:56:01" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<20161101135601.GA990@lorien.valinor.li>" "16" "[oss-security] CVE Request: OTRS: execution of JavaScript in OTRS context by opening malicious attachment" nil nil nil "11" "2016110113:56:01" "[oss-security] CVE Request: OTRS: execution of JavaScript in OTRS context by opening malicious attachment" (number mark "U       carnil@debia Nov  1   16/414   " thread-indent "\"[oss-security] CVE Request: OTRS: execution of JavaScript in OTRS context by opening malicious attachment\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5138 invoked by uid 550); 1 Nov 2016 13:56:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 4090 invoked from network); 1 Nov 2016 13:56:16 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=em2KCheawQ7fcFLhG9GIp/sOIAwe3x1DMToITfjna4s=;
        b=idZU75/oVHmfbls+COwpk+uPMVTS1F4vpH1QTMETTHqIBXUqPHFRllbkCotU0uJH+g
         nL/ViMmxztcUJoHZKr7TswdFb8oNDgvrH3mEcHVEPyHlyzsGLFE+k1k9Fm6cDwr3tJMo
         NoerZnXZZJODojaso/bV+KS6TOkuEpkHVbAPNpkEB94fLSletkPxZh0qeNX9KRfArkIf
         1nSgIiq3hMNRvyJXEof84V4ko3fowBYlFnN/6amJ/WCHxbgaxKF9nwftF5Hsm4ubmMic
         59R4fz94oxxJgync+6SmP37119Kosugl9mLN1rEkz266KK0MZpYFW0iRMgx55GwZ3Q3v
         NjPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :mime-version:content-disposition:user-agent;
        bh=em2KCheawQ7fcFLhG9GIp/sOIAwe3x1DMToITfjna4s=;
        b=JcZFECF+8jmTTJye6bkLnKLCNzmSmJwK5eTcQ2A3Yzklh9mqpzglQ0q0ZlGu4AT1zF
         CtzRs/sl93+b8qpvFtFnKTDNq0T+2a/9MUrOPvDh+7hnCgbCK9ojOhXyGYOLeu4rbAL0
         FJw2AH1OL8sQ7oAvzPsIVlQVbeUgJ1kr8YupJEcAYdeyp+9/6jRRAe+a1cADf95pGltg
         ZSRO6dr0b2JDFD4M0+hwu/Bg3BLNGCjkRBFG4Wbl91p+jKmGoCqIhGPeRf+cGXEnQ0T/
         XfKNKoPo3z+X/iPtG0IBPPZ7ET4enXHh3P3Nsc8dqbkhU+xBTXMQg7SC3mZmsZGUGHwA
         hMCw==
X-Gm-Message-State: ABUngvfkjl5P0Twn9cokogpMa5zLIz4zA2Zk66SRO852bqV6Ovlo/k2+0dLkbR3S/1eGLw==
X-Received: by 10.55.111.68 with SMTP id k65mr33300439qkc.9.1478008563917;
        Tue, 01 Nov 2016 06:56:03 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Tue, 1 Nov 2016 14:56:01 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
To: OSS Security Mailinglist <oss-security@lists.openwall.com>
Message-ID: <20161101135601.GA990@lorien.valinor.li>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: [oss-security] CVE Request: OTRS: execution of JavaScript in OTRS context by
 opening malicious attachment

Hi

>From the OTRS advisory at [1]:

> An attacker could trick an authenticated agent or customer into
> opening a malicious attachment which could lead to the execution of
> JavaScript in OTRS context.

which is fixed in upstream versions OTRS 3.3.16 4.0.19 and 5.0.14.

 [1]  https://www.otrs.com/security-advisory-2016-02-security-update-otrs/

Could you please assign a CVE for this issue?

Regards,
Salvatore
