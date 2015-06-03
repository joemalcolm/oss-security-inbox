X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["345" "Wednesday" "3" "June" "2015" "13:39:25" "-0700" "Tavis Ormandy" "taviso@google.com" "<CAJ_zFk+BcOcyt26okYQOEcMN0xo6QNY1N7B3TBeqrybWneaCOQ@mail.gmail.com>" "13" "Re: [oss-security] Re: Re: CVE-2015-3217: PCRE Library Call Stack Overflow Vulnerability in match()" nil nil nil "6" "2015060320:39:25" "[oss-security] Re: Re: CVE-2015-3217: PCRE Library Call Stack Overflow Vulnerability in match()" (number mark "        taviso@googl Jun  3   13/345   " thread-indent "\"Re: [oss-security] Re: Re: CVE-2015-3217: PCRE Library Call Stack Overflow Vulnerability in match()\"\n") "<tencent_541347B179D560AA50AB7FFB@qq.com>" ("<tencent_541347B179D560AA50AB7FFB@qq.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17796 invoked by uid 550); 3 Jun 2015 20:39:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17778 invoked from network); 3 Jun 2015 20:39:57 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :content-type;
        bh=9niywNrzcg+hXN8ziGnn3EUcAHIbAmIVCz4DhJztvK8=;
        b=nrHYSrXby6YR4ZbhIC+IURB8inJC4fKy37Y4pU7vkYJ01G99lszdXi/lOA7ReCkvTI
         rmdTDQ76YC5M+zo2pC4NTWoaiFpYx/86pzu2F3stvGiUJIqnJ9aSkHAvSF7H6nNNZuUZ
         lhErYNDxyZ4uO/N9M3UTe2UnE58v3Pp8db/s65HLiKUfTdMYM+bEGRdyFFwOsBTZd5iW
         Ts7F1Waricv27frClDi6t9qJi3FXVpq9PkvXQOz4aJlp+2PYT780HygG6QqTAvl9/PwS
         SQa8yBcNgGTm8kvLJ72xRrArgxBvDrAwHBaPkv0E91qLrzqi6ISbxXdClo82r+O4ncvK
         X4Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:content-type;
        bh=9niywNrzcg+hXN8ziGnn3EUcAHIbAmIVCz4DhJztvK8=;
        b=h9nnMZxUsf9zccFgB46NJtU2KeHOJwJ688ImwKYbp15BGrPM4L7HVgJDESs5qirYNH
         7N5yE8BwoiMHf17N9LetVTz1TDsDaygms7tS8B2CdwxYjeF4UDR0GjfXVu8Okroi9bmS
         S7mU+4eMmZASo9UI05/m8c2C49fux+boSC8U0pKGO42l/zOszxXWGwDKpjdqYT9p3458
         BXZDV1rfvr1FNmLlhUPA5MaH1AYkTgO3JaPLpme/qzdVgjBa7tDCej6H6Fl8HC/Fm2mo
         u1HSXehuSXsLMtBgvmrV5/OFvKFi1MYJnY0FuMT1z0eN695NkFxTafROCxTwv9dQr+SX
         A8kA==
X-Gm-Message-State: ALoCoQkRpcNDwj2e5QvSRBAKeT1mm2Lsb5t+ZEHJ9oDiOXP5nvYOEUU6l7qnAggYYYkrj9dGZzgr
X-Received: by 10.55.24.209 with SMTP id 78mr63125763qky.19.1433363985726;
 Wed, 03 Jun 2015 13:39:45 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <tencent_541347B179D560AA50AB7FFB@qq.com>
References: <tencent_541347B179D560AA50AB7FFB@qq.com>
Message-ID: <CAJ_zFk+BcOcyt26okYQOEcMN0xo6QNY1N7B3TBeqrybWneaCOQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Date: Wed, 3 Jun 2015 13:39:25 -0700
From: Tavis Ormandy <taviso@google.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: Re: CVE-2015-3217: PCRE Library Call Stack
 Overflow Vulnerability in match()
To: oss-security@lists.openwall.com

On Wed, Jun 3, 2015 at 9:39 AM, Hhjack <82100840@qq.com> wrote:
> As far as I tested, 8.33, 8.34, 8.35, 8.36, 8.37 were confirmed to be affected.
> PCRE2 10.10 is also confirmed to be vulnerable.
> Other version may also be affected.
>
>
> Cheers,
> Wen

I don't know if it's fair to call this a PCRE bug, isn't it PHP
misusing the API?

Tavis.
