Received: (qmail 7798 invoked by uid 550); 15 Mar 2025 21:22:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 18418 invoked from network); 15 Mar 2025 19:04:08 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chainguard.dev; s=google; t=1742065438; x=1742670238; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=a/znkcxWJw46GkYMIOX6yS3A27UO8fi8KGNBqDAh4t8=;
        b=KLXsqatSDKhpikPlqyJhWCdXFEIa71EKxuulQCJW3C942PNez5bjnlUJ9B2Q4U0faU
         AbWDH39zlYE12XPOqxiArmiqG8aFopA//bVm37ZnuXdPdeNQIOaiTgkJezhUfhdJM5lh
         7E/tEe0LRuBYVDiM73p4CVIR9DJRDObe6Oph/mmIrP13TwCwl6Bng022Yorb82QPKFSL
         CH5fThrqoB8Sq8Nz96QGSJlVlpwgolVcTJ6dmGh8hz9m7G6g8bqzSwgu/aI9rZBiZY4U
         Sj+BHOrSwd3yqnpIXuBbOBemX5YnZaRN2WK14lBU/Sdr++l291Yjnra8W0Clz2/gQpCn
         S4Hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742065438; x=1742670238;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=a/znkcxWJw46GkYMIOX6yS3A27UO8fi8KGNBqDAh4t8=;
        b=OHvD+Cr+Q0TFdE2/7KVeJ8jffLy2b3YZzrD9j/TNKLOEnQBj4Q3InaOQBBlUaCwbwj
         ZJ2Dg2Gtqtr+yB9efBvWAjtpTzrc/Vufw2S32f+NkAlb8PZHuWr9MP27uSQikxt4liis
         C90a8i/js2lE/EgfIF1k2A+HiRny2nlBnjBMFT8/jX2kVJI4EX4JPFcfIsfg5+2PrQP/
         EySPuIirhJfc3sfEJJJXObtZb9uZL/59ZXxIwR3Sf/58PW7V6KeLg99yQjA6YqzFpAa9
         oAp4P/tBjtrMjFi3CjHvmxZpBfO2/CSN5eFlsyfZPpbEWd3CEn59ZA0q0CviECjuRkpp
         bLvw==
X-Gm-Message-State: AOJu0Yw5CLDptYTNWIDCyRMSHE0Q4QIlgDcd2iJQwoboH7mZCLoLsgXX
	urMZEix/QlcsUrYYHljEH5DHZm7niS1A/V1X3H2RWi3GXjhnVM4tseYcNMqEUWQK18K0VcFMj+w
	GGlztj1aOsrJUrHWP1R81SoI3oHmVkxEmVnLTk82jZPM1u7xmxj4=
X-Gm-Gg: ASbGncsW7Qhkg7lHMoTG0+D6j8WnyWYsErzX0ow9xd+KUAwZ5f5Yvki/g23UytNfCa8
	IcbY0S0bsg39FYvPvEsoA1adUjuarfmCC0V/Oxb8oJcx/e0V2V20UvBNN3nWpO1TCc62iU/4q91
	/nPfohBdslAhkc3kOXjR30EbT6SCprsYVWNs5wO+NiaQO1xv0W8g==
X-Google-Smtp-Source: AGHT+IGGhd+U2YGUIIs0Di0mGC7kGspYbfTBCKC84UdeN6/kOEa+3kRFHcGfEg4Azblquxcbc2tX6Jm2r5XiYA96hVk=
X-Received: by 2002:ad4:4ee4:0:b0:6ea:d604:9e5b with SMTP id
 6a1803df08f44-6eaea996040mr118922006d6.2.1742065438582; Sat, 15 Mar 2025
 12:03:58 -0700 (PDT)
MIME-Version: 1.0
From: Mark Esler <mark.esler@chainguard.dev>
Date: Sat, 15 Mar 2025 12:03:47 -0700
X-Gm-Features: AQ5f1Joy_M5QhM30hr2y1zxvbM3l0LEpHWNlKEDOdBXeLQg9umRLNDoNnkLaaKY
Message-ID: <CAK84RTWeQW-+SAFR5V+Y_utGT8U30NaoVxYu+7CfZz18EQ0Vag@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] tj-action/changed-files GitHub action was compromised

On March 14 2025 at 16:57:45 UTC the tj-action/changed-files GitHub action was
compromised with commit 0e58ed8 ("chore(deps): lock file maintenance (#2460)").
This commit was added to all 361 tagged versions of the GitHub action. This
malicious commit results in a script that can leak CI/CD secrets from runner
memory.

The compromised action has been removed from GitHub.

We are discovering open source projects which are using the compromised action.

StepSecurity [0] and Semgrep [1] posted early analysis.

Cheers,
Mark

[0] https://www.stepsecurity.io/blog/harden-runner-detection-tj-actions-changed-files-action-is-compromised
[1] https://semgrep.dev/blog/2025/popular-github-action-tj-actionschanged-files-is-compromised/
