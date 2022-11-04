Received: (qmail 1433 invoked by uid 550); 4 Nov 2022 22:40:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28452 invoked from network); 4 Nov 2022 21:04:20 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:subject:references:in-reply-to:message-id:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KEJpRy7PrrTPkxTMVAAqWI1YvOd74OO5Xkls5kPL+uk=;
        b=icg2MW25lsUQbcNmcl1QyvQAJazQQ74T1D2JB0VyVilr6u3QMcvwBQQ9NwrFv6Khtc
         ARz/powrF8LtBEckjZg2/8Pa6rh6zBQq+SAlkM6JT2nMTbZJNE2YtHJoSM7p4dna2/Wi
         PRCMbfvE7m7IPufe/8n+jY7158+HbNMHXCaHvKkNnPdgn7yIGdhElZ/noFY9Amc6Vr6x
         TYk0FiL0HPttF7tWAYbFnjB/OeXPaLlIpVDrZ+CduscAV2fa4HBdWh/mr6wy3aS9tL64
         z8Guw48OLJJJWhV4+BTLelGcquGdB05KWureVu7IwhD74SpqpugmtpBKOGUPDU1lIhvj
         BndA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:subject:references:in-reply-to:message-id:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KEJpRy7PrrTPkxTMVAAqWI1YvOd74OO5Xkls5kPL+uk=;
        b=g+PL4gQPwNLeP3dbARN8jesT13pd/LX7K0FuPJfyL27eKChbGzzZnAI8I6R9NXpCKY
         U1ON5xAmJ9Bz1ZvCZ/tSn9Q1/t00SMIboT47eh2XAvpOLaFM5uPWk0Dxk/LyGfmKx/eC
         AUgUbCX/ICcEFLljuCuND9C4noKca6sp6oawgkbwVosqAXPhf5qCrOiH75iKdA5x7gqC
         H0auYniIdBNwusErMnwROXvgDYH3S+9tPY8sL5CiRvBOzwNw0VyZdOXwnPhPzFXPgzd1
         YLIpSoKlaxS+JDUMwKNIxliUNzspAoNmy5ZbWFTrKH0ZbUC+F3hKBVsZXiSdt1RlH1kn
         xGjQ==
X-Gm-Message-State: ACrzQf335KB9G5AEuohCqDv58pHETB++E8wVEi0ojf6JVrmCOPaDt21L
	jeZPR8J5j0T0ECGhfhhHb0C8Er0xFg==
X-Google-Smtp-Source: AMsMyM43WhcYMLpiFASqAF3aNWy/t37ckxsZOVXIF8dFlTNRu2uraiQEC0DNfYI7iGDjAY4ajAiU8JRzcQ==
X-Received: by 2002:a05:6214:262f:b0:4b6:89bc:3ba4 with SMTP id gv15-20020a056214262f00b004b689bc3ba4mr33657130qvb.44.1667595848059;
        Fri, 04 Nov 2022 14:04:08 -0700 (PDT)
Date: Fri, 4 Nov 2022 14:04:07 -0700 (PDT)
From: "soyjuanarbol@gmail.com" <soyjuanarbol@gmail.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Message-Id: <292ca9a8-6552-460a-a780-c358fd842a89n@googlegroups.com>
In-Reply-To: <e28120cf-2f7c-4dc5-8a49-24e7640cf248n@googlegroups.com>
References: <0f038d9f-d6a6-41d4-9e80-c2d18ec179edn@googlegroups.com>
 <e28120cf-2f7c-4dc5-8a49-24e7640cf248n@googlegroups.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_696_1730922284.1667595847875"
Subject: [oss-security] Fwd: Node.js security updates for all active release lines,
 November 2022

------=_Part_696_1730922284.1667595847875
Content-Type: multipart/alternative; 
	boundary="----=_Part_697_354936670.1667595847875"

------=_Part_697_354936670.1667595847875
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



---------- Forwarded message ---------
From: soyjuanarbol@gmail.com <soyjuanarbol@gmail.com>
Date: Friday, November 4, 2022 at 4:03:42 PM UTC-5
Subject: Node.js security updates for all active release lines, November 
2022
To: nodejs-sec <nodejs-sec@googlegroups.com>


The Node.js project has now released new versions of all supported release 
lines.
For more information see: 
https://nodejs.org/en/blog/vulnerability/november-2022-security-releases/

On Tuesday, November 1, 2022 at 5:37:56 PM UTC-5 soyjua...@gmail.com wrote:

> The Node.js project will release new versions of all supported release 
> lines on or shortly after Thursday, 3rd of November, 2022
> For more information see: 
> https://nodejs.org/en/blog/vulnerability/november-2022-security-releases/
>

------=_Part_697_354936670.1667595847875
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<br><br><div class=3D"gmail_quote"><div dir=3D"auto" class=3D"gmail_attr">-=
--------- Forwarded message ---------<br>From: <span dir=3D"auto">soyjuanar=
bol@gmail.com &lt;soyjuanarbol@gmail.com&gt;</span><br>Date: Friday, Novemb=
er 4, 2022 at 4:03:42 PM UTC-5<br>Subject: Node.js security updates for all=
 active release lines, November 2022<br>To: <span dir=3D"auto">nodejs-sec &=
lt;nodejs-sec@googlegroups.com&gt;</span><br></div><br><br>The Node.js proj=
ect has now released new versions of all supported release lines.<html-blob=
><div>For more information see: <a href=3D"https://nodejs.org/en/blog/vulne=
rability/november-2022-security-releases/" target=3D"_blank" rel=3D"nofollo=
w" data-saferedirecturl=3D"https://www.google.com/url?hl=3Den&amp;q=3Dhttps=
://nodejs.org/en/blog/vulnerability/november-2022-security-releases/&amp;so=
urce=3Dgmail&amp;ust=3D1667682224022000&amp;usg=3DAOvVaw22Cx8DmRSwVosAkRNXp=
zhQ">https://nodejs.org/en/blog/vulnerability/november-2022-security-releas=
es/</a><br><br></div></html-blob><html-blob><div class=3D"gmail_quote"><div=
 dir=3D"auto" class=3D"gmail_attr">On Tuesday, November 1, 2022 at 5:37:56 =
PM UTC-5 <a href=3D"" data-email-masked=3D"" rel=3D"nofollow">soyjua...@gma=
il.com</a> wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0 0 0 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">The =
Node.js project will release new versions of all supported release lines on=
 or shortly after Thursday, 3rd of November, 2022<br>For more information s=
ee: <a href=3D"https://nodejs.org/en/blog/vulnerability/november-2022-secur=
ity-releases/" rel=3D"nofollow" target=3D"_blank" data-saferedirecturl=3D"h=
ttps://www.google.com/url?hl=3Den&amp;q=3Dhttps://nodejs.org/en/blog/vulner=
ability/november-2022-security-releases/&amp;source=3Dgmail&amp;ust=3D16676=
82224023000&amp;usg=3DAOvVaw1qnctyGt2CJj5j2nrAxA_A">https://nodejs.org/en/b=
log/vulnerability/november-2022-security-releases/</a><br></blockquote></di=
v></html-blob></div>=

------=_Part_697_354936670.1667595847875--

------=_Part_696_1730922284.1667595847875--
