X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1239" "Sunday" "19" "April" "2015" "10:15:41" "-0700" "Michal Zalewski" "lcamtuf@coredump.cx" "<CALx_OUD3cMU9-do-SW6mHVSTyKN1c0x6VbMa2wHQakN7LRagRw@mail.gmail.com>" "35" "Re: [oss-security] libxml2 issue: out-of-bounds memory access when parsing an unclosed HTML comment" nil nil nil "4" "2015041917:15:41" "[oss-security] libxml2 issue: out-of-bounds memory access when parsing an unclosed HTML comment" (number mark "        lcamtuf@core Apr 19   35/1239  " thread-indent "\"Re: [oss-security] libxml2 issue: out-of-bounds memory access when parsing an unclosed HTML comment\"\n") "<CALPTtNW6v=fPnjNj5ra9vGfqMFo4bUKyb+a+415MNjsR-5hKjQ@mail.gmail.com>" ("<CALPTtNW6v=fPnjNj5ra9vGfqMFo4bUKyb+a+415MNjsR-5hKjQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13555 invoked by uid 550); 19 Apr 2015 17:16:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13534 invoked from network); 19 Apr 2015 17:16:13 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:content-type;
        bh=TKZJvT17h8kHaAMtedYdZ/dNNSrct5iAqxbKEsvLOho=;
        b=XYIj3cS3DqCQ4QG9MQDLY5aLIiidaoztRzgKq4i15oju6Ir6wu0GOHEuPO9RqO94b0
         NoB2es91vKJFLmJgEPpmS0W0+k7aqKBiDRcdVrOcd6vuaQdDPaHj17LPt1p/M6R3nU3M
         6V2wAAhjo+KJ9Gc8RmbOVZq+SWIgmLGP2pJ7Z2B92l6YTF+DK8m+9I9JneMZg5KzFDbY
         l/eeKtJUtc4XlKZH6FAnZTiVBN/zmYGG46vZORAR3OFTImupjOmZHcQ1YeVFlaNYN+Un
         DF6gPSuJrh3uB2nG1rkI/OSEUW8vc82jasFj/pQsx4RvCXhfbVp2XrmtUzFFuXdwpLxc
         1alg==
X-Gm-Message-State: ALoCoQmBDS2y/SuUJbNDH3G8OOaraKHsCFRcu50wyAEjMsXwIHA/HG0KWgVNamkzxUu7xKNJeYPs
X-Received: by 10.66.144.201 with SMTP id so9mr13145111pab.78.1429463761669;
 Sun, 19 Apr 2015 10:16:01 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CALPTtNW6v=fPnjNj5ra9vGfqMFo4bUKyb+a+415MNjsR-5hKjQ@mail.gmail.com>
References: <CALPTtNW6v=fPnjNj5ra9vGfqMFo4bUKyb+a+415MNjsR-5hKjQ@mail.gmail.com>
Message-ID: <CALx_OUD3cMU9-do-SW6mHVSTyKN1c0x6VbMa2wHQakN7LRagRw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Date: Sun, 19 Apr 2015 10:15:41 -0700
From: Michal Zalewski <lcamtuf@coredump.cx>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] libxml2 issue: out-of-bounds memory access when
 parsing an unclosed HTML comment
To: oss-security <oss-security@lists.openwall.com>

Uh, so I guess we could also mention this one:

https://bugzilla.gnome.org/show_bug.cgi?id=744980

I wasn't sure it would ever cause anything serious / interesting,
though. Perhaps for some exotic uses?

/mz


On Sun, Apr 19, 2015 at 10:11 AM, Reed Loden <reed@reedloden.com> wrote:
> (saw this randomly today on Twitter, so figured I'd send it on to make sure
> it gets a CVE and actually gets fixed)
>
> https://hackerone.com/reports/57125#activity-384861
>
> """
> This is an out-of-bounds memory access in libxml2. By entering a unclosed
> html comment such as <!-- the libxml2 parser didn't stop parsing at the end
> of the buffer, causing random memory to be included in the parsed comment
> that was returned to ruby. In Shopify, this caused ruby objects from
> previous http requests to be disclosed in the rendered page.
>
> Link to the issue in libxml2's bugtracker:
> https://bugzilla.gnome.org/show_bug.cgi?id=746048
>
> A patched version of nokogiri (which uses a embedded libxml2) is available
> here:
> https://github.com/Shopify/nokogiri/compare/1b1fcad8bd64ab70256666c38d2c998e86ade8c0...master
>
> This bug is still not patched upstream, but both libxml2 and nokogiri
> developers are aware of the issue.
> """
>
> ~reed
