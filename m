X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["631" "Monday" "19" "July" "2021" "14:18:05" "-0400" "Jeffrey Walton" "noloader@gmail.com" nil "19" "Re: [oss-security] Polipo: denial-of-service using range" nil nil nil "7" nil nil (number mark "U       noloader@gma Jul 19   19/631   " thread-indent "\"Re: [oss-security] Polipo: denial-of-service using range\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Polipo: denial-of-service using range" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28271 invoked by uid 550); 19 Jul 2021 18:21:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26265 invoked from network); 19 Jul 2021 18:19:34 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to;
        bh=HuSaXc7fd5T7ubpL8W7/8Oux96BCsAs5hhhMgMa2JX4=;
        b=eyuy7sbZaZeF8n8aixoWnWEvVSVyQhnZOFwgQDnAxutFJzE3s86FSVhRaljOgEOUwf
         7ZENQ4A9hw2oGGC3WWBaRvYqGZFGZNhUjkd2LqlISoU7JBY1rHBX3Q/TyHesT5J7gXOF
         puA7gQJ7YW8smv2KHp8LqIMncZxb39F2JFiaHJtht0xbx48h2ZXvI24t0PhjuV6RxDc7
         r2pwNhsUnXelFuhnG1tzPUO4k5ETNDjusrN4R+ywGmLGxKhO/HLIY3EeYoxDDtpx1VhZ
         wazYhM5mw49ydEKA+iU2e12LGiUd6qAkZVAgiOtcfmSy26xf+1lQdsmwqpCCgXbo+kQw
         da9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to;
        bh=HuSaXc7fd5T7ubpL8W7/8Oux96BCsAs5hhhMgMa2JX4=;
        b=MUlnKjBeeQE4IQCgf7oZSBABXI10MG3hGO83QtzRhhjw9S5IfpF7F9AmfCsy185bh8
         RGsXjsGShOZqJ/9QQtCm4MOOcYhmmvwldQFpA73yUT726BQgvJgUAEXMp0gfEaCty6wb
         Zt9tZK3rsy3ldjBRAyHQeXItNJqGK3Vvkv3PhTrfLrnDDGEtezqNDcT9reoyK2E9GtcZ
         wkUEcnKp/K2aNKD6680pfZlIO/fG8c+Q/UvfC2CyJQXojhxQ7opmTqh6BMNlyWyPev9Y
         pEJpWoBgaSDn44gyxovK6/KDOvcUlRPuj3EJGAp9bavVNNZTVj7GsnW6MQNlKUoNwSAH
         Nx/Q==
X-Gm-Message-State: AOAM5335QEeNeobvke9iRGDl6pUyoQ1/W0/zPbYhfxbxsU2isSxShzST
	pLLTy9BofP2Bojr8zpOmD0UzH06m/623ta8qVbU6isR66HPg6g==
X-Google-Smtp-Source: ABdhPJzR7H69EzuW6+pCTBuo7/BiRvhuntUJA5TZejdIoOqMHxVcLSt89e9S1PEdw4U/hvDu+213P5DaV5HAt1iEY4Q=
X-Received: by 2002:a05:6e02:b24:: with SMTP id e4mr17724327ilu.41.1626718761818;
 Mon, 19 Jul 2021 11:19:21 -0700 (PDT)
MIME-Version: 1.0
References: <20201118171206.443be0215d1b142b5ce7584e@gmail.com>
In-Reply-To: <20201118171206.443be0215d1b142b5ce7584e@gmail.com>
From: Jeffrey Walton <noloader@gmail.com>
Date: Mon, 19 Jul 2021 14:18:05 -0400
Message-ID: <CAH8yC8nDTF9-aBtuKG+81rEYmf4QigMfwB3EEw8hwYiGHP+AeQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] Polipo: denial-of-service using range

> I found a vulnerability in the Polipo [1],
> lightweight, caching web proxy.
> ...
>
> Polipo doesn't ignore/reject the malformed header. Instead, it has
> an assertion:
>
>     server.c:1473: assert(from >= 0 && (to < 0 || to > from));
>
> So, a malformed Range header ("Range: bytes=3-2" for example) will
> cause an assertion failed.  This error handling allows an attacker
> to cause a denial of service.

I would be interested to know what happens when NDEBUG is defined so
the assert goes away. Does the server crash, does it lead to memory
corruption, an information leakage (like a private key), or something
else?

Jeff
