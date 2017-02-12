X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2546" "Sunday" "12" "February" "2017" "19:46:49" "+0100" "Andrey Konovalov" "andreyknvl@google.com" "<CAAeHK+wyDjXzJ==B6NtmAiin9n2haTrkB_sge0pQS0BM=hGUFQ@mail.gmail.com>" "84" "[oss-security] Fwd: [scr293903] Linux kernel - upstream" nil nil nil "2" "2017021218:46:49" "[oss-security] Fwd: [scr293903] Linux kernel - upstream" (number mark "U       andreyknvl@g Feb 12   84/2546  " thread-indent "\"[oss-security] Fwd: [scr293903] Linux kernel - upstream\"\n") "<1bb55d8de4454bc999a65c777076f80d@imshyb02.MITRE.ORG>" ("<1bb55d8de4454bc999a65c777076f80d@imshyb02.MITRE.ORG>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1479 invoked by uid 550); 12 Feb 2017 21:03:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16143 invoked from network); 12 Feb 2017 18:47:02 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=dATuzpRnLgND2RE//Ymb2vYmif8v5Mcl5JN3ukD4Q4A=;
        b=v7M+9CmgMVrCnj05S7+EHdOsN0PiQmg17AIrQWkUB/0bol+wfBts9xAnur1C1+5qGt
         lU5ge7CHOo+Xzbsa9Vwm0ETxJC5tiEL25nU2O9abWcr1wP5lU0J0MOuzVVnj7eUJ+5ky
         r3fVeJT8x6JJJz+GDgKtrG94dLbrFhJGakapnz+G6+8pASU8oKOiJhhGu5ksEzMa8zza
         moTwhzeUZ5O+TV4HYRQE5NxcQFHbSbamqvqb//nnAQii2WHzKWeD1NCgcImk0kOkh905
         hTGST6IfIzjjWOar+POnAxwboAla55pB9W7tPX4KOMwC8U4Cq9tQ5k9vPdmRDn5PDRBA
         BwFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=dATuzpRnLgND2RE//Ymb2vYmif8v5Mcl5JN3ukD4Q4A=;
        b=R/Xlq8jvcKs9ZQtN6GVV/tnaliP2j6mNJP8JQENHaCk5hjwv3dYbFrmLCCm3GiqCWm
         dH9nvziJjNWn5kpHennZPbYSpLv5ohI1eGaHXOeqEfdrZMW3oW4hpHx1/Ib6sy3P9R0V
         HiEwM/EedD2L/zdFfSQf6r3INApNLb/4SEAMaBrSsioqfCb4gkKadD7YzpzmEii3COao
         RUjT3rZgfAm7mGLVJXq0g8MfbHfPx/dvXpQIcJKav56YQkRoOZo/mf8Lry4HDLoj+h4V
         POTzASNh3+kKy89Lmou8LwFUlehiC/0O0D5gXAZpTuGh2vfWIRdTtsVxwCK9j1/MMhYm
         3QBg==
X-Gm-Message-State: AMke39lOaHga1g+ULc3gampaYEaHlV9arbxh9N/ANa9XWIo4xPlSHNiLYvgSPVTxH1lZxPTRDe3SibFB5Uzn6C61
X-Received: by 10.28.74.69 with SMTP id x66mr14988180wma.124.1486925210457;
 Sun, 12 Feb 2017 10:46:50 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <1bb55d8de4454bc999a65c777076f80d@imshyb02.MITRE.ORG>
References: <1bb55d8de4454bc999a65c777076f80d@imshyb02.MITRE.ORG>
From: Andrey Konovalov <andreyknvl@google.com>
Date: Sun, 12 Feb 2017 19:46:49 +0100
Message-ID: <CAAeHK+wyDjXzJ==B6NtmAiin9n2haTrkB_sge0pQS0BM=hGUFQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8
Subject: [oss-security] Fwd: [scr293903] Linux kernel - upstream

---------- Forwarded message ----------
From:  <cve-request@mitre.org>
Date: Sun, Feb 12, 2017 at 7:45 PM
Subject: Re: [scr293903] Linux kernel - upstream
To: andreyknvl@google.com
Cc: cve-request@mitre.org


-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

The CVE ID is below. Please clarify whether you want this added to the
public CVE List immediately. You have provided
https://patchwork.ozlabs.org/patch/724136/ as a public reference that
appears to disclose this as a vulnerability, at least if the attacker
can run a local application to make arbitrary system calls. The public
reference does not directly suggest a remote attack: that detail could
be omitted from the public CVE List.


> [Additional Information]
> It's possible to cause a denial of server by sending bad IP options on a socket.
> Potentially this can be triggered remotely.
>
> ------------------------------------------
>
> [VulnerabilityType Other]
> Denial of service
>
> ------------------------------------------
>
> [Vendor of Product]
> Linux kernel
>
> ------------------------------------------
>
> [Affected Product Code Base]
> Linux kernel - upstream
>
> ------------------------------------------
>
> [Attack Type]
> Remote
>
> ------------------------------------------
>
> [Impact Denial of Service]
> true
>
> ------------------------------------------
>
> [Reference]
> https://patchwork.ozlabs.org/patch/724136/
>
> ------------------------------------------
>
> [Has vendor confirmed or acknowledged the vulnerability?]
> true

Use CVE-2017-5970.


- --
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYoK07AAoJEHb/MwWLVhi28REP/id92tkREqUYayj/GcZUN67r
swVR6fvnO0vP7lfVR4iPg5tKRCfM9FkIBU2+OHEXFGzvsXA/jHaabADqqkWOHfGA
QcXx4dz1HJEwGr+ALRVW6YDl7clWIKW9u6zP2Md6EKYPxl5IeeJHvQwCCFGhW4CW
zTdxYnPaSVs8PixpYpF5ZpiVzGL2KM13Ccwbsj7Jkjzz4YzNjWXz5Si3DsDkrD9v
NwGN1DG9q8p+Nab29di55oRSMsx9NqAXzbIKzH93aoykO5gU7PsvwszsAg98NsAY
mcwj/3s+HaZkH6i2Q8UyRfqvZ6JWNr3FGGhfZX+pEnYZ28RF93Ven8+8MrlrSEkm
B/tx0gf7Y3RPvb686ppDpkPK0x5JeOEsMhRHRSF5GKm24Ltev0c+vyEts2KJeAoq
f+8PiFz3T2DIrs3356/sa7ovsQl2+X10vQj/Ai0G4CFC1J+3e9cdqkYPvOR5PlVB
PMArIFpd2FLD/Rt9SmbtWlA6Crtcx/2Ijz29T1BlHIWSxmni1nz1bgnzg3+XhFwL
fnoCy/Wl1b/9Er6+VmY0jzlr66IOAr+5GycnjSfKqQFBEAejuH/vuGQVXP4w3F4q
6Uc1uDVE1onZPIuRgzhEUienWlRnoOOwD1Bdwa1BLEKf0sx+6zr+2gvsvr1dAI27
P8bNrk2iD7/BEvo/GY5O
=Esbo
-----END PGP SIGNATURE-----
