X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["317" "Sunday" "5" "April" "2015" "19:21:56" "+1200" "Matthew Daley" "mattd@bugfuzz.com" "<CAD3CanebpjH48avo++1pLCuOhJrQVuB=6vwaLsrAjGTUnv6L3Q@mail.gmail.com>" "12" "Re: [oss-security] CVE request: XSS in WP Super Cache < 1.4.3" nil nil nil "4" "2015040507:21:56" "[oss-security] CVE request: XSS in WP Super Cache < 1.4.3" (number mark "        mattd@bugfuz Apr  5   12/317   " thread-indent "\"Re: [oss-security] CVE request: XSS in WP Super Cache < 1.4.3\"\n") "<20150405090723.52d6c850@pc1.lan>" ("<20150405090723.52d6c850@pc1.lan>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 12183 invoked by uid 550); 5 Apr 2015 07:22:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 12165 invoked from network); 5 Apr 2015 07:22:07 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=3xXKXkqlCfbGzin5w4LGZFTNDy39dZ41UWi+u7wYNyo=;
        b=TRbCn/Qlj1jXIpajTWwP5GlWoeEySXUz8+/tyIxqjjCAkqctW8/6aWlVdW9dOOpIO7
         TW0JB7wQgpKf+/Jix1UQh8SVJaoc7TXW1FJBSgIbpnfKMPT1fb29cRV3elBCXlLtJz34
         1dsUDCO0ntZ48OL0dEpNTrMreuev1pvSij6s6rGWF37UEg/jbLIFsGB6YH7F6sO4Z0Iu
         ZRbjd/cwkir2enViCSRUioZCDbNh+/G+BQUQThrxe//JGS11qnPHyCB6kLHxthHCHP8b
         dcCQ8II5o+b2eRct2NPp5LMbprzLM17KfXrqqvflXWYH7W95Nnj6LuB009lo9xfu4HHM
         Ib9w==
X-Gm-Message-State: ALoCoQkuckPqy/vG1hzZFrWydEbg9+99ELeokEx0ffxfEzDc6o6vyKvVHubFOCktAdyWbpIP526J
MIME-Version: 1.0
X-Received: by 10.194.61.12 with SMTP id l12mr20243184wjr.139.1428218516475;
 Sun, 05 Apr 2015 00:21:56 -0700 (PDT)
In-Reply-To: <20150405090723.52d6c850@pc1.lan>
References: <20150405090723.52d6c850@pc1.lan>
Message-ID: <CAD3CanebpjH48avo++1pLCuOhJrQVuB=6vwaLsrAjGTUnv6L3Q@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Sun, 5 Apr 2015 19:21:56 +1200
From: Matthew Daley <mattd@bugfuzz.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE request: XSS in WP Super Cache < 1.4.3
To: hanno@hboeck.de

On 5 April 2015 at 19:07, Hanno B=C3=B6ck <hanno@hboeck.de> wrote:
> They don't seem to have a git repo or anything, so I can't link to a
> commit.

https://plugins.trac.wordpress.org/changeset/1127138

or

https://github.com/Automattic/wp-super-cache/commit/3e6b1286941e4e37ea1d9ff=
2dd973276213e65c0

I'm guessing.
