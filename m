X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["441" "Wednesday" "19" "July" "2017" "23:37:28" "+1200" "Matthew Daley" "mattd@bugfuzz.com" "<CAD3CancmhjKRJd1oXmxpFXp3vUB7Q_rFNAyduavPUtKE_9gycg@mail.gmail.com>" "17" "[oss-security] Re: ATutor CVE-2017-1000002, CVE-2017-1000003, CVE-2017-1000004" "^Cc:" nil nil "7" "2017071911:37:28" "[oss-security] Re: ATutor CVE-2017-1000002, CVE-2017-1000003, CVE-2017-1000004" (number mark "        mattd@bugfuz Jul 19   17/441   " thread-indent "\"[oss-security] Re: ATutor CVE-2017-1000002, CVE-2017-1000003, CVE-2017-1000004\"\n") "<20170716120139.ivmlgyaqwxrp2mhl@tunkki>" ("<20170716120139.ivmlgyaqwxrp2mhl@tunkki>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28022 invoked by uid 550); 19 Jul 2017 11:37:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28004 invoked from network); 19 Jul 2017 11:37:41 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bugfuzz-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=IjB8C62zzMJIEP7Zx47Yc1BSy3JnS/kF/PqKeC8JAj8=;
        b=LIDkEDjV7YR5+0UnXdbJX+LK+d6Cps4eG46Q6fvKBv9SsTP49XfV8a874KHPwBh3ge
         BEU0KlpBbEGsPMNNjXFnGnsSaSuM6RTO/8PYgTntOp7KC4WfiOuwc+EkIZFiCjEy5WUn
         SrEqPZ+Odai4RH0Nj/3Til1fnYZ0o2567KwPnXL2hbkypzLyX6dSC3Grjc+ujFHoOZq6
         t0HhIa+Mrhly9U1x8L32ohz7X2YFu4F/dC3hUPjuvVvUGK7huKgywFHCmeFTHuYIaIjb
         ZA8rq0HS5TLspdml29b5exJOwSwUvYlPr2CtUgKS0lNS4SiVCbS7n3P8I07ShmFTJ7KP
         rXJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=IjB8C62zzMJIEP7Zx47Yc1BSy3JnS/kF/PqKeC8JAj8=;
        b=jSU+CxhUwgpF05uXepvhkLopPBNTjHnS35DMht0v82act+8+uwtVsVL1lxq/qmNMXb
         2uiVtITDKZS/o3Dn4NMDnrgFub0O5+MYG6zrRZtszm9nYW1kSW5SChWJjzwkuvIZTTi2
         MNfhP5snCSzMKTbaM4e/tZy/Cyf8GjUgXF5lpNlnBUXXAK1VyFXoD/QK3Np/IfBvStts
         ovvDW/YpnUMCq18FbW1c36y5TF9w8p2gPxVzqg6RajTeAPVjKGyFY+tqxAGxw6AgYVNy
         AAnmm1t26x5aMV9oMYwMRg3PAY4bZpUl7E6+sSZXTd4FsW9vwA3OC4DITWXjjHzRZ1gT
         N1OQ==
X-Gm-Message-State: AIVw110sgRctJXeUNYcAe1sdMep/vCoLN+Dt3OoghxqnerrrtFiAHMJD
	Q1bLLgBbSAsQMCI65iT3Co2HLfOzLWf6
X-Received: by 10.176.85.15 with SMTP id t15mr1307287uaa.104.1500464249340;
 Wed, 19 Jul 2017 04:37:29 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20170716120139.ivmlgyaqwxrp2mhl@tunkki>
References: <20170716120139.ivmlgyaqwxrp2mhl@tunkki>
Message-ID: <CAD3CancmhjKRJd1oXmxpFXp3vUB7Q_rFNAyduavPUtKE_9gycg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Cc: Kurt Seifried <kurt@seifried.org>, oss-security@lists.openwall.com
Date: Wed, 19 Jul 2017 23:37:28 +1200
From: Matthew Daley <mattd@bugfuzz.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: ATutor CVE-2017-1000002, CVE-2017-1000003, CVE-2017-1000004
To: Henri Salo <henri@nerv.fi>

JFTR:

On 17 July 2017 at 00:01, Henri Salo <henri@nerv.fi> wrote:
> Is this assigment somehow related to this oss-security post?
> http://www.openwall.com/lists/oss-security/2016/07/01/3

Yes.

CVE-2017-1000002 = issues #26 and #32
CVE-2017-1000003 = issues #29 to #31
CVE-2017-1000004 = issues #1 to #25, #27 and #28 (but issue #25 should
probably be in CVE-2017-1000003 as it's a missing auth check, not a
SQL injection)

HTH,

- Matthew
