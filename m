Received: (qmail 29857 invoked by uid 550); 17 Jan 2026 02:29:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 9490 invoked from network); 17 Jan 2026 01:44:44 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768614275; x=1769219075; darn=lists.openwall.com;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:reply-to:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=s/PZhkKCrAdnComzt2GGj1wbzLuFkUMW1hA3Z/dfqA8=;
        b=FigKT+mn7fXnUktOTc1eaN6UVRJvlDOWY6Rxhq69hz43Kj4wDb6wBlN/grm7PhOIIM
         f9lr8UPlDQlsGheyOtAK81geIokmsNgW6eEhaMStxJzgou12zC2OhEaYK3XGHqyWqRd/
         NiuUtrjY1p4lRQkumvob1jEo8hz7ThCPVsJVztAaPoLYxIxuybAddMs/4cR8eYzsPLTM
         jG7HNXG+bqUzUxGGrl5Q1mB4qXJxbHHcLGP3Ieq5C0XLUMrCSf4uXRuvXuXe8h13NTqG
         lz7ZeLY7ldBS3Bja+mAWpqdTscLHSpAoOwvy+tdoiaJWGgle7Bz79dhNzo4/rogOQ2YY
         7R1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768614275; x=1769219075;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:reply-to:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=s/PZhkKCrAdnComzt2GGj1wbzLuFkUMW1hA3Z/dfqA8=;
        b=fdqvejbMzse80mPNpnSd0AqLTdXuozPPnf2nUwmReSUOLiAnr29z+hSUacX+z4Nubo
         1H6Mbk4jeZJxRc+FxDrvhqB9NvQwvBgZdURPX72pOWKYQpvhuGJS1AAi54c1dARnsDVM
         6UijVJ/fifJ84zzYvaXSv3ZDbkcMVPadcxPfXQSDl/fB05TtuKe8vUzjRqchmTxPslEo
         ov6N8jgodKU/913G9Kly7HX319RN2bppzksYIAvqxgwkdJSXupKphnjVT59yYFe47Bq0
         FBuVYCFi3FL0Yb9LYz1ifFBhKclkKYL4hz8HNBcxGiGjoxjS8zqfQgDZvFe+xJJWxFSu
         nJnQ==
X-Gm-Message-State: AOJu0Yzu1s/wmClvYGDlimmZobpHCU8prunWHyTpIf5kp1bakeIwSpwU
	keIZzqju+4Ym7nCyKX2D6lJYakEsGOnlMM2A6KSYMp9vEb5ogEKYcxWe0YkfBA==
X-Gm-Gg: AY/fxX7weGAoFjzl8726LYt2Xn+WrTuJctCikK+7ZCVmiyRDvMi0P2+ujTyXgDfYY/9
	aKTp8fZ9vthGLeOHMiuvYzOXGS28iplHvP8HLU6xrIB9c6o/JLG9dZDDe2AePOCp1CtGHv66KLa
	lz0bWEWqj5HpjBpFAGNPJiVsO1MlAIxgCspdN6WVSXE5dEFUx0VwqziznF8BOSr1bvfld/zYPRP
	0GTg8OUyc4LyX9+4IpYXdtOI+dFad1uHNSlw3IARCmAgC7xncLzFyd3dlqIU/2cCcdP6ciRboKE
	b8DlvbjMyLLGUsVlvwVXEc62olq6xeD3LojOI4gwbnD4yYUWD2k09uYvStIV1rekt8M8pqLnyS1
	+LDEPQb0jq9vWMPE+GJrV4SLoSOgD8ZUkCcmKD7H9UQpkaainvKEBOy3XOXPCaqLsak8dyOF8I0
	6eXECuIvM=
X-Received: by 2002:a05:6871:418b:b0:3ec:3c47:b3e7 with SMTP id 586e51a60fabf-4044c4c943emr2142696fac.47.1768614274994;
        Fri, 16 Jan 2026 17:44:34 -0800 (PST)
Message-ID: <bb8f0468-0624-4058-aa53-9d1b5ae8097d@gmail.com>
Date: Fri, 16 Jan 2026 19:44:28 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com, Peter Gutmann
 <pgut001@cs.auckland.ac.nz>, Demi Marie Obenour <demiobenour@gmail.com>,
 Collin Funk <collin.funk1@gmail.com>
Cc: "kf503bla@duck.com" <kf503bla@duck.com>
References: <4bb0e4f7-a4f3-45cc-b519-2044b4b2871c@gmail.com>
 <928709EE-07AA-4995-B9D3-E83AC18353CC.1@smtp-inbound1.duck.com>
 <6F979157-91AD-4C55-8CCD-5CC5AA18BB50.1@smtp-inbound1.duck.com>
 <878qei6bq7.fsf@josefsson.org> <87ms2y1d2m.fsf@gmail.com>
 <87eco91kzi.fsf@josefsson.org>
 <SYCPR01MB3661379F4E31EE1A57A2F310EEBBA@SYCPR01MB3661.ausprd01.prod.outlook.com>
 <7002eb83-6227-4de9-aa3a-bfe5cad62320@gmail.com>
 <ME2PR01MB36500CA1987170A857BCF637EEB9A@ME2PR01MB3650.ausprd01.prod.outlook.com>
 <908a0911-1f3d-4359-b080-bea1a595a601@gmail.com>
 <MEAPR01MB3654EED3E6D2079807952CCBEE8DA@MEAPR01MB3654.ausprd01.prod.outlook.com>
Content-Language: en-US
From: Jacob Bachmeyer <jcb62281@gmail.com>
In-Reply-To: <MEAPR01MB3654EED3E6D2079807952CCBEE8DA@MEAPR01MB3654.ausprd01.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] Re: Best practices for signature verifcation

On 1/15/26 21:50, Peter Gutmann wrote:
> Demi Marie Obenour writes:
>
>> To answer your last question: I believe that it is sufficient for the TSA to
>> sign the public key, hash algorithm, and signature algorithm used to make the
>> signature, as well as the signature itself.
> That's more or less what a TSA does anyway, but it doesn't address any of the
> other issues.  I think the required approach would be to start with a threat
> model and work from there, not with a given technology and say "the threat is
> whatever this tech counters" (which is admittedly the standard "threat model"
> used in 99% of all crypto designs).
>
> So you'd have:
(simple solutions proposed)
> Signed malware
>
> An attacker can use a compromised key to sign malware.  To deal with this ...

... revocations include a timestamp of the last-known-before-compromise 
signature.  If legitimate releases were made after the key was 
compromised, they MUST be re-signed using the new key.

The timestamp attestation is simply a certification that the artifact 
was presented to the timestamping authority at that time.  If the signed 
timestamp is prior to the first-compromise timestamp in the revocation 
certificate, the signature can still be considered valid (although the 
user SHOULD be informed that the signature is from a key that was later 
found to have been compromised and has therefore been revoked).  If the 
signed timestamp is *after* the known first-compromise, the signature is 
from a revoked compromised key and invalid.

> Rollback attacks
>
> Once a binary is signed, it's universally trusted.  An attacker can feed in an
> older signed binary (with an vulnerability) in place of a newer one that has
> the vulnerability fixed.  To deal with this ...

... the user is expected to catch the attempted substitution and 
packaging tools MUST warn the user before installing an older version 
over a newer version.  (The version numbers themselves are part of the 
signed information, so the attacker cannot alter them.)


-- Jacob

