X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1494" "Tuesday" "17" "September" "2019" "18:54:53" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" nil "36" nil "^Date:" nil nil "9" nil nil (number mark "        carnil@debia Sep 17   36/1494  " thread-indent "\"Re: [oss-security] OpenDMARC signature bypass with multiple From addresses\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] OpenDMARC signature bypass with multiple From addresses" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 20271 invoked by uid 550); 17 Sep 2019 16:55:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 20253 invoked from network); 17 Sep 2019 16:55:08 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=89gjAOCpWh39dAQGZ/dVyMBk5KavRtgEBx1hH8LLBpE=;
        b=SC6yEhp8puEo2SwhKM7hJtCyEzNBolubh+gOR/Q+mZ0eZwzra205LgRxnhtEKV4M0t
         xxsKxMKap/Xy2QI0DBVI9LSH/cSyIY0iTLavc4SdbCenXeEB1HkA2KLYL101vV/ERemf
         LDst6ljXF46F5RuMP5zaSx0STJdDrYXVbc7hVKJLdAL3BuTGCCurFcosQnIn8WBYXBgI
         /VxhZhycS4/cP64doPULEPzAkYVv3vUMpIsqkfpmPckTD6mk/VbUzuG7vimEeoTRmg0U
         IF/kqaPxGrXyxd+8Qq7FZ4loPrSRgNa9NaVwFO2CbwM97QUg17hAoYLh3v/LyFhYHsqQ
         hEtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent;
        bh=89gjAOCpWh39dAQGZ/dVyMBk5KavRtgEBx1hH8LLBpE=;
        b=rSBtTMxKxlh3GUlafBr7SStC4n6EzyAYQUBayPjmcJju1ZDswkaK1HFOHpT1+JtgHF
         US2qz5CK5PE19StQwzc1F7/1ydrKXo9rVP5JbnOTKR9nAGP2KMYOU+247/ZkQh2Fbtot
         DXFHQFQoslohvw4ckmnRf3Xb24p0fPS/FiY6fGHyaXQbpZ/A3m7bEdHj+YW3MEszcA1G
         D8nNMm5bt/Kw9p6gcetT+M366IE1T4Y7qQBQALaI+8ts1wwJ85bVJrAMknhCzFPsNU2C
         XOh5skFTU6cdDRCnGdXI7xjhw8ZrTVMCRUIRmn7O4nyKh4rSNXgG6PfTndKxgcfnC7bJ
         E3pg==
X-Gm-Message-State: APjAAAW/FOpz68xCwcVhOKzW74OCEzWRsuaIFLNeZEJidzD04hZt34Ww
	cFTwM/Z30044WMoGY3YaTc70LJeVqRU=
X-Google-Smtp-Source: APXvYqzthwhe75+7jCK/kEFTxRlS4nTdtZbdWFhAZi0MfhF6fk1Lj1/hMKsGhPjfUDUfCuNgEfjiag==
X-Received: by 2002:a17:906:cf81:: with SMTP id um1mr5734395ejb.257.1568739296509;
        Tue, 17 Sep 2019 09:54:56 -0700 (PDT)
Message-ID: <20190917165453.GA17293@eldamar.local>
References: <20190911124319.23022e80@computer>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20190911124319.23022e80@computer>
User-Agent: Mutt/1.10.1 (2018-07-13)
Date: Tue, 17 Sep 2019 18:54:53 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
Reply-To: oss-security@lists.openwall.com
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Subject: Re: [oss-security] OpenDMARC signature bypass with multiple From
 addresses
To: oss-security@lists.openwall.com

Hi,

On Wed, Sep 11, 2019 at 12:43:19PM +0200, Hanno Böck wrote:
> Hi,
> 
> Protonmail reported about a phishing incident in July:
> https://protonmail.com/blog/bellingcat-cyberattack-phishing/
> 
> This had this somewhat mysterious chapter:
> "Furthermore, the attackers attempted to exploit an unpatched
> vulnerability in an open source software that is widely used by email
> providers in an effort to bypass spam and abuse filters. We were
> previously aware of this vulnerability and have already been watching
> it for some time, but we will not disclose it here because the software
> in question is not developed by ProtonMail, and it has not yet been
> patched by the software maintainers. This vulnerability, however, is
> not widely known and indicates a higher level of sophistication on the
> part of the attackers."
> 
> After asking protonmail multiple times for a statement they answered
> and I learned that it's about this issue in OpenDMARC:
> https://github.com/trusteddomainproject/OpenDMARC/pull/48
> 
> It's an issue where by specifying multiple From addresses only one of
> them gets DMARC-checked.
> 
> There's no reaction from the OpenDMARC developers and it's unclear
> whether it's still actively developed. Given this is already actively
> exploited I think people should be aware of it and distros should
> probably apply the patch from the PR.

MITRE has assigned CVE-2019-16378 for this issue (requested via the
https://cveform.mitre.org/).

Regards,
Salvatore
