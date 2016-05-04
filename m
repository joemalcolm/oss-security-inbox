X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["355" "Wednesday" "4" "May" "2016" "10:34:58" "+0200" "Albert Veli" "albert.veli@gmail.com" "<5729B432.3070503@gmail.com>" "11" "Re: [oss-security] OpenSSL Security Advisory [3rd May 2016]" "^Cc:" nil nil "5" "2016050408:34:58" "[oss-security] OpenSSL Security Advisory [3rd May 2016]" (number mark "        albert.veli@ May  4   11/355   " thread-indent "\"Re: [oss-security] OpenSSL Security Advisory [3rd May 2016]\"\n") "<87y47qmdwn.fsf@devnull.wylie.me.uk>" ("<20160503152100.GA4790@openwall.com>" "<52f58a81-5a5a-005d-cc87-27f1cce0379e@gmail.com>" "<20160503173526.GA6669@openwall.com>" "<74d54064-2a90-1170-1abb-7729216b461b@gmail.com>" "<57298BB0.5070507@gmail.com>" "<87y47qmdwn.fsf@devnull.wylie.me.uk>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13315 invoked by uid 550); 4 May 2016 09:43:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22028 invoked from network); 4 May 2016 08:35:11 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=subject:to:references:cc:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding;
        bh=A2NTS+uPERLIDpj/yL6VYSdnYpc34iHG3nc3Q+iR+A8=;
        b=OqmhHZuXwQlj7hKvYsE5/qp2zXjpJPFXuZoo27cSspAHeF2R1KYuyJGKHMApKQf4zp
         rRPGBZKgzNklqRoPga2/XoMRd2CHs4uNZ5n7PEcuMPdpk0sx0W1xyROz9VfQ/3iW/vSK
         61Zt3n45d0YSD3GOjMg2dwMGIsr5Jj58B1P/L0cMzTpQVu0dfcC2Npiz2A7sQaSIoqYb
         SqIWt2OXRBkPOAO/F8gOtAjW7Zsl2wammhYagjVePHqmuxJW4g/11Dd6A7wINeMYSVjt
         d32r+d48hYuaQQkO2leL2a4r/1oAF1Q6OwvigG57RXZc4FbyxsKZzOrl2pbMEsUq2gNl
         hLBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:subject:to:references:cc:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding;
        bh=A2NTS+uPERLIDpj/yL6VYSdnYpc34iHG3nc3Q+iR+A8=;
        b=aHvojbA+XKgNcKzXH7+OFYWWDDya9qRcD0B9f9gOqEM2zNorbDKTkqcX62VM4XxwJq
         m9RWtDw6N3iu9TVGIQ3ksF6u/KS4kIf+RHu+Q7+9hSl7jz+1q1qDJEC05+1ON3YV7T0V
         8AY9JaehKK0cBzsKTYwKsSqnKeiUgB2HsVhfJSQzMAGiEI8mAomEeMpBqmnRRo36HN96
         DFcUqzdLBSR+FSyCbsbMsdbzJrPSMC8itBRtLOQ+1clj/xgt67Tfn3QiVY1/pNDXJUNf
         mg+PdS6jMAMdubTRHwkDha5MQmexUdhuHisOTaMhC0+uLIBq88vpk5avUyKSF057SpOw
         DGUg==
X-Gm-Message-State: AOPr4FW/kE5xz12ftVU+zn9iPP9Dj1oWsgMtx/qjl4VZL3TQR8N58BBM1Mg03j5dSvKDyg==
X-Received: by 10.25.91.213 with SMTP id p204mr3023274lfb.167.1462350900148;
        Wed, 04 May 2016 01:35:00 -0700 (PDT)
References: <20160503152100.GA4790@openwall.com>
 <52f58a81-5a5a-005d-cc87-27f1cce0379e@gmail.com>
 <20160503173526.GA6669@openwall.com>
 <74d54064-2a90-1170-1abb-7729216b461b@gmail.com> <57298BB0.5070507@gmail.com>
 <87y47qmdwn.fsf@devnull.wylie.me.uk>
Message-ID: <5729B432.3070503@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.5.1
MIME-Version: 1.0
In-Reply-To: <87y47qmdwn.fsf@devnull.wylie.me.uk>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
Cc: oss-security@lists.openwall.com
Date: Wed, 4 May 2016 10:34:58 +0200
From: Albert Veli <albert.veli@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] OpenSSL Security Advisory [3rd May 2016]
To: "Alan J. Wylie" <iwnwi1owfl@wylie.me.uk>

On 2016-05-04 10:21, Alan J. Wylie wrote:
> https://twitter.com/bob_beck/status/727478594591543296
>
> Bob Beck @bob_beck 
>
> LibreSSL is vulnerable to the same issues as OpenSSL CVE-2016-2105
> through 2019 - fixes are forthcoming today as well.
>
Ok, then I guess the patches are these ones:

http://marc.info/?l=openbsd-announce&m=146228598930416&w=2
