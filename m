X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["408" "Wednesday" "11" "May" "2016" "23:37:58" "+0800" "Baozeng Ding" "sploving1@gmail.com" "<573351D6.8000504@gmail.com>" "13" "[oss-security] CVE Requests: Linux: use-after-free issue for ppp channel" nil nil nil "5" "2016051115:37:58" "[oss-security] CVE Requests: Linux: use-after-free issue for ppp channel" (number mark "U       sploving1@gm May 11   13/408   " thread-indent "\"[oss-security] CVE Requests: Linux: use-after-free issue for ppp channel\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21681 invoked by uid 550); 11 May 2016 15:39:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20337 invoked from network); 11 May 2016 15:38:16 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=to:cc:from:subject:message-id:date:user-agent:mime-version
         :content-transfer-encoding;
        bh=ogUm345bItLtl1/ItxzqW4z7KGiEe8XspK7Ip6rrOms=;
        b=URaY+YNHJK3cuMkCpvNATZfOI1+gEcsr+jlMy6yliM1iLC0EZ7fEaVahjr1pq0Pl0M
         cpB8PCFZnJoJV5xLP55zDEb1q+P0tZ+WEondVMSfoifD+PmMlNSdo0G/4zJggcYYB5g7
         cuRRWmlAVjN/PZaI9aOUK0m0HifDoc3hP9DTtZ5csJIV8JQ9QBtsTxdmw77kgKqg0DNO
         X+hI0mrwP8w32ixPkhXxF/Z4KI8H2EXHmxgoKqfBu/LDzPg7jlCJBikoihwshf11LPqk
         P0/rvDGupbh1lD/ZA9bsIcsVm1SGW3Qpfa7HQcjaKmAbf5Z2tDZ1g+I8BgojFDWni8pw
         rHFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
         :mime-version:content-transfer-encoding;
        bh=ogUm345bItLtl1/ItxzqW4z7KGiEe8XspK7Ip6rrOms=;
        b=TRkvbeZ8rDMrrsv+LRmZdpP6QDH4ilLmy/zNlsaQFptSOHabv3FMWaWVKCjPvFEcSM
         nl5UbM6JNQErsHqph3957jAIO4Q41QXDqPQlZ96FLrAv3ynWiYAwoJWTgU1HT8x9Zs+h
         F8JfejlbCaWKVqZW5BGNhdhrSp0Qr3k4aOjQURSRa15OK98Ky4CeLSRZp6vRO8IW4K1y
         EBWCrKbV9y86wXowDQNqYOH5GpfBR4VAZC9s+uEWeRAXm7ZQylWVvBt8vbDYd1E0D3U9
         /IvcM3kGjytaVkCzau28t4//yRRaUeLspz8M/sjRGMwBl9OOrnHMGeKg+hPflj9d/oJJ
         LUpw==
X-Gm-Message-State: AOPr4FU6Ru2pWop5onRu6vFALRLmer4U1cJoULxhXGB+tX5uNT2FTULEkZGG+1Yn0DVgPA==
X-Received: by 10.202.48.20 with SMTP id w20mr2085476oiw.61.1462981084514;
        Wed, 11 May 2016 08:38:04 -0700 (PDT)
To: oss-security@lists.openwall.com
Cc: g.nault@alphalink.fr
From: Baozeng Ding <sploving1@gmail.com>
Message-ID: <573351D6.8000504@gmail.com>
Date: Wed, 11 May 2016 23:37:58 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:38.0) Gecko/20100101
 Thunderbird/38.7.2
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE Requests: Linux: use-after-free issue for ppp channel

Hi all,
    The ppp channel did not take reference on its network namespace when 
it was registered and unregistered, which causes a use-after-free issue. 
Details:
https://lkml.org/lkml/2016/3/17/569
Fixed via:
https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=1f461dcdd296eecedaffffc6bae2bfa90bd7eb89 


Could you please assign a CVE for this issue? Thanks.

Best Regards,
Baozeng
