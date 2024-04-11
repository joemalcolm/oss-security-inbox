Received: (qmail 25700 invoked by uid 550); 12 Apr 2024 01:06:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32635 invoked from network); 11 Apr 2024 19:53:43 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1712865214; x=1713470014; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qZDL7dNc+dJrT9aV/lPxFMGsr98Bu65heoRXjMz92Ps=;
        b=kQGs0Ry+1+GRfaxt9L+r5rdXCGJ9njtBnh1eJcDaYCieR4R0C9X/bSagdtjaWcW/F0
         /ATmNrBiSttrXPZzUZxK66wzEHQp0WmJ3C+dfQ7qplPj1TphXvqPH2dUG6MyaxqbckUM
         IaQxmBFO+B2CwoaQIAXSwHBfc1zj1aU3FcCpelWOAMa1yZDVnEMSGHHbEx+au3dAxmW3
         aw+uNRDeDK5VGi5j8zYNaWHFUvIsXOM1hptWf4xSU7jJ1ZpdFvi/SuBElsFuR50g9KQ9
         wLv+41GywmN5P+0ZgwOSkbJZ/UjaNY9n86O7+KFaoG/RXf4QjjDMyQXIUJYxil4sZT+9
         Q3LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712865214; x=1713470014;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qZDL7dNc+dJrT9aV/lPxFMGsr98Bu65heoRXjMz92Ps=;
        b=KZxydNw4YLz2NH917GD9zwrOjL+ejIUzHWuz8CLhEbNBOi0pPxHYDMgW/Glw+ojeUV
         JQeClDGNmTgEsSo25UIwpcIYF1b9VZVmDWUNzdbDO7vsGeE6Vb4MXfH3LOcPLrNFTUCM
         L59Enf3tMildFbQo5WCD0Cs6xN4JhkLxFcWpW7tYXaznj86hsd+VC25GnvbWQDZTo4a6
         0Mm7n6AW6Xz2V0Tm1/84uiB69rCe3xaXiPF7/pJH4Yu8pHWU8V4DQvTXZWBugH/FTdz2
         hlGaLCjTc1qW3hR16U/6H+uUym3xStOhuyDH5oTxb2ppZGhGOhARLguCUXebEAEeuSrL
         p7jg==
X-Gm-Message-State: AOJu0YzWQ3FmXY2tf8T5OohOoZr5jl7Q8l3jfuL8icSHZf5HLf6xjLE9
	jLkEsWWIcvoLP3v4PQUAgn3WnauUclTr8H86+RgX1+KXchT0oUWUyRXDklC7br6VYOOY0GzkwdK
	fatH8eGZfuOZaYiZaIwAgXK36eQ7FZY0HFsCn/A==
X-Google-Smtp-Source: AGHT+IFPp9z9qNTNlsO9GMIf0eb4AuiTCBalUHl4aC/aOGmsF2AmtD4WsEX06mTPVuD1qzkI4YLLtoNFltuinjhNU+E=
X-Received: by 2002:a05:6214:4383:b0:69b:1dd6:f31c with SMTP id
 oh3-20020a056214438300b0069b1dd6f31cmr892147qvb.56.1712865214238; Thu, 11 Apr
 2024 12:53:34 -0700 (PDT)
MIME-Version: 1.0
References: <607d5716-128f-44c5-ab52-6dde4ca6e8a4@christopher-kunz.de>
 <b701b525-0c42-4b3a-a1a3-0ea68e864fbe@christopher-kunz.de>
 <20240411140654.GA24980@openwall.com> <052779d0-a3c3-4691-9491-08520952ca8e@christopher-kunz.de>
 <CADW8OBuC4JhqZ1Aa-GSGsRRbEzR-yL=xzRmxT+UkG_h6KsX9-A@mail.gmail.com>
In-Reply-To: <CADW8OBuC4JhqZ1Aa-GSGsRRbEzR-yL=xzRmxT+UkG_h6KsX9-A@mail.gmail.com>
From: Kyle Zeng <zengyhkyle@gmail.com>
Date: Thu, 11 Apr 2024 12:52:58 -0700
Message-ID: <CADW8OBuTW4Mxpg_aqzZs=BeHw9V8syJr3xe=nWWY9C1B-zoA-w@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/mixed; boundary="000000000000a4ce8e0615d78206"
Subject: Re: [oss-security] New Linux LPE via GSMIOC_SETCONF_DLCI?

--000000000000a4ce8e0615d78206
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Notice that my previous analysis on YuriiCrimson's exploits is their
ExploitGSM_6_5 version.
I cannot make the ExploitGSM_5_15_to_6_1 version work in the latest
kernel in my test environment. However, this does not rule out the
possibility that it still works.

And the splash of the ExploitGSM_6_5 exploit is attached to the email.

Thanks,
Kyle Zeng

On Thu, Apr 11, 2024 at 12:25=E2=80=AFPM Kyle Zeng <zengyhkyle@gmail.com> w=
rote:
>
> Hi there,
>
> I just did some preliminary analysis on this.
> There are in fact three exploits involved in this.
> CVE-2023-6546: https://github.com/Nassim-Asrir/ZDI-24-020/
> jmpe4x's GSM exploit:
> https://github.com/jmpe4x/GSM_Linux_Kernel_LPE_Nday_Exploit
> YuriiCrimson's GSM exploit: https://github.com/YuriiCrimson/ExploitGSM
>
> I tested all of them. All of them targeted the same subsystem (GSM),
> used the same KASLR leak method ("/sys/kernel/notes"). But there are
> two vulnerabilities involved here.
> In short. jmpe4x's and YuriiCrimson's exploits are the same, but the
> vulnerability is not CVE-2023-6546.
> !!!!!!!!!!!!
> It is a 0day that is not patched in the main tree yet.
> Not a patch gap.
> !!!!!!!!!!!!
>
> My analysis is performed on the latest commit of Linus's tree:
> ```
> commit e8c39d0f57f358950356a8e44ee5159f57f86ec5 (HEAD -> master,
> origin/master, origin/HEAD)
> Merge: 03a55b63919 325f3fb551f
> Author: Linus Torvalds <torvalds@linux-foundation.org>
> Date:   Wed Apr 10 19:48:05 2024 -0700
> ```
>
> And jmpe4x's and YuriiCrimson's are exactly the same. The difference
> is mostly spaces. The diff is attached to this email.
>
> Thanks,
> Kyle Zeng
>
>
> On Thu, Apr 11, 2024 at 8:07=E2=80=AFAM Dr. Christopher Kunz
> <info@christopher-kunz.de> wrote:
> >
> > Hi,
> >
> > > There are two exploits in Yurii's repo above, according to Yurii for =
two
> > > different bugs.  The above is one of them.  Perhaps also try the othe=
r?
> > The two exploit versions are for different kernels. The 6.5 exploit
> > doesn't compile on the Debian 12 6.1 kernel, and no Debian version
> > currently distributes a 6.5 kernel, AFAICT. I used
> > ExploitGSM_5_15_to_6_1/ExploitGSM and it worked.
> > > I don't know, and apparently it'd need to be two CVEs for two bugs th=
at
> > > Yurii exploits.
> > Possibly. I'm definitely out of my depth trying to analyze which bugs
> > are being exploited.
> > > CVE-2023-52564: Revert "tty: n_gsm: fix UAF in gsm_cleanup_mux"
> > > https://lists.openwall.net/linux-cve-announce/2024/03/02/54
> > >
> > > Maybe CVE-2023-52564 is one of the bugs Yurii exploits, or maybe not.
> > > I didn't look into this closely enough to tell.
> >
> > Apparently not. Debian 12 "Bookworm" currently runs this kernel:
> >
> > Linux debianexploitgsm 6.1.0-18-amd64 #1 SMP PREEMPT_DYNAMIC Debian
> > 6.1.76-1 (2024-02-01) x86_64 GNU/Linux
> >
> > According to the changelog, this kernel has the fix for CVE-2023-52564
> > included:
> >      - Revert "tty: n_gsm: fix UAF in gsm_cleanup_mux"
> > (from
> > https://metadata.ftp-master.debian.org/changelogs//main/l/linux-signed-=
amd64/linux-signed-amd64_6.1.76+1_changelog)
> >
> > Still, the exploit works, so it must exploit a different issue.
> >
> > Just my two cents,
> >
> > --cku
> >

--000000000000a4ce8e0615d78206
Content-Type: text/plain; charset="US-ASCII"; name="splash.txt"
Content-Disposition: attachment; filename="splash.txt"
Content-Transfer-Encoding: base64
Content-ID: <f_luvnoy960>
X-Attachment-Id: f_luvnoy960

WyAgIDE5LjQ5NDIwOF0gPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09ClsgICAxOS40
OTQ4NzZdIEJVRzogS0FTQU46IHNsYWItdXNlLWFmdGVyLWZyZWUgaW4gZ3Nt
X2RsY2lfY29uZmlnKzB4ZjhlLzB4MTAzMApbICAgMTkuNDk1NTA5XSBSZWFk
IG9mIHNpemUgNCBhdCBhZGRyIGZmZmY4ODgwMGJlMzgwMGMgYnkgdGFzayBF
eHBsb2l0R1NNLzIxNQpbICAgMTkuNDk2MTAyXSAKWyAgIDE5LjQ5NjI1M10g
Q1BVOiAzIFBJRDogMjE1IENvbW06IEV4cGxvaXRHU00gTm90IHRhaW50ZWQg
Ni45LjAtcmMzKyAjNzYKWyAgIDE5LjQ5Njc4NV0gSGFyZHdhcmUgbmFtZTog
UUVNVSBTdGFuZGFyZCBQQyAoaTQ0MEZYICsgUElJWCwgMTk5NiksIEJJT1Mg
MS4xNS4wLTEgMDQvMDEvMjAxNApbICAgMTkuNDk3MjI4XSBDYWxsIFRyYWNl
OgpbICAgMTkuNDk3MzY3XSAgPFRBU0s+ClsgICAxOS40OTc0ODNdICBkdW1w
X3N0YWNrX2x2bCsweDFhYi8weDI2MApbICAgMTkuNDk3NzAyXSAgcHJpbnRf
cmVwb3J0KzB4Y2UvMHg2MTAKWyAgIDE5LjQ5Nzg5OF0gID8gZ3NtX2RsY2lf
Y29uZmlnKzB4ZjhlLzB4MTAzMApbICAgMTkuNDk4MTI0XSAgPyBrYXNhbl9j
b21wbGV0ZV9tb2RlX3JlcG9ydF9pbmZvKzB4N2MvMHgyMDAKWyAgIDE5LjQ5
ODQwN10gID8gZ3NtX2RsY2lfY29uZmlnKzB4ZjhlLzB4MTAzMApbICAgMTku
NDk4NjM2XSAga2FzYW5fcmVwb3J0KzB4YjkvMHhmMApbICAgMTkuNDk4ODI2
XSAgPyBnc21fZGxjaV9jb25maWcrMHhmOGUvMHgxMDMwClsgICAxOS40OTkw
NTBdICBfX2FzYW5fcmVwb3J0X2xvYWQ0X25vYWJvcnQrMHgxNC8weDIwClsg
ICAxOS40OTkzMTJdICBnc21fZGxjaV9jb25maWcrMHhmOGUvMHgxMDMwClsg
ICAxOS40OTk1MzNdICA/IF9fcGZ4X2dzbV9kbGNpX2NvbmZpZysweDEwLzB4
MTAKWyAgIDE5LjQ5OTc3MV0gID8gX19wZnhfYXV0b3JlbW92ZV93YWtlX2Z1
bmN0aW9uKzB4MTAvMHgxMApbICAgMTkuNTAwMDUwXSAgPyBfX3Nhbml0aXpl
cl9jb3ZfdHJhY2VfY29uc3RfY21wOCsweDE4LzB4MjAKWyAgIDE5LjUwMDMz
NF0gIGdzbWxkX2lvY3RsKzB4MTAyZi8weDE3NDAKWyAgIDE5LjUwMDUzN10g
ID8gX19wZnhfZ3NtbGRfaW9jdGwrMHgxMC8weDEwClsgICAxOS41MDA3NTZd
ICA/IF9fc2FuaXRpemVyX2Nvdl90cmFjZV9jb25zdF9jbXA4KzB4MTgvMHgy
MApbICAgMTkuNTAxMDM0XSAgPyBsZHNlbV9kb3duX3JlYWQrMHhjMS8weDZm
MApbICAgMTkuNTAxMjUxXSAgPyBfX3Nhbml0aXplcl9jb3ZfdHJhY2Vfc3dp
dGNoKzB4NTQvMHhhMApbICAgMTkuNTAxNTEzXSAgPyBfX3Nhbml0aXplcl9j
b3ZfdHJhY2VfY29uc3RfY21wMisweDE4LzB4MjAKWyAgIDE5LjUwMTc5OF0g
ID8gX19zYW5pdGl6ZXJfY292X3RyYWNlX3N3aXRjaCsweDU0LzB4YTAKWyAg
IDE5LjUwMjA2MV0gIHR0eV9pb2N0bCsweDdhMi8weDE2MjAKWyAgIDE5LjUw
MjI0OV0gID8gX19wZnhfZ3NtbGRfaW9jdGwrMHgxMC8weDEwClsgICAxOS41
MDI0NjhdICA/IF9fcGZ4X3R0eV9pb2N0bCsweDEwLzB4MTAKWyAgIDE5LjUw
MjY3Nl0gID8gX19zYW5pdGl6ZXJfY292X3RyYWNlX2NtcDQrMHgxNi8weDIw
ClsgICAxOS41MDI5MzBdICA/IGZwcmVnc19hc3NlcnRfc3RhdGVfY29uc2lz
dGVudCsweDhiLzB4ZjAKWyAgIDE5LjUwMzIwMF0gID8gc3lzY2FsbF9leGl0
X3RvX3VzZXJfbW9kZSsweDkzLzB4MWYwClsgICAxOS41MDM0NTZdICA/IGRv
X3N5c2NhbGxfNjQrMHg4Ny8weDEyMApbICAgMTkuNTAzNjYwXSAgPyBfX2Zn
ZXRfbGlnaHQrMHgxOTgvMHg1NjAKWyAgIDE5LjUwMzg2Nl0gID8gc2VjdXJp
dHlfZmlsZV9pb2N0bCsweDk5LzB4YzAKWyAgIDE5LjUwNDA5NV0gID8gX19w
ZnhfdHR5X2lvY3RsKzB4MTAvMHgxMApbICAgMTkuNTA0MzA2XSAgX194NjRf
c3lzX2lvY3RsKzB4MWI0LzB4MjMwClsgICAxOS41MDQ1MTBdICB4NjRfc3lz
X2NhbGwrMHgxMjA2LzB4MjBiMApbICAgMTkuNTA0NzEwXSAgZG9fc3lzY2Fs
bF82NCsweDdiLzB4MTIwClsgICAxOS41MDQ4OThdICA/IF9fa2FzYW5fY2hl
Y2tfd3JpdGUrMHgxNC8weDIwClsgICAxOS41MDUxMThdICA/IF9yYXdfc3Bp
bl9sb2NrX2lycSsweGIwLzB4MTYwClsgICAxOS41MDUzNTVdICA/IF9fa2Fz
YW5fY2hlY2tfd3JpdGUrMHgxNC8weDIwClsgICAxOS41MDU1ODddICA/IHJl
Y2FsY19zaWdwZW5kaW5nKzB4MWFjLzB4MjUwClsgICAxOS41MDU4MjVdICA/
IF9fc2V0X3Rhc2tfYmxvY2tlZCsweGFmLzB4MjIwClsgICAxOS41MDYwNDld
ICA/IF9yYXdfc3Bpbl91bmxvY2tfaXJxKzB4M2EvMHhhMApbICAgMTkuNTA2
ODE5XSAgPyBzaWdwcm9jbWFzaysweDEwZS8weDM5MApbICAgMTkuNTA3MjY1
XSAgPyBfX3BmeF9zaWdwcm9jbWFzaysweDEwLzB4MTAKWyAgIDE5LjUwNzU2
Nl0gID8gX19zYW5pdGl6ZXJfY292X3RyYWNlX2NvbnN0X2NtcDgrMHgxOC8w
eDIwClsgICAxOS41MDc5NDBdICA/IF9fc2FuaXRpemVyX2Nvdl90cmFjZV9j
b25zdF9jbXA4KzB4MTgvMHgyMApbICAgMTkuNTA4Mjk2XSAgPyBfX3g2NF9z
eXNfcnRfc2lncHJvY21hc2srMHgyMjQvMHgyZjAKWyAgIDE5LjUwODYxOF0g
ID8gX19wZnhfX194NjRfc3lzX3J0X3NpZ3Byb2NtYXNrKzB4MTAvMHgxMApb
ICAgMTkuNTA4OTcxXSAgPyBfX3Nhbml0aXplcl9jb3ZfdHJhY2VfY21wNCsw
eDE2LzB4MjAKWyAgIDE5LjUwOTMwOV0gID8gZnByZWdzX2Fzc2VydF9zdGF0
ZV9jb25zaXN0ZW50KzB4OGIvMHhmMApbICAgMTkuNTA5NjcxXSAgPyBzeXNj
YWxsX2V4aXRfdG9fdXNlcl9tb2RlKzB4OTMvMHgxZjAKWyAgIDE5LjUwOTk5
OF0gID8gZG9fc3lzY2FsbF82NCsweDg3LzB4MTIwClsgICAxOS41MTAyNzRd
ICA/IGNsZWFyX2JoYl9sb29wKzB4MTUvMHg3MApbICAgMTkuNTEwNTQyXSAg
PyBjbGVhcl9iaGJfbG9vcCsweDE1LzB4NzAKWyAgIDE5LjUxMDgwNF0gID8g
Y2xlYXJfYmhiX2xvb3ArMHgxNS8weDcwClsgICAxOS41MTEwNjBdICA/IGNs
ZWFyX2JoYl9sb29wKzB4MTUvMHg3MApbICAgMTkuNTExMzMzXSAgPyBjbGVh
cl9iaGJfbG9vcCsweDE1LzB4NzAKWyAgIDE5LjUxMTU4N10gIGVudHJ5X1NZ
U0NBTExfNjRfYWZ0ZXJfaHdmcmFtZSsweDc2LzB4N2UKWyAgIDE5LjUxMTkx
MF0gUklQOiAwMDMzOjB4NDU3MjlmClsgICAxOS41MTIxMjldIENvZGU6IDAw
IDQ4IDg5IDQ0IDI0IDE4IDMxIGMwIDQ4IDhkIDQ0IDI0IDYwIGM3IDA0IDI0
IDEwIDAwIDAwIDAwIDQ4IDg5IDQ0IDI0IDA4IDQ4IDhkIDQ0IDI0IDIwIDQ4
IDg5IDQ0IDI0IDEwIGI4IDEwIDAwIDAwIDAwIDBmIDA1IDw0MT4gODkgYzAg
M2QgMDAgZjAgZmYgZmYgNzcgMWYgNDggOGIgNDQgMjQgMTggNjQgNDggMmIg
MDQgMjUgMjggMDAKWyAgIDE5LjUxMzE5Ml0gUlNQOiAwMDJiOjAwMDA3ZjE3
MTU2MDAxNTAgRUZMQUdTOiAwMDAwMDI0NiBPUklHX1JBWDogMDAwMDAwMDAw
MDAwMDAxMApbICAgMTkuNTEzNjExXSBSQVg6IGZmZmZmZmZmZmZmZmZmZGEg
UkJYOiAwMDAwN2YxNzE1NjAwNjQwIFJDWDogMDAwMDAwMDAwMDQ1NzI5Zgpb
ICAgMTkuNTE0MDA4XSBSRFg6IDAwMDA3ZmZlYzJkOTUyM2MgUlNJOiAwMDAw
MDAwMDQwMzg0NzA4IFJESTogMDAwMDAwMDAwMDAwMDAwNgpbICAgMTkuNTE0
NDAxXSBSQlA6IDAwMDA3ZjE3MTU2MDAxZDAgUjA4OiAwMDAwMDAwMDAwMDAw
MDAwIFIwOTogMDAwMDdmZmVjMmQ5NGU1ZgpbICAgMTkuNTE0Nzc2XSBSMTA6
IDAwMDAwMDAwMDAwMDAwMDggUjExOiAwMDAwMDAwMDAwMDAwMjQ2IFIxMjog
MDAwMDdmMTcxNTYwMDY0MApbICAgMTkuNTE1MTcwXSBSMTM6IDAwMDAwMDAw
MDAwMDAwMTYgUjE0OiAwMDAwMDAwMDAwNDFlMGMwIFIxNTogMDAwMDdmMTcx
NGUwMDAwMApbICAgMTkuNTE1NTY2XSAgPC9UQVNLPgpbICAgMTkuNTE1Njk4
XSAKWyAgIDE5LjUxNTc5Nl0gQWxsb2NhdGVkIGJ5IHRhc2sgMjE0OgpbICAg
MTkuNTE1OTkwXSAga2FzYW5fc2F2ZV9zdGFjaysweDI4LzB4NTAKWyAgIDE5
LjUxNjIwN10gIGthc2FuX3NhdmVfdHJhY2srMHgxNC8weDQwClsgICAxOS41
MTY0MjddICBrYXNhbl9zYXZlX2FsbG9jX2luZm8rMHgzOC8weDUwClsgICAx
OS41MTY2NzJdICBfX2thc2FuX2ttYWxsb2MrMHhiMS8weGMwClsgICAxOS41
MTY4OTBdICBrbWFsbG9jX3RyYWNlKzB4MTgwLzB4M2IwClsgICAxOS41MTcx
MDBdICBnc21fZGxjaV9hbGxvYysweDUwLzB4ODEwClsgICAxOS41MTczMjFd
ICBnc21sZF9pb2N0bCsweDE0MDQvMHgxNzQwClsgICAxOS41MTc1NDBdICB0
dHlfaW9jdGwrMHg3YTIvMHgxNjIwClsgICAxOS41MTgwNjhdICBfX3g2NF9z
eXNfaW9jdGwrMHgxYjQvMHgyMzAKWyAgIDE5LjUxODM0OV0gIHg2NF9zeXNf
Y2FsbCsweDEyMDYvMHgyMGIwClsgICAxOS41MTg2MDldICBkb19zeXNjYWxs
XzY0KzB4N2IvMHgxMjAKWyAgIDE5LjUxODg1OV0gIGVudHJ5X1NZU0NBTExf
NjRfYWZ0ZXJfaHdmcmFtZSsweDc2LzB4N2UKWyAgIDE5LjUxOTE5NF0gClsg
ICAxOS41MTkzMDJdIEZyZWVkIGJ5IHRhc2sgMjExOgpbICAgMTkuNTE5NTE2
XSAga2FzYW5fc2F2ZV9zdGFjaysweDI4LzB4NTAKWyAgIDE5LjUxOTc4OV0g
IGthc2FuX3NhdmVfdHJhY2srMHgxNC8weDQwClsgICAxOS41MjAwNDZdICBr
YXNhbl9zYXZlX2ZyZWVfaW5mbysweDNiLzB4NjAKWyAgIDE5LjUyMDI3Nl0g
IHBvaXNvbl9zbGFiX29iamVjdCsweDEwZS8weDE5MApbICAgMTkuNTIwNTEz
XSAgX19rYXNhbl9zbGFiX2ZyZWUrMHgzNC8weDYwClsgICAxOS41MjA3MzRd
ICBrZnJlZSsweGZhLzB4MmUwClsgICAxOS41MjA5MDldICBnc21fZGxjaV9m
cmVlKzB4MTFkLzB4MTcwClsgICAxOS41MjExMzBdICB0dHlfcG9ydF9wdXQr
MHgxNzIvMHgxZTAKWyAgIDE5LjUyMTM0MF0gIGdzbV9jbGVhbnVwX211eCsw
eDMzYS8weDg2MApbICAgMTkuNTIxNTYyXSAgZ3NtbGRfaW9jdGwrMHg1NTgv
MHgxNzQwClsgICAxOS41MjE4MDJdICB0dHlfaW9jdGwrMHg3YTIvMHgxNjIw
ClsgICAxOS41MjIwMDddICBfX3g2NF9zeXNfaW9jdGwrMHgxYjQvMHgyMzAK
WyAgIDE5LjUyMjI0MF0gIHg2NF9zeXNfY2FsbCsweDEyMDYvMHgyMGIwClsg
ICAxOS41MjI0NThdICBkb19zeXNjYWxsXzY0KzB4N2IvMHgxMjAKWyAgIDE5
LjUyMjY2MF0gIGVudHJ5X1NZU0NBTExfNjRfYWZ0ZXJfaHdmcmFtZSsweDc2
LzB4N2UKWyAgIDE5LjUyMjk0Ml0gClsgICAxOS41MjMwMzFdIFRoZSBidWdn
eSBhZGRyZXNzIGJlbG9uZ3MgdG8gdGhlIG9iamVjdCBhdCBmZmZmODg4MDBi
ZTM4MDAwClsgICAxOS41MjMwMzFdICB3aGljaCBiZWxvbmdzIHRvIHRoZSBj
YWNoZSBrbWFsbG9jLTFrIG9mIHNpemUgMTAyNApbICAgMTkuNTIzNzAyXSBU
aGUgYnVnZ3kgYWRkcmVzcyBpcyBsb2NhdGVkIDEyIGJ5dGVzIGluc2lkZSBv
ZgpbICAgMTkuNTIzNzAyXSAgZnJlZWQgMTAyNC1ieXRlIHJlZ2lvbiBbZmZm
Zjg4ODAwYmUzODAwMCwgZmZmZjg4ODAwYmUzODQwMCkKWyAgIDE5LjUyNDM4
NV0gClsgICAxOS41MjQ0NzNdIFRoZSBidWdneSBhZGRyZXNzIGJlbG9uZ3Mg
dG8gdGhlIHBoeXNpY2FsIHBhZ2U6ClsgICAxOS41MjQ3ODBdIHBhZ2U6IHJl
ZmNvdW50OjEgbWFwY291bnQ6MCBtYXBwaW5nOjAwMDAwMDAwMDAwMDAwMDAg
aW5kZXg6MHgwIHBmbjoweGJlMzgKWyAgIDE5LjUyNTIyMV0gaGVhZDogb3Jk
ZXI6MyBlbnRpcmVfbWFwY291bnQ6MCBucl9wYWdlc19tYXBwZWQ6MCBwaW5j
b3VudDowClsgICAxOS41MjU2MTRdIGZsYWdzOiAweGZmZmZmZTAwMDA4NDAo
c2xhYnxoZWFkfG5vZGU9MHx6b25lPTF8bGFzdGNwdXBpZD0weDNmZmZmZikK
WyAgIDE5LjUyNjAzOF0gcGFnZV90eXBlOiAweGZmZmZmZmZmKCkKWyAgIDE5
LjUyNjI0NF0gcmF3OiAwMDBmZmZmZmUwMDAwODQwIGZmZmY4ODgwMDEwNDJk
YzAgZGVhZDAwMDAwMDAwMDEyMiAwMDAwMDAwMDAwMDAwMDAwClsgICAxOS41
MjY2NjFdIHJhdzogMDAwMDAwMDAwMDAwMDAwMCAwMDAwMDAwMDAwMTAwMDEw
IDAwMDAwMDAxZmZmZmZmZmYgMDAwMDAwMDAwMDAwMDAwMApbICAgMTkuNTI3
MDg3XSBoZWFkOiAwMDBmZmZmZmUwMDAwODQwIGZmZmY4ODgwMDEwNDJkYzAg
ZGVhZDAwMDAwMDAwMDEyMiAwMDAwMDAwMDAwMDAwMDAwClsgICAxOS41Mjc1
MTJdIGhlYWQ6IDAwMDAwMDAwMDAwMDAwMDAgMDAwMDAwMDAwMDEwMDAxMCAw
MDAwMDAwMWZmZmZmZmZmIDAwMDAwMDAwMDAwMDAwMDAKWyAgIDE5LjUyNzkx
MF0gaGVhZDogMDAwZmZmZmZlMDAwMDAwMyBmZmZmZWEwMDAwMmY4ZTAxIGZm
ZmZlYTAwMDAyZjhlNDggMDAwMDAwMDBmZmZmZmZmZgpbICAgMTkuNTI4MzQx
XSBoZWFkOiAwMDAwMDAwODAwMDAwMDAwIDAwMDAwMDAwMDAwMDAwMDAgMDAw
MDAwMDBmZmZmZmZmZiAwMDAwMDAwMDAwMDAwMDAwClsgICAxOS41Mjg5Mzld
IHBhZ2UgZHVtcGVkIGJlY2F1c2U6IGthc2FuOiBiYWQgYWNjZXNzIGRldGVj
dGVkClsgICAxOS41Mjk0MDldIApbICAgMTkuNTI5NTA5XSBNZW1vcnkgc3Rh
dGUgYXJvdW5kIHRoZSBidWdneSBhZGRyZXNzOgpbICAgMTkuNTI5ODQwXSAg
ZmZmZjg4ODAwYmUzN2YwMDogMDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAgMDAg
MDAgMDAgMDAgMDAgMDAgMDAgMDAKWyAgIDE5LjUzMDMxMF0gIGZmZmY4ODgw
MGJlMzdmODA6IDAwIDAwIDAwIDAwIDAwIDAwIDAwIDAwIDAwIDAwIDAwIDAw
IDAwIDAwIDAwIDAwClsgICAxOS41MzA3NzRdID5mZmZmODg4MDBiZTM4MDAw
OiBmYSBmYiBmYiBmYiBmYiBmYiBmYiBmYiBmYiBmYiBmYiBmYiBmYiBmYiBm
YiBmYgpbICAgMTkuNTMxMjE0XSAgICAgICAgICAgICAgICAgICAgICAgXgpb
ICAgMTkuNTMxNDM2XSAgZmZmZjg4ODAwYmUzODA4MDogZmIgZmIgZmIgZmIg
ZmIgZmIgZmIgZmIgZmIgZmIgZmIgZmIgZmIgZmIgZmIgZmIKWyAgIDE5LjUz
MTg5MF0gIGZmZmY4ODgwMGJlMzgxMDA6IGZiIGZiIGZiIGZiIGZiIGZiIGZi
IGZiIGZiIGZiIGZiIGZiIGZiIGZiIGZiIGZiClsgICAxOS41MzIzMjRdID09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PQpbICAgMTkuNTMyNzk2XSBEaXNhYmxpbmcg
bG9jayBkZWJ1Z2dpbmcgZHVlIHRvIGtlcm5lbCB0YWludAo=

--000000000000a4ce8e0615d78206--
