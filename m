X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3723" "Wednesday" "8" "August" "2018" "17:33:00" "+0200" "Jens Timmerman" "jens.timmerman@gmail.com" "<CACVwi=KLCbDhMvzSmrBU7vi=zexSn-EfoHszYHzmt8VWLXD9Fg@mail.gmail.com>" "90" "Re: [oss-security] Unauthenticated EAPOL-Key decryption in wpa_supplicant" nil nil nil "8" "2018080815:33:00" "[oss-security] Unauthenticated EAPOL-Key decryption in wpa_supplicant" (number mark "U       jens.timmerm Aug  8   90/3723  " thread-indent "\"Re: [oss-security] Unauthenticated EAPOL-Key decryption in wpa_supplicant\"\n") "<20180808142247.GB15601@w1.fi>" ("<20180808142247.GB15601@w1.fi>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1714 invoked by uid 550); 8 Aug 2018 15:34:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32549 invoked from network); 8 Aug 2018 15:33:13 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=ABGSXPZghP/dr+2dWM+pK8t73XoKMIcrqdgIHQ7O0h8=;
        b=oJnfzWcOPxfF7WDAbRrle2JXtPEUBKtmSk1ZWZHFnfHoA8lmWEXqLlsKPW2FXda1gP
         M9IiB35+Dc+2KRbv5dK9fRjpzfPOWXSY0WAxhSsooGZ/r71cLVRJGRYpClaExk3snhtS
         yb0VNFLokjunDrtKd+WaZ1y4xKVwbK3NAW4/sOBJY/p3lMx10iI02btfe/eWKb2MIddl
         IK611rwtF3DMBPzzc6pkTXFpUpnOzpORVOJkxY2KYrjUBHOeXqtJ98J8thQUTtmjEwNQ
         AdU8jeDHQddNBvk5A8R5VSAE3aC13SD3Tbw8OQJP/rTj50jH0PE+Ef7yRIgaph5WM7m1
         abxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=ABGSXPZghP/dr+2dWM+pK8t73XoKMIcrqdgIHQ7O0h8=;
        b=ABTYalkBgCRWrXgZhK02DKPFHR5iSQvDMhpjjmVQ2Nhgyt258pl4GQhks9q5TvUPz7
         4czGNS/BxeJ/2dm9iYSSVHl7cPQ20N+LEx1SMu6t1saBIrfOiedpiVVo16XLPlpVkT2s
         CyQrbopw+G0BcBWqb7LKkK5x1LE1nzE4xXTDDBzR3s/yTbYaJDLW3wz7gxWoVLDRQz94
         31Gvgjn9T/JjV1OTJ1Dkr7sGOLX0sI2BfrhhhWq9/z8NQ5p/kT7fINCU/P7i4IpSgLeH
         JiFtQPi5Z11QHNpiHXseJ9I7bQE00cg10BpfXDWFACtPTzFr9lNJjM/BtEY3IVlz5kbX
         zZEQ==
X-Gm-Message-State: AOUpUlGt9V9hCdo+BewIKrQleg8HcOmzOysXaKBd3xCS2evD8Issnhcr
	rNfKW4yilXAH93Rr2sDJeU1i3BU91gYcwBdqIu59u3Jxlck=
X-Google-Smtp-Source: AA+uWPyVdN/DD2pg6co15mUenJEPQmKFJvNOJyiR8kNm7JKk5pFDH2wEm01iKqDD7LFQdbEvZD8KnGPC+K4P/kL6E1w=
X-Received: by 2002:a63:1518:: with SMTP id v24-v6mr3054636pgl.162.1533742380637;
 Wed, 08 Aug 2018 08:33:00 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20180808142247.GB15601@w1.fi>
References: <20180808142247.GB15601@w1.fi>
From: Jens Timmerman <jens.timmerman@gmail.com>
Date: Wed, 8 Aug 2018 17:33:00 +0200
Message-ID: <CACVwi=KLCbDhMvzSmrBU7vi=zexSn-EfoHszYHzmt8VWLXD9Fg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000c665b60572ee3935"
Subject: Re: [oss-security] Unauthenticated EAPOL-Key decryption in wpa_supplicant

--000000000000c665b60572ee3935
Content-Type: text/plain; charset="UTF-8"

I have to ask since this was only published 4 days ago and also describes
an attack on the EAPOL frames
Is this in any way related to atom's new attack on WPA/WPA2 using PMKID,
https://hashcat.net/forum/thread-7717.html

As far as I can see these are 2 different attacks?

Regards,
Jens Timmerman

On 8 August 2018 at 16:22, Jouni Malinen <j@w1.fi> wrote:

> Published: August 8, 2018
> Identifiers:
> - CVE-2018-14526
> Latest version available from: https://w1.fi/security/2018-1/
>
> Vulnerability
>
> A vulnerability was found in how wpa_supplicant processes EAPOL-Key
> frames. It is possible for an attacker to modify the frame in a way that
> makes wpa_supplicant decrypt the Key Data field without requiring a
> valid MIC value in the frame, i.e., without the frame being
> authenticated. This has a potential issue in the case where WPA2/RSN
> style of EAPOL-Key construction is used with TKIP negotiated as the
> pairwise cipher. It should be noted that WPA2 is not supposed to be used
> with TKIP as the pairwise cipher. Instead, CCMP is expected to be used
> and with that pairwise cipher, this vulnerability is not applicable in
> practice.
>
> When TKIP is negotiated as the pairwise cipher, the EAPOL-Key Key Data
> field is encrypted using RC4. This vulnerability allows unauthenticated
> EAPOL-Key frames to be processed and due to the RC4 design, this makes
> it possible for an attacker to modify the plaintext version of the Key
> Data field with bitwise XOR operations without knowing the contents.
> This can be used to cause a denial of service attack by modifying
> GTK/IGTK on the station (without the attacker learning any of the keys)
> which would prevent the station from accepting received group-addressed
> frames. Furthermore, this might be abused by making wpa_supplicant act
> as a decryption oracle to try to recover some of the Key Data payload
> (GTK/IGTK) to get knowledge of the group encryption keys.
>
> Full recovery of the group encryption keys requires multiple attempts
> (128 connection attempts per octet) and each attempt results in
> disconnection due to a failure to complete the 4-way handshake. These
> failures can result in the AP/network getting disabled temporarily or
> even permanently (requiring user action to re-enable) which may make it
> impractical to perform the attack to recover the keys before the AP has
> already changes the group keys. By default, wpa_supplicant is enforcing
> at minimum a ten second wait time between each failed connection
> attempt, i.e., over 20 minutes waiting to recover each octet while
> hostapd AP implementation uses 10 minute default for GTK rekeying when
> using TKIP. With such timing behavior, practical attack would need large
> number of impacted stations to be trying to connect to the same AP to be
> able to recover sufficient information from the GTK to be able to
> determine the key before it gets changed.
>
>
> Vulnerable versions/configurations
>
> All wpa_supplicant versions.
>
>
> Acknowledgments
>
> Thanks to Mathy Vanhoef of the imec-DistriNet research group of KU
> Leuven for discovering and reporting this issue.
>
>
> Possible mitigation steps
>
> - Remove TKIP as an allowed pairwise cipher in RSN/WPA2 networks. This
>   can be done also on the AP side.
>
> - Merge the following commits to wpa_supplicant and rebuild:
>
>   WPA: Ignore unauthenticated encrypted EAPOL-Key data
>
>   This patch is available from https://w1.fi/security/2018-1/
>
> - Update to wpa_supplicant v2.7 or newer, once available
>
> --
> Jouni Malinen                                            PGP id EFC895FA
>

--000000000000c665b60572ee3935--
