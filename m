X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1173" "Thursday" "27" "January" "2022" "13:45:33" "+0100" "=?UTF-8?B?S2FpIEzDvGtl?=" "kai@kinvolk.io" nil "30" "Re: [oss-security] pwnkit: Local Privilege Escalation in polkit's pkexec (CVE-2021-4034)" nil nil nil "1" nil nil (number mark "U       kai@kinvolk. Jan 27   30/1173  " thread-indent "\"Re: [oss-security] pwnkit: Local Privilege Escalation in polkit's pkexec (CVE-2021-4034)\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] pwnkit: Local Privilege Escalation in polkit's pkexec (CVE-2021-4034)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 16024 invoked by uid 550); 27 Jan 2022 13:00:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3922 invoked from network); 27 Jan 2022 12:45:55 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kinvolk.io; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=HDlqz+79SkZ9+GdOFUI7TdQB6M55wpkIAr4WgAl/4ak=;
        b=YBNYMzkCfI2po2yAjwnyN8kYD0lFSskwzyIqGhCm623lXz2+lRaWdV6PCLjd34bQfW
         0kWC3Xxjca+XymYciS3t3P51H57Sj+Nlv/5e5dAIYdYgJNzI3ePuPxBTfATZJF0Llewl
         quH+uyvkthX+vVY1Xdg6YKeF0aXrXoR7JpIig=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:content-transfer-encoding;
        bh=HDlqz+79SkZ9+GdOFUI7TdQB6M55wpkIAr4WgAl/4ak=;
        b=wgrSVPgWsSUeOhtoZH7WB1aDaKTB5BIbgNBKWTN7oYGBelXMPloe/kJuDE4a6og6SK
         JPR6JfwvkKQXqaJX15J7e57ha3mU/w65bi7br5/kZ61OdX7qcrKzycEoGItXGywJmv67
         JAmFWrqlriD8aLPNhjoMd7AxM37nj8aBkITzgH1hCB28GDjnVsmwGKRfs+e2yN2+Nr8P
         pJxcFA5XvrbowuUU960a1BggeG6AtqePec4yKxQQKFPxsKPjzZdAmT8VUPy5x2G/cyQA
         Is8ttk+vs8PA1QPWehwiLPCShjHKnTnTd/crB3WwnNN7t9FVN5njfufsXpuewZs73D2G
         I3uQ==
X-Gm-Message-State: AOAM532MUzkW8Pah3LOaNrliAbTCcWGb3zJFDvrUfqH8mtsuqmcdmNYN
	BrMkW/iU0J3rIEeeWrbx6GUZTso546odVYicIwc/+k17zFYG3w==
X-Google-Smtp-Source: ABdhPJxwTD53RtivKNqo03tyfyYhbSR34qJogrMJunMRV8coyXD42/CHP9zwl8+3t7JYI9V6o1XO3it0cxZvpyjmfig=
X-Received: by 2002:a5d:6a8d:: with SMTP id s13mr2880872wru.280.1643287543998;
 Thu, 27 Jan 2022 04:45:43 -0800 (PST)
MIME-Version: 1.0
References: <20220125175655.GA14958@localhost.localdomain> <YfFBAVnpRJemuCed@xosc.org>
 <CABEVAa2T604XknM=iC01OVRciWVCiTKJxuNS=RRtWhGpUWmwnw@mail.gmail.com>
In-Reply-To: <CABEVAa2T604XknM=iC01OVRciWVCiTKJxuNS=RRtWhGpUWmwnw@mail.gmail.com>
From: =?UTF-8?B?S2FpIEzDvGtl?= <kai@kinvolk.io>
Date: Thu, 27 Jan 2022 13:45:33 +0100
Message-ID: <CAL6HQvEU_KcXFrvgLoP1woAyV6U-8onZBJ=4vs-FE0gxLCrvYw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] pwnkit: Local Privilege Escalation in polkit's
 pkexec (CVE-2021-4034)

> Dominik Czarnota:
> And many other binaries also do things incorrectly

The setuid binary polkit-agent-helper-1 has checks in place for argc
in the usual code paths but when it's not executed with euid 0 (i.e.,
it's not setuid), there is an argv[0] deref through printf which
luckily handles gracefully and prints "(null)" instead:
  polkit-agent-helper-1: needs to be setuid root
  PAM_ERROR_MSG Incorrect permissions on (null) (needs to be setuid root)

I wonder however, if the amount of setuid binaries couldn't be
reduced, in this case by offloading the PAM auth check to the polkit
daemon again (which could verify the client's programs uid through the
Unix Domain Socket).

An alternative to pkexec that is not setuid but also uses polkit auth
is systemd-run (here is an attempt at mimicking the sudo UX:
https://gist.github.com/pothos/73dd4f7694acc3b6bbed614438f6e2b1).


--=20
Kinvolk GmbH | Adalbertstr.6a, 10999 Berlin | tel: +491755589364

Gesch=C3=A4ftsf=C3=BChrer/Directors: Benjamin Owen Orndorff

Registergericht/Court of registration: Amtsgericht Charlottenburg

Registernummer/Registration number: HRB 171414 B

Ust-ID-Nummer/VAT ID number: DE302207000
