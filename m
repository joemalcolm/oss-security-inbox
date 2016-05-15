X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["694" "Sunday" "15" "May" "2016" "19:05:54" "+0800" "Baozeng Ding" "sploving1@gmail.com" "<57385812.2030402@gmail.com>" "20" "[oss-security] Re: CVE Requests: Linux: use-after-free issue for ppp channel" nil nil nil "5" "2016051511:05:54" "[oss-security] Re: CVE Requests: Linux: use-after-free issue for ppp channel" (number mark "U       sploving1@gm May 15   20/694   " thread-indent "\"[oss-security] Re: CVE Requests: Linux: use-after-free issue for ppp channel\"\n") "<573351D6.8000504@gmail.com>" ("<573351D6.8000504@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3201 invoked by uid 550); 15 May 2016 11:06:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3173 invoked from network); 15 May 2016 11:06:13 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=subject:to:references:cc:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding;
        bh=y62XtSMRHX1vU7mALy2M52Ay+RLxkFauiXrab+gDAfE=;
        b=Vp0XRoiU1sqXgvbEJeVrSIjoeFa+BbQIU6ycufjqS0pcSTRTNM9wGQFS9m4mLDNI2o
         +MXamd2/iLYPk5N8w+90T95BWZHVLXADwejERs8+3ZKDvNAr1huGflPK77BYIldffqz5
         /j84mQIDuOZ4GmGWWi8uuCqCeD82kr2wSfmqbNW16GZYu4Qog68wntHS8zjKOx5pbRuA
         QoKmwgGa5fe5FlqhkVfJ8Ptqkqz6pdhlrXHc+pxPn1OIkinL1TfbDHT56oaV0g85W8g6
         sQXifX1hohI/mx7p/PXbBwuHJextXxnYqt1b7GmYqudxh3bSStCn3q/Dk87lTVZWNqK6
         6X2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:subject:to:references:cc:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding;
        bh=y62XtSMRHX1vU7mALy2M52Ay+RLxkFauiXrab+gDAfE=;
        b=lK2AA/93TYDMrsVvCS7wbS/ZYqSFg6sK0pBsdiSGHG7JMQ4FggfWiC5CaCbCjZUdzO
         OQHn8fF+T0xViIeBaWXUprJNjje+gCaNGruAYZzBK9VUdTXn6E78FUU1oXdZ80R0Fn04
         kUN6UflIhslJPOFkU+ryUjLKwuQUD/rLpe/wRoz2tbomfOBNEJidZyRCSmGNERlNwg6j
         /sENYoF8I7NuGnn64ccGUeqJ5gZfozy4cYjUSyzRNQtDErDT711j/UXJTdpACzetdjkw
         vqW07II2ku8nPYvVWFu+tOjLp0teBbEHvJS6tCPPg1abBPevTyGRUs1CezvlpPCGMxHD
         XSdQ==
X-Gm-Message-State: AOPr4FV5BDK5qK1hJVTY7f7BL/hvdCRlQDkmDSpoYUBye6Dlf13YAPxf5Z/XkQePQErIcQ==
X-Received: by 10.98.20.131 with SMTP id 125mr37223771pfu.166.1463310361879;
        Sun, 15 May 2016 04:06:01 -0700 (PDT)
To: oss-security@lists.openwall.com, cve-assign@mitre.org
References: <573351D6.8000504@gmail.com>
Cc: g.nault@alphalink.fr
From: Baozeng Ding <sploving1@gmail.com>
Message-ID: <57385812.2030402@gmail.com>
Date: Sun, 15 May 2016 19:05:54 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:38.0) Gecko/20100101
 Thunderbird/38.7.2
MIME-Version: 1.0
In-Reply-To: <573351D6.8000504@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] Re: CVE Requests: Linux: use-after-free issue for ppp channel

It was introduced by
https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=273ec51dd7ceaa76e038875d85061ec856d8905e
Fixed in linux-stable 4.5.4 and longterm 3.2.80, 3.12.59, 3.14.69, 
3.16.35, 4.4.10.

On 2016/5/11 23:37, Baozeng Ding wrote:
> Hi all,
>    The ppp channel did not take reference on its network namespace 
> when it was registered and unregistered, which causes a use-after-free 
> issue. Details:
> https://lkml.org/lkml/2016/3/17/569
> Fixed via:
> https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=1f461dcdd296eecedaffffc6bae2bfa90bd7eb89 
>
>
> Could you please assign a CVE for this issue? Thanks.
>
> Best Regards,
> Baozeng

