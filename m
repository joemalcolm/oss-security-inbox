X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1576" "Wednesday" "18" "November" "2015" "17:01:25" "-0700" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty19Qxu1jMUkpt59eAkfk4_JNLY7o5AzrzhKUx7tgsvQOg@mail.gmail.com>" "43" "Re: [oss-security] CVE-2015-7266" nil nil nil "11" "2015111900:01:25" "[oss-security] CVE-2015-7266" (number mark "U       kseifried@re Nov 18   43/1576  " thread-indent "\"Re: [oss-security] CVE-2015-7266\"\n") "<564D1096.5070901@trylinux.us>" ("<564D1096.5070901@trylinux.us>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 8038 invoked by uid 550); 19 Nov 2015 00:01:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 8019 invoked from network); 19 Nov 2015 00:01:37 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:content-type;
        bh=Yh+otI4haBilCrrzRxwdJzdav5fO9PIK4tPQ828vDAE=;
        b=P73GdEem9Erh+2+krhFoRwgp5L/pb2fLgQ9QrTvg8zAxePMSypmsoTjeC//sUyjSFr
         EQaXTBwezV9LqXAvu7/jjArme5hkjtIDmS//tNoXRrqHlqXuvU8TvgI9R1ZVXA2MdAX/
         RJQaXpJhBfBuwj9J/jmdE30lxUVw6fus13YIpmIPzdaqHRZXJx713qlLkVC2Pqijka3U
         YTI1F0xbBnxFSWHA+v03MnxOwQ/dYvKL0uv7AcWRs7zU5XxBqd+Gkm7TL/70RLECRFIn
         82ugvt9h41E/3U9mFee5dl/dV8OHVQiZfT1oNfh/cWg/VB5wK07SpMzehdAJfVSUkcrg
         cfhw==
X-Gm-Message-State: ALoCoQkQy5YxmHI0zPULs316JtyGwqhkN0Xmm1eUYcWdmuCjW8SZcMD3KD3/wSMopSl2bscocH1j
MIME-Version: 1.0
X-Received: by 10.13.236.150 with SMTP id v144mr4650158ywe.20.1447891286021;
 Wed, 18 Nov 2015 16:01:26 -0800 (PST)
In-Reply-To: <564D1096.5070901@trylinux.us>
References: <564D1096.5070901@trylinux.us>
Date: Wed, 18 Nov 2015 17:01:25 -0700
Message-ID: <CANO=Ty19Qxu1jMUkpt59eAkfk4_JNLY7o5AzrzhKUx7tgsvQOg@mail.gmail.com>
From: Kurt Seifried <kseifried@redhat.com>
To: oss-security <oss-security@lists.openwall.com>
Content-Type: multipart/alternative; boundary=94eb2c082982c6e44d0524d975d0
Subject: Re: [oss-security] CVE-2015-7266

--94eb2c082982c6e44d0524d975d0
Content-Type: text/plain; charset=UTF-8

On Wed, Nov 18, 2015 at 4:58 PM, Zach W. <kestrel@trylinux.us> wrote:

> Hey all,
>
> Anybody have any idea what the deal is with this CVE, since it's
> referenced in http://media.pixalate.com/white-papers/xindi.pdf? It's
> being splattered all over the news, but the CVE is still in "reservered"
>
> Zach W.
>

As per the Wikipedia entry:

https://en.wikipedia.org/wiki/Common_Vulnerabilities_and_Exposures#Description

This is a standardized text description of the issue(s). One common entry
is:

** RESERVED ** This candidate has been reserved by an organization
or individual that will use it when announcing a new security problem.
When the candidate has been publicized, the details for this
candidate will be provided.

This means that the entry number has been reserved by Mitre for an issue or
a CNA has reserved the number. So in the case where a CNA requests a block
of CVE numbers in advance (e.g. Red Hat currently requests CVEs in blocks
of 500), the CVE number will be marked as reserved even though the CVE
itself may not be assigned by the CNA for some time. Until the CVE is
assigned AND Mitre is made aware of it (e.g. the embargo passes and the
issue is made public), AND Mitre has researched the issue and written a
description of it, entries will show up as "** RESERVED **".

-- 

--
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--94eb2c082982c6e44d0524d975d0--
