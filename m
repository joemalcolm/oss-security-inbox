Received: (qmail 9813 invoked by uid 550); 19 Aug 2025 15:50:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5908 invoked from network); 19 Aug 2025 07:35:56 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=martin-st.20230601.gappssmtp.com; s=20230601; t=1755588946; x=1756193746; darn=lists.openwall.com;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=V+AZwdYxWFJsABNdT9bMQlplck4VQGNsNFWywm5yI44=;
        b=NBUh9N2DfEteeGyqpWzY1InXBnglNqRDHGGKNwti8uO2m1CRDnVlN6l5wghwmLRNgu
         Jo7zhJVlGQjyhQEbAKXI8SIDSQmrdlM1hE8U5nvcUA1NUO3f2TwVJapXZQDW+PcUo9x6
         X5smt8lg35wsnIeYvovPbigD4C13B1jgbyM408JtlXHwZSXuGjI1g4gVvOtax/Pg2Nwr
         Ud0850L6do/2pjwk1AisZD6kYsBeVR9qc/tfi21uRU/4FwLNTLPhh3z0TpSFAd5GcJsD
         vIoaXagcQy71hm6AU5izmpk09yqUSnesdZtgr+DqtMJBvvb/aDtoSEvu/yjznTpjz33d
         4vxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755588946; x=1756193746;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=V+AZwdYxWFJsABNdT9bMQlplck4VQGNsNFWywm5yI44=;
        b=mafdjk+Hqn30x1qn5/bkIj7JaAEe+bU51zDIL1xrbn35icI5SDOYUK9xTVpYoWHNpp
         xF6+VqfhHYBcw5hrydTxAFiryjW42nHRrh51bR2h3U3bfX4KWrcTfO0LnGU8JKpKkgol
         Bihibw75Am+kvYBggGCmTvxE6OXD9MNOUjjYYD4c3xOgtxz52z4E0UAidfRdcB/aOFf3
         ILx/CnyRpua/Yse1mzWkqFv+iATmsBlgOBE9x3k9QGEuR2gsd0y48uP0AepvXqijml4c
         0t7y9wG5DUm0HiFH7q60uLma4LmKMP5K9iC+P3p9m0YOInBS9qf0tvRcQ2/Kt58TQQoM
         AM5g==
X-Gm-Message-State: AOJu0Yw5Ez0Sl8xyYKQNRMUCwx4Qb757eyy2rPFpq4r/T/Oe9jXOdJm8
	CBLYlx82ngFK58aUFXuoJ9pgt7bjGUCRmuJp9NVlpuIMyiLaI/Zfv6s/BEhUdWU8iA==
X-Gm-Gg: ASbGncu+GgVlPL0kyab7NTbyYGLmHTUYZF92tycxnLD7gFm6AIEb0P7YVxBLw58x0Sw
	sFueKygQim6YVE/IjPz1FYmVBClnxq6EdP9ZzLAkjCHzJe6eQ0pgJb7oDFWN7uKjnVDcKAAgG1D
	JntuMHDmi7RJPH/PCcA4q/18/qxsfI1wFJTqYJiu7BsxivTxl643qJiUNcA3N9yJ/aOQsqNyUMP
	qDS91MyF9t1Ke2GxjF3DtQ/kCKUNDxR/ZaXBlRhTzwLIK1xxMhTFHpibxtef7yu8GfLgIuDRr/X
	jKuxxd3FJ9YDO1XdjP7xL1n67RYLiwmvT56k5K+izW/rVu9nWzOlr6nPiFsUNHjhkdiS9m6uueG
	MBoDBJ4XvCWhK4bmd8xd9UJxfsJzLvYPcCvPu1oFZBTfvZLWyaEenY/MHgKGc34LLz8M9s+A48N
	hs6y65ZoUXrH1xzlGN
X-Google-Smtp-Source: AGHT+IH+3kzKDatesS2eAbdM0H6PLOntYAdY/JfkbAvw2pvijTMi0poVHaEvtYnOj24eBYBupXzZ4w==
X-Received: by 2002:a17:907:1c92:b0:afb:513a:f62f with SMTP id a640c23a62f3a-afdded205c8mr136335266b.20.1755588945873;
        Tue, 19 Aug 2025 00:35:45 -0700 (PDT)
Date: Tue, 19 Aug 2025 10:35:44 +0300 (EEST)
From: =?ISO-8859-15?Q?Martin_Storsj=F6?= <martin@martin.st>
To: Demi Marie Obenour <demiobenour@gmail.com>
cc: oss-security@lists.openwall.com, Sam James <sam@gentoo.org>, 
    Jordan Glover <Golden_Miller83@protonmail.ch>
In-Reply-To: <23122e80-8121-4f0f-b2eb-31ad3cdcc031@gmail.com>
Message-ID: <b0b2a837-9ed5-48ce-54f0-51f02a58908a@martin.st>
References: <96CyiraLAnPDJzOP_843DWxB6OLVKixbKk_TPt0Ik3wR_q7LD7MlEhzrTbuyEKz20H1NzPHuUp_SbNWe_WMoPf0xslBJ6Atp4gyO5bXOPJU=@protonmail.ch> <87qzxeljdu.fsf@gentoo.org> <84dc77b-13c5-5aa-e066-31db6de18e2@martin.st>
 <23122e80-8121-4f0f-b2eb-31ad3cdcc031@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII; format=flowed
Subject: Re: [oss-security] Question about (in)security of fdk-aac-free in
 linux distros

On Fri, 15 Aug 2025, Demi Marie Obenour wrote:

> What is your recommendation to distro maintainers?  My understanding is
> that the full codec is included in the flathub runtimes but am not sure.

Not sure about what to recommend. From what has been shared, fdk-aac-free 
does indeed seem insecure and/or hard to maintain.

If someone has time to invest in it, it could be fixable by trying to 
recreate the transformation from fdk-aac to fdk-aac-free in the form of a 
small patchset that can be rebased, or a script, ripping out the unwanted 
parts. Unfortunately, going forward with newer versions of fdk-aac, there 
can be more new algorithms that also may need to be patched out (there was 
a pretty big dump of new stuff a number of years ago), so it probably 
needs to be re-audited wrt patents after major updates.

// Martin

