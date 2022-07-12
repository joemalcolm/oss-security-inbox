Received: (qmail 17758 invoked by uid 550); 12 Jul 2022 19:27:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17740 invoked from network); 12 Jul 2022 19:27:19 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=z9G0wguDrAjcjW75nvr7+pGpjBAR/f3spr6nVa+W/E8=;
        b=hdS47UsIc8Fwz4zPSqtXitJJWQN1LCuo4FKPRv16FEUdcOd+jNhAGXk6U/TMsne7CY
         OWPbw7WcL1VYfnvV4p5u8jGRr1SAcNuC3JB/tUIXNd6rga6qu546Urpw38vlw6VCRppW
         xE/eOuxFIUG8W8kJhuH7U2LAWumu7eXZgS2QXB7z15N22+sMxDnTcLWXqP4yW5a2bWWD
         EeB5DzMFNIBX43mfFkybVmzucuCMjWFT2edBJfecKXTc1UQgfJ4ixOR2aMAUxt5Hdbpt
         v+UpC9bB0E+zZ5sVw+pSYlrKo4lWRgG4KJJljjPsKwSAeRAlmX8GmNDoabxxTevf+1kw
         C97w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to;
        bh=z9G0wguDrAjcjW75nvr7+pGpjBAR/f3spr6nVa+W/E8=;
        b=b/nFaox53NbQwDK4K/tgajgVOs0VMsg4Zzq8r0SKQzcfF/lGJeYbn7DIKPEGxnomZs
         lfmZTT5dqodtFhzARFAT2lFaevkd7XYkJvbykIZVdFduGhuQqHZGHTgVtREPvLgz3+mu
         /ST4SzqPDNkEWk0goBl5K8NnnQBvhoUq9TcjcQIqR67xkIbeIIIaVkUfFZVqviuAQ+GD
         D9rmrlhUCKaGNvUeLKtdKlildq1/7SDbX8/2Wkaf5h2TrfltWIOkhbx/+nHByib14Gua
         bxg0fEQ3aKK1CHugFIQ8sdDXP4POsJtLvQdDFhiDqabnn5NlMGBp21HnGONHH0/D67n2
         pNLQ==
X-Gm-Message-State: AJIora+2fEW3tW6Xab17ygn1GpbywbFhUO6UkGBr6I31RxbCuPpZFJxF
	80xSOMcsqKX+KFUXtU4DZog=
X-Google-Smtp-Source: AGRyM1v8019adYsp3ny2RyVvIYKz2DtuN+HXhP1DCr3GueiOWQEx9YpzP62n3PtvTXXlbH7Gs0vgYg==
X-Received: by 2002:a05:6402:cba:b0:43a:6b17:f6b5 with SMTP id cn26-20020a0564020cba00b0043a6b17f6b5mr34455445edb.330.1657654028245;
        Tue, 12 Jul 2022 12:27:08 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Tue, 12 Jul 2022 21:27:07 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Cc: xen-announce@lists.xen.org, xen-devel@lists.xen.org,
	xen-users@lists.xen.org,
	"Xen.org security team" <security-team-members@xen.org>
Message-ID: <Ys3LCx6LmRFF547K@eldamar.lan>
References: <E1oBIrq-0007mF-D5@xenbits.xenproject.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <E1oBIrq-0007mF-D5@xenbits.xenproject.org>
Subject: Re: [oss-security] Xen Security Advisory 407 v1
 (CVE-2022-23816,CVE-2022-23825,CVE-2022-29900) - Retbleed - arbitrary
 speculative code execution with return instructions

Hi,

On Tue, Jul 12, 2022 at 04:36:10PM +0000, Xen.org security team wrote:
> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA256
> 
>  Xen Security Advisory CVE-2022-23816,CVE-2022-23825,CVE-2022-29900 / XSA-407
> 
>    Retbleed - arbitrary speculative code execution with return instructions
> 
> ISSUE DESCRIPTION
> =================
> 
> Researchers at ETH Zurich have discovered Retbleed, allowing for
> arbitrary speculative execution in a victim context.
> 
> For more details, see:
>   https://comsec.ethz.ch/retbleed
> 
> ETH Zurich have allocated CVE-2022-29900 for AMD and CVE-2022-29901 for
> Intel.
> 
> Despite the similar preconditions, these are very different
> microarchitectural behaviours between vendors.
> 
> On AMD CPUs, Retbleed is one specific instance of a more general
> microarchitectural behaviour called Branch Type Confusion.  AMD have
> assigned CVE-2022-23816 (Retbleed) and CVE-2022-23825 (Branch Type
> Confusion).
> 
> For more details, see:
>   https://www.amd.com/en/corporate/product-security/bulletin/amd-sb-1037

Is it confirmed that AMD is not using CVE-2022-29900? The above
amd-sb-1037 references as well both CVE-2022-23825 (Branch Type
Confusion) and CVE-2022-29900 (RETbleed), so I assume they agreed to
use CVE-2022-29900 for retbleed?

So should the Xen advisory as well use CVE-2022-23825,CVE-2022-29900
and CVE-2022-29901?

Regards,
Salvatore
