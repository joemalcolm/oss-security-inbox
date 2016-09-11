X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1962" "Saturday" "10" "September" "2016" "21:00:11" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty3puYF=K=ZicQvBiVyXVUgt7UM5FBqLF_KZGNk+op42sQ@mail.gmail.com>" "48" "[oss-security] Possible CVE request for Redis docker container" "^Date:" nil nil "9" "2016091103:00:11" "[oss-security] Possible CVE request for Redis docker container" (number mark "U       kseifried@re Sep 10   48/1962  " thread-indent "\"[oss-security] Possible CVE request for Redis docker container\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30680 invoked by uid 550); 11 Sep 2016 03:00:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30662 invoked from network); 11 Sep 2016 03:00:24 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=YFAD+0c5mo6bvrtttv5CHrVHeIfWKjI+rQxIKmp+AvM=;
        b=EX305febqKyVdNag6OHTkV/mY/vnLmRVo63vsy1YDFcyDIAJp7lnURGJYgehzlLMHC
         Mp+MSair9tGv80uF5dqmlPSQ9YmbM/cVAfANbie/+hJylWT/7zy4DuwBKNVUXqlDpAoD
         N7k61aCtNDsJlx8yh0SFxYeXNVmJyVlTjJw0tary2VRDIh9A1+YA22w5TUJoyqkXAFIf
         YOy+gNMNDC+hwcz62s9Kqz5BRTuZMweiVsICcuX7z1iFU2IXgS4XTVYOdULLGqNfzQkA
         Mo33B3cRYVTlbQfJfck+81zkyusAIbgsLckHxmDGlSXqcC6x+Eo3ZTrWFTB7iGqyeQFr
         5e8g==
X-Gm-Message-State: AE9vXwPdi3AdrTiApnMuzyswgDFeXlIx+rocl4s5pux4/CDp6Hlk3SEcQ4qrUjZJGeRShHOjM1fcRQSiG5sVIFlZ
X-Received: by 10.202.53.132 with SMTP id c126mr17161816oia.3.1473562812066;
 Sat, 10 Sep 2016 20:00:12 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CANO=Ty3puYF=K=ZicQvBiVyXVUgt7UM5FBqLF_KZGNk+op42sQ@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a113cf3e6f7cb09053c3293c3
Date: Sat, 10 Sep 2016 21:00:11 -0600
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Possible CVE request for Redis docker container
To: oss-security <oss-security@lists.openwall.com>

--001a113cf3e6f7cb09053c3293c3
Content-Type: text/plain; charset=UTF-8

So we have this:

https://github.com/dxa4481/Damn-Vulnerable-Redis-Container

I wanted to run it by the OSS-Security community first to gather other
points of view/feedback before going to the CVE board.

So:

1) Currently services that don't require auth don't get a CVE for that
specifically (e/g. memcached), so as long as it is clearly stated as such
(no auth supported, use something else to control access), however what
about implementations of these services (e.g. VM appliances, docker
containers) that don't explicitly warn, and fail to implement any
protection, should they continue to not get CVEs?

I'm inclined to say "it depends", e.g. if the appliance/container only
includes a vulnerable service (say a memcached container) and nothing else
then no CVE, but if a container/appliance is part of a larger composed
product (e.g. a webserver, web app and memcached), and it can result in a
security vulnerability then I would expect a CVE to be issued.


2) Services that are capable of authentication but do not have it enabled.
Same reasoning as above. On it's own you're expected to set it up properly.
If it's part of a larger composed product I would expect it to be setup
properly.

So in the case of https://github.com/dxa4481/Damn-Vulnerable-Redis-Container
 I'm inclined to say no CVE for the redis only container, but if a product
uses this container then it may be getting a CVE if it exposes it.

But then practically speaking we end up with N+1 CVEs for "X uses redis
container in insecure manner" rather then a single blanket CVE for "redis
container is insecure". So like I said, I'd like to get some community
feedback before I take this to the CVE board.

-- 

--
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--001a113cf3e6f7cb09053c3293c3--
