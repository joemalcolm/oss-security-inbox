Received: (qmail 13917 invoked by uid 550); 7 Feb 2025 00:34:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 2032 invoked from network); 6 Feb 2025 23:04:44 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738883076; x=1739487876; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hFEhj39b4l7Ri0zpQ/g3jH0aFcMFGxFsIvfyAk4wHPI=;
        b=i8CS82skxzFkLSmKpGWqUiEekkeMyg6bR9bamNrV5Fjye/QJNozf4f+/ImRqZsUncn
         H445pco+erZzV9t3KrhEm9wbYM1qXnCFv9QDYjCW0N9dx2B8HjKKeJbZ2DyG5s/n4VWd
         oPztbMLm+G9aqgNCWXFYiXAcp6LNYvmwcXf4yLXjZC/ZCS06dc9ld7/gmhZtVz2DXts1
         4CsXLi+jHkf1VKtDSytStAJaPZGPRuYBHR4tKJxrtZYivVIyNB7Go4q7ZgsvShvmtg4G
         G3VUYS9L5npIrC7KVwETv1AG5jdsx6PllYg4ZTZEaQ2r5baUq6eJaxi+FAST4qvuf/zV
         FR9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738883076; x=1739487876;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hFEhj39b4l7Ri0zpQ/g3jH0aFcMFGxFsIvfyAk4wHPI=;
        b=TvZn1PMZUVIvlPflzPeK1Azu6lxzmFBlAB83EgpbYf8Xk2LULybTygwxlZr62atxzA
         8IX+bD2XTAJV4/Jf1qEkUmm2CQkaajUcCqU95a8o0LHRRFtghkEAPo64zl8HAAxQqnDn
         aNgJTUwUbAT2A8ZD+/Q1IaODxt7R8tNGRTPLirKGyK/SzNFfMX3HpTo+PFI1PTk3clJL
         jTBX8IFxRr8J9Wfq7s+5q8GazuTDMUsLESAH3wWLQ/FVeflOaK/el5rpWdf7ntHlIktH
         KLINl5tFFz439FDzZsaHIkxP+cjgFUKYBY5ifciGlK2A6LDAwVyweemM8faGkBavkv9b
         CLqQ==
X-Gm-Message-State: AOJu0YwyCwUMaax0uix6XoJwfzeq/5jHolDebZqxKNDLyWIlKKztq6Pd
	YL87Tw3O1c3VDv6x3e6SwpHBbl0ALCSBC1UX98IMzGqevnoDeNZ7gZ3iF9bbBH30x8o1+9LVrqa
	jPQrnY4qcRGd8muIMxJHNhMVlsazKhFnS
X-Gm-Gg: ASbGnct0/8fqSpz/X5puQOQ1wd9iIos/OvJk8X+z8qcVQ47AaGUg4JGvIn3OE+lGe+N
	9wKVkKhNYQv+TywEHGNToLMHnsmPmBzmS7q4EtPRU8sTqakVJRFh6+RyjKD273v9OJTWO+9605k
	+Wo/9f5A/EYp3/wqv+6Naac3XfeCY=
X-Google-Smtp-Source: AGHT+IEHDkAMYKLNntSnxZAAaiMKYtDwBm6pfnnb5lkFhl7238cBWbQUeBODeS+zYBmEbn+cHjpkFAY7mJJyOrOUgFM=
X-Received: by 2002:a05:6402:1ec5:b0:5dc:545:40a7 with SMTP id
 4fb4d7f45d1cf-5de45005b92mr1526767a12.12.1738883076176; Thu, 06 Feb 2025
 15:04:36 -0800 (PST)
MIME-Version: 1.0
References: <Z5BYg9WPFBF7JBEB@thinkstation.cmpxchg8b.net> <Z5B2PA7DHTBbvbOq@itl-email>
 <Z5EUUMd1xkSSKAEM@thinkstation.cmpxchg8b.net> <20250204101028.GA20864@openwall.com>
 <32e961ce-1088-4e21-803a-3539a0ceaa3a@gmail.com>
In-Reply-To: <32e961ce-1088-4e21-803a-3539a0ceaa3a@gmail.com>
From: trinity pointard <trinity.pointard@gmail.com>
Date: Fri, 7 Feb 2025 00:04:00 +0100
X-Gm-Features: AWEUYZlbKS67Br5lYKVcxPMJSnqK-0A-nNNT0DE8DxvOxigh6hBi8cfoNDfxvCU
Message-ID: <CANiTRwf0+j7AZGfURup2PqE-QG2WiWmKnmc0d8N8G7MAASPhiA@mail.gmail.com>
To: oss-security@lists.openwall.com, "jcb62281@gmail.com" <jcb62281@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] AMD Microcode Signature Verification Vulnerability

> If an attacker is able to control the hypervisor (necessary to load
> rogue microcode) and the processor microcode, how can the VM trust that
> it is actually verifying that attestation and not being sent down a "oh
> yes it is exactly what you want it to be" garden path?

Attestations are cryptographically signed by the cpu, and meant to be sent
elsewhere and verified remotely. The key used to sign (VCEK) are dependent on
the microcode version, so it shouldn't be possible to forge new-looking
signature with old microcodes (i would hope this hold would someone be able to
decrypt a microcode, though i couldn't find information on that subject).
