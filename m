X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1914" "Friday" "20" "July" "2018" "10:41:40" "+0200" "Emilio Pozuelo Monfort" "pochu27@gmail.com" "<b700e851-08b0-003d-b428-58ebd1fefc21@gmail.com>" "49" "Re: [oss-security] CVE request: Wesnoth arbitrary code execution/sandbox escape" nil nil nil "7" "2018072008:41:40" "[oss-security] CVE request: Wesnoth arbitrary code execution/sandbox escape" (number mark "U       pochu27@gmai Jul 20   49/1914  " thread-indent "\"Re: [oss-security] CVE request: Wesnoth arbitrary code execution/sandbox escape\"\n") "<2222700.WJvhPnAmYh@hanacore>" ("<2222700.WJvhPnAmYh@hanacore>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32504 invoked by uid 550); 20 Jul 2018 08:44:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30676 invoked from network); 20 Jul 2018 08:41:53 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:openpgp:autocrypt:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=mgl9lDzED7m2baipctmrly9wtk2ZlDKkenPmWt6U2pE=;
        b=Z+d7Q8W6lJigVUbgW/u1RENGr5pwhMrtNltHGkJpIUvwAQPdRIUOMbhbu3rfxUHcWA
         3g65jQe9O8S7kjQXRrpXQiOOoDI0s2cWLTYV8PlQ6qinXOpehjHlrkm4fYqXXm8DHXNu
         ghPezU56ldP0yAsLKT/34CTZQSuoWtk6sTn5gWPQdOTLFy/oszJJbvJlZSSIfIDEkg0b
         d7MgOOhCiQrK+3EnuOo01IedkBlcgm8R32z8FIEfyl+b4G2tW+43WMreQNY9rHDs00XG
         2M8s6eGn1Yd23eI1aEiqSxa4TJdWRSzA4Hkz+shvA42Iiqp9yYMESdwpWls2SG+U3FpW
         jVXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:openpgp:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=mgl9lDzED7m2baipctmrly9wtk2ZlDKkenPmWt6U2pE=;
        b=eMbC38y7Vi4KsCAuQMc9mIXM4nsou9ypR3ab+oLmYzvXgaB65RmEgHCKjpiicP2Jg6
         mPdLCHGv43Y1nX/bQkGma/q29aXUPV50hD73+ssK7i/jng1QvvpmYHZoUJIkey6PHCK4
         eaCmld3IM+T4cN0QSZYIUuSvI8zlC/4ek4kkNvfhh+AhsliKATwAEnygxaPX56T0WERp
         F/JuTZjVqXp2PTiw6v071uNceLsWa13pwm74WxHDkCd3x6wKAfu8Uhj5doEU6tCNL2Sz
         ooNqVx3HYkMkoVl2qg9KDAhHClrZNPafyNXE4PGrV30MWOQRcIEgdLKbQeHVb0EGb2M1
         EM9g==
X-Gm-Message-State: AOUpUlHobejk4LnsFFo0HbZKqWAGndPHDCVX+d1+GumSy+/CyMJQoJww
	zlR6PGW0r6jeCF54Ck1oFCw=
X-Google-Smtp-Source: AAOMgpdkE3jUvWxihGi5m3JTZb0tnfhnhzq59lpbHg1Q3iKU5TpRzShBqNLOU9tREW+DX2qxNed2UA==
X-Received: by 2002:adf:e90c:: with SMTP id f12-v6mr802609wrm.126.1532076102546;
        Fri, 20 Jul 2018 01:41:42 -0700 (PDT)
To: oss-security@lists.openwall.com, Iris Morelle <shadowm2006@gmail.com>
References: <2222700.WJvhPnAmYh@hanacore>
From: Emilio Pozuelo Monfort <pochu27@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=pochu27@gmail.com; prefer-encrypt=mutual; keydata=
 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
 X+5cyke+
Message-ID: <b700e851-08b0-003d-b428-58ebd1fefc21@gmail.com>
Date: Fri, 20 Jul 2018 10:41:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <2222700.WJvhPnAmYh@hanacore>
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] CVE request: Wesnoth arbitrary code
 execution/sandbox escape

On 20/07/18 03:13, Iris Morelle wrote:
> Hello,
> 
> We've found an issue in our software, "The Battle for Wesnoth", which allows 
> arbitrary code execution by exploiting a vulnerability within the Lua 
> scripting language engine which allows escaping existing sandbox measures in 
> place and executing untrusted bytecode.
> 
> We would like to have a CVE id assigned to this issue if possible.

Please request one by filling https://cveform.mitre.org and let this list know
the CVE id if/when you get one assigned.

Cheers,
Emilio

> 
> 
> Description:
> 
> The Wesnoth game engine uses the vanilla Lua programming language library to 
> implement most of its game scripting capabilities. Lua is able to execute 
> bytecode using its load(), loadfile(), loadstring(), dofile(), and require() 
> functions. Wesnoth in particular exposes load(), loadstring(), and two 
> wrappers for the former in the form of wesnoth.dofile() and wesnoth.require(), 
> without making sure to disable the ability to load and execute bytecode.
> 
> It has been documented [1] that it is possible to exploit the Lua load 
> functions to execute untrusted bytecode that can then bypass sandbox measures, 
> or even gain and abuse special knowledge about the process' memory layout.
> 
>   [1] https://gist.github.com/corsix/6575486
> 
> Wesnoth executes Lua code from untrusted local files either written by players 
> or downloaded through a player content distribution server, as well as from 
> data sent over the network in multiplayer games; thus this vulnerability is 
> rather severe as it can be exploited remotely by malicious parties without the 
> user's knowledge.
> 
> This issue was found by Daniel Dräger, a Wesnoth developer, and author of an 
> unmerged patch fixing it.
> 
> 
> Affected versions:
> 
> All existing versions of Wesnoth with the Lua scripting capability, i.e. 
> versions 1.7.0 through 1.14.3.
> 

