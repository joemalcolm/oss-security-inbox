X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1831" "Thursday" "10" "September" "2020" "00:30:40" "+0200" "=?UTF-8?B?S2FpIEzDvGtl?=" "kai@kinvolk.io" "<CAL6HQvHDika0NmatJLfHLDE2hnb44o7s-W-EscFPvgt2yXmamw@mail.gmail.com>" "47" "Re: [oss-security] CVE-2020-14386: Linux kernel: af_packet.c vulnerability" nil nil nil "9" "2020090922:30:40" "[oss-security] CVE-2020-14386: Linux kernel: af_packet.c vulnerability" (number mark "U       kai@kinvolk. Sep 10   47/1831  " thread-indent "\"Re: [oss-security] CVE-2020-14386: Linux kernel: af_packet.c vulnerability\"\n") "<20200904073603.GA21152@openwall.com>" ("<CAM6JnLfDLbZA1Ky+UDjcA8XOrbAqazh4YQgH8Ur9pyhjBA2nQQ@mail.gmail.com>" "<20200904073603.GA21152@openwall.com>") nil nil nil nil nil nil nil "Re: [oss-security] CVE-2020-14386: Linux kernel: af_packet.c vulnerability" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26236 invoked by uid 550); 10 Sep 2020 07:00:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23666 invoked from network); 9 Sep 2020 22:31:02 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kinvolk.io; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=AUulCcjG9ge1sYAJPfS4TQWEd7AAutSz5W9EQwWan5c=;
        b=Zd1lmqhoxefGncIaMoHRuPlPfwlt3X785ETS1WVRp9ajGGuxmlO6HN23PoUeWDFKJi
         B99FpUyHVUmnkVJujkdglVOhZizyVttFE4uZsnr73nzj8Sx+TEVq9Y6TLFZrMSc8eg0K
         a4zYUYz/uxLcMa5VHNN8wpu8ruLIWj4qbNzFM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:content-transfer-encoding;
        bh=AUulCcjG9ge1sYAJPfS4TQWEd7AAutSz5W9EQwWan5c=;
        b=YNIpd9D8a5cF0Aql2b8jnlVKsFweL+yxp1eH2PQIwz6826QFOWiIzBlpgPgoAmjxFR
         CO8zaFoFAXKaj3frk1N4gwEOwuQzKj4ByEf+EOFers8m4Y9wA5IJ1FPZHb8wwevYohcV
         nohpw/SJG7As0u+ePTzYTol/0EMFP6lUs2+bTlByyMiCojAv7PcTwek9kBqM1zMK5csp
         JtCczgaDeQHIdHm91xlHDqg6kpywWJBY5TR2jgPHU2z6QbBlI/FxEK82w6CBSxzbd/F5
         /dwWP7jFCJfuGu7IoO5SyzCcyejD5QtuKKoLk9u0L9n+OIm7UclOaRAbJ7cyVVSU2Did
         AqFw==
X-Gm-Message-State: AOAM532ljPad5EbWr2A5dImramNaZ12tpPSmbpKpzyBXq9Mcj50Z7W2s
	jXtvuZkM/Tyyw8aH2DAeaebk4TGODgQ+r82oLgB1iYs6uGBALQ==
X-Google-Smtp-Source: ABdhPJxdUdNZoaWw5RQbgvhwax0zJv3bXIKCgdGfnO5rV7P4NTi4uEsadZ5WzQJ68SjIXZiLFFJDwxGmU1dhfrjnHYo=
X-Received: by 2002:a1c:6445:: with SMTP id y66mr5844863wmb.12.1599690650922;
 Wed, 09 Sep 2020 15:30:50 -0700 (PDT)
MIME-Version: 1.0
References: <CAM6JnLfDLbZA1Ky+UDjcA8XOrbAqazh4YQgH8Ur9pyhjBA2nQQ@mail.gmail.com>
 <20200904073603.GA21152@openwall.com>
In-Reply-To: <20200904073603.GA21152@openwall.com>
From: =?UTF-8?B?S2FpIEzDvGtl?= <kai@kinvolk.io>
Date: Thu, 10 Sep 2020 00:30:40 +0200
Message-ID: <CAL6HQvHDika0NmatJLfHLDE2hnb44o7s-W-EscFPvgt2yXmamw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] CVE-2020-14386: Linux kernel: af_packet.c vulnerability

Hello,

here are some words on whether related issues to CVE-2020-14386 could
exist in similar software.

There are of course forks of Linux which get updates slower or not
at all. The Android mainline branch at least has the fix already.
In case of =C2=B5Clinux I found trees that are kept on old versions with no
plans to update to newer major versions (for example, the GitHub
project EmcraftSystems/linux-emcraft is on 2.6.33).

Implementations of the Linux syscall ABI are getting more common.
I didn't test the Windows WSL and WSL2 situation. For WSL I don't
know if they implement support for RAW sockets and for WSL2 it
likely means that the virtualized Linux kernel crashes. However,
I tried to reproduce the bug with gVisor and FreeBSD.

With gVisor and the default Go network stack it was not possible to
open the RAW socket inside the runsc sandbox and a permission error
was reported. This error went away when using the Linux host network
stack and resulted in the new error
"Address family not supported by protocol" which suggests that support
for RAW sockets is not implemented but I didn't confirm it in the
source code. I think that non-race memory corruptions are rare in Go.

On FreeBSD and the Linux binary compatibility mode enabled I also got
"Address family not supported by protocol" but here as well I didn't
consult the source code to confirm that support for RAW sockets is
indeed not implemented. I don't know if a native feature like
PACKET_RESERVE exists.

Regards,
Kai



--=20
Kinvolk GmbH | Adalbertstr.6a, 10999 Berlin | tel: +491755589364

Gesch=C3=A4ftsf=C3=BChrer/Directors: Alban Crequy, Chris K=C3=BChl, Iago L=
=C3=B3pez Galeiras

Registergericht/Court of registration: Amtsgericht Charlottenburg

Registernummer/Registration number: HRB 171414 B

Ust-ID-Nummer/VAT ID number: DE302207000
