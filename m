X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["442" "Sunday" "17" "December" "2017" "21:26:09" "+0100" "Raphael Geissert" "atomo64@gmail.com" "<CAA7hUgFJbi9KUCyq732rjf8tbwkTv5Csy5aEbJ3FUxV8wyZT3A@mail.gmail.com>" "20" "[oss-security] Gitlab, LDAP integration vulnerable to MITM attack" nil nil nil "12" "2017121720:26:09" "[oss-security] Gitlab, LDAP integration vulnerable to MITM attack" (number mark "U       atomo64@gmai Dec 17   20/442   " thread-indent "\"[oss-security] Gitlab, LDAP integration vulnerable to MITM attack\"\n") "<378388160.zaxc6L944d@thickpad>" ("<378388160.zaxc6L944d@thickpad>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11276 invoked by uid 550); 17 Dec 2017 20:26:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 10231 invoked from network); 17 Dec 2017 20:26:22 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=+KzH4S1/9hfgp7dFB8+Vfx2ws1OasA62RTMP9KIYY68=;
        b=WhhFWcJwfT3z3kar2x85pzo5czO4t1EYuBLh6jAuY/V90om98E8uTnlcM3v873NAkt
         iWD6M0/EfHnlrCvc8aIl0DzHtjAbRhEvD7RoOXWufjGIe/r0Pa8UXn0WNVqVBIWpxxWx
         YviwxeHoC+skMd9IX9vVWGC7Yz651KkpATtTO77ns/9oAcpKoUKLP+QNXtP6y6NDl+2S
         imnBMfknEczvJKs2dyjwEJiIxGfDYUwdtdTLFiLer67AMGC+Rym5UyRxVqwOLVY9oJMt
         GsoEZRr+5m+taItfaWDCzgScjEKfJiMZ56M7ZJPD+bXG3jdC/sUGDwstsFRvcqLPLyl+
         6wrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=+KzH4S1/9hfgp7dFB8+Vfx2ws1OasA62RTMP9KIYY68=;
        b=g4+AOVoAnwM+3NcBQNv/41vleCULcGCwFssyHPkrmbR3D1Avx5RP8kmsisIMnVvyac
         32pFTYsEXsYWo0eW57jTWVAEPR7FIf6golkelJYrXv3mR1VRbkX0qWXTHMXB3snErpWY
         GG/2chxB3HgvLgLdIwUFVwRNJi71A0hkSyk/ksKGk+VJd0USoKxiECjMGWvSmb3tceVP
         imDC685+KLinNAmCsSVO8kDlWVwDDn3ozlAlwAIQozj0TD41ncvFkHeet0pG1L5w3Mk4
         KQIdmsUJflJbe7C9R2q5XGix7X6alvWHi4+UHHUmYT1J13NtCSR09o5kF5ppDlwH/Fyk
         tRtg==
X-Gm-Message-State: AKGB3mLFTvWiGWrOg7+VN1bCsIqbfEEGccIyK8sy2yj8887nAttWM5XE
	L38cko8SQdsFyP/mNeDFRUdPWkctMNg1/lTuifOJzw==
X-Google-Smtp-Source: ACJfBourPuJc7aSBMlngXzgO2I1nXbH/GBWnPaiWY/BhwXxUYPf10dtezga6do7ojEBcSHQIKUO8nSf4SeZ16lMyMxU=
X-Received: by 10.36.104.6 with SMTP id v6mr16570298itb.68.1513542370179; Sun,
 17 Dec 2017 12:26:10 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <378388160.zaxc6L944d@thickpad>
References: <378388160.zaxc6L944d@thickpad>
From: Raphael Geissert <atomo64@gmail.com>
Date: Sun, 17 Dec 2017 21:26:09 +0100
Message-ID: <CAA7hUgFJbi9KUCyq732rjf8tbwkTv5Csy5aEbJ3FUxV8wyZT3A@mail.gmail.com>
To: Open Source Security <oss-security@lists.openwall.com>
Cc: security@gitlab.com
Content-Type: multipart/alternative; boundary="001a11448d0a53c7b405608f0b9c"
Subject: [oss-security] Gitlab, LDAP integration vulnerable to MITM attack

--001a11448d0a53c7b405608f0b9c
Content-Type: text/plain; charset="UTF-8"

Hi,

This is just a heads up that I requested a CVE id for issue #30420[1]:
gitlab
between 9.4 and before 9.4.2 does not verify the identity of the LDAP
server.

This has been assigned CVE-2017-17716.

[1]https://gitlab.com/gitlab-org/gitlab-ce/issues/30420
(needless to say, this wasn't reported by me)

Cheers,
-- 
Raphael Geissert

--001a11448d0a53c7b405608f0b9c--
