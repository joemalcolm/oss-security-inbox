Received: (qmail 21585 invoked by uid 550); 21 Sep 2023 20:31:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7864 invoked from network); 21 Sep 2023 20:10:38 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695327026; x=1695931826; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=T9Nvt0wcXoHzEZ4OregEtM7H6t+Oilaovyek/oVoAkM=;
        b=FBUJuzBh8j6pfY76TtLTK8RrTlYQtmPCBoRnwIB8zPnMLTPFO05XfZhKC14FR7gJ1B
         ACs0TuBZ2vThsA+w3zKjSwBUdyAMo3NL+h4bSYbVd/oNyZCky3IVi4TsLLLhBOOxVv7n
         TVeHtohdnCCO79gAYSihfYcU8n+k0T9e7cEqL4zmc6t2UtxEnpvsCbE+mPwLeKuZ5pEJ
         prc24q/ch5EVbc+Ylqy8D3+AmsluY6iI+EudoIsebjWfVM5j0RybJpnKypIaqjvhVC5M
         DXNjsRtFr16KOxp/cQDcOQjp9zJ7krsCAh4C9nJ5w68QFHVtDDN4bGLhj4F9eAjASH6v
         l1bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695327026; x=1695931826;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=T9Nvt0wcXoHzEZ4OregEtM7H6t+Oilaovyek/oVoAkM=;
        b=FBSsyxGhmoBk7qABM6LghuMZIMJ1VJeuQBQGUO2QrsJLejynPOHrDkCih3ze+RZMMv
         v+6DnADZ9mGmEUfglDG11y7l+YX6LyyiLmJ4u5pJy1oMPtBjNOB2nUKpH7/Lvppq8fYl
         Sm5Vnnrq4IqdBhQtQLRo6WzOg2QrqAyqYkgFxUjr6leI0RGPhDjiXfFDK9o78AKQAk9S
         COoE+E3pYTsg8EnVG64lfKSkOpkFqlfY0b35bKkxizsKyl33l1deNdkroDRum9IFgKwc
         E4al45VyqIL4rtOvcOn6HCc+lS9a39RDpMHP+tm5IFCuPTM5UFT6hskvHv5rs7pOuJG5
         EbcA==
X-Gm-Message-State: AOJu0YwwyASYDQwmKVZluxjG1bdDufImMYiQOltJpUFuYmXfiCT4zc3c
	BWQ59Bwcezn7B74cXKMLnJn4QyS/HOfTtY0H6G8g1qGGQLc=
X-Google-Smtp-Source: AGHT+IEZIGBk7cGvt6QxhFw5unBYppgj+MZ6pLEJsJwMfpDjHddeD78mcJx83RZ6QigF6Mfgag5QOZWF7OQvLM8As/k=
X-Received: by 2002:a25:904:0:b0:d81:91b2:62ea with SMTP id
 4-20020a250904000000b00d8191b262eamr589354ybj.1.1695327025755; Thu, 21 Sep
 2023 13:10:25 -0700 (PDT)
MIME-Version: 1.0
From: Stian Kristoffersen <wayphinder@gmail.com>
Date: Thu, 21 Sep 2023 22:10:15 +0200
Message-ID: <CAKK2xXj0KVXv=6Lm3_4=Y8QOuh7tDqhOnKh_2sJzwz3trPE9Tw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] Supply Chain Issues in PyPI

Here is a summary of some security research into the PyPI ecosystem:

https://stiankri.substack.com/p/supply-chain-issues-in-pypi

It includes:

 - A PyPI upload Denial of Service vulnerability.

 - Challenges with reproducibility in the PyPI ecosystem.

 - Distribution Confusion in PyPI: a new way to distribute malicious
packages. Including how it affects Pip and Poetry.

 - Manifest Confusion in PyPI: how package managers and security
scanning tools resolve dependencies in different ways.

Best regards,
Stian Kristoffersen
