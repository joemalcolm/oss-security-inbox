X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1961" "Tuesday" "30" "May" "2017" "09:36:22" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty2tYv6KAjgrN3fL_YisPSMHQqpSWagEwA+T2Rz15-wGDQ@mail.gmail.com>" "51" "Re: [oss-security] Linux kernel: stack buffer overflow with controlled payload in get_options() function" "^Cc:" nil nil "5" "2017053015:36:22" "[oss-security] Linux kernel: stack buffer overflow with controlled payload in get_options() function" (number mark "        kseifried@re May 30   51/1961  " thread-indent "\"Re: [oss-security] Linux kernel: stack buffer overflow with controlled payload in get_options() function\"\n") "<CA+DvKQ+TfTcK79YgeMZorvpG38HP8zAeB=gioL6xUVDPyn7Ghg@mail.gmail.com>" ("<EBDB967B-92F8-47B9-AC79-CBF338A835F2@gmail.com>" "<20170530114138.jpcppn4j67niqhyb@perpetual.pseudorandom.co.uk>" "<d522fd07-7916-48a4-270c-933ffacddb98@redhat.com>" "<CA+DvKQ+TfTcK79YgeMZorvpG38HP8zAeB=gioL6xUVDPyn7Ghg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30616 invoked by uid 550); 30 May 2017 15:36:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30565 invoked from network); 30 May 2017 15:36:34 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=GwWwmvhbb1Cvb4sfLaKxqvEknppHKJINSlf3heZUpXM=;
        b=fuUiqcNCfQoKIoAlZnxsZJl2SGBNI2wDvtKmzznHaGg43EyHNtKaKwH0LswPRsntbc
         1KcscsPQkD5D5Hcliq8WBmF1/Nespk2CfyggYvxL5gYR77QrvatcBY3RS8If43JiiwLU
         leWigzac5yWTvOJGtUkXcLlynUEUJI1QEziHJciQaTmEZFj9+VozB3LIATlSRH+ic7V/
         5PXpZJx05Q2rIO/8aDamfJErFmrurPOBTU49hLg0Cj9F1VPw71QTMHC5WD/akbi+cGod
         0hTzFWmOyJwk+o8CyV5K2SHyvUezPQEAVnp+h8CEE0nF1jE6yZm4Xlbk82NmEo2c2HB8
         1m8w==
X-Gm-Message-State: AODbwcA1MyUZ7TZsElnMgx+YWBp0WPdkxJxPvled4oh8fVuX5D+nDDIG
	iewQRHXZ5P2iwtguPNhog19+kZ26wjME3GJWCA==
X-Received: by 10.157.14.236 with SMTP id 99mr9110630otj.164.1496158582762;
 Tue, 30 May 2017 08:36:22 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CA+DvKQ+TfTcK79YgeMZorvpG38HP8zAeB=gioL6xUVDPyn7Ghg@mail.gmail.com>
References: <EBDB967B-92F8-47B9-AC79-CBF338A835F2@gmail.com>
 <20170530114138.jpcppn4j67niqhyb@perpetual.pseudorandom.co.uk>
 <d522fd07-7916-48a4-270c-933ffacddb98@redhat.com> <CA+DvKQ+TfTcK79YgeMZorvpG38HP8zAeB=gioL6xUVDPyn7Ghg@mail.gmail.com>
Message-ID: <CANO=Ty2tYv6KAjgrN3fL_YisPSMHQqpSWagEwA+T2Rz15-wGDQ@mail.gmail.com>
Content-Type: multipart/alternative; boundary="001a11372618da873c0550bf902f"
Cc: "Designer, Solar" <solar@openwall.com>
Date: Tue, 30 May 2017 09:36:22 -0600
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Linux kernel: stack buffer overflow with
 controlled payload in get_options() function
To: oss-security <oss-security@lists.openwall.com>

--001a11372618da873c0550bf902f
Content-Type: text/plain; charset="UTF-8"

On Tue, May 30, 2017 at 9:20 AM, Daniel Micay <danielmicay@gmail.com> wrote:

> That's not what secure/verified boot means to everyone else, and
> there's nothing in mainline with those properties. To everyone else,
> it's not an arbitrary bureaucratic/marketing feature. It's
> verification of the whole base OS... i.e. Android, Android Things
> (Brillo), ChromeOS, iOS and sane embedded Linux systems. Likely
> Windows on mobile devices too, and I really doubt that Microsoft
> doesn't plan on verifying the userspace OS if they don't already.
>

Red Hat is only associated with this in so far as I happen to work for Red
Hat and I typically do the CVE assignments on the distros@ list (where this
issue was initially reported).


>
> Anyway, good luck with meaningless Red Hat security theatre. These
> "vulnerabilities" are just reinforcing the view that security people
> are foolish. There isn't disagreement that it's a meaningless feature
> with this level of incompleteness and yet a CVE is assigned for it?
> Okay then...
>

I suggest you take this issue up with MITRE/CVE Board (disclaimer: I'm also
on the CVE Board), they control CVE and the definitions of what is CVE
worthy, and in this case it largely falls under the "advertised/implied
security feature doesn't work as such". This is unlikely to change as it's
well established and has been used for over a decade.


>
> Sorry for thinking that this should be about something more than
> padding CVs and marketing materials.
>

I suggest then you take this up with the original researcher if you're
worried about people padding their CVs. This discussion isn't
productive/helpful and I suggest you take it off list.


-- 

Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--001a11372618da873c0550bf902f--
