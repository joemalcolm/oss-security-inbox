X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["586" "Wednesday" "16" "March" "2016" "13:28:30" "+0100" "FEIST Josselin" "josselin.feist@gmail.com" "<56E9516E.4030608@gmail.com>" "19" "[oss-security] CVE Request : Use-after-free in gifcolor" nil nil nil "3" "2016031612:28:30" "[oss-security] CVE Request : Use-after-free in gifcolor" (number mark "U       josselin.fei Mar 16   19/586   " thread-indent "\"[oss-security] CVE Request : Use-after-free in gifcolor\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 12267 invoked by uid 550); 16 Mar 2016 12:28:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12245 invoked from network); 16 Mar 2016 12:28:50 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=to:from:subject:message-id:date:user-agent:mime-version
         :content-transfer-encoding;
        bh=cK4VkPH/G4TPrChL8JAUVcdcFFtmOb+8uivGB0hCHSs=;
        b=otLcrM1FoeFK7/g1DnXulzQX/i6uJi5wNTP4lqBq/EWXEv3EpKSYc91jA4vjqiknKH
         Yih48ZBXM701FUKr6QCBRUMZBREJOUhtPVEWNUhPudxOQKCwacxckHWGpLnSgM81pqf5
         J3h1Lqad5oESCVNb2xGRG5K9wbPPXv4VtkdgIBDlnnS8FHxEo4/DaG35qO6rJRPgkE9C
         2p34wkhz6fvdy+FHhn6Z7ek57lgX2RJBKIQ0QK/lOdf5t5W4dD7wvZLCa+/Nxz/8IA3A
         D11BowXnA7IYmuzyJi0CTnQ5lVWszpxv085Gt4MeZz5N7UtbzOxHH/3flZShIqphPsJu
         KlYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:to:from:subject:message-id:date:user-agent
         :mime-version:content-transfer-encoding;
        bh=cK4VkPH/G4TPrChL8JAUVcdcFFtmOb+8uivGB0hCHSs=;
        b=OY3FSJYY+UaQx0eZm5OL7qfGznBEfiaIOpzBBhj8dWqMLpoK7SGZ6enHw/QMEIzv1u
         G7o7Vgo25+WxgwN1GgyrYYao/O4mCk1tiKIVYKvwNQuQibqGhcCR0L9LrKoidOBHG6GG
         NogbR+ibO28ygzqTXCUT4fSx56GqTMMuXLLMWBrwTGNzGFy+xVL3MjHucOzNY80F6uBV
         eimuFpVhuG+BO+v38fGweMkf7ChJAR+dGp7izk9OxU0AKJ29Gh4UrwisAb3cOs6xTlQ9
         0oFevIB3WPzUp+wavhezb9+2tSv8X/naPaKrXJ68t99s6emCpeoLCGMfpqDxVqGC/WFL
         GHyg==
X-Gm-Message-State: AD7BkJKDMDVt2JsHrnLzbGpkkYAbmICxrFHYLYwDG8lJq/W0avV5Yc+VaYXm78LJhYqztQ==
X-Received: by 10.194.205.103 with SMTP id lf7mr3503602wjc.147.1458131319412;
        Wed, 16 Mar 2016 05:28:39 -0700 (PDT)
To: oss-security@lists.openwall.com
From: FEIST Josselin <josselin.feist@gmail.com>
Message-ID: <56E9516E.4030608@gmail.com>
Date: Wed, 16 Mar 2016 13:28:30 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.5.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] CVE Request : Use-after-free in gifcolor

Hi,

Multiples double-free / use-after-free (with the same root origin) were
reported in giflib (https://sourceforge.net/projects/giflib/) on
February 18.
It affects the utility gifcolor. More information here:
https://sourceforge.net/p/giflib/bugs/83/
The fixed version should be release soon.

Since the vuln is medium/severe (double-free/use-after-free), but the
attack surface is low (it affects only gifcolor, no the lib itself),
could it be possible to receive a CVE number for it ?

It was found with the help of the static analyzer GUEB.

Thanks !
Best regards,
Josselin Feist

