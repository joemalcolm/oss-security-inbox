X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2369" "Thursday" "2" "July" "2020" "12:20:44" "+0200" "Francis Perron" "francisp@google.com" "<CAKgU3W_1sg2DLq3_H2hs6QTb0sK=7by7f8bbkhdjZia6zStoQQ@mail.gmail.com>" "63" "Re: [oss-security] Contributing Back" "^Cc:" nil nil "7" "2020070210:20:44" "[oss-security] Contributing Back" (number mark "        francisp@goo Jul  2   63/2369  " thread-indent "\"Re: [oss-security] Contributing Back\"\n") "<ea742763-f1bb-bf13-3ecf-f61aaf1e0b43@windriver.com>" ("<ea742763-f1bb-bf13-3ecf-f61aaf1e0b43@windriver.com>") nil nil nil nil nil nil nil "Re: [oss-security] Contributing Back" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 18289 invoked by uid 550); 2 Jul 2020 10:24:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17535 invoked from network); 2 Jul 2020 10:21:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Z1KocJcR7411Ef+3y3aBuBVYwh4TSfJQoOEW1buQQY0=;
        b=aU51fTvbSvBnrbcg6vcasB/1q09EE8BYkGed+lmkOkiCgc5pPyZCwExjuHtGASa7IY
         iiaDK/R1t76ISJpOzqAFs8o3gK3YCT7ByOqRl3ycEuEL4Dtx9JRp0U8ESvBFCyQy+U/T
         A8upy4Gv8XvjnUQURWU2WW2992dDTiT83YcJuOj7yrzgEVefVczYYEGO1v5pHUXZgE7W
         xcbE2ZQzM7Ago9JsKY1qJ1HDJWx/PFzaqX9+UaPA/Ha8QjufYnhgNoKZDeQa7nMfMqqg
         oX7nZwsGBDv/OgnUKCTBJF4ebu/n+Y8ywzd6s5GQ/R1ofPg2ZJA5aDuqqIkeP9NoP0aB
         TOqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Z1KocJcR7411Ef+3y3aBuBVYwh4TSfJQoOEW1buQQY0=;
        b=jABI5M6r83/OsGp2+wwqzyWEGC3sk4K7k88RNJ1tLNxDcdBtZRnLsg0qUjp0L8DTuk
         Fh13TU/4TgrEQytfCEfmiijLId6QUUUTK6EiPtlD5SnP4OT2HrjEJogkT9gdYXFaqkDl
         yyKEY2whm2GkaxuBeDRj0bs9QhxbfApFmQSgqz+qzCXBM31xj4nzvzG5EWS2KonFAzqq
         oEtccc+BbgHwRVuZoPmQdSjVlb5E3/ryVXgIr40qoel6lW476ojvLB3Xr3QJJQuu8lka
         q8dn0TjyQQEidteJ2yjrRKN9ag5pA875hpsfD2VCJKomVkZ5TFXuRrdpY3UxxRTHKf7u
         LQ6Q==
X-Gm-Message-State: AOAM5323CN15I3TPiq+NUkqLOYogChSINeFu5/oJGdqGaeoH2aJvMXg8
	EkqCpcl7Y+CDcXdY+y7rq1ysH2mrDRFi/uqY+oRl3vkFf4g=
X-Google-Smtp-Source: ABdhPJzXkX0hMIWOn/WcmVjyolNYFk9YYRSgRkeuiTVGGfDbEgeW9Bq906Kq+SGYOOUQ7c3nlD5uns14YWmnEsd2Zc0=
X-Received: by 2002:a17:907:4420:: with SMTP id om24mr17420420ejb.10.1593685286040;
 Thu, 02 Jul 2020 03:21:26 -0700 (PDT)
MIME-Version: 1.0
References: <ea742763-f1bb-bf13-3ecf-f61aaf1e0b43@windriver.com>
In-Reply-To: <ea742763-f1bb-bf13-3ecf-f61aaf1e0b43@windriver.com>
Message-ID: <CAKgU3W_1sg2DLq3_H2hs6QTb0sK=7by7f8bbkhdjZia6zStoQQ@mail.gmail.com>
Content-Type: multipart/alternative; boundary="0000000000005c293d05a972c5b5"
Cc: xiao.zhang@windriver.com, Solar Designer <solar@openwall.com>, daniel@haxx.se
Date: Thu, 2 Jul 2020 12:20:44 +0200
From: Francis Perron <francisp@google.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Contributing Back
To: oss-security@lists.openwall.com

--0000000000005c293d05a972c5b5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Xiao -
  this delay may be possible due to many things, but the simplest
possibility that comes to mind is that Daniel (here cc'd) from H1 has only
gotten a reservation of CVE number, and he and MITRE have not triggered the
submission yet.

The classic turnaround with MITRE submissions (via the webform) is less
than 48h from my experience, so when we're seeing weeks of delays, it
typically means MITRE has not been told to publish it yet.


Hope that helps,

On Thu, Jul 2, 2020 at 12:07 PM Zhang Xiao <xiao.zhang@windriver.com> wrote:

> Hi All,
>
> I am an engineer of WindRiver. Thanks for Alexander's remind about the di=
stribution and we would like to "backup" the first item of the administrati=
ve list:https://oss-security.openwall.org/wiki/mailing-lists/distros#contri=
buting-back
>
> 1. Promptly review new issue reports for meeting the list's requirements =
and confirm receipt of the report and, when necessary, inform the reporter =
of any issues with their report (e.g., obviously not actionable by the dist=
ros) and request and/or propose any required yet missing information (most =
notably, a tentative public disclosure date/time) *- primary: Oracle, backu=
p: vacant
> *
> Please let me know how we get started helping out.
>
> And, I have another point want to discuss. As we know, sometimes, the CVE=
 and NVD website don't upgrade their web page timely. For example:
>
> the security maillist had an encrypted mail called "curl: overwrite local=
 file with -J" in 20200617. It was a "pre-notification about a security adv=
isory about to ship next week in sync with our next curl release", for CVE-=
2020-8177. On curl's git tree, that very bug did been fixed and released in=
 20200621:https://github.com/curl/curl/commit/8236aba5854
>
> But, till now, both cve.mitre.org and nvd.nist.gov still mark this CVE as=
 "RESERVED":https://nvd.nist.gov/vuln/detail/CVE-2020-8177https://cve.mitre=
.org/cgi-bin/cvename.cgi?name=3DCVE-2020-8177
>
> So I wonder if that is also an contribution to remind them, if so, any ad=
vises to make it? And If it ca be defined as an contribution, we can take i=
t. :-)
>
>
> Thanks
> Xiao
>
>

--=20
Francis Perron
  Vulnerability Coordination @ Google inc.

--0000000000005c293d05a972c5b5--
