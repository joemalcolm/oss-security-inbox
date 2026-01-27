Received: (qmail 13896 invoked by uid 550); 27 Jan 2026 20:10:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13835 invoked from network); 27 Jan 2026 20:10:07 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769544599; x=1770149399; darn=lists.openwall.com;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:to:from:date:sender:from
         :to:cc:subject:date:message-id:reply-to;
        bh=hHzj+OkTGLfDUYqFdra+02u4DSE3MXJu7R5+tmCYvHw=;
        b=h5JWtKnDkgRR5Vjzjptb4LmzWCd9shADaRIM87dfuyB0O0SlAo+RVXjEfNOkCXaYbo
         nNeQAEM8HadxORGsvhWbWXSs2lPZBtrk7btRaPXsTpK4Ili8VlDz0LyTC9Wtka5xpeMS
         3YJXaaBla202klY9OFH1PikN6HJU9PbNHJjL1KazUvpVCT71t2TWOjblzvRnzOycE4Y+
         3/REYAIxMubZ/Qb/oXIt6ZgQ411pip8VhdzMWbiEWfkQVMW++kvaj7aD8IfGF9QHDy5G
         XSRgtREOMlzjljn24wxifXfnVEE2Z8hvL9jrx5Ytbe0UATMpqvqtJrhMBZ7QYvaFtRVP
         Cgeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769544599; x=1770149399;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:to:from:date:sender
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hHzj+OkTGLfDUYqFdra+02u4DSE3MXJu7R5+tmCYvHw=;
        b=VkeXwE+YZmyqK2J14AUbsjbnEjZI24ne+/VkXRWs629VefpKyJ1xG67uZE8yGo35e3
         6nOk1AxmtnNsBH9vtbo9cw8b2Vn3ahwBQhxOSAbbVo5KOILQXgZOAT1axD4bhx/SRKZX
         M+mdYMyZ/fusz2OicIdMtSxCAWmqPIB0TOQ9xUjjNd0XCLC8yX+EJikICFNXRO3PIEri
         HrcFv/HSX38s+8PkkwbErT+IleUeMI9g8EkAw3Sgzslt2oQ6NZ0oM95LTCbZgWI1XYmu
         EKHlgZdJ21BJ33dGJQNIQ1lc/doMAPIar2jLQcOuv4+Do5LNLxEzh2U39hBjTmyOZOEk
         85Uw==
X-Gm-Message-State: AOJu0YxnfFgs0TzsK2frMwS4iW81Gw+wWyutvYB/lTaTxMluOPSSNa5L
	1DydDAxDBayBFiytiNS/XyXtwdCPixnbEpgaCUUJA2Y9f/PSFe+DNOsoQwVruXKX
X-Gm-Gg: AZuq6aJYSjwWx4L5pVgxG+z2rDMqsg4VCB3fG86i1tNZEYV0deipy2kB/nh4pfmvJWw
	M8B+MlZpncrf43YYcJXS6pCIAX3PHsWixyul6jgGyHOo/GfmxkjFemA2dEIT2OKr8Y8dPISBXDF
	3180fWDeimy2lLnsztQGvxdn0gI9zu+z2zLsNheiD4A48NZZy90IIzV9ddWvxdvIBQ1BilF+eHI
	rzJhEDSoKJjh40lGW8ODDaMsyHTcFYajrVwekzzAJk48FTA7h+zYN+zYlYMqP4m4uuKMLEDXml3
	9uWbrxEjK19YWjLzgK8D6rCUqvXjdLaSDjmPH+yrU6lwltfXvpVHMCjJ1vdzc3EtepDAhr4amrl
	dudOY1n4fyYKdKKBRfZ+RbttXWHLEq88/LGxNjHnJjUkxb5a7HwaV37D1YX5V43QGJaNdiS5CbJ
	Hv5Bg98QEV5oyr8xvkHY9isazfbapxuhCTzGPUtJRhjkXI
X-Received: by 2002:a05:6000:4305:b0:430:f742:fbc3 with SMTP id ffacd0b85a97d-435dd1ccbccmr3987409f8f.48.1769544598479;
        Tue, 27 Jan 2026 12:09:58 -0800 (PST)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Tue, 27 Jan 2026 21:09:56 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <aXkblElCH4uYloI_@eldamar.lan>
References: <87343rqa3o.fsf@gentoo.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87343rqa3o.fsf@gentoo.org>
Subject: Re: [oss-security] GnuPG security release

Hi,

CVEs seems to have been assigned as follows:

On Tue, Jan 27, 2026 at 04:44:11PM +0000, Sam James wrote:
> GnuPG 2.5.17 has been released to fix a possible RCE:
> * https://dev.gnupg.org/T8044 ("gpg-agent stack buffer overflow in pkdecrypt using KEM")
> 
> [Description for this one at the end, for the full quoted advisory.]

This is https://www.cve.org/CVERecord?id=CVE-2026-24881

> There's two other security-relevant bugs too:
> * https://dev.gnupg.org/T8045 ("Stack-based buffer overflow in TPM2 `PKDECRYPT`")
> 
> > A stack-based buffer overflow exists in GnuPG’s tpm2daemon when handling
> > the PKDECRYPT command for TPM-backed RSA and ECC keys. A local attacker
> > who can access the daemon’s Assuan socket can send an oversized ciphertext
> > and trigger memory corruption, resulting in a crash and potentially
> > arbitrary code execution. When a user stores private keys inside a TPM,
> > GnuPG runs a helper process called tpm2daemon to perform cryptographic
> > operations on their behalf. Other GnuPG components communicate with this
> > daemon over Assuan, a local IPC protocol. During a PKDECRYPT request,
> > tpm2daemon copies the attacker-supplied ciphertext into fixed-size TPM
> > work buffers without validating that the ciphertext fits. If the supplied
> > ciphertext is larger than the TPM buffer, the copy operation writes past
> > the end of the stack buffer and corrupts adjacent stack memory. This
> > affects both supported TPM decrypt paths: RSA (tpm2_rsa_decrypt) and ECC
> > (tpm2_ecc_decrypt). Because the overflow occurs on the stack and is
> > attacker-controlled, it is potentially exploitable for code execution
> > inside the tpm2daemon process.

This is https://www.cve.org/CVERecord?id=CVE-2026-24882
> 
> * https://dev.gnupg.org/T8049 ("Null pointer dereference with overlong
> signature packet")
> 
> > Overlong signature packet length causes parse_signature to return
> > success with sig->data[] left NULL, leading to a crash in later
> > consumers.

This is https://www.cve.org/CVERecord?id=CVE-2026-24883

Regards,
Salvatore
