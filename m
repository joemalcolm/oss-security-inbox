Received: (qmail 1413 invoked by uid 550); 1 Jan 2026 06:41:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 15394 invoked from network); 31 Dec 2025 22:50:05 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767221395; x=1767826195; darn=lists.openwall.com;
        h=mime-version:user-agent:message-id:date:references:in-reply-to
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=J5uMaq+WmSditgRmTKNWjt/zXZFvZAEHy9sOTx6VXig=;
        b=ngRZcZe8TviIFf4OC5KP8CnWty1ye0ZWKN97JU54i5nHLxHNCXD1ZwElYRT7m+ppzY
         naxXwyZzWmIIJBG9ul+Yb0wnVNcsIbGvymr9g0Y0t5gV1H0o436zPoMtTd9IUMyq+RaH
         OMExCnEr6XfufW3ldp6aLmlVexYeX0Tfy9QtcOuIFR5yhXILOooSO2II18ph0p9T5cm1
         JonrG0U3a1kXMLLou8nNZgZc252DcSTopfBPo6Iee7T35VaydwLHM5F0Rj44I/gqbhLl
         9Tzx44C2/7eeu71hNYpah/zqNjwC0sY3nZQ0E1q6s6jA0cTQqYzh52xsRjgZZ1aPorZx
         oP3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767221395; x=1767826195;
        h=mime-version:user-agent:message-id:date:references:in-reply-to
         :subject:cc:to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=J5uMaq+WmSditgRmTKNWjt/zXZFvZAEHy9sOTx6VXig=;
        b=J29zzJf2U8fyejFP6OpqzxH0o155IJbq+jlHwvSoP+XWJTKnSFK9FUVUr+tvYOZL8c
         c6QghYZuIEXmE7+HE6vmkedUMGXLE9gGljJ0UBJSIPSwLR3TDJ73RyMTagMF35qLwqKH
         v4H2h6trrTjAH82Cknb3YQALkR4bqkPZAMDSMabwLEjAS/CwrkcMSX7YT1ABrdeEe9jZ
         YLSXY5+kYbR+xSElgSEBJHJ7OEOnkCfRTVGmqFgbj3glnfKYBRal9L2GK3fIIMyHV84R
         QLN7+Klbq4cMIWAkWWwYKr15Rg5hmAGVPDZI5hjRce53dzxp9fayKUaw1T03v081EVMC
         fHjA==
X-Forwarded-Encrypted: i=1; AJvYcCW3lYn+xtckPSWlfkiXWmndS8ddWevq1enjVeaRrrNXTOT1k1dV+PrDYn9e9MQizOL3eNK1qlz/8p52C7s=@lists.openwall.com
X-Gm-Message-State: AOJu0YzG+QNaW/3QAjcwhc2qGMcp8N24PEjb57r/pp2U0dOPJMuQMh2j
	+Chm03Ek/oQbeny6vqMkzRxmMCsx99GoxLkk/UqNwnWlia5XAq4VfIjRReLxdg==
X-Gm-Gg: AY/fxX7bBP6rrEuEti6ichrPANeXBF2oM0kRcCjBOFWcMkAleOr2ozwyFLR4qzjt1rB
	taMm6m+ELchKbPyH77ukWGv2NZjre/WDaFjiQjpsSdFarAE5USe13hsr+hyJlZfe8wXZ9aTZ+oU
	gnfVHPap1/LT3OGGzvOr+q/AkxRiAxJEvsUGSeq2gWLGCrov69w4qW5OAreoVaW+KtA7bnEsCtW
	/9XKzTA1Hc+I3AjER8N8kkcbmSI9tIUAmTZ51c49zH6ySEsQHBPbaDmy7sNiVMPv7KtSm+PUfEg
	MimW5ws8hQzKiOwRf8DuLzTQKu90dIQQ0kz3y0Mkm7yKKa6U6qmg0+FMlZiJJKG8+MqYocR3zsV
	5GUd0DmvsN+VrG51CvDPkMpBiulgyAqSnrRnUk0OUwYnALAb5ZRmisKRwLZQnDF8+jMUu
X-Google-Smtp-Source: AGHT+IFgt2xrIfECuX7nUXGpMaKDDADt7P62czLrr7qc7kZ9ATuzlDpOj+qGzQWBAlsr1Ho3rnHt2w==
X-Received: by 2002:a05:7022:912:b0:11b:9386:a383 with SMTP id a92af1059eb24-12171afd92fmr33924863c88.22.1767221395046;
        Wed, 31 Dec 2025 14:49:55 -0800 (PST)
From: Collin Funk <collin.funk1@gmail.com>
To: Simon Josefsson <simon@josefsson.org>
Cc: kf503bla@duck.com,  oss-security@lists.openwall.com
In-Reply-To: <878qei6bq7.fsf@josefsson.org>
References: <4bb0e4f7-a4f3-45cc-b519-2044b4b2871c@gmail.com>
	<928709EE-07AA-4995-B9D3-E83AC18353CC.1@smtp-inbound1.duck.com>
	<6F979157-91AD-4C55-8CCD-5CC5AA18BB50.1@smtp-inbound1.duck.com>
	<878qei6bq7.fsf@josefsson.org>
Date: Wed, 31 Dec 2025 14:49:53 -0800
Message-ID: <87ms2y1d2m.fsf@gmail.com>
User-Agent: Gnus/5.13 (Gnus v5.13)
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [oss-security] Re: Best practices for signature verifcation

Hi Simon,

Simon Josefsson <simon@josefsson.org> writes:

> 6) Sigstore and Sigsum.  (I hope I provoke both camps here too :)) These
> are modern designs that realize that signatures without transparency is
> not effective against practical attacks.  Reasonable well specified,
> although lacking in multiple implementations and PQ options.  Sigstore
> suffer from complexity and its focus on container security.  Sigsum
> suffer from lack of non-Go implementations and MIME integration.

Doesn't Sigstore require a centralized Rekor instance? That was the
impression I based on a very brief look at it previously.

Collin
