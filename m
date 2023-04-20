Received: (qmail 9851 invoked by uid 550); 21 Apr 2023 07:43:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19717 invoked from network); 20 Apr 2023 23:48:56 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cmlh-id-au.20221208.gappssmtp.com; s=20221208; t=1682034524; x=1684626524;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=2sFZGc34zsKO+vskeM7DuLMYgsmmVYaEp3BPx9Ly+/Y=;
        b=hF9MsKqx8XXPYRNfgZv865BK2IC1/nyYjuB1aUuxdlOWiBC/ZNdkRTf24eg0S9Iw0H
         /T/mKMSsHfaYs4swR5wXZBB0kxGG3XSsbpv42iDIEMaZah4SgwlN6D0N15GbFnoR8K1q
         4iQn0rEyFq4zEZ8cCg14M3rvUN5N9lkuaLPaRj55P1irwDyu4jnI+RY/hIU3RL0PNMle
         IgQ8j1QjeK7is6Yfoptl20w0Oa8bGYrqEs2mWHJVutvdP4As2iITsuqJaeQnLoBvVEmK
         Ns+jHtKfRf5lcGtk9+UnvC1ypBE0pZN/k1ovIa/cQKZciOj7d0DkL1E3oPmT0y/G9q8p
         QyzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682034524; x=1684626524;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2sFZGc34zsKO+vskeM7DuLMYgsmmVYaEp3BPx9Ly+/Y=;
        b=ex6CCyulkFtbcFHmYY+0wxCWvumy4MYdR27KLcEE7Un7QPh9d/pacw5RQci8PTy8N9
         +5ZqKKUJi85DkMyuWHjJ8VPHin0J/TTJOQD5w7BKveWNx/7jBqYqVedcqQMEo1aOqgWQ
         wpAxdFvCahntRMDvX2Rnzfnif1+PdtTxXiDDyCcPqZLdA+IvGGq/rNFyeGpSt5EMDbxJ
         MiDQvnd/8upiwn6++J0di34ULhknI1jH49RsY/SsxU70mcA444As5M78LVZsfZAMWxg7
         dzngTD6QSiNFYemowFuhxPuNzAm+Xo1S7WgwRDsbafVV3MTDMzUGw0RSeLBE5PCBOseX
         LSOQ==
X-Gm-Message-State: AAQBX9fWJVWBezKnquoa/OA12hAB73pXSKHAnvAGRDjSyYI/CsU3JAur
	y6T+BQL8tZyzOhIqzOPCApRgMfyHz8BQV7ihg/s1gNgCUhbIk6TF0wd4UQ==
X-Google-Smtp-Source: AKy350ZqPSjGEK7U71buIjfexDuNa1MRspQWcFhmP3hhM81yczEe189olXXA70dIllDaBiCABe5OMhvlFR1PYFKOaiM=
X-Received: by 2002:a92:c6c6:0:b0:329:5ffb:5572 with SMTP id
 v6-20020a92c6c6000000b003295ffb5572mr2727108ilm.23.1682034523733; Thu, 20 Apr
 2023 16:48:43 -0700 (PDT)
MIME-Version: 1.0
References: <20230418154630.eoheygqyom3c7ovw@stig.io>
In-Reply-To: <20230418154630.eoheygqyom3c7ovw@stig.io>
From: Christian Heinrich <christian.heinrich@cmlh.id.au>
Date: Fri, 21 Apr 2023 09:18:33 +0930
Message-ID: <CAGKxTURUKjUkjXOKvT+MdYZTXyVQq6fQEj2tsxyXhXE+XxvVmw@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: sjn@pvv.org
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] Perl's HTTP::Tiny has insecure TLS cert default,
 affecting CPAN.pm and other modules

Stig,

On Wed, 19 Apr 2023 at 01:24, Stig Palmquist <stig@stig.io> wrote:
> ... and more. We have generated a list of over 300 potentially affected
> CPAN distributions.

The responsibility for this fix is therefore with the maintainers of
the CPAN modules who accepted the residual risk as documented at
https://metacpan.org/pod/HTTP::Tiny#SSL-SUPPORT rather than HTTP:Tiny
itself.


-- 
Regards,
Christian Heinrich

http://cmlh.id.au/contact
