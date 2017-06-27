X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1935" "Tuesday" "27" "June" "2017" "16:13:37" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty1Py6iabbmct=ic55=sNRaRdUxDnucZjftb=B==56NzCw@mail.gmail.com>" "61" "Re: [oss-security] CoreOS membership to linux-distros" "^Date:" nil nil "6" "2017062722:13:37" "[oss-security] CoreOS membership to linux-distros" (number mark "        kseifried@re Jun 27   61/1935  " thread-indent "\"Re: [oss-security] CoreOS membership to linux-distros\"\n") "<e2ec939c-1fa5-8619-7771-d68ee2bff13c@coreos.com>" ("<e2ec939c-1fa5-8619-7771-d68ee2bff13c@coreos.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13626 invoked by uid 550); 27 Jun 2017 22:13:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13608 invoked from network); 27 Jun 2017 22:13:49 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=ePptImHbVBbokpQpdFZepOEvnmIJuQNuN2VuwuYBGhQ=;
        b=NVdw5dlC7BROBQni8DA9jqjrwZCqO06Y55BOkKrAYoaf0v409iVwKO3lOS8oAQFuhS
         umRdspb0NWbbhiGNeCO4MeqOTWTCeFL3zexdbSOfkjLaYB2pd/OQuS0n4cXShwc9U+wa
         r7wEsrFsbiR5C37SxlOljG019i1/pICjMjHtPc8B1K59W6XwpX5AJLFu2rSWPwm3Mq5b
         GA1Y+QssmzML5Im6EyQwYm4uJ1nUmlyDQn7aIOm2NlQVmTSZJZAfJl1pvWOmdHhbxsuh
         mtemhDUM5WOEdszctCbxpJ7aPX4oCFRErA9eeZ0CejB8MaWS3znKapmkrn9hstawSmz0
         yatg==
X-Gm-Message-State: AKS2vOwpAa9+sj+FTKUe6Kb09efFR+cPikfMv5k9RFmNqrwlbrXzKUec
	P3ENryXs7cqVbYoD2e2oaBUUuud9HixyBh0=
X-Received: by 10.237.32.177 with SMTP id 46mr9288708qtb.56.1498601617815;
 Tue, 27 Jun 2017 15:13:37 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <e2ec939c-1fa5-8619-7771-d68ee2bff13c@coreos.com>
References: <e2ec939c-1fa5-8619-7771-d68ee2bff13c@coreos.com>
Message-ID: <CANO=Ty1Py6iabbmct=ic55=sNRaRdUxDnucZjftb=B==56NzCw@mail.gmail.com>
Content-Type: multipart/alternative; boundary="94eb2c0ca4ea1714690552f86116"
Date: Tue, 27 Jun 2017 16:13:37 -0600
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CoreOS membership to linux-distros
To: oss-security <oss-security@lists.openwall.com>

--94eb2c0ca4ea1714690552f86116
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

My main question would be what expertise do you have in helping with
security issues, e.g. kernel/glibc/other engineering talent? Or do you
simply need this as a consumer of such data (e.g. so you can get containers
ready to respin for embargoed issues, and to be clear, I'm not opposed to
this type of consumption if it's in the public interest, you won't break
embargoes, etc.).

On Tue, Jun 27, 2017 at 2:59 PM, Euan Kemp <euan.kemp@coreos.com> wrote:

> Hello.
>
> We, the Container Linux team at CoreOS[0], would like to request
> membership to the linux-distros list.
>
> We've requested membership once before[1], but at the time new members
> weren't being added iirc.
>
> Based on Solar's comments in the Stack Clash thread, this seems like a
> good time to renew this discussion.
>
>
> To preempt some possible questions:
>
> Q: What=E2=80=99s Container Linux?
> Container Linux (formerly called CoreOS) is a linux distribution for
> servers which automatically updates by default; it=E2=80=99s generally av=
ailable
> and has a fairly large install base.
>
> Q: Can you handle embargoed builds?
> We have the infrastructure and experience to make embargoed
> builds/releases. These have been exercised by e.g. docker CVEs in the pas=
t.
>
> Q: Do you have an advisory page?
> We don't have a more comprehensive advisory page than our release notes
> (which list CVEs fixed in each version) and in some cases blog posts.
> We intend to have an advisory page at some indeterminate point in the
> future.
>
>
> - Euan
>
> [0]: https://coreos.com/why/
> [1]: http://seclists.org/oss-sec/2016/q4/205
>
>
>


--=20

Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--94eb2c0ca4ea1714690552f86116--
