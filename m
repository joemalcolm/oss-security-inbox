X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["639" "Wednesday" "7" "June" "2017" "10:18:31" "+0200" "Ailin Nemui" "ailin.nemui@gmail.com" "<1496823511.2524.1.camel@gmail.com>" "16" "[oss-security] Re: CVE-2017-9468, CVE-2017-9469: Irssi Security Advisory 2017/06" "^Date:" nil nil "6" "2017060708:18:31" "[oss-security] Re: CVE-2017-9468, CVE-2017-9469: Irssi Security Advisory 2017/06" (number mark "        ailin.nemui@ Jun  7   16/639   " thread-indent "\"[oss-security] Re: CVE-2017-9468, CVE-2017-9469: Irssi Security Advisory 2017/06\"\n") "<1496784716.2351.0.camel@gmail.com>" ("<1496784716.2351.0.camel@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 12216 invoked by uid 550); 7 Jun 2017 11:11:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 20097 invoked from network); 7 Jun 2017 08:18:44 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:date:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=Me9PK4sTA2LRDk0qtSBLgSRKp/auuPvF4ibS1x96LD0=;
        b=LItul3cn+qbwBnVHVkW822HFRcCi3+DX/JxXf7nfM4gxdGM9gydG4Nxi6QJo8+ykXn
         cJAojT8NfbGPu2rg79ELxWgETh2ynXnwdyz6etDV1MT/jyFQvdfWsNOD2uxruoaNe9Do
         9n7VkZJFq+aJFEV2qB2PC8gWqMuCD/3zoMITEP0R/gVDz6ZAV5F2R4wUY3pov942PGkA
         /zNkJP28h+FDb4twz6aXaczE8uNH/EFdpkd1poFK8rkhLOa6S4eEhkn8ohFKRV4h4jJf
         XrfIY/U3fm+toLrTgnxKPJf/qQEgJwoAkHfCX9ZGOfY25rSDOjX8kE9AFTp5y0fs+doE
         pNzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Me9PK4sTA2LRDk0qtSBLgSRKp/auuPvF4ibS1x96LD0=;
        b=C84m41nCRyV6HBz7DQJe8ZPYpnGJ3ozZxqi+33SnmVY7+Ywfua6bq/3dYEJXdVopIm
         AGbhTqUlR091F3NuDe8+RvTDYd+QbrHBWG3HZKZy6E7GedjDykCtEfWHukVerebtUSDW
         ++xF128Yd6wzNhoz/YgtHpxSqTIzWSlE0woplczlgrfTRkYg70mSDTwQmTHpG6O7iGN0
         uz3cfZRJVu1wuAO2wuBTjvzslzd48GhiCfHkNZ9VfzcZ1F832odrbyX58KeakMukGna6
         wFzXXwPHn64vrizy7sMrQTdsoHwsE3KiakzVG+TucjGd7Vuv06LBFYhzKD+2nCkHrM8m
         yVVw==
X-Gm-Message-State: AODbwcB5kMTvo0sDBzz9NX9/dm3ue1mV3KV8R4q6VkEuCLO/YA/c9DNq
	lzo2loQgDjHzYucV
X-Received: by 10.223.160.1 with SMTP id k1mr23794494wrk.102.1496823513341;
        Wed, 07 Jun 2017 01:18:33 -0700 (PDT)
Message-ID: <1496823511.2524.1.camel@gmail.com>
In-Reply-To: <1496784716.2351.0.camel@gmail.com>
References: <1496784716.2351.0.camel@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.24.2 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Date: Wed, 07 Jun 2017 10:18:31 +0200
From: Ailin Nemui <ailin.nemui@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE-2017-9468, CVE-2017-9469: Irssi Security Advisory 2017/06
To: oss-security@lists.openwall.com

On Tue, 2017-06-06 at 23:31 +0200, Ailin Nemui wrote:
> (a) When receiving a DCC message without source nick/host, Irssi would
>     attempt to dereference a NULL pointer. Found by Joseph
>     Bisch. (CWE-690)

      CVE-2017-9468 [2] was assigned to this bug

> (b) When receiving certain incorrectly quoted DCC files, Irssi would
>     try to find the terminating quote one byte before the allocated
>     memory. Found by Joseph Bisch. (CWE-129, CWE-127)

      CVE-2017-9469 [3] was assigned to this bug

[2] http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-9468
[3] http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-9469

