X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["922" "Wednesday" "18" "November" "2015" "17:09:07" "-0700" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty1OAd+X0or8CB10a5DAQQw8Ejhn_yc8ROYD=v13UirnUg@mail.gmail.com>" "27" "Re: [oss-security] CVE-2015-7266" nil nil nil "11" "2015111900:09:07" "[oss-security] CVE-2015-7266" (number mark "U       kseifried@re Nov 18   27/922   " thread-indent "\"Re: [oss-security] CVE-2015-7266\"\n") "<564D11E3.2040606@trylinux.us>" ("<564D1096.5070901@trylinux.us>" "<CANO=Ty19Qxu1jMUkpt59eAkfk4_JNLY7o5AzrzhKUx7tgsvQOg@mail.gmail.com>" "<564D11E3.2040606@trylinux.us>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28050 invoked by uid 550); 19 Nov 2015 00:09:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28032 invoked from network); 19 Nov 2015 00:09:19 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:content-type;
        bh=x0uljgSG7s59ACGcCgXH/GCqNJjmiMRIs9gak8ZHZ5I=;
        b=EGGSajPvWuAmk21soM0+m9RK3l6jyICn18+P1/Tb0bkYZSeFW+fSxp75CwiJF4IBbX
         kqs09Xr9F3ZUn9hjpUoJuotue7MacVxyrnF+nflnUD3ZRDp8VcZxfZNQoI4GerRX0z42
         jn2JTVSTXORIXAtGp7s2e2/pnCAMMQDcWQCoISduBf0PtBE+feWCFpRH9UMhg6oaw/Qn
         cIC4szjnxkBPWedYKOKzpNlu0TmMYE0ByWLT5hxxoUisYEqLbCFAICropXcjRxURHPIO
         Q8JAbOE9yB9Tc66IKn910gLl52pWBC3H+7W8pvKCvJpEuJkh0LzgHokB2mfOkO0tzU/1
         5CsQ==
X-Gm-Message-State: ALoCoQk9HHXy5QKEWQehQF/Jb6fw5tyGatsIY0FW/QKXopGZkSCGEk/BX5bLubtEf7lyTGh84ySO
MIME-Version: 1.0
X-Received: by 10.13.236.150 with SMTP id v144mr4673304ywe.20.1447891747781;
 Wed, 18 Nov 2015 16:09:07 -0800 (PST)
In-Reply-To: <564D11E3.2040606@trylinux.us>
References: <564D1096.5070901@trylinux.us>
	<CANO=Ty19Qxu1jMUkpt59eAkfk4_JNLY7o5AzrzhKUx7tgsvQOg@mail.gmail.com>
	<564D11E3.2040606@trylinux.us>
Date: Wed, 18 Nov 2015 17:09:07 -0700
Message-ID: <CANO=Ty1OAd+X0or8CB10a5DAQQw8Ejhn_yc8ROYD=v13UirnUg@mail.gmail.com>
From: Kurt Seifried <kseifried@redhat.com>
To: oss-security <oss-security@lists.openwall.com>
Content-Type: multipart/alternative; boundary=94eb2c0829824ccffa0524d99175
Subject: Re: [oss-security] CVE-2015-7266

--94eb2c0829824ccffa0524d99175
Content-Type: text/plain; charset=UTF-8

On Wed, Nov 18, 2015 at 5:03 PM, Zach W. <kestrel@trylinux.us> wrote:

> Hey Kurt,
>
> I figured as much but since the vuln has been made public what happens now?
>
> Zach W.
>

 In what sense? CVE has accomplished it's primary mission, we have an
identifier for this vulnerability which makes discussing it easy (instead
of saying "that thing in that other thing, you know function foo(), no the
other version of that thing" we can just say "CVE-foo").

As for the CVE (Mitre/NVD) database being updated to contain an entry, we
wait. Although now that I'm on the CVE board I'm going to see what we can
do to speed things up/get better coverage/etc.

--
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--94eb2c0829824ccffa0524d99175--
