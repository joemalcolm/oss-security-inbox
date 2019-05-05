X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["370" "Sunday" "5" "May" "2019" "15:37:08" "+0530" "Pramod Rana" "varchashva@gmail.com" nil "10" nil nil nil nil "5" nil nil (number mark "U       varchashva@g May  5   10/370   " thread-indent "\"[oss-security] Cross Site Scripting | WolfCMS v0.8.3.1 and before\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Cross Site Scripting | WolfCMS v0.8.3.1 and before" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11703 invoked by uid 550); 5 May 2019 10:35:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 8013 invoked from network); 5 May 2019 10:07:31 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=4a92iqygaJ66pBzPTE+zPOr0OL6+afYLSO1Jk5d5BRg=;
        b=HqUgcZgm+JTtmR6L3JTMhDLMSyJdjqXg8kgjmqvs2iWIqVRxri6Tc1Q1rRNrtC6DyX
         D2+ki2A4fKHeIbaPSf3i0qvfXZA/49RQ2VLnO1LpdHXibu3bKpjVHxxLU5Nm+gvpV8gV
         plULVhAa/2/WaryoxlW9HNJs/CoT2JhnSFNt/GBY/GoOn0DcQy8Zq2c8kqG+PP0jrqBg
         6Ex4Qf415VL5Cs47kA4/ADkj0hRE4NOJbzGXVoG5vzWMXeb/z1Pukjg/BUHRjjWc7Aae
         5Mfi8BCpF+V2KDRRkDhwtCY0IvYxUPvDPswk9Od4dGr+Yn3oXyjhtBHOLLxto8MabULh
         L0Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=4a92iqygaJ66pBzPTE+zPOr0OL6+afYLSO1Jk5d5BRg=;
        b=ZCGMW3kOPIKM/Fk0ung4ZYHQHPQ01tsUOk/LKfCVsQuOKk49OyUxqDGa1oMOfV73Bg
         BwTj9KELW4v4bt4HBu1lePy4DV97U1PI2vO0VDrkC6JjIUPEkAHcP/r6CpEWf9xcjFng
         14STzPQFbgY/nOVCrRS1mSpPgbuLWw0RBcpHUT+eMuXbUL8WpjnbjxvRKfycTMyBNLL5
         BfMLfm0Zde6U1VQtAUJTeX3J9Js91+B34HF8T2GJoPm+R5pBZqMNNjayeybDsmndecoX
         3R+w5EAFdravD4p/kdzgnJsgIkUiTS2DFWXrN+c44qkH+b9NyZpSLOepmHU3UEUPuDRO
         eMgg==
X-Gm-Message-State: APjAAAUiryCpkj5GBEASJ+5IEMViZ4BCs9w66vx01Z1iKvXVmX4D8uWr
	FFofGFEvAkQQdAJGpuhJRXgRPKXAsR+rV1Te8UP96WA=
X-Google-Smtp-Source: APXvYqz6+DRlEWxrDfqiIC/IAVS53uvrC0iW294liAnNA89lUAcwJfx0JSn+ToremLRpzfPYN/YsSQJANjpa4cbFBSo=
X-Received: by 2002:a0c:f990:: with SMTP id t16mr16322865qvn.54.1557050839404;
 Sun, 05 May 2019 03:07:19 -0700 (PDT)
MIME-Version: 1.0
From: Pramod Rana <varchashva@gmail.com>
Date: Sun, 5 May 2019 15:37:08 +0530
Message-ID: <CALv8orHJWUHYVmSJ6KYKjhT_09_LFuYFtbdJj1gx87Gm0sp-+A@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] Cross Site Scripting | WolfCMS v0.8.3.1 and before

Description: WolfCMS v0.8.3.1 and before is vulnerable to cross site
scripting in User Add module for parameter Name.

Impacted URL is http://[your_webserver_ip]/wolfcms/?/admin/user/add

Payload used is "TestXSS><img src=x onmousover=alert(document.cookie)>

Further details: https://github.com/wolfcms/wolfcms/issues/683

Already requested for CVE, yet to receive it.
