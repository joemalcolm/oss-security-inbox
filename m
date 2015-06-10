X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1055" "Wednesday" "10" "June" "2015" "10:34:33" "-0700" "Justin Burke" "jburke@tanium.com" "<CAAJTn3-JmLhNpdW8WtBu6rq3-o7AmwWfB8CiPgNaCXugLEsPug@mail.gmail.com>" "33" "[oss-security] Re: CVE=2015-1234 disambiguation" nil nil nil "6" "2015061017:34:33" "[oss-security] Re: CVE=2015-1234 disambiguation" (number mark "        jburke@taniu Jun 10   33/1055  " thread-indent "\"[oss-security] Re: CVE=2015-1234 disambiguation\"\n") "<20150610150749.GB18203@mail.corp.redhat.com>" ("<20150610150749.GB18203@mail.corp.redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17463 invoked by uid 550); 10 Jun 2015 21:32:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32756 invoked from network); 10 Jun 2015 17:34:45 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tanium.com; s=google;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=PEZa/gXC7ZHVDFeWFbo2U2ScHxAEita/FfQvne9W9ss=;
        b=pPPRSpuCbwNe6yxeET2m0Lv8Tq8F/B0br9f0oXJMWGQ78y1BJ/R5uCimj0yQ79cR9A
         EIYNWdwSQw5wtytR+kqlm2bNSMrcKpXIb5nvWHB5FISLbTs33/mT03D2UcshUg0JNu5B
         e3tIIbf/8XyCa6qhoZsXr27cz3kPB4JujMWd4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=PEZa/gXC7ZHVDFeWFbo2U2ScHxAEita/FfQvne9W9ss=;
        b=l4A8H4wP5VCvdn7t+cO/mbpP7m8BkLVLUj9qcaVUyifD8qvlG7ld05io44oAXeDURJ
         7h0gZl+90kXlGhGvMBoBrz970lnX2HUi4gCDT90TcbbQ+IQiP1cJLmFYiruatMpwUroh
         peSjolhlefWe3kK9lK03X3rP8VEeYLO7CTtnTeYgHzmzRmGPZF914W/Ztyn7erUVjkyU
         GVhrjZNcaQ2M0vIQZ01SlyGgB4l86z/Kpd3nIEmKChHgKhE4odieE0DcG/SvKGMwwtH2
         icMgCCwTjjPz6cuvJ1SbtOiP0KHINGFos1OtuiUmHM1hlVvdHTFfbbZiLoyLPPzZHBpf
         MaJw==
X-Gm-Message-State: ALoCoQlWUFoqceK5JzL7FfPYu4M6mLq94UWmld1S3RIUVUX7odNCH4WR/rmG13JHxpRPCGNFnRXO
MIME-Version: 1.0
X-Received: by 10.170.121.137 with SMTP id n131mr5638750ykb.64.1433957673533;
 Wed, 10 Jun 2015 10:34:33 -0700 (PDT)
In-Reply-To: <20150610150749.GB18203@mail.corp.redhat.com>
References: <20150610150749.GB18203@mail.corp.redhat.com>
Message-ID: <CAAJTn3-JmLhNpdW8WtBu6rq3-o7AmwWfB8CiPgNaCXugLEsPug@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a1137b250c11fcf05182d49af
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Wed, 10 Jun 2015 10:34:33 -0700
From: Justin Burke <jburke@tanium.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE=2015-1234 disambiguation
To: Vasyl Kaigorodov <vkaigoro@redhat.com>

--001a1137b250c11fcf05182d49af
Content-Type: text/plain; charset=UTF-8

Vasyl, I suspect the original reporter self-generated the CVE number.

Justin
On Jun 10, 2015 7:54 AM, "Vasyl Kaigorodov" <vkaigoro@redhat.com> wrote:

> Hello,
>
> I've spotted this on fulldisclosure mailing list today:
> http://seclists.org/fulldisclosure/2015/Jun/17
>
> It says CVE-2015-1234 was assigned to that issue, which I think is
> wrong, because this same CVE was mentioned by Google in their Chrome
> update in April 2015 [1]
> http://googlechromereleases.blogspot.cz/2015/04/stable-channel-update.html
>
> Can someone sched some light here?
> Explicitely added cve-assign, and Justin Burke (fuldisclosure post
> author).
>
> Thanks.
> --
> Vasyl Kaigorodov | Red Hat Product Security
> PGP:  0xABB6E828 A7E0 87FF 5AB5 48EB 47D0 2868 217B F9FC ABB6 E828
> Free/Busy status: https://url.corp.redhat.com/vk-free-busy-status
>
> Come talk to Red Hat Product Security at the Summit!
> Red Hat Summit 2015 - https://www.redhat.com/summit/
>

--001a1137b250c11fcf05182d49af--
