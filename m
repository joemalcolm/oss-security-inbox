X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1272" "Monday" "24" "August" "2015" "12:44:13" "-0700" "Reed Loden" "reed@reedloden.com" "<CALPTtNVjfcxzAsBAuL9v1gdq97H5sNSKT9uyrY0mmv=TetzpSg@mail.gmail.com>" "43" "[oss-security] Re: CVE request: uglify-js node.js module <2.4.24 incorrectly handles non-boolean comparisons during minification" nil nil nil "8" "2015082419:44:13" "[oss-security] Re: CVE request: uglify-js node.js module <2.4.24 incorrectly handles non-boolean comparisons during minification" (number mark "        reed@reedlod Aug 24   43/1272  " thread-indent "\"[oss-security] Re: CVE request: uglify-js node.js module <2.4.24 incorrectly handles non-boolean comparisons during minification\"\n") "<CALPTtNXiS0jqswCaH2z59oAAsOmAWZBaKcGEtOc8cGGUM9yd=Q@mail.gmail.com>" ("<CALPTtNXiS0jqswCaH2z59oAAsOmAWZBaKcGEtOc8cGGUM9yd=Q@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 22455 invoked by uid 550); 24 Aug 2015 19:44:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22410 invoked from network); 24 Aug 2015 19:44:45 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=reedloden.com; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :content-type;
        bh=MVzJFHSzRMp9RwK6WcpHyBW+ZUARYKTy7NxvWlN/RSo=;
        b=GmZZkEuiYMYWouwFXsOZkT1wJ/JTgbpmiTInYUZbAHJFK4SKlDTB5Sajx8inox+klT
         MQbD6sn9updmm/tZDoCuL9VU9hO1ZXqv2PmtuSGa3qgWfB57/02BDnqP7fw1xwsHx8Kd
         RxyvzLAoh3HinL5UyQXEmJ3ttaD+amHCAxdLo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:content-type;
        bh=MVzJFHSzRMp9RwK6WcpHyBW+ZUARYKTy7NxvWlN/RSo=;
        b=mq+Rvu5WI0JmV/3YsDahcN0+HKAsq6wXh1+ym39/+JsQZTXn/UKP+dpQnanU9fiCXU
         mnWHEStFx0/gmDq1LNpAg1z/ldSMus6mN685UE3tme1yAgF35Kw0hGIWGmGuvxvJFvVP
         1saO3BB2vi4Le2oXRL25Lg/h+pV7RHMBTIhZYW+GUROmkfIbyhnhA9N+T8PuzCviLaEY
         f9xogGQGh1B4M9kPoIn80sadQl2eMmCzJVTSkDuyyu2rnO6AVYibZU39M3pieU3e7c+O
         a2auAgGlYQL5cx9dd0MEa6BIpIjIkItyDPOn0Vkecnt0PfeUWavv0umFUaMbbvovoMje
         tQWg==
X-Gm-Message-State: ALoCoQm2MB2posGogKqKR6sTHN+MX7XC21RJjCKEwUONWlrr+b9xuiZU82l1mmm3KecOXAx3Vdzo
X-Received: by 10.50.143.2 with SMTP id sa2mr17574882igb.92.1440445473078;
 Mon, 24 Aug 2015 12:44:33 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CALPTtNXiS0jqswCaH2z59oAAsOmAWZBaKcGEtOc8cGGUM9yd=Q@mail.gmail.com>
References: <CALPTtNXiS0jqswCaH2z59oAAsOmAWZBaKcGEtOc8cGGUM9yd=Q@mail.gmail.com>
Message-ID: <CALPTtNVjfcxzAsBAuL9v1gdq97H5sNSKT9uyrY0mmv=TetzpSg@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a1134b594bdf442051e13d898
Date: Mon, 24 Aug 2015 12:44:13 -0700
From: Reed Loden <reed@reedloden.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request: uglify-js node.js module <2.4.24 incorrectly handles
 non-boolean comparisons during minification
To: oss-security@lists.openwall.com, 
	Assign a CVE Identifier <cve-assign@mitre.org>

--001a1134b594bdf442051e13d898
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

This also affects the uglifier ruby gem as well, which is a "Ruby wrapper
for UglifyJS JavaScript compressor."

https://github.com/lautis/uglifier

No fixed version released yet, but I submitted a PR to fix in
https://github.com/lautis/uglifier/pull/86.

~reed

On Mon, Aug 24, 2015 at 11:26 AM, Reed Loden <reed@reedloden.com> wrote:

> As seen on Hacker News --
> https://zyan.scripts.mit.edu/blog/backdooring-js/
>
> Blog post has all the details, but basically the UglifyJS node module has
> a problem where the combination of De Morgan=E2=80=99s Law and non-boolea=
n values
> can lead to a case where code is incorrectly minified, which can lead to
> possibly malicious minified JS code.
>
> UglifyJS is a "JavaScript parser / mangler / compressor / beautifier
> toolkit" for Node.js.
>
> Node.js module: uglify-js (https://www.npmjs.com/package/uglify-js)
> Affects: 2.4.23 and earlier
> Fixed in: 2.4.24
> Reported via https://github.com/mishoo/UglifyJS2/issues/751
> Fixed by
> https://github.com/mishoo/UglifyJS2/commit/905b6011784ca60d41919ac1a49996=
2b7c1d4b02
>
> Can a CVE be assigned?
>
> Thanks,
> ~reed
>

--001a1134b594bdf442051e13d898--
