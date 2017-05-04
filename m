X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["925" "Thursday" "4" "May" "2017" "16:12:01" "+0200" "Guido Vranken" "guidovranken@gmail.com" "<CAO5O-EL6qGatYRnqwb_aBc3x-hOTeZvZar0OQU4OU2dk45jctQ@mail.gmail.com>" "23" "[oss-security] Re: rpcbomb: remote rpcbind denial-of-service" "^Date:" nil nil "5" "2017050414:12:01" "[oss-security] Re: rpcbomb: remote rpcbind denial-of-service" (number mark "        guidovranken May  4   23/925   " thread-indent "\"[oss-security] Re: rpcbomb: remote rpcbind denial-of-service\"\n") "<CAO5O-EKoyVe5oxT3nx6pOYsHwhvp9SxcezkV-m5pnpw4Q_4j8A@mail.gmail.com>" ("<CAO5O-EKoyVe5oxT3nx6pOYsHwhvp9SxcezkV-m5pnpw4Q_4j8A@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21506 invoked by uid 550); 4 May 2017 14:45:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26310 invoked from network); 4 May 2017 14:12:14 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=T/kIQcowG0DAQfDZj2Qm3fHYo7XcrK3gFTHap2h0E8o=;
        b=Vko/wY3aAf9d6V1g1WamHpzgbZg9ViHNcBiA8WLpJMboO9es5Vrtoebz/Cw8i+AKLb
         Oxsp7bGDMwXZy4aNen1JfMAJNO7Ft1rj/+3SrY0lKD4zSMIREP/RAZiNQsKMtFMtF+TO
         DZPpW56s73gaKQnDinPoEH9qOJsjZWNeXD5Z8q3z9koDdCMPfbo60JcYZl3iG4U4pW25
         ivy8oREE2NhgCeP+LJbz7L4LS79RHGCLPbyU6kpjRpqdUJH0w0xDqVFSaFtrfSib6hru
         LtPVEF+93Qus9plCO3twxCgHrPPFVmKIHGxJsYhJ5Cg+9Nn3rTrk+kwG2LhbCgZF/fZy
         p9Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:content-transfer-encoding;
        bh=T/kIQcowG0DAQfDZj2Qm3fHYo7XcrK3gFTHap2h0E8o=;
        b=RQpCZe08BMopsIplLcuVWnY+BiOeS5jxUq5l5oCmhR9AZd3xAnkPgkpAL4VKRM1hdL
         cF9+VY8qstS/9I8AtOHGXJIWQPAgqVsHyvfaCH9ikVSSIbB8Z0a4C2/vdbHrP50/5K3Y
         9eaWCw70OKE2vuecxBfkDR9mfLCpPIEdUYJaZL02KVo5ulj/HmvIVqnloiAxvLwdNb2g
         rq27A2RlC5yFTJHCh4df7ZO2WkFYPwJI4tgmj/SFw14MzEKnJkwsDDds0v+lhxhClOu8
         1+JKspAKWbb4HC6DN8W7Jc6GMp/dAtfSrnVrjlSxRy2BxHkya537Q7t2oHoJwOKr913p
         oPBA==
X-Gm-Message-State: AN3rC/4fEaiOfxZ9Z1G+tgL6tJeoZsTY3luTkV0v/375vHnvWWpJkxWH
	BKIygHcM3A7yk2HIUED4M0qRWQ96DYyIgIk=
X-Received: by 10.31.155.4 with SMTP id d4mr11683551vke.3.1493907121795; Thu,
 04 May 2017 07:12:01 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAO5O-EKoyVe5oxT3nx6pOYsHwhvp9SxcezkV-m5pnpw4Q_4j8A@mail.gmail.com>
References: <CAO5O-EKoyVe5oxT3nx6pOYsHwhvp9SxcezkV-m5pnpw4Q_4j8A@mail.gmail.com>
Message-ID: <CAO5O-EL6qGatYRnqwb_aBc3x-hOTeZvZar0OQU4OU2dk45jctQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 4 May 2017 16:12:01 +0200
From: Guido Vranken <guidovranken@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: rpcbomb: remote rpcbind denial-of-service
To: oss-security@lists.openwall.com

Salvatore Bonaccorso  of Debian was so kind to request a CVE. It is:
CVE-2017-8779

On Wed, May 3, 2017 at 8:55 PM, Guido Vranken <guidovranken@gmail.com> wrot=
e:
> This vulnerability allows an attacker to allocate any amount of bytes
> (up to 4 gigabytes per attack) on a remote rpcbind host, and the
> memory is never freed unless the process crashes or the administrator
> halts or restarts the rpcbind service.
>
> Attacking a system is trivial; a single attack consists of sending a
> specially crafted payload of around 60 bytes through a UDP socket.
>
> This can slow down the system=E2=80=99s operations significantly or preve=
nt
> other services (such as a web server) from spawning processes
> entirely.
>
> An extensive write-up can be found here:
> https://guidovranken.wordpress.com/2017/05/03/rpcbomb-remote-rpcbind-deni=
al-of-service-patches/
>
> Exploit + patches: https://github.com/guidovranken/rpcbomb/
