X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["775" "Wednesday" "17" "February" "2016" "19:13:14" "+0100" "Manuel Mancera" "sinkmanu@gmail.com" "<56C4B83A.3060609@gmail.com>" "29" "[oss-security] Re: CVE Request: graphite-web: open redirect" nil nil nil "2" "2016021718:13:14" "[oss-security] Re: CVE Request: graphite-web: open redirect" (number mark "U       sinkmanu@gma Feb 17   29/775   " thread-indent "\"[oss-security] Re: CVE Request: graphite-web: open redirect\"\n") "<56C4B406.8020404@gmail.com>" ("<56C4B406.8020404@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26498 invoked by uid 550); 17 Feb 2016 18:19:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21773 invoked from network); 17 Feb 2016 18:13:27 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=subject:to:references:cc:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-type;
        bh=2Ioi90sBab92khYXCIHNjrllw4ayaKbqID6QJWxGs2U=;
        b=fkBfPF2TieZy3/eJqXVjXg8PYAGUtdd6ccuazcBLCrDNxkGSU6NfkkY4tj3dS8E4+G
         cLbBP8glIPVS1sTobjJNsJwjXQLst4k4kEAySX/a03SpgwiesmaEqIvzGqMzm5WoSpmO
         wk0fUDBva4Pr894goYd28Gy6rgs7ld/Q4cPWDVNE/l/wHb6ZtWSFcMEo9VSn+zRPSEtM
         WiiWCcOilZl4RwBJavq9VAeh1AUDP/bPrV7Q4Dz9Ip1XWe24Bu3Hs1RKeHKKDfe6EMHY
         p2tPS+R+1HhxhLJFUmEAxXiKjpKGi/I8I8YfFl72dkQ7AsUj+bzg077FCNw2WIAXTBH/
         vfZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:subject:to:references:cc:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-type;
        bh=2Ioi90sBab92khYXCIHNjrllw4ayaKbqID6QJWxGs2U=;
        b=SIVGu/QcXfKO+peqVNzzkTnmqn2ekMYQfQXjkECeQKYL+jvCErv85Tphyqa3Ahij3A
         gZVpDoAQdx8hBCe49BWuW7O/p+4dEK2OIRWPm7eBPCtF+V/3XpnB5sWyx8TFms07NxAm
         C/8gI8LWtoQlCo62SkHcBHNNkqqyhQJlscWLapmbuD8EetWG7EiFk2NSyMewLLVVg5vH
         sanMuBd6cn8gCfg+cdVNwn/Q2mauxckFMvQIUEFB1FR76vt/sdHH9cN4p72ki2ZgmTG7
         +nhnZt3fvR77rwgQWukMBR6G0nK7/h1F80P+bUFsugU9vDsvXiS4Ny/ELzhs+b+MLzxk
         H5jA==
X-Gm-Message-State: AG10YOTIvmoDZjqCKSs2OoV7EI1071uBM0EJx8yDyde2nTtIqM6ARkwM9V0oMycGhhwPUA==
X-Received: by 10.194.77.35 with SMTP id p3mr3237855wjw.91.1455732796008;
        Wed, 17 Feb 2016 10:13:16 -0800 (PST)
To: oss-security@lists.openwall.com
References: <56C4B406.8020404@gmail.com>
Cc: security@debian.org
From: Manuel Mancera <sinkmanu@gmail.com>
Message-ID: <56C4B83A.3060609@gmail.com>
Date: Wed, 17 Feb 2016 19:13:14 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.5.1
MIME-Version: 1.0
In-Reply-To: <56C4B406.8020404@gmail.com>
Content-Type: multipart/alternative;
 boundary="------------080205090503000308020006"
Subject: [oss-security] Re: CVE Request: graphite-web: open redirect

--------------080205090503000308020006
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Sorry, the email was sent with HTML format and with a wrong link, the
link with the vulnerability is:
https://github.com/graphite-project/graphite-web/issues/1441


Regards,

On 17/02/16 18:55, Manuel Mancera wrote:
> Hello,
>
> I found and reported an open redirect vulnerability in graphite-web. 
> Through this vulnerability an attacker could redirect to a legitimate user to a malicious website. 
>
> https://github.com/graphite-project/graphite-web/issues/1441
> <https://blog.filippo.io/bleichenbacher-06-signature-forgery-in-python-rsa/>
>
> Can you assign a CVE for this issue?
>
>
> Regards,
>
> Manuel Mancera


--------------080205090503000308020006--
