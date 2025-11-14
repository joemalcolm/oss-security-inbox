Received: (qmail 15798 invoked by uid 550); 14 Nov 2025 01:39:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 7642 invoked from network); 14 Nov 2025 01:34:19 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763084050; x=1763688850; darn=lists.openwall.com;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:reply-to:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=PP+jyrIcW4ZmQdBq2huhrcindYENYfyEt7dVNVEwc6o=;
        b=cnGjWsxCLTvGnvuS+MmMGe9nJNcgnJEHN5kVNwScwXG9MPOWr2Pqvi7eBACYDUHV8H
         OSQt2zx+dzugqd6gxllF5ixvLR9YBGHqKdFjeIRbYdcXvW3HjXbqkrq7QmQOOWlNjgrY
         lV6hWXsrCrIdQs7IvMT2PHvS04ubbxDb/TiDf5As0KDU4/Q1acmZKOGX4EIlds3+c0it
         pG7ifXHhZ8rxEQRu3oMVpcL3MXP+bnycYQMLGsiEHu1OPmWHkCjO3WHYkv7DoYsjJe+Y
         D2cBTAMMK1UDUdMkdq2kj9saJp/PEbQF5rBM74P4WLUUYiG1OT4X8XrHMGDpx4Fn8UaB
         WVLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763084050; x=1763688850;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:reply-to:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PP+jyrIcW4ZmQdBq2huhrcindYENYfyEt7dVNVEwc6o=;
        b=GTqiHcPtNO3YcLROHhTc3M/tuanrfLW1aTeBR/+CgFHHQlUFHbkEcqz39M0MqLzzEf
         s394dRkqBXvlNztL6FLzUAiqOjK9tH7bGPHsPQqSOq13d33/YrGAR5TANp2EME4JSQ9O
         Th8FLLomJeEmu6A4xeZ2NB7Osnlzhvu7qiSkUFPCSa3YX3niWjwFH5g3D9QORo3z2BGa
         MbRiXqa94D1ef3EdjgO4D4lofPeRsL0KB+n55p6O+35Arepp09uGwuc4ITrYR7+Sb6sT
         /ziHY+vIgF4s6wsJjmB+mxNERh8+efPKDofAHNru/w5p+xUvIF3i1ja38LQL34QbHYSy
         N1hA==
X-Gm-Message-State: AOJu0YxNFLgZXFzP9Z2Y7HSTqlpmFcOgjJSPMKpj23s8NirTfQaEeNjK
	D17+fML/vX0yI6wMMIAIROZTPcJ6NfUxTpqlHByZb5beoRf6Q3y6eW3irmX8E3sr
X-Gm-Gg: ASbGnct2k7O+0aT0efH4VfdcoG2dQp1HLjh/8oGMD97T9phI+wpXiptNDnN1kNGHtDg
	qqiSwpJMMkVWoWaI7p7wD90A15cqL74RHdUkmtIP8NMNzspes7HJ/P3bCryIXkNUwxTVMxhPnyQ
	D+484Y8VVAOEn9e3YSgBeezLmrr/8bnh4MwGSoCjYp/C9IKFuaDuVQo4ktjilqaaUlDI3eravUN
	KeYhlyNQ7G7acW3+gACfAvmx1l56Dki2fzSj/k0FZk225uLvzbzxPDmgOxxKKZzCI44ArvWJu+G
	VPmga9RL1Iv5LhgqUBAyf3yIfDXC3wDcFUOoMQsiVyjs65XUZMsxUsGO/WYGtncGHe6GYPAvktY
	RcEb+ttIanB16jrT0UPgz9TJ/D/qAzG31ctdd0drz2ndG47W/Qkf3CybTxswUY08ZaTaef3g6
X-Google-Smtp-Source: AGHT+IFNFik4kLVRFtKuKYQEdCWEx2WxAPojD2ey5vxT1o1DgVFoyqCc3SyIf1hYkBE11bsAb0Tf3g==
X-Received: by 2002:a05:6870:80cf:b0:3d2:6747:552d with SMTP id 586e51a60fabf-3e86918a420mr837942fac.50.1763084050326;
        Thu, 13 Nov 2025 17:34:10 -0800 (PST)
Message-ID: <a2ac8e7e-e45c-40bc-b517-dffcd4def530@gmail.com>
Date: Thu, 13 Nov 2025 19:34:04 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com, Peter Gutmann
 <pgut001@cs.auckland.ac.nz>, Russ Allbery <eagle@eyrie.org>
References: <aP_msOoiyHJ_M4Yx@mertle>
 <20251027163220.8c7ede47-6b3a-4190-ad4b-e52761b341de@korelogic.com>
 <20251028014909.GA6430@openwall.com>
 <76f8e74c-d9cc-4f20-8061-488598f85fe7@protonmail.com>
 <20251101030054.GA3031@openwall.com> <875xbtlf4z.fsf@hope.eyrie.org>
 <ME0P300MB071302891271CE8EBFA6BBAAEEC7A@ME0P300MB0713.AUSP300.PROD.OUTLOOK.COM>
 <87fravyp43.fsf@hope.eyrie.org>
 <ME0P300MB0713899B74FA8CA28A6C6868EECDA@ME0P300MB0713.AUSP300.PROD.OUTLOOK.COM>
Content-Language: en-US
From: Jacob Bachmeyer <jcb62281@gmail.com>
In-Reply-To: <ME0P300MB0713899B74FA8CA28A6C6868EECDA@ME0P300MB0713.AUSP300.PROD.OUTLOOK.COM>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] Questionable CVE's reported against dnsmasq

On 11/12/25 20:19, Peter Gutmann wrote:
> [...]
>
> [0] For example modify the code/operating environment to introduce a security
>      vulnerability, I'll let you decide whether this qualifies as impractical,
>      unrealistic, stupid, or several of the above.

Ah yes, the universal arbitrary code execution exploit:  simply replace 
the program text with malicious code.  :-)

Can we call it CVE-Zero?  :-P


-- Jacob

