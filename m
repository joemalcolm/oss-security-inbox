X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1094" "Monday" "8" "May" "2017" "08:31:41" "-0400" "Ryan Munz" "gcoc.devops@gmail.com" "<BD9EEBEB-7C45-4F5E-BF5D-7C403CDEC3C9@gmail.com>" "32" "Re: [oss-security] terminal emulators' processing of escape sequences" nil nil nil "5" "2017050812:31:41" "[oss-security] terminal emulators' processing of escape sequences" (number mark "U       gcoc.devops@ May  8   32/1094  " thread-indent "\"Re: [oss-security] terminal emulators' processing of escape sequences\"\n") "<06FEF7A9-73A6-43C5-A8FA-36FA1349E5A4@shiz.me>" ("<20170501164428.GA12322@openwall.com>" "<06FEF7A9-73A6-43C5-A8FA-36FA1349E5A4@shiz.me>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28240 invoked by uid 550); 8 May 2017 13:58:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5179 invoked from network); 8 May 2017 12:31:51 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=user-agent:date:subject:from:to:message-id:thread-topic:references
         :in-reply-to:mime-version:content-transfer-encoding;
        bh=k6YC7meHN0SVMip/wRxgK7dKFj1Oh71pCjCaE2ClRu0=;
        b=WosjHxlM/9XkPK/jIVHh2dhfaAmGZ60Gw929GKsGimxdoYVZQ5N39To5Vi5K86dfD2
         K9fovlb9jjR5B8kraAkcybHI/LWR1NZEpMsIj7omwBhPKC3mbih4XZ1baMUFzWA/d8pa
         0r1RynCdEIgO3TKP6vWZzj8b1wNtD0+qGbA4pOSN0aRAkzxIY3hpaM5NiD3J1o8Sz0wm
         wGwjxEbXbYphXZAi1XHmTrAbCXf7nmzIhOqR0qFLSu4Mt4J39m+tqb78Qq7Q5eruE5ql
         9f8DYaBxtdb+6h6JyZg0TAjh+1mweVrurlW2N1GIK526jWc5Wak9906o7A3jeq8oXOyU
         a+8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:user-agent:date:subject:from:to:message-id
         :thread-topic:references:in-reply-to:mime-version
         :content-transfer-encoding;
        bh=k6YC7meHN0SVMip/wRxgK7dKFj1Oh71pCjCaE2ClRu0=;
        b=Jena+ddXGCd3fdb5eBEe6QcpHxDgsU/kJRgRb2A83r710lDjdHMAepd3gLBR7DTMJq
         9m/mtxxazBXDw3oMqoOT0YcHZKCtRMkZBd63aq6ljz3Ak6ERd0nk46kCIIKhoEX5LlLW
         eSNWqTDBoPvRCk7ZXgaoaWOBWtYdOIpdZXmAqyzOm6y5TNoe4gK3O+kkWwXyfKUlKzLA
         Zv92SYnE9g+UVrwZ7uqgKyuEJFsP6ph4vnvXmR/zSDlf56Nkp/LvXPmPw7oIdWGuoLfC
         H7HyKYQtT/iHlsv4Q5bVbFDjLvhoyzZ/u+j0dzOUsu0nP5mGuLZMQ1J77mPzUi41oSEH
         sFmQ==
X-Gm-Message-State: AN3rC/7E2nVgZ8GCVPugxc90vYrtOtz45GrnKDMXvfs0idDHNzLWVnah
	xuip+AxM7E6y8igiy7g=
X-Received: by 10.99.137.194 with SMTP id v185mr17965492pgd.206.1494246699349;
        Mon, 08 May 2017 05:31:39 -0700 (PDT)
User-Agent: Microsoft-MacOutlook/f.21.0.170409
Date: Mon, 08 May 2017 08:31:41 -0400
From: Ryan Munz <gcoc.devops@gmail.com>
To: <oss-security@lists.openwall.com>
Message-ID: <BD9EEBEB-7C45-4F5E-BF5D-7C403CDEC3C9@gmail.com>
Thread-Topic: [oss-security] terminal emulators' processing of escape
 sequences
References: <20170501164428.GA12322@openwall.com>
 <06FEF7A9-73A6-43C5-A8FA-36FA1349E5A4@shiz.me>
In-Reply-To: <06FEF7A9-73A6-43C5-A8FA-36FA1349E5A4@shiz.me>
Mime-version: 1.0
Content-type: text/plain;
	charset="UTF-8"
Content-transfer-encoding: 7bit
Subject: Re: [oss-security] terminal emulators' processing of escape sequences

iTerm2 would be another excellent test target as it is very popular.

On 5/7/17, 10:03 PM, "Shiz" <hi@shiz.me> wrote:

    > On 1 May 2017, at 18:44, Solar Designer <solar@openwall.com> wrote:
    > 
    > Unfortunately, I did not record which terminal emulators did not crash
    > for me.  However, Jason recorded both kinds of results for him, coming
    > up with:
    > 
    > Konsole: no crash
    > Xterm: no crash
    > rxvt: crash
    > Yakuake: no crash
    > Mosh (which is a terminal emulator, after all): no crash
    > Screen: 100% CPU usage --> DoS
    > rxvt-unicode: no crash
    > Qterminal: no crash
    > putty: no crash
    > 
    > This adds "screen" to terminal emulators with problematic processing of
    > terminal escapes.  Due to minor known impact, we did not handle this
    > under embargo - it should be investigated and fixed now, in public.
    
    Despite not being open source and thus unfit for the list, I can confirm this
    also causes high CPU usage for macOS Terminal.app, version 2.7.1 (387),
    as shipped on macOS 10.12.1.
    
    - Shiz
    


