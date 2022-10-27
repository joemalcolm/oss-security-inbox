Received: (qmail 29899 invoked by uid 550); 27 Oct 2022 15:12:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27923 invoked from network); 27 Oct 2022 09:51:07 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XZj4NfhP0hinLPKlzVuLjDKsDqV4xHieZMNpvHTiKeM=;
        b=AhDKwIsgsacivOlczyPbcFxIjX0cj92H0PZ9TCZJQb0VYLIa4SZPRg2Pht7njYUPPd
         9hVvHj4iXyHKsgBp6yn+/WUsnYOIvvT+adE2OX0MHYVKTHLVfid8VGKS1gIcfMeOLIec
         56p9M6/fXv+nq21J+ie11hy2n+Da07XSHFXTicHpsq/fPUqQYV9ilwKfeMGCMnHM3h+o
         VtMf2L6ScVAzYdyHnR+F2O+Ihg1wzBtlFp79jp5hD3xSmvm/pGwVvnAU69NvSKeiDfvZ
         2RVIk6KiWnkcIS+yIZR3LTk6jqpp7oMgy3kQjW5H/3LBjtxGbY0hTCjA+EiE/TKsrmBs
         2QSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XZj4NfhP0hinLPKlzVuLjDKsDqV4xHieZMNpvHTiKeM=;
        b=iFPV0A40z1PAwQTpYhbBis5KGZT3Ol9Codlynfl++JVwuxttt1Atn996nvUyep53KW
         TqRQdkiBNJiSbWiurNFcQc1j9v06YCAqkR9rS2q1kiWrtQ0s7L1k8qk7zRwOdP6m74cb
         70Wf2qbfY1S15qA7ngU+mKboR+I5290Wwo96NKOHAOer3Zn0JSRS4B/htzpyTqY/h6CT
         jUaQZBVYDnO/vOheVqJNmT8t6AJNLXqXpRRLzuMhsg+ikTmkOultSUu9jGPb8bfyQequ
         NEPaQrcqu5Cc49abCxcyHJTU92muZhtAIrREzXBoxHhZApsBcUX/PTFfFrZeGWtVkGxB
         81ww==
X-Gm-Message-State: ACrzQf1uhHX1iO2bhdKaAJ2lkNeeZBZc/44+kx72/R0pWVK7HtfjUZnR
	7ee91Y+lvVnfGumXJLxMOeYPYMqE+CbV8PzO5pEm8qqSPH8=
X-Google-Smtp-Source: AMsMyM5fee7Hxj7rHpGTS7wzUai8p37PRq8gOzj5KQlMd+9kHvtneQeq3vRTx5OGX2zcW7Yx3DvLmqT5jBxhGwZDa8E=
X-Received: by 2002:a05:6000:1f91:b0:231:ed90:2a1c with SMTP id
 bw17-20020a0560001f9100b00231ed902a1cmr30997146wrb.28.1666864255991; Thu, 27
 Oct 2022 02:50:55 -0700 (PDT)
MIME-Version: 1.0
References: <db0d3f4e-ea16-83f0-2a2c-8186f42af180@openssl.org>
In-Reply-To: <db0d3f4e-ea16-83f0-2a2c-8186f42af180@openssl.org>
From: Georgi Guninski <gguninski@gmail.com>
Date: Thu, 27 Oct 2022 12:50:31 +0300
Message-ID: <CAGUWgD8YHzKE7JALLLxQELxgz8f6+_9cKEmbZm38C_QHwhFpxQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] Forthcoming OpenSSL Releases

Is libressl affected by these?

Haven't seen announcement from libressl.
