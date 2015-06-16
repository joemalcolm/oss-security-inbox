X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1088" "Tuesday" "16" "June" "2015" "21:04:52" "+1000" "Michael Samuel" "mik@miknet.net" "<CACYkhxirraZ9g4HForJBSSTfckHXuinkrz3zwagW_jq0JKLUwA@mail.gmail.com>" "37" "Re: [oss-security] PostgreSQL - Predictable cancel key" nil nil nil "6" "2015061611:04:52" "[oss-security] PostgreSQL - Predictable cancel key" (number mark "        mik@miknet.n Jun 16   37/1088  " thread-indent "\"Re: [oss-security] PostgreSQL - Predictable cancel key\"\n") "<557FF729.9000109@reactos.org>" ("<20150613093351.GF11230@mail.waldi.eu.org>" "<557E8DA5.6080707@reactos.org>" "<20150615182632.GA22032@mail.waldi.eu.org>" "<557FF729.9000109@reactos.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32087 invoked by uid 550); 16 Jun 2015 11:05:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32066 invoked from network); 16 Jun 2015 11:05:24 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=miknet.net; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :content-type;
        bh=lJe8JKQ66EoqW9Ie5DN25pStC7A3w8jiF29suFbM7Xs=;
        b=3JyPINuUaIqSdNfCVigFKLm8r3er8nPcqKSEHwurGh5F+9sQOFk5yspXLXOOErEgqd
         Ggpi6LkrU/kPIO/k9HgsGzTkVb3XobOtsaxsWpAEVqbBTU2/fD1gpVJMct8Q3N0gp/d5
         jwyuR6+RRqOpMov7D/h+m2Cm2/dfnmgE3k7mE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:content-type;
        bh=lJe8JKQ66EoqW9Ie5DN25pStC7A3w8jiF29suFbM7Xs=;
        b=fz764MTN76ogNeuXw+Bo/deyuq6tW5If7b17O21SiqbVQHYF70c4Nj4LZCYQY2+gxZ
         WoMf7+YoNi3DBUXP6aHpIgIkDflnDdLQH15H6V6KATNP8zCjiF2cMEb9gxpJ4FA5buV1
         CKNgzXJA8CIZatNSTFpguUNGtoKoMqj7luhh31nTsQUkECe3ttTT2RaBydh4+AJgcA3F
         XYXGvk+hM8AwsQ6bN1s9QLVF6YQtpVDeKViTxoAPyLlMYF0t27XTJg0n+Dh0glUi+o7T
         tgf2KpA3tY1tXl8+UiABxtnXZL/jOTil5pp/gi5GQcnZS32tqK3/XMLMAa5VLhmpOwyB
         LKaQ==
X-Gm-Message-State: ALoCoQmBWIC086I2irUE3wppBZH+S8Hf+v/i8cpOs+HNQqVw/QhLce6vZyjBr8D71z/nyLnouyE0
X-Received: by 10.50.138.136 with SMTP id qq8mr27088221igb.27.1434452713214;
 Tue, 16 Jun 2015 04:05:13 -0700 (PDT)
MIME-Version: 1.0
X-Originating-IP: [202.147.141.11]
In-Reply-To: <557FF729.9000109@reactos.org>
References: <20150613093351.GF11230@mail.waldi.eu.org> <557E8DA5.6080707@reactos.org>
 <20150615182632.GA22032@mail.waldi.eu.org> <557FF729.9000109@reactos.org>
Message-ID: <CACYkhxirraZ9g4HForJBSSTfckHXuinkrz3zwagW_jq0JKLUwA@mail.gmail.com>
Content-Type: multipart/alternative; boundary=089e0111be1c6b2b770518a08cc9
Date: Tue, 16 Jun 2015 21:04:52 +1000
From: Michael Samuel <mik@miknet.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] PostgreSQL - Predictable cancel key
To: oss-security@lists.openwall.com

--089e0111be1c6b2b770518a08cc9
Content-Type: text/plain; charset=UTF-8

Hi,

On 16 June 2015 at 20:15, Pierre Schweitzer <pierre@reactos.org> wrote:

> Well, I've thought about it, but that's still one million seeds and
> the cancel key you're looking for might have been generated after
> several random() call. So, that means perhaps 10 millions values to
> explore? (If we make the hypothesis that for a given initialization,
> it will only draw 10 PRN)
>

This is CPU, maybe GPU territory. 2^15-2 * 10m =~ 2^38 work offline.


> How relevant would still be your cancel key once you found it?


In the postmaster mainloop:

ConnCreate()
    RandomSalt() -- the md5Salt craziness in the original post
BackendStartup()
    MyCancelKey = PostmasterRandom();

No other calls to random(), srandom() that I can see, and the other calls
to PostmasterRandom() are generating cancel keys for worker procs.

So if you brute the md5Salt you have a pretty good chance of guessing
something that was/is/will be a cancel key of another session.

Regards,
  Michael

--089e0111be1c6b2b770518a08cc9--
