X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1020" "Sunday" "19" "April" "2015" "10:11:58" "-0700" "Reed Loden" "reed@reedloden.com" "<CALPTtNW6v=fPnjNj5ra9vGfqMFo4bUKyb+a+415MNjsR-5hKjQ@mail.gmail.com>" "29" "[oss-security] libxml2 issue: out-of-bounds memory access when parsing an unclosed HTML comment" nil nil nil "4" "2015041917:11:58" "[oss-security] libxml2 issue: out-of-bounds memory access when parsing an unclosed HTML comment" (number mark "        reed@reedlod Apr 19   29/1020  " thread-indent "\"[oss-security] libxml2 issue: out-of-bounds memory access when parsing an unclosed HTML comment\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5198 invoked by uid 550); 19 Apr 2015 17:12:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5147 invoked from network); 19 Apr 2015 17:12:29 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=reedloden.com; s=google;
        h=mime-version:from:date:message-id:subject:to:content-type;
        bh=tKL7qdggqY7hJRAB5AG1CnvRHEGVQR3AhikXuDcmsFc=;
        b=W/WD6DPaeBV/rGDuj92wxEvqyKVzSZ+sW8aaNv9+WJRjwK8hgn6DpDFg+a/XQ6TC4L
         Soe2kZ0IoqdHQYYmOPZnSZtD5SYhlwesmmNWIplt0m1BlWyxUZGfZYNp59GO/l8OBWNH
         XWQU30IfHhuEzEBgsjb8686SrAgf8ANQ8jvYI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to
         :content-type;
        bh=tKL7qdggqY7hJRAB5AG1CnvRHEGVQR3AhikXuDcmsFc=;
        b=fHyGsFGiqTXt1NO/4eEwttI7uOAez2jdcTr5oo7E5HEpaqVJvMFtL1NQOtrKNKaW2i
         HVVbMfAQZOJuXfaBNZMh7CduxLqqNj2YkHjAZjG6iSNEOFGzcmRXOE0lGd5CK9Ot966j
         ag7MB6FU4do7ptdSkw+HNZHtmdWYAt09iF/oEN3OXn/i3Bvrw1wXh8hOI3zSCRKHbqw1
         IpApe/VXc1hMHhsmZYklpreq37NmVLIEPaIHulHmrXyV8DBUmFY6c9qyCXvree1UdXwq
         9VN6DJGraa1NyxVtdLMXifvOWwHqMbz/eJLZIXL0ey7VwYViKrRAd7hVpdEnU6KuTguF
         PYDg==
X-Gm-Message-State: ALoCoQnRiQiOrnooGTEbFU3yU4ljfo975UAMIu78HsYm+x3mz/dfN2LW4Xjs9kAMA5rNTZ9q8t9w
X-Received: by 10.180.107.38 with SMTP id gz6mr18311266wib.63.1429463538464;
 Sun, 19 Apr 2015 10:12:18 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CALPTtNW6v=fPnjNj5ra9vGfqMFo4bUKyb+a+415MNjsR-5hKjQ@mail.gmail.com>
Content-Type: multipart/alternative; boundary=e89a8f2356ad6e087b051416eacf
Date: Sun, 19 Apr 2015 10:11:58 -0700
From: Reed Loden <reed@reedloden.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] libxml2 issue: out-of-bounds memory access when parsing an unclosed
 HTML comment
To: oss-security@lists.openwall.com, 
	Assign a CVE Identifier <cve-assign@mitre.org>

--e89a8f2356ad6e087b051416eacf
Content-Type: text/plain; charset=UTF-8

(saw this randomly today on Twitter, so figured I'd send it on to make sure
it gets a CVE and actually gets fixed)

https://hackerone.com/reports/57125#activity-384861

"""
This is an out-of-bounds memory access in libxml2. By entering a unclosed
html comment such as <!-- the libxml2 parser didn't stop parsing at the end
of the buffer, causing random memory to be included in the parsed comment
that was returned to ruby. In Shopify, this caused ruby objects from
previous http requests to be disclosed in the rendered page.

Link to the issue in libxml2's bugtracker:
https://bugzilla.gnome.org/show_bug.cgi?id=746048

A patched version of nokogiri (which uses a embedded libxml2) is available
here:
https://github.com/Shopify/nokogiri/compare/1b1fcad8bd64ab70256666c38d2c998e86ade8c0...master

This bug is still not patched upstream, but both libxml2 and nokogiri
developers are aware of the issue.
"""

~reed

--e89a8f2356ad6e087b051416eacf--
