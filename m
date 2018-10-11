X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["927" "Thursday" "11" "October" "2018" "10:20:17" "-0700" "Tavis Ormandy" "taviso@google.com" "<CAJ_zFk+yw7HcUtqg8cUTqwTx3F0F8atYY95=RCzkBz-zKwK0JQ@mail.gmail.com>" "29" "[oss-security] Re: ghostscript: bypassing executeonly to escape -dSAFER sandbox (CVE-2018-17961)" "^Date:" nil nil "10" "2018101117:20:17" "[oss-security] Re: ghostscript: bypassing executeonly to escape -dSAFER sandbox (CVE-2018-17961)" (number mark "        taviso@googl Oct 11   29/927   " thread-indent "\"[oss-security] Re: ghostscript: bypassing executeonly to escape -dSAFER sandbox (CVE-2018-17961)\"\n") "<CAJ_zFk+nnBgWaDNKgvLnVjp4rz3SttBQvjCCXjiqC71rV6bBrA@mail.gmail.com>" ("<CAJ_zFk+nnBgWaDNKgvLnVjp4rz3SttBQvjCCXjiqC71rV6bBrA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 27953 invoked by uid 550); 11 Oct 2018 17:20:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 27906 invoked from network); 11 Oct 2018 17:20:42 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=DT8ImS+JbCpxUtv30FmmPRGjcj6pprH82eO7BalyAm8=;
        b=aRomwJWoevM5Cpt7a1QNG18X9nci6vJ9Nt+jBhPPO02aZ75gFfDB794wqWZ4gzuIWj
         db/ObOw50oSgeLPytj0PoOhnBOSjysQ1cH7aHGM8gbtz4j1KHku8j8PJgNPAfvXPOWPf
         IeBuvJazArd3IvC8GSow0LMg0cfSQbM6Pdo5XHvAC/rfrJeon2XzTMnymSQY75exoxDB
         xEcJ96fULFRNAHcHW/tqDRHQKEYB0Sb1ECa1dgK1x2f4NBJlX9qOvbkr7NNpXx5ClHOx
         hiRG0olGlKt0XHnT09sLQVxIfQ6+CVwCyLujOQ8D/DhM9retyOdj3rUaDdz5iLJX+MjR
         ceww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=DT8ImS+JbCpxUtv30FmmPRGjcj6pprH82eO7BalyAm8=;
        b=Ec5MNZCPq/1Jtr+M2BvhDLmBqp3jE+WsLSm+lxKccoFGdDUMSZ2t//JLVIFzITuk2L
         LrsA0L6pwrKr+BFK5K1W2WtSoHGIp1CAHeJEEipd3x5LEeC9CD8wfM9CkIxcI84WQBPK
         U3msUGmYtcElZoEhioAoPw2EjTpSCF5rL/j6rcpkRPYaAiGoLc/zmwOQirq/krs/7LaL
         q23OFersNsRuCyIbHpTPD47mrrGAvwKRKxbzTOs326maV4+eZtGfU8ZaOe20ggVEsNHN
         sdQRp2B472CRDtOCLCfypOkfC+98yKQPV5/gXx+mBluMz+vD9COhYiYKuHKLivKctVvb
         w4Kg==
X-Gm-Message-State: ABuFfohJlZKGDBYzNLGmywGyT4NX8iHnjyPHfKI5v0s3td2KfN9+xTq8
	pMqpemFilnIupfBCiorPxTlNpGoSzdsiPEt4cZ5C4H9F0bj5NA==
X-Google-Smtp-Source: ACcGV63g891iGVMaQXe4iFCb48YBvjMWRmI34hoKx277X28E87Xdk6Iv/Ycdf6x23fJ/Olzpqid09Hlxj6jECZNioi4=
X-Received: by 2002:a37:19cd:: with SMTP id 74-v6mr2394274qkz.253.1539278430189;
 Thu, 11 Oct 2018 10:20:30 -0700 (PDT)
MIME-Version: 1.0
References: <CAJ_zFk+nnBgWaDNKgvLnVjp4rz3SttBQvjCCXjiqC71rV6bBrA@mail.gmail.com>
In-Reply-To: <CAJ_zFk+nnBgWaDNKgvLnVjp4rz3SttBQvjCCXjiqC71rV6bBrA@mail.gmail.com>
Message-ID: <CAJ_zFk+yw7HcUtqg8cUTqwTx3F0F8atYY95=RCzkBz-zKwK0JQ@mail.gmail.com>
Content-Type: multipart/alternative; boundary="0000000000000b1c2d0577f73022"
Date: Thu, 11 Oct 2018 10:20:17 -0700
From: Tavis Ormandy <taviso@google.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: ghostscript: bypassing executeonly to escape -dSAFER sandbox (CVE-2018-17961)
To: oss-security@lists.openwall.com

--0000000000000b1c2d0577f73022
Content-Type: text/plain; charset="UTF-8"

On Tue, Oct 9, 2018 at 6:58 AM Tavis Ormandy <taviso@google.com> wrote:

>
> The fix is public now, here are the necessary commit:
>
> http://git.ghostscript.com/?p=ghostpdl.git;a=commitdiff;h=a54c9e61e7d0
> http://git.ghostscript.com/?p=ghostpdl.git;a=commitdiff;h=a6807394bd94
>
>
>
A small update, one of these commits was to mark all procedures that use
dangerous operators as operators themselves. The idea is that error
handlers will only see the top-level operator and not any sub-operators (I
know, this is getting complicated).

I noticed a procedure upstream missed, .loadfontloop. Upstream have double
checked if there were any others, and I did too - we think that is all of
them.

So this commit is necessary as well:

http://git.ghostscript.com/?p=ghostpdl.git;a=commitdiff;h=a5a9bf8c6a63

Thanks, Tavis.

--0000000000000b1c2d0577f73022--
