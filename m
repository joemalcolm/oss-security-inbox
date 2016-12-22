X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["638" "Thursday" "22" "December" "2016" "06:42:43" "-0500" "Jeffrey Walton" "noloader@gmail.com" "<CAH8yC8njcSmRZacKR1Gu1cmTxT9xAegB3D_20qusvJD-szTaXg@mail.gmail.com>" "16" "Re: [oss-security] CVE-2016-9963 Exim private information leak" nil nil nil "12" "2016122211:42:43" "[oss-security] CVE-2016-9963 Exim private information leak" (number mark "U       noloader@gma Dec 22   16/638   " thread-indent "\"Re: [oss-security] CVE-2016-9963 Exim private information leak\"\n") "<20161222112845.GF5082@jumper.schlittermann.de>" ("<20161215233645.GJ29010@jumper.schlittermann.de>" "<8c7f77c36aa246b9ad31e46f6e733414@imshyb02.MITRE.ORG>" "<20161218175925.GE31981@jumper.schlittermann.de>" "<20161220225935.GH19629@jumper.schlittermann.de>" "<20161221205952.GA81339@wopr>" "<20161221232409.GN19629@jumper.schlittermann.de>" "<20161222005733.GB81339@wopr>" "<20161222104035.GE5082@jumper.schlittermann.de>" "<CAH8yC8ne0XPZ5x_Nuazcpjcyc4xKg_fwDydBmMXYDjeADsPYvA@mail.gmail.com>" "<20161222112845.GF5082@jumper.schlittermann.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28391 invoked by uid 550); 22 Dec 2016 15:59:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13568 invoked from network); 22 Dec 2016 11:42:57 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:reply-to:in-reply-to:references:from:date:message-id
         :subject:to:content-transfer-encoding;
        bh=Er4sjQNK97/IHGAOSkQa2NY4GAdp6+3kdDFfFyV84s8=;
        b=tZfCM0rP1zG0+qzIpgpKC3gXt0gi6RfN/VTzyShcI2S/w7sz3OjqatndCGsngd0B79
         3pijNlvZfbMzainCE7aUfUxru2MyW+PqPWIVVUQls5/gSPFbKa1xjMcFsN0z8pU0spea
         RecjMce7UV0TvB9SFrqFwUYnfB9NXMkCYuUrhnJKLR2iHebozVrWjym7tEfXJ5GYbN9b
         ojrZYqcZoIDdx+S71JfghqFrRExcD5A3sETLJtJLlgaROLD2HSXYBTiIRGSZUF2gLY8v
         antqRX7rywYDBQlzr4owQ6B404nBSMYWMkom+pRro8qS0lh10o0NKAPvtNvnts8llNV7
         rrFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:reply-to:in-reply-to:references
         :from:date:message-id:subject:to:content-transfer-encoding;
        bh=Er4sjQNK97/IHGAOSkQa2NY4GAdp6+3kdDFfFyV84s8=;
        b=MlVYnWH8zGDFmqMkiJhnvkxeGBzbZvKuzolL8pF0VWC3BR064z+xICxaCFJ0nPO8Sp
         S8ff8qkz2IvKYkenBqWww4J7usnn0KoRk7wRXEn1K4QW5pzjTp0rjS8qJm869gXXpK7d
         oOYiJiU7K5SO6vthx0u7LZHalhJRRUw3W0qqPswoj/1gieqJbIsWh5jO+VVlADyxRZ+X
         Qd2DzjK0biJiY713AdgRf9VUCAfXFXYyvZxCnUXKjhd+pu6dlU13zwLPf9JuNTeyVbC9
         Y7IP4KX0L8NAONwU3ZZB5XaAF4CwtsPgJPmNGJipX3jBYu6EYy5uJ2uRT2vRT1EHoyIA
         12SA==
X-Gm-Message-State: AIkVDXLGM1u2rH/PLy8rFo51Oc8leoh5iV1p+lvPYP7eJqxLerhHjsTkTiLoOTYwcmHZikTiQe1KyyF6RnwtFg==
X-Received: by 10.107.26.80 with SMTP id a77mr8744240ioa.109.1482406964362;
 Thu, 22 Dec 2016 03:42:44 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20161222112845.GF5082@jumper.schlittermann.de>
References: <20161215233645.GJ29010@jumper.schlittermann.de>
 <8c7f77c36aa246b9ad31e46f6e733414@imshyb02.MITRE.ORG> <20161218175925.GE31981@jumper.schlittermann.de>
 <20161220225935.GH19629@jumper.schlittermann.de> <20161221205952.GA81339@wopr>
 <20161221232409.GN19629@jumper.schlittermann.de> <20161222005733.GB81339@wopr>
 <20161222104035.GE5082@jumper.schlittermann.de> <CAH8yC8ne0XPZ5x_Nuazcpjcyc4xKg_fwDydBmMXYDjeADsPYvA@mail.gmail.com>
 <20161222112845.GF5082@jumper.schlittermann.de>
From: Jeffrey Walton <noloader@gmail.com>
Date: Thu, 22 Dec 2016 06:42:43 -0500
Message-ID: <CAH8yC8njcSmRZacKR1Gu1cmTxT9xAegB3D_20qusvJD-szTaXg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] CVE-2016-9963 Exim private information leak

On Thu, Dec 22, 2016 at 6:28 AM, Heiko Schlittermann
<hs@schlittermann.de> wrote:
> Jeffrey Walton <noloader@gmail.com> (Do 22 Dez 2016 12:06:41 CET):
> =E2=80=A6
>> The bad guys already knew about the problem, or the motivated ones
>> found it after the partial disclosure.
>
> Partial disclousure? I think, there was no disclosure at all, beside
> requesting a CVE and talking about a possible leak of private
> information. Is this enough to call it "partial disclousure"?

All they need is a toehold. When the rumors started circulating about
CRIME, a number of folks figured out the attack before Duong and Rizzo
presented it.

Jeff
