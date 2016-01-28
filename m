X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1183" "Thursday" "28" "January" "2016" "09:38:33" "-0800" "=?utf-8?B?QXNrIEJqw7hybiBIYW5zZW4=?=" "ask@ntppool.org" "<056121F3-6A4C-4962-B3EC-CE294DDF5C5F@ntppool.org>" "32" "[oss-security] Re: [Pool] shodan.io actively infiltrating ntp.org IPv6 pools for scanning purposes" "^Cc:" nil nil "1" "2016012817:38:33" "[oss-security] Re: [Pool] shodan.io actively infiltrating ntp.org IPv6 pools for scanning purposes" (number mark "        ask@ntppool. Jan 28   32/1183  " thread-indent "\"[oss-security] Re: [Pool] shodan.io actively infiltrating ntp.org IPv6 pools for scanning purposes\"\n") "<2413003.GtkKFizscD@chimera>" ("<2413003.GtkKFizscD@chimera>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13390 invoked by uid 550); 28 Jan 2016 17:41:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11671 invoked from network); 28 Jan 2016 17:38:47 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ntppool.org; s=google;
        h=content-type:mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=2ZdidD4OvrZR85LRf7VXfWlu3n9rjjpHW89SRU0TlFQ=;
        b=YLtrddfQFeBjGfMNtXwTlTHMUL3EAkd2NOC4yjv/nvU/R/kG7YZdqn9am2SXNDLQh5
         4FHKxwXW3kOqLW1tjWojVYBV8WY8hLKhm48zF4/mxT2yOkDSqLi69n5ux9AnsC4pGv7L
         FLCUMQCQxdgRcozsVgiQNIa7w06EL3cY42ivI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:content-type:mime-version:subject:from
         :in-reply-to:date:cc:content-transfer-encoding:message-id:references
         :to;
        bh=2ZdidD4OvrZR85LRf7VXfWlu3n9rjjpHW89SRU0TlFQ=;
        b=ljybtBo6QSlyDea3XnY1XPH2vvAWKudSaMNXLmZkcqCpPYmTCg8R6db5yzuSgQNlvf
         MQndDs2uBgKakBkqar7cSg9wcPfFBbaJ7eidv2kQUurl2CJMTXgKF6UJHFfUAbJxxfAs
         KByrd5K3v5vCKWJwhSxbm4Sgb+sN5mESkdDiKIvnQ3nlTnnqAG2gJ0E0DFWWRmPe7NV3
         Bnoe4oqfCWceU0muk6oUaT8nuR3lmW5HfenbNTTnMh09cCe0BYAbEQ+bgFUdBx49Zaqe
         m8ZcyPuPDv8kHCYzWAtGAF3nErnOPyBlEMFkIFmh2LFiDk0RyYYS/I8P+qJmnz2kjgyB
         /vrg==
X-Gm-Message-State: AG10YOTbp14p2OfZANjy/ScHC4DnAtKsiBr7293JiNbEy6yOwfhJq2krIe1sQo2v0F6S6g==
X-Received: by 10.66.100.135 with SMTP id ey7mr6370885pab.108.1454002715207;
        Thu, 28 Jan 2016 09:38:35 -0800 (PST)
Content-Type: text/plain;
	charset=us-ascii
Mime-Version: 1.0 (1.0)
X-Mailer: iPhone Mail (13E5191d)
In-Reply-To: <2413003.GtkKFizscD@chimera>
Content-Transfer-Encoding: quoted-printable
Message-Id: <056121F3-6A4C-4962-B3EC-CE294DDF5C5F@ntppool.org>
References: <2413003.GtkKFizscD@chimera>
Cc: pool@lists.ntp.org, oss-security@lists.openwall.com, linuxbrad@gmail.com,
 team@security.debian.org, secalert@redhat.com
Date: Thu, 28 Jan 2016 09:38:33 -0800
From: =?utf-8?Q?Ask_Bj=C3=B8rn_Hansen?= <ask@ntppool.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: [Pool] shodan.io actively infiltrating ntp.org IPv6 pools for scanning purposes
To: Luca BRUNO <lucab@debian.org>

Hi Luca (and everyone),

I removed those servers yesterday. Brad had been helping look to see if oth=
ers were doing something similar.

I think the behavior was falling well outside what's reasonably expected fr=
om a server operator participating in the pool.

The operator had also been adding the same server multiple times in order t=
o "attract" more traffic which is definitely outside the guidelines.

It's not something we want to support, though being the "connector" between=
 users and volunteer server operators on an protocol without any encryption=
 or authentication we can't pretend there's more control than there is.

I might just be too cynical, but it also feels like something we should com=
e to expect. Anyone who's looked at traffic to an Internet facing IPv4 addr=
ess have seen much worse.

The NTP pool usage being the source sucks, but in general I am sure we will=
 see more of this as IPv6 usage goes up. Because you can't scan the IPv6 sp=
ace, there will be some value in "active addresses" so eventually we will s=
ee IP addresses traded like other PII data is now. Choose the websites you =
visit carefully?



Ask


--=20
http://www.ntppool.org/=
