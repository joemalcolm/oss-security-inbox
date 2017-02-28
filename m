X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["651" "Tuesday" "28" "February" "2017" "17:23:09" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<20170228162309.e22hyhgw4id7dgdn@eldamar.local>" "23" "[oss-security] Linux: ip: fix IP_CHECKSUM handling (CVE-2017-6347)" nil nil nil "2" "2017022816:23:09" "[oss-security] Linux: ip: fix IP_CHECKSUM handling (CVE-2017-6347)" (number mark "U       carnil@debia Feb 28   23/651   " thread-indent "\"[oss-security] Linux: ip: fix IP_CHECKSUM handling (CVE-2017-6347)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30633 invoked by uid 550); 28 Feb 2017 16:23:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30615 invoked from network); 28 Feb 2017 16:23:22 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=QdzC8Olnutv+Up2TrJEtt1zGrgFyfAgVHiuG1k2zb0o=;
        b=ivt7gx7E2ycAO0pn2bb8KtY1zP3g8LTFa2mt/hzn9Xr9yH4ULOBrksZ0GGPXvpoBw8
         0CtrVRRm+Rl6EeA9FI5xSG1KIKRTlXIRn3N02aNY/3PBf0zXbhR+9oh4gMKH5LJwdJ7a
         Dy7Od1rbzNEOwWVd1T6mRdansVVhDv6FPUDVfsOP8eAtYpkPbShASkgQwEy9yyOOhbXc
         Th9CWhzROjaRbMGM32PYDb7HILQ3EtSdiPt31PnkqJSaV99xltto4of4iVmNKiM3S8sq
         ZN0k62yA7p+bNk7hFnjkt6cPuZDenF3zSEKkAbe6saJT5ZtuNA2NtaN8x8hhb5qpNZqP
         6vxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :mime-version:content-disposition:user-agent;
        bh=QdzC8Olnutv+Up2TrJEtt1zGrgFyfAgVHiuG1k2zb0o=;
        b=Yfqrjt1fhguTmpk5R1oQ9bSuk95iHKXFZE8y5WaUz19MSBKUUcZTYKcOPIUmLiVTw4
         17K1IrYrRu7+On9SJkmG1KjTvTOywKsOZVYkV5lX8IXWfoFRXbWUqtphYPq8Ln9h+9Jg
         INHfexMfuE/IE0E92mMMEE2d9SnP9lgWiq6wD5JY6fNYOuGpJkZmSgSOV7XjAIx//oKU
         O5kN8/lRN83Hn67HX9l3sSdanDCYfk+OmjJk07akpzJvHn+0j2h4uw9IfMm6vweHM7J7
         aQk8/d9J3ipXOxNineFxMv/XCGSegZmkwM39sffda579dShciU0jq4cdPULLpPXPZ1LE
         jAqA==
X-Gm-Message-State: AMke39mN5p6gGwfL6+Ul9RWsNlqJRA9hRGcgvULlFT5m+lfEQtCiWfB+vuvzmbSLCOtPAg==
X-Received: by 10.223.162.18 with SMTP id p18mr3121981wra.7.1488298991293;
        Tue, 28 Feb 2017 08:23:11 -0800 (PST)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Tue, 28 Feb 2017 17:23:09 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
To: OSS Security Mailinglist <oss-security@lists.openwall.com>
Message-ID: <20170228162309.e22hyhgw4id7dgdn@eldamar.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)
Subject: [oss-security] Linux: ip: fix IP_CHECKSUM handling (CVE-2017-6347)

Hi

CVE-2017-6347 was assigned by MITRE to the following (via
https://cveform.mitre.org/):

https://git.kernel.org/linus/ca4ef4574f1ee5252e2cd365f8f5d5bafd048f32

> ip: fix IP_CHECKSUM handling
> 
> The skbs processed by ip_cmsg_recv() are not guaranteed to
> be linear e.g. when sending UDP packets over loopback with
> MSGMORE.
> Using csum_partial() on [potentially] the whole skb len
> is dangerous; instead be on the safe side and use skb_checksum().
> 
> Thanks to syzkaller team to detect the issue and provide the
> reproducer.

The issue was introduced in 4.0 by commit ad6f939ab193. The fix as
well backported to 4.9.13.

Regards,
Salvatore
