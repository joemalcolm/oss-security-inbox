Received: (qmail 19900 invoked by uid 550); 14 Sep 2022 11:08:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30367 invoked from network); 14 Sep 2022 07:53:11 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date;
        bh=NYBRQY3TYzoOfIZ1btPxLSEd8cYoCiJl41hIPfNSO+A=;
        b=eE3uKOdjIAEqsBGgCUfkmcAnL3r5hQtoanmV/35ViF7j5R5vRC8m9RXXMf6Hiz1Wow
         LjzsrKfbp592cYCq2qvVRgOOYlOG35Xs7DI/M3MKCzHcurpHafIL1QqEn8VExuEhwjDL
         btRJIGor+QJ9b3WSczyhMb8njgvQH3N698Lz/hLrQsMSmIfqcCy/rD5XLM0UTGTJJdur
         2r/MPWJYi1UwrNClFthGEkzAUrixlfnPEUQKgvQY4ZboqR0G17c0iDD7XddTJxheFI2t
         Pj1zAZ/izKFnU6se8S93MScWOmw5yMkGSPOQvL8h4WZuVWwZKM2w2gijdqA/UysmUw74
         BrjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date;
        bh=NYBRQY3TYzoOfIZ1btPxLSEd8cYoCiJl41hIPfNSO+A=;
        b=ShPaFRvygrrBTHaWRPCuVCSyrXYlPtyC8dA22nQyTR4c1HJyCwF5TdNgioD9JN20EU
         kKmfiWUTjg9Tys407hTaO8nYS6562xv2XrlRBNMxyQwvFIkPGzXQWzDPeDNEseCyyVfb
         QSPZ4fRQnzBzN48HQMc+CqoqWuafNE4ng71TYNRDLwIUQ1hR57YZyNPrKkqIkYj5LyWt
         7U77d19jfDmOSdKg8ExvXGngOhtIop0EgVcvsXojFVjGj7U4xcCCntaGvvVVEIODpIgr
         33+BmzR+1qvlevf7TLCK1K/bJrI4/qC5lW2N+r6EOVDujWFthq153l35Ezy6mgb35S7V
         qlaw==
X-Gm-Message-State: ACgBeo20Slz8CFfWrILZEBtTTE3eDMXFBCH/gYir92JWTz1opY0jgEF9
	9CbI/sHUO4w1F5vDhhe+27Sn12obSbtzogXCXKmddZFj1SQ=
X-Google-Smtp-Source: AA6agR763JVTTNTgQi+ucdF5hcUJ4pPHcUG5gq04KA40evHR4r/Ic58HJlaSpCQdPECsBktAKVjtcRXHlP/4IQiX2eI=
X-Received: by 2002:a05:6000:15c6:b0:228:de49:dade with SMTP id
 y6-20020a05600015c600b00228de49dademr20433258wry.28.1663141979549; Wed, 14
 Sep 2022 00:52:59 -0700 (PDT)
MIME-Version: 1.0
References: <CAGUWgD9QR7mjyVnBV4NcyVv=RzLBjNoqvv=d02P-GGsdOV_VWg@mail.gmail.com>
 <20220906115010.gs7kec3wkmayhmhf@yuggoth.org> <CAH8yC8k8C-gp9upSpJLsXrhBB5-qSnKGeP34+32A-_s5YG3UTA@mail.gmail.com>
 <20220907013017.GA1357227@millbarge> <CAGUWgD8f4V3uYf7wLjfHarRSwPo1PgqwDSWcNX6LaO_Cgco8vA@mail.gmail.com>
In-Reply-To: <CAGUWgD8f4V3uYf7wLjfHarRSwPo1PgqwDSWcNX6LaO_Cgco8vA@mail.gmail.com>
From: Georgi Guninski <gguninski@gmail.com>
Date: Wed, 14 Sep 2022 10:52:46 +0300
Message-ID: <CAGUWgD-oYbazh5f+EDj0AmzxmKBY9MK7fwZVkeeFsCETHF4T-g@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] sagemath denial of service with abort() in gmp:
 overflow in mpz type

On Wed, Sep 7, 2022 at 8:36 AM Georgi Guninski <gguninski@gmail.com> wrote:
>

> $ apt-cache rdepends libgmp10 | grep -i crypt | wc -l
> 28
>
> some examples:
>   gawk

Hopefully last post in this thread:

guest3@ubuntu20:~/prim$ gawk --bignum 'BEGIN { a = 2 ^ 2 ^41; print "a =", a }'
gmp: overflow in mpz type
Aborted (core dumped)
guest3@ubuntu20:~/prim$ gawk 'BEGIN { a = 2 ^ 2 ^41; print "a =", a }'
a = +inf
