Received: (qmail 3185 invoked by uid 550); 18 Jan 2023 16:18:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29764 invoked from network); 18 Jan 2023 15:21:14 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=diag.uniroma1.it; s=google;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=6YL+7AiOClg9MVDsTpbyF5dS7uBtPGXeTYqHEdIAlAc=;
        b=XeLtmm2if0+kHFapiVRL+9v9Yr+uUBpJh3h0HtfmEMhaVKzM55aWmUd2TVQcwlzyLg
         kR9vEUCaukQynOxcl2PYwP8R+etC+0mH1ktHVY2cQufrIYHiTQipgPGxqP6VKwSOfX5P
         MvD/7BWuXlv2OgtYNlk/mOceav94GTzZXfR2w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6YL+7AiOClg9MVDsTpbyF5dS7uBtPGXeTYqHEdIAlAc=;
        b=UPO5Z9BBiLm9zLhgqWUfRNOyLbGUH4IApyd/bpQgD5kc46mZYsiBXbAjTvcjpLMXGg
         cDSbKIDmiAmTFczeUZCeihWCOKLv+x6w70GmMWbHkcSAufT9RQ3TxbRqSgHWsYBthIC+
         MK6s/QKq5Ck5i4avBjWlJ+sq5qCTH2jiErUEbSPGzT9LIKUY8L9ciA49vfS14HRJV+lW
         /IZOfT+cPbfVulknabkSrMGUYpObyitdYwZe/p/sF+ATVNpO3z8gTdHrPOVOQ67Ly448
         mWS+Qf27SZhQcgRgFEnza2KFA/8bL+VySu11pD7RbN/DdKVZeA1r2EtcJbp1hfFb45+I
         OFSA==
X-Gm-Message-State: AFqh2kqiwc+3V0wyIiLDpt3GooOaKvBFAVSmZs7CMSUcKDbVDERHiIGX
	yxwidpYh10st27pOwH9x+UT7h9QmknLQ03q8wTPfwZwiJX8MMGsL
X-Google-Smtp-Source: AMrXdXsWwLmwWTw+04Psl7sWag1OpNi9OkzUD5HtjD6QzXFeUgjZjyp1mqL7hB9N11HWzI+6KfPlxGrMdNkr0T+Cm9w=
X-Received: by 2002:a17:906:8617:b0:829:5c93:f150 with SMTP id
 o23-20020a170906861700b008295c93f150mr465691ejx.595.1674055262298; Wed, 18
 Jan 2023 07:21:02 -0800 (PST)
MIME-Version: 1.0
From: Pietro Borrello <borrello@diag.uniroma1.it>
Date: Wed, 18 Jan 2023 16:20:51 +0100
Message-ID: <CAEih1qWG=Ww18e6j-07RKND47_xAbwvPyoyMyiiP8GgeE+fEJw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] Linux Kernel: hid: NULL pointer dereference in hid_betopff_play()

Hi all,

I'm disclosing a possible DoS when plugging in a malicious USB device,
which advertises itself as a betop USB device.

A device driver must check that the device correctly registered the
expected inputs and reports.
Otherwise, a malicious USB device may violate assumptions throughout
the driver's code.

betopff_init() in the betop driver's code only checks that the device advertises
at least 4 report values among all its fields, but hid_betopff_play() expects
at least 4 report fields with a value each.
A device advertising an output report with one field and 4 report values
would pass the check but crash the kernel with a NULL pointer dereference
in hid_betopff_play(), when accessing `betopff->report->field[2]->value[0]`.

Best regards,
Pietro Borrello
