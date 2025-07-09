Received: (qmail 12116 invoked by uid 550); 9 Jul 2025 06:48:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 12082 invoked from network); 9 Jul 2025 06:48:59 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1752043729; x=1752648529; darn=lists.openwall.com;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:to:from:date:sender:from
         :to:cc:subject:date:message-id:reply-to;
        bh=vE9roNcxEJtpPXVXAndZXYpRnjqhYsjaB9p4w/gyYqI=;
        b=WWVCVLGbxaOJC/rWblAFA1UB36U3OsiviDBHcSevfNmXcH3m/DijR2Q2zkv1JCFqHU
         q4wk5CIvqQDVCKJeF2d671wL11dISXvQPOSexb0vlLgHghGXcm6uyqK/vA5vmdvIUX4g
         IY8pZuiXd7N+5/y3JL6ZSS7imr/UqIpPUkpSens1qg1EOV+2+eOzWF4/FqD57Zgu0xFx
         AiHeU4akgVxZWdJTu8EU/iQprmU979VALKDC3CK8woAvZ1OTkkJhfuFZ9XDwRRtqAEKc
         g+EYY7+HVVfsjZlgc/Tqawcbt++00KoLK2F5Q79a87kVzYjkwvTYVoZhb8Rw/fAvEZv0
         CaYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752043729; x=1752648529;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:to:from:date:sender
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vE9roNcxEJtpPXVXAndZXYpRnjqhYsjaB9p4w/gyYqI=;
        b=nIfMYRivl3uIKYODP5pBE7j2modaMcfxGNAvAxKhiq6oObVdc5qdCm2V6z07et9qJG
         JIJGwrdxsrALCRTOCwYIuF0gLOW3us2tdaVRIbfxkQr0sVG2dsGqCHx2Wk3MpGpb5y+1
         l9m3y5C34q3fuJuWfCGqYppfl7Omhy5BB9IUMoOFTlmOTtsXRAHRMU4WSxMux903Kd/x
         lefpojQfIh5Gj2zaCx0TbKNNshxpkNxoLnTp2HHYUhy7cLK5cmjp5HHbzV+v1XYrLMUf
         bFMdAYyVymHn5WW9O6aeiIyjmEi2g741Ww8fvNv3Ug/80IWdKSAVRLBbXidRdUITDH9U
         qEpg==
X-Gm-Message-State: AOJu0YwoEFsHunhgx6AYTT7DepUkXrmo28xAXwfsfpBDAMjt+J17rirV
	tSc4sltbNym+OZkc1i0klGT/tkSYGzqUVC+tz4EVPUPtCUlSkNNWqNR37QzIj6Mt
X-Gm-Gg: ASbGncuO/qSQ39CFYot1Giu7LBFqhDpB5smRIDJTen8e6JIeYZBBHlkuIzz46CF+rSM
	YJVcgqeIaES0/zLBRD7zrYtu5YxEiKa2QtguRckq0TWWZlcMVxDSepnFljNamMmaUq65qisDTfc
	KoeId7xAYY99M8X8aWHAzkJYBN+mKvQa4q1kDpYZ6VeUehG58HLsHDFN8+DmjFvS5ofadjQRRna
	wsp08VgQmWfaLLde2kkb6sEvDnizwMPStf1ioQAYVhe9V1DgmSCt9D1HnNErRVN12fJRYLEoo5L
	rEAVaLbOhiLFOL6GF+1h29TlJbDzSDUk81r4rG1g1v2QXOqPRX/IVMMkQkwH/4C877GfA+MJpGT
	l+GV0/ozKc6GLSalsFOidaRV9XrV8fA==
X-Google-Smtp-Source: AGHT+IFt6LYiWKC4sdnmdviuFOcEZW0Zr3blMjIuBWFVJ/z1mI/65be/049woi2pxRbk7l+J6CfwQQ==
X-Received: by 2002:a05:600c:45d2:b0:43c:e7ae:4bcf with SMTP id 5b1f17b1804b1-454d5245a1cmr10789675e9.0.1752043728375;
        Tue, 08 Jul 2025 23:48:48 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Wed, 9 Jul 2025 08:48:46 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <aG4Qznvr7VelIZMA@eldamar.lan>
References: <1914b7d5-1e22-4c3d-94f8-ca2814a1853an@googlegroups.com>
 <14ea0e60-36d4-4267-8614-3d6b455b7fabn@googlegroups.com>
 <90a34ec4-4572-4e9e-9076-cd3e9d5540c4n@googlegroups.com>
 <ce22eb2a-b13c-4a58-9175-6900615b8187n@googlegroups.com>
 <20250709005400.GA17181@openwall.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250709005400.GA17181@openwall.com>
Subject: Re: [oss-security] Fwd: Node.js security updates for all active
 release lines, May 2025

Hi,

On Wed, Jul 09, 2025 at 02:54:00AM +0200, Solar Designer wrote:
> On Tue, Jul 08, 2025 at 08:16:19AM -0700, Rafael Gonzaga wrote:
> > ---------- Mensagem encaminhada ---------
> > De: Rafael Gonzaga <work@rafaelgss.dev>
> > Data: quarta-feira, 14 de maio de 2025 às 18:47:12 UTC-3
> > Assunto: Re: Node.js security updates for all active release lines, May 2025
> > Para: nodejs-sec <nodejs-sec@googlegroups.com>
> > 
> > The planned security releases are now available. You can read more about 
> > the details at 
> > https://nodejs.org/en/blog/vulnerability/may-2025-security-releases
> 
> I am puzzled.  Didn't we bring this to oss-security already back in May? -
> 
> https://www.openwall.com/lists/oss-security/2025/05/14/10

I guess the intention was to forward the heads-up for the july
updates?

https://nodejs.org/en/blog/vulnerability/july-2025-security-releases/

Regards,
Salvatore
