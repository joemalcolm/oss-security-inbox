X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["288" "Thursday" "4" "November" "2021" "13:36:37" "+0200" "Georgi Guninski" "gguninski@gmail.com" nil "10" "Re: [oss-security] Trojan Source Attacks" nil nil nil "11" nil nil (number mark "U       gguninski@gm Nov  4   10/288   " thread-indent "\"Re: [oss-security] Trojan Source Attacks\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Trojan Source Attacks" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13825 invoked by uid 550); 4 Nov 2021 12:21:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7336 invoked from network); 4 Nov 2021 11:37:01 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=303QWNYWuA04Qp/6ASDNAIFRRpB0vIBrua73zsIZm1E=;
        b=HcgDOrQCarM3xyrh8rvfDj7dsXcz0n/8Cxc0gu9mopvdmWiJQBp2jgeEElf9bBF6eU
         38zDoVyOsHYKxf7xNbO5KLwCKUsRnXzw2zawp1AJBPhD7wtOHKhRcCwMDnCX6PkHZR1p
         y4kRpBvMdIBJeuYMQ+qXACeFhm0v3g6plAA0qjPfE7qIOp5rhKigA/gPz3LJj3Ss31dx
         BQ4EqjiKogHIMZAmPxtRnAe6qQ15y8i4Bo2+x3ERmLYL6v/46+bhrk5fQQ9XkBWVRfXy
         /HLdE7ZyGpxyhwh+LEVRs9RvasBqkvIv3S60BrR/AJvzeLCTLe0/fuFbCUMvNiP7lg3y
         uPcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:content-transfer-encoding;
        bh=303QWNYWuA04Qp/6ASDNAIFRRpB0vIBrua73zsIZm1E=;
        b=UwcT1jB77ln5roRzY0YWsymNaUJQx0j3xCI66QU3gb0sS+UZ31EX5nvoVWs5FfozoR
         9UkF82y18FXV7HLPD6J4p40GwauBm7CfjrdnPug7brC6+EQU92GJfTJRGHi9y7r8PvVY
         Vg81lblICmhEujCRkM8UG3+5LU5/OU+bCm5MNZEo62ZOfhQ0+z/GXgyOt4NL+/0wsEIp
         yXGOTs5sG1HT4/GTOH87ZqrqP0WxRCohBsuWOYdovhMjbkVeFBWSdlxvfL8oh1Sbcwyd
         RiIPIJTpk7jo7G2DH4WlFW1yKRUk5ai+XghSUdmIWebn+1gRwg91LGlPnwfyxGpZEvmF
         kckw==
X-Gm-Message-State: AOAM530E06SnZFCxomvfiIN7HLqYyUMDT6fIdsrLjl0l+6vyVlKPYnHv
	5sTYxgi/aKr2v+IdDPnVK3iFBfcYXTPUbriCTcV/MPo/XmHlJg==
X-Google-Smtp-Source: ABdhPJy9VHowSS0TTCwE4k1SZ8Pc8LZunVl4+dDl9mkAmINrVIsJrcj5mDeaV53Jwm1yOp/RZTInvQHKnbDwnL2gP28=
X-Received: by 2002:a05:600c:4fca:: with SMTP id o10mr1462522wmq.175.1636025809419;
 Thu, 04 Nov 2021 04:36:49 -0700 (PDT)
MIME-Version: 1.0
References: <c2d12374-0ed6-d6d4-60ea-799934b6f173@cl.cam.ac.uk>
In-Reply-To: <c2d12374-0ed6-d6d4-60ea-799934b6f173@cl.cam.ac.uk>
From: Georgi Guninski <gguninski@gmail.com>
Date: Thu, 4 Nov 2021 13:36:37 +0200
Message-ID: <CAGUWgD8z-3C+dPis2DFEkUbBDhRRvdp1Y6otJxm4cd_w23A_JA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] Trojan Source Attacks

Similar attack is known, search the web for "homograph attack"
or check:  https://dev.to/logan/homographs-attack--5a1p

The basic idea is that Cyrillic =D0=90 looks like Latin A.

Can you tell first from second:
True   =D0=A2rue
False  F=D0=B0lse
Zero   Z=D0=B5ro
google g=D0=BE=D0=BEgle
