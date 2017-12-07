X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["640" "Thursday" "7" "December" "2017" "14:37:20" "-0800" "Blibbet" "blibbet@gmail.com" "<3f23b122-8f97-417b-e1ca-4f859bee3196@gmail.com>" "15" "Re: [oss-security] Recommendations GnuPG-2 replacement" "^Date:" nil nil "12" "2017120722:37:20" "[oss-security] Recommendations GnuPG-2 replacement" (number mark "        blibbet@gmai Dec  7   15/640   " thread-indent "\"Re: [oss-security] Recommendations GnuPG-2 replacement\"\n") "<20171207211559.fhrmtg7wul36znzp@scully.more-magic.net>" ("<20171207210134.GA7079@openwall.com>" "<20171207211559.fhrmtg7wul36znzp@scully.more-magic.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9552 invoked by uid 550); 7 Dec 2017 22:41:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7445 invoked from network); 7 Dec 2017 22:37:34 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding:content-language;
        bh=yl2UrOxmUQTUdc5Q6O77FJOPqR68pG9vTfY3LPc0z8E=;
        b=uBFDjBTtqMVB4aaOAZGusv8bkMTIjOOPJpCFFFqIGRSaBNvmeNSlBdA8qUIz0YVAY8
         8cl/sPvrjIz9hZ6Dy7cLYuY5gWetWRPdwwi3tyDTHxvTjScbcHor//xfDGQ1hg1pQDKC
         pkNUphzI3zx2lY/UOyIFGcKt1WWerP0F6cQvg86jfkcj9eByjpcr4oVh3vXpM48AmHo2
         ro1Mu9+QgyMpPnQsNKHA+tsFoFbSroWmD9D0IXAiknJOYQOhcV/5OSRx8S9Nf0KZZqL3
         pgh/nVnbxQd9xN3hdzi5vvg84kh3UrBcIhWP9Za3FhQe7Sj49qESp3n27gSks2CjgiX2
         U/GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=yl2UrOxmUQTUdc5Q6O77FJOPqR68pG9vTfY3LPc0z8E=;
        b=LBOrOXzW3O7x3lXOg0Z92wveQJi222h//qilbwWNIrZMzEJMK7B8Lv4OruFLqHRf6d
         dVX3AOxWn4QLK3OGHv++gWVfXuyUNoyl0T7m/nPiXzn4znaWAMX4O7D3Kdplp7ecWzIO
         IdQgp5Xn08bPENmnMuzg8wFhhy+1TFVIZ1HBVrEqUdnQ8LhZRd5fF1FN8mloDPeI8s09
         IDtZsq/8uOT5rg38i2zKEBIAdk9bI0qNxFYnIeaY7DFAdSLY+YLt4DNAcfIu5a3glvV7
         STwxaF2mtcKhAzLEMVaZ6hgMVZAuPLpvcsilYZgEliIYFI5uGPg+Zz+vw6j1OsWVLNrH
         BtIw==
X-Gm-Message-State: AKGB3mIjYOztM6fZNzLFJCtJyBFAdfFJD2rBwLlp/BehWayACi/05CQ7
	O0dceOfi8PjhrAJvcZgMheXA8Q==
X-Google-Smtp-Source: AGs4zMYjnLMCYBx/RCZTwW8/RpVJUikR4mREYpCdEGTX1Zf4QVTt/KN4y1c0bw3Q7BKHaQ8BCjsfjQ==
X-Received: by 10.101.78.205 with SMTP id w13mr699419pgq.202.1512686241835;
        Thu, 07 Dec 2017 14:37:21 -0800 (PST)
References: <20171207210134.GA7079@openwall.com>
 <20171207211559.fhrmtg7wul36znzp@scully.more-magic.net>
X-Priority: 4 (Low)
Message-ID: <3f23b122-8f97-417b-e1ca-4f859bee3196@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <20171207211559.fhrmtg7wul36znzp@scully.more-magic.net>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
Content-Language: en-US
Date: Thu, 7 Dec 2017 14:37:20 -0800
From: Blibbet <blibbet@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Recommendations GnuPG-2 replacement
To: oss-security@lists.openwall.com

On 12/07/2017 01:15 PM, Peter Bex wrote:
> ible alternatives, I happened to remember that
> years ago, NetBSD was working on their own BSD-licensed PGP
> implementation as a GSoC project, but it never really went anywhere.
> Looks like that finally exists

http://www.netpgp.com/
https://blog.netbsd.org/tnf/entry/netpgp
https://en.wikipedia.org/wiki/Netpgp

NetPGP has been working since around a decade. It's main dependency is
libOpenSSL. It is stable, not active. It has MANY fewer features than GPG.

(I'm in the process of porting it to UEFI, as there is a stable
libOpenSSL package there now, and easier to port to UEFI than GPG...)
