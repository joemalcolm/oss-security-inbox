X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["740" "Thursday" "23" "November" "2017" "09:54:05" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<20171123085405.GA25517@eldamar>" "22" "[oss-security] xrdp: CVE-2017-16927: Buffer-overflow in scp_v0s_accept function in session manager" nil nil nil "11" "2017112308:54:05" "[oss-security] xrdp: CVE-2017-16927: Buffer-overflow in scp_v0s_accept function in session manager" (number mark "U       carnil@debia Nov 23   22/740   " thread-indent "\"[oss-security] xrdp: CVE-2017-16927: Buffer-overflow in scp_v0s_accept function in session manager\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28072 invoked by uid 550); 23 Nov 2017 08:54:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28047 invoked from network); 23 Nov 2017 08:54:18 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=oMvxeucJ9wVtrKBnsGuNNJUH0nTtW0gewTy9WOif1/A=;
        b=sfsXKb3rnKCTmSWyGLYlzRo1fJi5DVrVq4yJZbiteAL1dkQqbs45MyVIu7qBddHiEM
         VCN1jlEqOcexXTzhmO/4emjLaHS95RP26B6iKzvocBMn/zXNTmfVJF3fuqGm+noNSYjc
         AXfKzMW08Wz3V0vDuynV1Usy+fFqG87bGT9G8BTUJx8sLHztaGmRX02kUbeIyap+v5Pi
         1uiGZNRjD5KM4H4Ts6KpPB3mancX/P6BRFMMgKrkKS3b19Olca8kylYTwNiQvmRpm3Sq
         wmTpBeVfEqcDG7OL3ZPtGXxhr1EmnI9ZALpzOIUDrp3FkuaPNlrL+P7hjESW/mDBqv7+
         r5Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :mime-version:content-disposition:user-agent;
        bh=oMvxeucJ9wVtrKBnsGuNNJUH0nTtW0gewTy9WOif1/A=;
        b=hBMxkVH5otpIq1X0X01UivTObNtdcfHimfW0Xt6dYz1C2a0yuRSjuDMmUaE9c9rz/3
         aooyFXNupb1TG2Lxl8WUqf3hKvpYgiLciLfhZWMMAKYLsdVld0XEyWHQTwC4hH1v/rct
         5k6OcGVNNPm16f8PvwHccTiPS2h6Y7SwflXTFn0ueLC7bHXUxXIY5d92UNjGwIgEEA/F
         IHffEepCWJYeSUu5kiGtnfGGMmOzJVOyxkKTQNtgRHBWuO5cw8Vh6bxMRAwoJoxzn33K
         9LbxlRHdLHDzGQl27jE/M4h5a3yI5UJ4nx6LfM312PR7qxIPWm+/rL7tXNxkkjHS68QA
         KrYA==
X-Gm-Message-State: AJaThX7VnVE6viqwg2pj0H3e53x2/Vt1oWjPX2ybfUjbz/d4S7Nihx3t
	3lbmrndxdGLpQmjZ+WizmnyZIg==
X-Google-Smtp-Source: AGs4zMYGCfUdoffLeLtTHlOGHrbcsKyNnPAp3hbEoSLGNUcpEveNIDnFEBl3uIJLCiK7zb2zPjmm7Q==
X-Received: by 10.28.175.132 with SMTP id y126mr5765533wme.20.1511427247350;
        Thu, 23 Nov 2017 00:54:07 -0800 (PST)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Thu, 23 Nov 2017 09:54:05 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
To: OSS Security Mailinglist <oss-security@lists.openwall.com>
Message-ID: <20171123085405.GA25517@eldamar>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.1 (2017-09-22)
Subject: [oss-security] xrdp: CVE-2017-16927: Buffer-overflow in scp_v0s_accept function in
 session manager

Hi

MITRE has assigned CVE-2017-16927 for a buffer-overflow flaw in the
scp_v0s_accept function in xrdp's session manager (in default
configurations running as root and listening on the loopback address,
so potentially triggerable by any local user):

https://groups.google.com/forum/#!topic/xrdp-devel/PmVfMuy_xBA

Quoting the reference:
> The code in question is sesman/libscp/libscp_v0.c, around lines 228
> and 240: a 16-bit unsigned int is read from the input stream to
> represent the string length (for username and password input), and
> used without validation to index/copy from the input stream into a
> 257-byte buffer.

There is a proposed patch/pull request:

https://github.com/neutrinolabs/xrdp/pull/958

Regards,
Salvatore
