X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["520" "Sunday" "28" "February" "2016" "17:14:09" "+0500" "Alexander E. Patrakov" "patrakov@gmail.com" "<56D2E491.1000505@gmail.com>" "22" "Re: [oss-security] Re: CVE Request: util-linux runuser tty hijacking via TIOCSTI ioctl" "^Cc:" nil nil "2" "2016022812:14:09" "[oss-security] Re: CVE Request: util-linux runuser tty hijacking via TIOCSTI ioctl" (number mark "U       patrakov@gma Feb 28   22/520   " thread-indent "\"Re: [oss-security] Re: CVE Request: util-linux runuser tty hijacking via TIOCSTI ioctl\"\n") "<20160227134425.4F5F26C012D@smtpvmsrv1.mitre.org>" ("<20160227134425.4F5F26C012D@smtpvmsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26367 invoked by uid 550); 28 Feb 2016 12:14:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26341 invoked from network); 28 Feb 2016 12:14:24 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=subject:to:references:cc:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding;
        bh=thjrgp2rBfGDPF6RSFeIfgWOxAcOkrcXDN+m23V5zC8=;
        b=QTrwgbkUYjM2Hl9uV3Wr4/V2f+HW7oe0BQIE0a01avlSuNl8GuxJl0Ynclie6pV+4Q
         QqbJsRJQIpqkJA0hBv+EgxJHuU6eul+DNBpcnBQ2ASGLwqVy9tccyT++dmyf/r7AseSc
         GGvF4rqa5QLpsRp9WnL8UJD9qtVuz2FkozwI+343L6yYkqk7m1NfppMtvXahlKIREp2g
         IW5bqUh6ZFLLWcD0QoQ2grKDuHn0wBrSZ1KeXb52vEaNIeYHB83vxgl1tFuI7zS0T/EN
         uJ3RNsKHWOu+XHjf2mKf1LcwOQuP4G5rjuckqLno2vCcEJaqdmhjyqta6GLDTUa20oSX
         p5bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:subject:to:references:cc:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding;
        bh=thjrgp2rBfGDPF6RSFeIfgWOxAcOkrcXDN+m23V5zC8=;
        b=ZnkpkFF+gmB/bptj3XK3TCrro6q4OylGof7pd0PBSbnJPnnkKMCWQfTnMH/r/yPPXO
         HqToVXipAdIU6GloEL4QcRfs2XCdkDnCNIOU4GFncrjTN3YJyrIDysVHEgnoSQjT1UVo
         H4NQn3P7Tv/o+lYG2Khq8bWZjbpLNaDXJnZODVfe2qobDX0Y3qbpITDVNfCAESNfbqQg
         8LxWozlj3mWoTJco8kY+1XR6+Wk+CBewaQv0WPy/p5m7nwCtUhL2b8F+KFAQJcYVoEQF
         sRizxYksM1sB8CbQEql1JVEn1F3V0GhezEZ1bRhSoJWsEuGTK99cRCZ06EyTX//HU3B9
         X5dA==
X-Gm-Message-State: AD7BkJIG1W22IqmpvYG3r5/OEdQO5e3pb8d5rXialKKeF8Y9WvrvTzDhXAwM0lApyI9uxg==
X-Received: by 10.194.92.68 with SMTP id ck4mr9920137wjb.144.1456661652666;
        Sun, 28 Feb 2016 04:14:12 -0800 (PST)
References: <20160227134425.4F5F26C012D@smtpvmsrv1.mitre.org>
Message-ID: <56D2E491.1000505@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.6.0
MIME-Version: 1.0
In-Reply-To: <20160227134425.4F5F26C012D@smtpvmsrv1.mitre.org>
Content-Type: text/plain; charset=windows-1251; format=flowed
Content-Transfer-Encoding: 8bit
Cc: cve-assign@mitre.org
Date: Sun, 28 Feb 2016 17:14:09 +0500
From: "Alexander E. Patrakov" <patrakov@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: CVE Request: util-linux runuser tty hijacking
 via TIOCSTI ioctl
To: oss-security@lists.openwall.com, up201407890@alunos.dcc.fc.up.pt

27.02.2016 18:44, cve-assign@mitre.org пишет:
> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA256
>
>> When executing a program via "runuser -u nonpriv program" the
>> nonpriv session can
>> escape to the parent session by using the TIOCSTI ioctl to push
>> characters into the
>> terminal's input buffer
>
>> https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=815922
>
> Use CVE-2016-2779.

One more case:

chroot --userspec=someuser:somegroup / /path/to/test

This also runs "id" at the end.

-- 
Alexander E. Patrakov
