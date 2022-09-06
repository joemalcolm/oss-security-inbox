Received: (qmail 3696 invoked by uid 550); 6 Sep 2022 14:24:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1596 invoked from network); 6 Sep 2022 13:27:22 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date;
        bh=v52mRCzOmfK+Fx0rJ1l2D84GDzDKn7rwoT3EYA1gF64=;
        b=D9GoC6Y3fO2av3vEV26Oz+HIOojt1MicxieIMLjz7IXXndlkZUQ8rxkrh3xwBLXQWO
         toBYxIcKP3Bqo97/51dxcppe4mGACTXytAdgtdVlO3yqQrJLd3RVd0A54G/e8isggUN9
         4saPSU/7zBq+da2tojEuYxFOQX5/Zel92q09M50mPbR0iW3PWVAAgliRbziyoMrIGP0s
         bCYSQC/TtleF1Ofb62nsFWu/Ro3PbRDc/ONeHn0uBZpF3i0TmdGHVS6rP7/KzbLbvWu6
         Grt01zmrQosD/6w88wr57OAmuJEiryLs8WkjWWPj601fer5LtwN7Rogx2imZM9kNd4rG
         ADcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date;
        bh=v52mRCzOmfK+Fx0rJ1l2D84GDzDKn7rwoT3EYA1gF64=;
        b=KhfghL9j+PogNZW7vZva0O292eru9rvrSaFSRelhMnkfiD/thDmzsOdtmyxsuIQ+1J
         dGKDYK6B4bh7Z3CaeiI5tO0vOhpLDyodu6Wy6uFDX0AUTz5MTTX6f0lm3SKDs/ogzILK
         N4NNnP/st4IblIHCINCrfRi87PwWbb/OrxZZDAyuWFkmPAT5c6VfWpIRhqXPdDCb29UM
         qBjwNVgqnVdwxQXPSjzDWKpRW6gBgBhX6xhCbp3/4pZoUi1jtnILoUkhBhDqBQDNk3jd
         4TxuC53wLq7MUffoI+TS814W1Ip9YVSN16z24Mp0O2j5gGKpzUww75TUlpTMLUR59Fec
         pmOA==
X-Gm-Message-State: ACgBeo0K3nshzrUMxTnpw6A1a9UaD+wqcICQljT1uFWeEuYSuUWx2zIo
	rhYlyad1eBtu0sp8n8Sk+1d/bwlIwd4UjMwqMCseTuEqXOE=
X-Google-Smtp-Source: AA6agR50ETNp4rRAyT7Cd2eRAJQGRQuBLlPBYXHDw08UAqRJ80zuah+oBX9ztbsqVkWGKOSEhlV55xEc9SmE2oGbWxY=
X-Received: by 2002:a05:6000:15c6:b0:228:de49:dade with SMTP id
 y6-20020a05600015c600b00228de49dademr105091wry.28.1662470830638; Tue, 06 Sep
 2022 06:27:10 -0700 (PDT)
MIME-Version: 1.0
References: <CAGUWgD9QR7mjyVnBV4NcyVv=RzLBjNoqvv=d02P-GGsdOV_VWg@mail.gmail.com>
 <20220906115010.gs7kec3wkmayhmhf@yuggoth.org>
In-Reply-To: <20220906115010.gs7kec3wkmayhmhf@yuggoth.org>
From: Georgi Guninski <gguninski@gmail.com>
Date: Tue, 6 Sep 2022 16:26:58 +0300
Message-ID: <CAGUWgD9x1RJdYcr9NCUOjaVNYdnhrPkSjNoh_NaLGu99q65W-w@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] sagemath denial of service with abort() in gmp:
 overflow in mpz type

If you can crash the python interpreter without syscalls and without
the kernel killing it for OOM, would you call this DoS?
