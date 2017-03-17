X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["952" "Friday" "17" "March" "2017" "09:08:39" "+0100" "Damien Regad" "dregad@mantisbt.org" "<CA+zp4VN23BSr2aCjrZohXM94UCFXdK8s5z81DLodSjbkDoMwUw@mail.gmail.com>" "28" "[oss-security] Advisory: XSS in MantisBT Source Integration Plugin (CVE-2017-6958)" nil nil nil "3" "2017031708:08:39" "[oss-security] Advisory: XSS in MantisBT Source Integration Plugin (CVE-2017-6958)" (number mark "U       dregad@manti Mar 17   28/952   " thread-indent "\"[oss-security] Advisory: XSS in MantisBT Source Integration Plugin (CVE-2017-6958)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17778 invoked by uid 550); 17 Mar 2017 14:35:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5452 invoked from network); 17 Mar 2017 08:08:51 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:sender:from:date:message-id:subject:to;
        bh=KnwJg5+oLTAMSkrLrGKI8FN8ZUoAcu7kYEH8u7P04+4=;
        b=fpnGrxmOQk89sc43KrUVNsXCY9RSMrO7f2XExZJxRJwI4acE3dbijrsQb5mghnxtaO
         KaGUeX8QGYwqJ4O3nt/cnHlpHRgA9rXTCPQNZMuCFSeHW0uFQ60SeRTPc0eISUsC461t
         cNtzlscBj0fQE4IMr2YneashRwygInUxD1u5XaXTfDwClUjv4/fcQIINJ7y0R1M3mO4k
         u5xltEjNHJq+EPxZv68UjHw7MtmHaYWc3qmxZzqRPbfyCE00WzqussVmotoG9bIkGC1v
         2YJw5F5QDV0tYm2UaMXOkKnpg0MHPMtxutTdDwUDRUaoPJQjR2YLZXdShfsVYvk3BaqB
         a9kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
         :to;
        bh=KnwJg5+oLTAMSkrLrGKI8FN8ZUoAcu7kYEH8u7P04+4=;
        b=satP/dvmGnWU0Hd5iXifXuQFs8kYoxs4cjFN16Vg8HTpQ1VfEPmN5kxORjzhdc315e
         UeX44gl4IV3wiolpTp2xDeBwNir/PON3C1W/aasEGd0O8w3gRYUmUGwSgyaGzP3UywSg
         HMJ4CvAljNl/otRwygwFHKLfgXXlXWX+69nAi1IwP6dXxfZoPZgWPbdEHyQ6hW4PJ4R5
         iaefgA+Ew/uEZH4lnZczFnKShtIC5EYBlJ1wo2GkRU10tU3iOG7QqUSjJjxOODB3tpE4
         SSq+ZsFHZtvx/G7FIpQnrYZ03byq03PscLwcheW4D2afktXk7Ux+zUnXWUJwf2dLxT7e
         50NA==
X-Gm-Message-State: AFeK/H0N0OvqPSkox5WghS2923vwM3CuY9lhcNG4n3C+KA4TRxjbaqrywL/PC31Gc7FPO44hdv1rZeC3XP8jPw==
X-Received: by 10.55.122.134 with SMTP id v128mr10213848qkc.115.1489738119947;
 Fri, 17 Mar 2017 01:08:39 -0700 (PDT)
MIME-Version: 1.0
Sender: dregad@gmail.com
From: Damien Regad <dregad@mantisbt.org>
Date: Fri, 17 Mar 2017 09:08:39 +0100
X-Google-Sender-Auth: zvnjHlAsPz-bLp8mcyMc3chcBlM
Message-ID: <CA+zp4VN23BSr2aCjrZohXM94UCFXdK8s5z81DLodSjbkDoMwUw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=94eb2c062a5872aec1054ae8af38
Subject: [oss-security] Advisory: XSS in MantisBT Source Integration Plugin (CVE-2017-6958)

--94eb2c062a5872aec1054ae8af38
Content-Type: text/plain; charset=UTF-8

A cross-site scripting (XSS) vulnerability in the MantisBT Source
Integration plugin search result page allows remote attackers to inject
arbitrary HTML or JavaScript (the latter, only if MantisBT's CSP settings
permit it) by crafting any valid parameter.

Affected versions: 2.0.0-beta.1 through 2.0.1
Fixed in versions: 2.0.2 (released 2017-03-16)

Patch:
https://github.com/mantisbt-plugins/source-integration/commit/b014da5687ec37c571105627bf090cb6f270ec35

Credits:
Reported by Dmitry Ivanov (d1m0ck) https://twitter.com/d1m0ck
Fixed by Damien Regad

References:
- Initial report http://openbugbounty.org/incidents/218993/
- Issue tracker https://github.com/mantisbt-plugins/source-integration/
issues/205
- Release
https://github.com/mantisbt-plugins/source-integration/releases/tag/v2.0.2

<http://www.mantisbt.org/bugs/view.php?id=22486>

--94eb2c062a5872aec1054ae8af38--
