X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["765" "Monday" "25" "July" "2016" "10:51:16" "+1000" "Wade Mealing" "wmealing@redhat.com" "<CALJHwhSoHKvrNxFbYL4HJk4GtxHxaetQWBZQQf8ROVYqm+N=dg@mail.gmail.com>" "25" "[oss-security] Re: CVE-2016-5400 - linux kernel: denial of service in airspy USB driver." "^Date:" nil nil "7" "2016072500:51:16" "[oss-security] Re: CVE-2016-5400 - linux kernel: denial of service in airspy USB driver." (number mark "        wmealing@red Jul 25   25/765   " thread-indent "\"[oss-security] Re: CVE-2016-5400 - linux kernel: denial of service in airspy USB driver.\"\n") "<CALJHwhS5Qin0-snXT458ARcXDPTHAdpsS3ax1CCPFdWSeLeLAQ@mail.gmail.com>" ("<CALJHwhS5Qin0-snXT458ARcXDPTHAdpsS3ax1CCPFdWSeLeLAQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11448 invoked by uid 550); 25 Jul 2016 00:51:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11405 invoked from network); 25 Jul 2016 00:51:28 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=uwO6m3NxWaKvkrLTUL9TYOLSQJkUl74tu3K+I7uyOXo=;
        b=h6Q3toGM2I1pFPTZsuZmgpOlWi3zGEq4e46qIEORMMaXFwHGQvbGFW+jS5i+Vl8PPT
         vWHSCckaa5H8nWK+yNZzSh5Q6ERU16YFzZ8ziPJGlNkijmgbaB3TBfSf0AyCFmztdGQw
         JHPE0dM82adubyZ+1Q5alUTn0Swmv2WSHzFcia/RiXM/Rn3jjW+uWwUSxNJ/H1FmN8B4
         r4c23J+bLcmQH2ZASlD5R1Di6tUi0X6dbGUYux0cdWYjvfD+01RoJuK3wONCQ4bxhnDx
         3qS9mHLupgt1pkpUBvltPtS2yXqxbm31tjjhY2eRX9VteJ4ft/dDFwd0/5plOSFXhaBG
         CTlA==
X-Gm-Message-State: AEkoousEzxZgH2NfFgXecrQ/9ini4ZJ+zH03xOkuJ3V7YrTmtCqPuzcnEFC4UMblZMCsbfnP7J0GjoVfpBQsutlj
X-Received: by 10.107.197.1 with SMTP id v1mr14965598iof.178.1469407877200;
 Sun, 24 Jul 2016 17:51:17 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CALJHwhS5Qin0-snXT458ARcXDPTHAdpsS3ax1CCPFdWSeLeLAQ@mail.gmail.com>
References: <CALJHwhS5Qin0-snXT458ARcXDPTHAdpsS3ax1CCPFdWSeLeLAQ@mail.gmail.com>
Message-ID: <CALJHwhSoHKvrNxFbYL4HJk4GtxHxaetQWBZQQf8ROVYqm+N=dg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Date: Mon, 25 Jul 2016 10:51:16 +1000
From: Wade Mealing <wmealing@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE-2016-5400 - linux kernel: denial of service in airspy USB driver.
To: oss-security@lists.openwall.com

Hit send too early,


Upstream patch:
https://git.linuxtv.org/media_tree.git/commit/?id=eca2d34b9d2ce70165a50510659838e28ca22742

Maintainer has yet to send to LKML.


On Mon, Jul 25, 2016 at 10:50 AM, Wade Mealing <wmealing@redhat.com> wrote:
> Hello All,
>
> A flaw was found in the linux kernel's implementation of the airspy
> USB device driver in which a leak was found when a subdev or SDR are
> plugged into the host.
>
> An attacker can create an targeted USB device which can emulate 64 of
> these devices. Then by emulating an additional device which
> continuously connects and disconnects, each connection attempt will
> leak memory which can not be recovered.
>
> This issue was assigned CVE-2016-5400.
>
> Wade Mealing
> Red Hat Product Security Team
