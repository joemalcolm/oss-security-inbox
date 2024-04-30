Received: (qmail 24438 invoked by uid 550); 30 Apr 2024 10:09:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13916 invoked from network); 30 Apr 2024 00:31:56 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1714437108; x=1715041908; darn=lists.openwall.com;
        h=content-transfer-encoding:in-reply-to:references:subject:cc:to
         :mime-version:user-agent:reply-to:from:date:message-id:from:to:cc
         :subject:date:message-id:reply-to;
        bh=I76QLUmVuF+JGgqA/ojBE7uV7vF+Q0jnE5fXZXqcCm4=;
        b=nHig0oR7YgG6YYPlXfFO4sRcSJyq95YvP54lgXNZeJjLOyO+egit9s6L/7ReodMgI3
         rc2Z7q4vGzb77UIErc/zz7BS/mCUv8F9h6drn3rmWoAwi4OUbPPPfbRxoD3P5MqZWuid
         V5u/+JLJA7uvNr2s0nxXZHiB8fgqNGQyvDp7OX0uBNpr8h20/Zk8IHQ6E/AlrwuByQw+
         2gtJoj9lbeTRADh/pp47GHdhgXLgITw8IcQDYL1E7nQFVye6UAW4Df4+Kqq9MLYkC5Og
         Rn2jfxGKFavql6zv1WjIgMPz8yUNuyCVoIu2xnUAa06RaoTkDRljn7cJKgLO5FUZwO+A
         S+Eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714437108; x=1715041908;
        h=content-transfer-encoding:in-reply-to:references:subject:cc:to
         :mime-version:user-agent:reply-to:from:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=I76QLUmVuF+JGgqA/ojBE7uV7vF+Q0jnE5fXZXqcCm4=;
        b=hzPGT2Tx9yJtslYeFlmL/k8OxV5ng+1jxP0lmya2ZyZ1MvORY/VelwGFz89Enx3BIP
         a338D0uOhVtmP3zL/yWjH5D+RJSzD+o/wNfYbKyqctxWrqGZh6e2Xi/ABCUKWfaAMGcl
         f3TUFvGWhOYRAQ4VQfzjcaJPesFEEXuaeuJyNJSQaBbJIOyCOzY5ht7b5zbNx+jHHG8y
         Y9ptz1Fi48g5Ro79iJzvhhkYZnFyt5kqFCoiW70kvbu6UeG1yLmJl9h+SCKUqHgkqNiq
         k2BV14XdZUNOJBJNRzRdNme7ykEw2OVsA/TH1i5JwuQ0xu0dab7BUCRrgZdd86ERiJ0M
         kw1w==
X-Gm-Message-State: AOJu0Yx4U6+TF1+K3RJeZL6x4ndj5QWf+j2ZqhpLGPLjJMGAPDCHR8Iw
	I307UO1DRp1eaEmuFPkdUHG7Hd/HjH5SP+UpsBfl6iRE933LyraZ
X-Google-Smtp-Source: AGHT+IHS1nQG5EEV7d0cag++/fiZ/8lIWoraJrpLe4cwv9Grdao6TOJH7Olm5flvYZeaeMHTrf4+dw==
X-Received: by 2002:a4a:5ac4:0:b0:5ac:bdbe:10fd with SMTP id v187-20020a4a5ac4000000b005acbdbe10fdmr10289307ooa.9.1714437107985;
        Mon, 29 Apr 2024 17:31:47 -0700 (PDT)
Message-ID: <66303BF2.2070502@gmail.com>
Date: Mon, 29 Apr 2024 19:31:46 -0500
From: Jacob Bachmeyer <jcb62281@gmail.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.8.1.22) Gecko/20090807 MultiZilla/1.8.3.4e SeaMonkey/1.1.17 Mnenhy/0.7.6.0
MIME-Version: 1.0
To: Vegard Nossum <vegard.nossum@oracle.com>
CC: oss-security@lists.openwall.com, Hank Leininger <hlein@korelogic.com>
References: <20240427234834.c0219029-fe37-49ef-a563-4d24eea118c2@korelogic.com> <a0e871ca-468e-4239-89cd-61b35f935c2b@oracle.com>
In-Reply-To: <a0e871ca-468e-4239-89cd-61b35f935c2b@oracle.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] Update on the distro-backdoor-scanner effort

Vegard Nossum wrote:
> [...]
> Hi,
>
> Masquerading a shell command as a pkg-config variable definition is
> trivial (but probably still detectable) since you can just do:
>
> foobar=/usr echo hi
>
> which AFAIK is a valid pkg-config variable definition but also a valid
> shell command.

You are correct, but making this a little bit harder for an attacker is 
still an improvement.  Perhaps pkg-config variable values should be 
required to be in quotes if they contain spaces?

The bigger issue is accepting an *-uninstalled.pc in a system directory, 
which means that it actually *has* been installed.  That logic error 
allowed your backdoor to override the real libelf.pc without producing a 
file conflict that the package manager could detect.

> Also remember that in my particular example I reused the same file but
> it would also be trivial to use a different file in the $(...) expansion
> so that the payload actually lives somewhere else.

Agreed, but adding another file to the backdoor increases the chance of 
the attacker getting caught.

> The payload doesn't
> even have to be a shell script, it could also be a small ELF binary or
> something where you wouldn't necessarily be able to tell at a glance
> that it does something malicious.

Also correct, in fact, for a package that actually installs executables, 
a bit of extra code in an otherwise legitimate binary to detect when the 
grandparent is make(1) and drop a backdoor could very likely go 
unnoticed.  (This would be the rogue or compromised distribution 
packager scenario, where the binaries distributed do not match the sources.)


-- Jacob
