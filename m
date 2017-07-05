X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1991" "Wednesday" "5" "July" "2017" "14:34:28" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20170705123427.mky43jbckj4quua2@lorien.valinor.li>" "50" "Re: [oss-security] CVE IDs needed for PHP vulnerabilites (affects 5.6.30 and 7.0.20)" "^Cc:" nil nil "7" "2017070512:34:28" "[oss-security] CVE IDs needed for PHP vulnerabilites (affects 5.6.30 and 7.0.20)" (number mark "        carnil@debia Jul  5   50/1991  " thread-indent "\"Re: [oss-security] CVE IDs needed for PHP vulnerabilites (affects 5.6.30 and 7.0.20)\"\n") "<CAEsznC6vAOzM9wmtcZwiLX1-k3uevMEEuxkksXCUMR8=hsq+Kg@mail.gmail.com>" ("<CAEsznC6vAOzM9wmtcZwiLX1-k3uevMEEuxkksXCUMR8=hsq+Kg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7515 invoked by uid 550); 5 Jul 2017 12:34:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7496 invoked from network); 5 Jul 2017 12:34:43 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=f15NIDbShb/wVpf5j8KlZJtxdL4A5HQUf5cxx9ycd7o=;
        b=sz/YHz3DnCVBrk7z3nL360WyNON9FixJ57lgoZnOH515ZYGDMPtKUry0RHY5cd7AZ6
         97ZKDwG0EtzOYDZQNSITUAEzVwOpq0iBEZHuN69QV4P+mBLsDR7Omu+jKXFON9T4CT4t
         sZ68kbBzTxW/FIMvNRhbxN6DOXqSCs52/z4wYHPC+DShVcxj/0X47fUTzxdJg7kFyky7
         R9aezaHKBKJ9QXyOb//7m6/Py4kel6viJTgZDQvtLQtTFNBP5lmeYN+f0AK/uuam6NXi
         3PZZqFT/YHX6tDK0D06M9zOw5EP0tS82iqBQMAB8Z7/VK1o9anY2zzbFaGAjz2yNSsBA
         wH3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=f15NIDbShb/wVpf5j8KlZJtxdL4A5HQUf5cxx9ycd7o=;
        b=Dlzpz3yyLoerD52kuVxnLbZTi02MMV9e8ipvSFm2almmbwd5K5OARig3qogbLcwjZD
         whbr1ZlBJGdRlh+g7fAEQp2pLEoqn1U/5P6MfgzwTTyXSCIwzRtq0uuO/TZr2vAYmOH0
         C2HoNMPUapRZGwCLzskexgOXcPMt/ti3vpK4friKPpJJknfcIqWZ7Q+RoFcXxW+6UBiB
         fX3+cMLbnbRWDru2Vb2wUBLFbZyiW2aeVGfejoekHPYaLOIpK4EyYIfEPT6mtAvlyIwD
         XDltSAifSp1ADGIwKQUx4S7GXWf37tf+K55suULVICO6ZNr6OTT/9FV7/0haXebD6YVA
         bbJQ==
X-Gm-Message-State: AIVw111b0E4yP4uHKfrK27D/+3jghQTA9fv6aX3wVNm5wP/N9CCgSCow
	+SQAhmd04K9+aQ==
X-Received: by 10.36.115.19 with SMTP id y19mr16300715itb.109.1499258071270;
        Wed, 05 Jul 2017 05:34:31 -0700 (PDT)
Message-ID: <20170705123427.mky43jbckj4quua2@lorien.valinor.li>
References: <CAEsznC6vAOzM9wmtcZwiLX1-k3uevMEEuxkksXCUMR8=hsq+Kg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAEsznC6vAOzM9wmtcZwiLX1-k3uevMEEuxkksXCUMR8=hsq+Kg@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
Cc: cve-assign@mitre.org, "security@php.net" <security@php.net>
Date: Wed, 5 Jul 2017 14:34:28 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
Reply-To: oss-security@lists.openwall.com
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Subject: Re: [oss-security] CVE IDs needed for PHP vulnerabilites (affects
 5.6.30 and 7.0.20)
To: oss-security@lists.openwall.com

Hi

On Wed, Jul 05, 2017 at 02:37:00PM +0300, Lior Kaplan wrote:
> Hi,
> 
> The following issues have been reported and fixed in PHP. At the moment
> they are part of PHP 7.0.21 release. The fixes are also included in the 5.6
> branch and will be part of 5.6.31 when it will be released.
> 
> #73807 Performance problem with processing post request over 2000000 chars
> https://bugs.php.net/bug.php?id=73807
> http://git.php.net/?p=php-src.git;a=commitdiff;h=0f8cf3b8497dc45c010c44ed9e96518e11e19fc3
> 
> #74145 wddx parsing empty boolean tag leads to SIGSEGV
> https://bugs.php.net/bug.php?id=74145
> http://git.php.net/?p=php-src.git;a=commitdiff;h=2aae60461c2ff7b7fbcdd194c789ac841d0747d7
> http://git.php.net/?p=php-src.git;a=commitdiff;h=f269cdcd4f76accbecd03884f327cffb9a7f1ca9
> 
> #74651 negative-size-param (-1) in memcpy in zif_openssl_seal()
> https://bugs.php.net/bug.php?id=74651
> http://git.php.net/?p=php-src.git;a=commitdiff;h=89637c6b41b510c20d262c17483f582f115c66d6
> 
> #74819 wddx_deserialize() heap out-of-bound read via php_parse_date()
> https://bugs.php.net/bug.php?id=74819
> PHP 5.6 -
> http://git.php.net/?p=php-src.git;a=commitdiff;h=2aae60461c2ff7b7fbcdd194c789ac841d0747d7
> PHP 7.0  -
> http://git.php.net/?p=php-src.git;a=commitdiff;h=6b18d956de38ecd8913c3d82ce96eb0368a1f9e5
> 
> Also, requests from past releases:
> 
> PHP 5.6.28 + 7.0.13
> #73192 parse_url return wrong hostname
> https://bugs.php.net/bug.php?id=73192
> http://git.php.net/?p=php-src.git;a=commitdiff;h=b061fa909de77085d3822a89ab901b934d0362c4
> 
> 5.6.30 + 7.0.15
> #73773 Seg fault when loading hostile phar
> https://bugs.php.net/bug.php?id=73773
> http://git.php.net/?p=php-src.git;a=commitdiff;h=e5246580a85f031e1a3b8064edbaa55c1643a451

CVE assignement requests are not handled anymore directly via the
oss-security list, but need to be filled/requested at
https://cveform.mitre.org/

Once CVE are assigned, can you repost them here for benefit of other
reader?

Regards,
Salvatore
