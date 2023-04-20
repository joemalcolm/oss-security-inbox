Received: (qmail 24291 invoked by uid 550); 20 Apr 2023 22:44:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24267 invoked from network); 20 Apr 2023 22:44:22 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682030650; x=1684622650;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+wKKJe96FH1RJ0Tr3L68kfLZtsT2XYod8hza7Qr09d4=;
        b=Wd5CPEcNYC2ZacbXPJ2BuWYc5kGOKBZL+xaJjhRRefzAigS4LlpP2vSNa7Gnc+ZS+Y
         7KUwbGwtjE2tQKPDa6KvRqQu/cvxUShAvchaEYKrkrAEh/RylBpt41kcckzLyK9tIXny
         36n/GBXzXWjuzCS9cNQnyUNd1p/fFt1lCx13elgyUKSVBQz9EvgwV+uIUj/ok8H/SGru
         yb+572Fs2iQwtgqu0+/6jbwrt4mY4Ig9NJ0X8dj9U9leYsXGeFkKVRb9QuWP7elvO1oo
         yzoSPiLvVprMrSkMbkLmIhOssClOucbeIFVo7YoMksfDPBv5NbzZcoKQ6OXbl9FZZVNO
         3IMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682030650; x=1684622650;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+wKKJe96FH1RJ0Tr3L68kfLZtsT2XYod8hza7Qr09d4=;
        b=KHTM9U9oSliPQ48L9h/Cbjf9DNTOatL6tusWQundA5IYiGlMxFyOCmsRI6okfWAs3o
         a2/upaf428ITajwTlftMOff3ulHuiQW4xLGYdEHjkg8zC/ih5FppaTF4exMrnZ1xuSVv
         Vadi+McilGs03ZoFeWof/HDdvYuJmyKsNm8XXENvLEn+Hr/C9bO36aFE3guRIlAuUnQH
         bXJ5nYbQ8JWJzDBt3o7EJoeIdntmG38Hx4xpoutVh4/rbbtSD/5BEjx0uaLBL21pty3c
         n/HlQYbdxiknSfcpJbFVGpBKPtoo+ylq2iwNuJ3Bly6bHCEsdft1VE59QWhM5ulEQuXC
         06Kg==
X-Gm-Message-State: AAQBX9d4San+B5YJ4YIoi0h9WyPRdrc+ctzySZZ5Mnf7LfCmfxdWLJ4y
	mKFOZkEUpqcAKlzyfaKpn7YzjLIVuujTyw==
X-Google-Smtp-Source: AKy350YSfFL94YQlGLINBe+F840SsIXvJaEYJ+owoRPop6Vjmf26nQvKA6u7S5U6ZD3D/OUpuGb5rw==
X-Received: by 2002:a17:903:2292:b0:1a6:6d9f:2fc9 with SMTP id b18-20020a170903229200b001a66d9f2fc9mr4218198plh.30.1682030649552;
        Thu, 20 Apr 2023 15:44:09 -0700 (PDT)
Message-ID: <c1ccf91b-ad4c-9ffa-f31f-48c529dde8cf@gmail.com>
Date: Thu, 20 Apr 2023 15:44:08 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: oss-security@lists.openwall.com
References: <20230418154630.eoheygqyom3c7ovw@stig.io>
 <ZD/4ODBjTesPMECg@itl-email> <20230419215340.UruCC%steffen@sdaoden.eu>
 <20230420073459.003a5be2.hanno@hboeck.de>
 <20230420125645.md-Zo%steffen@sdaoden.eu>
 <CAH8yC8nYOGAsnPkm+f3-b7r4PvZ=QxeKT9DXK=MoFVoFDGav9w@mail.gmail.com>
 <20230420212600.v56eE%steffen@sdaoden.eu>
From: Matthew Fernandez <matthew.fernandez@gmail.com>
In-Reply-To: <20230420212600.v56eE%steffen@sdaoden.eu>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] Perl's HTTP::Tiny has insecure TLS cert default,
 affecting CPAN.pm and other modules


On 4/20/23 14:26, Steffen Nurpmeso wrote:
> Jeffrey Walton wrote in
>   <CAH8yC8nYOGAsnPkm+f3-b7r4PvZ=QxeKT9DXK=MoFVoFDGav9w@mail.gmail.com>:
>   |On Thu, Apr 20, 2023 at 9:05 AM Steffen Nurpmeso <steffen@sdaoden.eu> \
>   |wrote:
>   |I don't think HTTPS discriminates against servers with self-signed
>   |certificates. A user is free to limit trust to a single, self-signed
>   |certificate. The docs show the user how to do it.
> 
> That seems very, very complicated for non-nerds.
> I fail to see user-enabled documentation for how to achieve this,
> but i am only using command line / console programs, it can be the
> desktop environments make this easy.

I hesitate to reply to this thread because I struggle to understand what 
topic it has diverged into, but I just wanted to note that embedded 
browsers configured to accept a single self-signed certificate are not 
uncommon in corporate environments. Thus a (non-technical) end user may 
be using a browser like this that has been configured for them by device 
management. Whether this is a good design/idea, I leave to others’ 
judgement.
