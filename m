X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["535" "Wednesday" "8" "August" "2018" "23:35:19" "+0300" "Jouni Malinen" "jkmalinen@gmail.com" "<CANe27jJDj8xhe4KeUiPwxLE2Uqp-JXahC_JtvR4O_JabEhdtow@mail.gmail.com>" "19" "Re: [oss-security] Unauthenticated EAPOL-Key decryption in wpa_supplicant" nil nil nil "8" "2018080820:35:19" "[oss-security] Unauthenticated EAPOL-Key decryption in wpa_supplicant" (number mark "U       jkmalinen@gm Aug  8   19/535   " thread-indent "\"Re: [oss-security] Unauthenticated EAPOL-Key decryption in wpa_supplicant\"\n") "<CACVwi=KLCbDhMvzSmrBU7vi=zexSn-EfoHszYHzmt8VWLXD9Fg@mail.gmail.com>" ("<20180808142247.GB15601@w1.fi>" "<CACVwi=KLCbDhMvzSmrBU7vi=zexSn-EfoHszYHzmt8VWLXD9Fg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14304 invoked by uid 550); 8 Aug 2018 21:57:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11354 invoked from network); 8 Aug 2018 20:35:32 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=Za5Oxv+SYgRJk5NPkfebr2XusPoyTV3uSyHAMStpXC4=;
        b=ae4ukgDe2wuyVm3ScxtrIyK/Dqj8TPAnOHcudynbPrxDD2nrGo2WVYyVA9Jv84rid8
         J4g7DMoCxgBa3/Ea7c2gWJdWNPLmNxt9gCwYVsc/DXANFu3SY+N4qs0JSuYrBCi/okIx
         9w/pIOp3wxB8gNAIOL5UlcPny6cH+W/OrGAdC34sM/RKzizL5DrWMr5QdES9YLymgAKp
         zkAVR++fuJk8rGv/S5EsRzCVfDZijUbT3gZRLBA4VH5tlNbvH1w+3utgl28QeIH7XzlT
         pp3N02n3BIFNjXcaS1IaTcxduFlAKZ8l5dpIdF9BmzuQxQSxB+OZl2xV2QT1NC1uKfDS
         ro7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=Za5Oxv+SYgRJk5NPkfebr2XusPoyTV3uSyHAMStpXC4=;
        b=RoTCOZlZU8yMsPYYuRNzTNMCrcj6kN7Bri1SugwO0R0uyaFj5iiVT/qzjtE5yFnjCo
         YvcKo6ExeY1ZP7UPEpcqB8jx/fxaquLcCw0u5c6WxTTBCWcUuZKTc+DeiF2ymJlBBEFc
         fWUsvGq5Acs/VvvQWGiUau4JKA5SoLTJ8e8wohoPwene3O/KZGK1Ke42RcGaWtrGxd0Q
         RDyWuhqVKoeGoATgnMpRhgPpjqnrp5ZaISTt9obn3HRdTgi4Tjk1egUrJj7kuzifsXLc
         mtHzoyCL1YELneE7qfk6Fl8lPKI+uJ/huFdnB+flw00uA0QhXadLbaE/cmqxH1HWkote
         Tlew==
X-Gm-Message-State: AOUpUlH+8qzT5c85FA1hhBwHw6eAnyC0EJr9cbhTXiqh/BBBG/9U0rbb
	uoefRiIRVvhII4MKJx72qKSHm2eYJKDD0L9PJB0MoA==
X-Google-Smtp-Source: AA+uWPxo1mJMFpZ9HRPPp7caNTW9pWoTs7yPuE4ckwU1MnQ4vafKCC2rLb4OMlEVjpXk0TiV0h8TPvnaVJ18dZM41TA=
X-Received: by 2002:a1c:2dc8:: with SMTP id t191-v6mr2947547wmt.94.1533760520377;
 Wed, 08 Aug 2018 13:35:20 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CACVwi=KLCbDhMvzSmrBU7vi=zexSn-EfoHszYHzmt8VWLXD9Fg@mail.gmail.com>
References: <20180808142247.GB15601@w1.fi> <CACVwi=KLCbDhMvzSmrBU7vi=zexSn-EfoHszYHzmt8VWLXD9Fg@mail.gmail.com>
From: Jouni Malinen <jkmalinen@gmail.com>
Date: Wed, 8 Aug 2018 23:35:19 +0300
Message-ID: <CANe27jJDj8xhe4KeUiPwxLE2Uqp-JXahC_JtvR4O_JabEhdtow@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000fcda460572f272d2"
Subject: Re: [oss-security] Unauthenticated EAPOL-Key decryption in wpa_supplicant

--000000000000fcda460572f272d2
Content-Type: text/plain; charset="UTF-8"

On Wed, Aug 8, 2018 at 6:33 PM, Jens Timmerman <jens.timmerman@gmail.com>
wrote:

> I have to ask since this was only published 4 days ago and also describes
> an attack on the EAPOL frames
> Is this in any way related to atom's new attack on WPA/WPA2 using PMKID,
> https://hashcat.net/forum/thread-7717.html
>
> As far as I can see these are 2 different attacks?
>

Correct. These are completely independent issues.

- Jouni

--000000000000fcda460572f272d2--
