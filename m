X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1240" "Monday" "10" "July" "2017" "20:24:01" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<308352c2-f020-aa8b-0ea7-f4cc7b14ada2@redhat.com>" "29" "Re: [oss-security] mpg123: global buffer overflow in III_i_stereo (layer3.c)" "^Date:" nil nil "7" "2017071102:24:01" "[oss-security] mpg123: global buffer overflow in III_i_stereo (layer3.c)" (number mark "        kseifried@re Jul 10   29/1240  " thread-indent "\"Re: [oss-security] mpg123: global buffer overflow in III_i_stereo (layer3.c)\"\n") "<CALx_OUDSOWt=z01KSv81tqsyUO1hNas0NF_aAzXRzqMKM9u89A@mail.gmail.com>" ("<801547.452199401-sendEmail@localhost>" "<20170710114253.44fc7ac0@cortex.rrz.uni-hamburg.de>" "<CALx_OUDSOWt=z01KSv81tqsyUO1hNas0NF_aAzXRzqMKM9u89A@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26180 invoked by uid 550); 11 Jul 2017 02:24:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26156 invoked from network); 11 Jul 2017 02:24:14 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:reply-to:subject:to:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=dl+ge6kDApLQVn0cpE6ATXkfuy2UnwNLElTxVEd5GNE=;
        b=R1G4MZHMgRFEz1kLa9YLQU8Ooj20D7A0OJtibaXR502M6Fin2i5DVyak4W+L7yTJWa
         QQ3d6qP0Z+c+iD5vdiDAh7ReNbq78LIwr6vrFn5UR3dgW5m1IYlXb3pl1RLTstFXId6B
         bTE1AGG70rYC0QUyz6PIT490NvV5HTJXRRrofknfiNwM9G8jq2pjbs2M2QrXXgdLT4w0
         CzvE+9v+NaEN9ekn29NB6cSNzTgYRvYalGg7f2FBwV5fJfmV0aETiXntjhhZQTC4L1uq
         fxZl37JxKZd4Xr5IhJslncUUk9efeg20VV1Lp71eGr4GnSpDXqmfX0O8Az/gxNWJ+tCY
         xQQA==
X-Gm-Message-State: AIVw111XVHpngvLU+K8SW/1fdeSK8DDLuUnBUARhjitUeM8gJS/SP+1H
	05yizNibEEV/D4ts
X-Received: by 10.36.39.148 with SMTP id g142mr1307338ita.91.1499739843093;
        Mon, 10 Jul 2017 19:24:03 -0700 (PDT)
References: <801547.452199401-sendEmail@localhost>
 <20170710114253.44fc7ac0@cortex.rrz.uni-hamburg.de>
 <CALx_OUDSOWt=z01KSv81tqsyUO1hNas0NF_aAzXRzqMKM9u89A@mail.gmail.com>
Message-ID: <308352c2-f020-aa8b-0ea7-f4cc7b14ada2@redhat.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:52.0)
 Gecko/20100101 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <CALx_OUDSOWt=z01KSv81tqsyUO1hNas0NF_aAzXRzqMKM9u89A@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-GB
Date: Mon, 10 Jul 2017 20:24:01 -0600
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] mpg123: global buffer overflow in III_i_stereo
 (layer3.c)
To: oss-security@lists.openwall.com, Michal Zalewski <lcamtuf@coredump.cx>



On 2017-07-10 8:04 PM, Michal Zalewski wrote:
>> It's hard to see a security issue here
> I'm not sure this applies here, but the use of uninitialized memory
> can be an issue when, say, a website calls your code to convert
> user-controlled audio (e.g., to optimize it for streaming). For
> libraries, this could leak some information about the audio converted
> for other users, possibly revealing it to the attacker. For one-shot
> conversions with a command-line tool, this is unlikely, but the
> uninitialized memory could still end up leaking some system-specific
> secrets (e.g., ASLR memory layout, credentials, etc).
Just a reminder to all, a worst case scenario to the above:

https://twitter.com/taviso/status/832744397800214528?lang=en
> Not that this is necessarily a risk here; depends on how much memory
> is accessed, what happens with it later on, whether anyone is even
> using the library / tool this way, whether doing so is sane in the
> first place, etc.
>
> /mz
Heartbleed was "only" 64k (that's actually a pretty huge amount for
sensitive data).

-- 
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

