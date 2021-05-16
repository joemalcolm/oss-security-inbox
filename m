X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["901" "Sunday" "16" "May" "2021" "12:01:23" "-0700" "Martin O'Neil" "martinoneil.cyber@gmail.com" nil "28" "[oss-security] Open Source WAF testing tools" nil nil nil "5" nil nil (number mark "U       martinoneil. May 16   28/901   " thread-indent "\"[oss-security] Open Source WAF testing tools\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Open Source WAF testing tools" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17503 invoked by uid 550); 16 May 2021 19:07:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15605 invoked from network); 16 May 2021 19:01:46 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=/a9ZngerTVqh6TxzWVoPT/gKV1sxsKX3dLGkMhz/iKQ=;
        b=WuNFirETC/Py80/nyybVtJt4ui0KwLb0sFVB8CDqV4GPPHjqPk1UUzB8p9CRnYvZK6
         N8KjRw4I+vuqvn18dehCRqvaRwoZoam4oPBqKjaAQVvM8I5m4I/Qf6dfkBj36Qgdycs7
         siidFbr2spN31pOSjwqHgFybw7OzqC+BGlwHReu5bxrLB3yFTImQc5/glPYeaatjL938
         Pn5UnR7o9Ply7A9s1zR4D7sYxpmGwtSAV5vCfFNatErXZrQbP7RqqSnUWoJ1wRTEqO8b
         tGoEYqIDgKVxGWpwwnL+vYS6fCmZkOAEhFuH7FyOfJYRAQ6uoDDsi2rlVd0yRqrmjS6T
         wB0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=/a9ZngerTVqh6TxzWVoPT/gKV1sxsKX3dLGkMhz/iKQ=;
        b=sBRnkOId6OlEaGElJmFkf+KOtQ6etlB81fIdG3t1gEouG4xYSSdDWc0ffYoq04pQn1
         QrU1obibhX5Oe8hD17tBgrurjN6Ayn/MebuRN9dfvYU4rp7o3LyFJ+s2uttKai6qy3zV
         IlHXpcCa8D70M3xHRVtygd994hvuIy7x04cmp4/lEFgZNyYzoutSCrCnN/u28QKyS007
         BlPSQeT+X7+rYVaoGXjqOa4NaLAc3W6kZeGme0SOt9lH63MCcru0CmwHhHsvuCeAVdTL
         lR9rlGzH0LfaX4B2O2hKLE6H05/36QQbXyNKcWVHdZ5D2c8yGEYdxfkTKrQklbTYfCF3
         PyyA==
X-Gm-Message-State: AOAM533iMnFdj8xEHcQe21lKCouEbsiHNUe/hErl2jxKD38VkhYaCwlN
	iTqK8MGdv8WrwdsrdN4hchChsFLwexs0yS2J92bfHXdGevw=
X-Google-Smtp-Source: ABdhPJyd2SEVWzoJy+c91s3zZNz7aDiSD1WJlcfXV2IThRb+8ow3q7Pr4YrbrIMkTggQC0g0MUCq2tq8P1fDd204erU=
X-Received: by 2002:aca:d68a:: with SMTP id n132mr12484937oig.105.1621191694315;
 Sun, 16 May 2021 12:01:34 -0700 (PDT)
MIME-Version: 1.0
From: "Martin O'Neil" <martinoneil.cyber@gmail.com>
Date: Sun, 16 May 2021 12:01:23 -0700
Message-ID: <CANnFHybun4hjZqFqOsLOhdPfPX-Q3tGpxzyxjqbepZ+nK2VJQQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000000d768505c2771ba6"
Subject: [oss-security] Open Source WAF testing tools

--0000000000000d768505c2771ba6
Content-Type: text/plain; charset="UTF-8"

Hi, list,

Does anybody know an open-source tool for testing Web Application Firewalls?

In an ideal case, with an out-of-the-box-ready CLI/UI, PDF reports, and a
configurable set of payloads to test. I need it to check if my WAF
deployment and rules work well.

I found at least 5 projects, all made by WAF vendors.

1. https://github.com/wallarm/gotestwaf byWallarm
2. https://github.com/signalsciences/waf-testing-framework by Signal
Sciences
3. https://github.com/fastly/ftw by Fastly
4. https://microsoft.github.io/WAFBench/ by Microsoft Azure WAF team
5. https://github.com/f5devcentral/f5-waf-tester by F5

The GoTestWAF project looks more active and supported by the community.
Does anybody recommend some other GitHub repositories, preferably made by
3rd party folks?

Thanks
Martin.

--0000000000000d768505c2771ba6--
