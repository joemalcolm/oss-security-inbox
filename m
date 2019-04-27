X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1494" "Saturday" "27" "April" "2019" "19:23:42" "+0200" "Peter Korsgaard" "peter@korsgaard.com" "<87d0l7tl9d.fsf@dell.be.48ers.dk>" "38" "Re: [oss-security] Multiple BIND vulnerabilities disclosed (CVE-2018-5743, CVE-2019-6467, and CVE-2019-6468)" "^Cc:" nil nil "4" "2019042717:23:42" "[oss-security] Multiple BIND vulnerabilities disclosed (CVE-2018-5743, CVE-2019-6467, and CVE-2019-6468)" (number mark "        peter@korsga Apr 27   38/1494  " thread-indent "\"Re: [oss-security] Multiple BIND vulnerabilities disclosed (CVE-2018-5743, CVE-2019-6467, and CVE-2019-6468)\"\n") "<20190427163828.rnp75yis33ysgvzp@ranzbook>" ("<68fd216c-b9d7-ded4-ecb5-a5da62fc01b0@isc.org>" "<87wojie6jy.fsf@dell.be.48ers.dk>" "<20190427163828.rnp75yis33ysgvzp@ranzbook>") nil nil nil nil nil nil nil "Re: [oss-security] Multiple BIND vulnerabilities disclosed (CVE-2018-5743, CVE-2019-6467, and CVE-2019-6468)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32404 invoked by uid 550); 27 Apr 2019 17:23:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32386 invoked from network); 27 Apr 2019 17:23:56 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:to:cc:subject:references:date:in-reply-to:message-id
         :user-agent:mime-version;
        bh=egLesedwjdJU/XbK/lxIcnfzvNHaLJOMCcWWOa3B6DQ=;
        b=olofe/Q2qb8j7BaiHqx5r/WTPSH6zZv4ehBlU50ugM6m1NOVNJwqCNLOJ0o7BSnNP8
         SMFHq4KikaWri3GbEKaPCmUlBwAQu3R15lD3P0wT7PUtMXBU0rEGORTh+aC3qQCxBjUl
         Lf/26UWR7DXuzT2N3AvzTujV/xGYZgZqV19CK0BF2vMSt1Hv2uZZQX5RI4tXDPHzpnqE
         1HfeRuKNmNB+IMapIv13cj9NSHYvjM4xB7SupqUOQUEXVu2a3WTM1jK4Jes5s9+fkMG6
         Pp1pB1gs1nEvQ0w0Ol3/6LZExaoMuUv+yWMtvDbxtTC59jnTbkhBjAIjyzZ3sKNaZ9UE
         MzpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:references:date
         :in-reply-to:message-id:user-agent:mime-version;
        bh=egLesedwjdJU/XbK/lxIcnfzvNHaLJOMCcWWOa3B6DQ=;
        b=nf0nDTcZ7JH613cjf5XsGDcW/9klrfxkZ7vNQ0WAHmpMx3HxErpsPQ2+ZPGecQc0E9
         5Iwjz4whFsOehvfNlNBJti1xWUgJfM5ozRy12CMNvTpi0E9rIXlHyURbYq9zVwdSrpUa
         DFPJzh/2pN0tPNdGEEfqpjDpDZzKzICOkR7Osp1aWakZIoYXRo7yuxQmXY4WVqZj6g6S
         KbjdtWYETZv9356xUhSTU8E7ycBuTmstGWb/PYZH6thvdy2ULcQhvtta06T7/7vnNgWi
         Skfp5wp6oz5WnRQpeHJzOCmAyoAd8GvlFOQCB3NpsOwR5XWWBlnTgZJF7FHCzV4bQWXm
         w9UA==
X-Gm-Message-State: APjAAAUIrbUCm/+xA48KSeKQOfG13frUlglshorEIpEUEgxEfZzrj/3b
	QvayEwgLador8ui00pY5mLFzLqvc
X-Google-Smtp-Source: APXvYqzcYSme49qkzKAPMteM/wUMRRQlh933nUd+WtjwkCFuqhbBpiCfYIW19NwN6S+nuTNUbCm3ZA==
X-Received: by 2002:a05:6402:644:: with SMTP id u4mr32046963edx.87.1556385824562;
        Sat, 27 Apr 2019 10:23:44 -0700 (PDT)
References: <68fd216c-b9d7-ded4-ecb5-a5da62fc01b0@isc.org>
	<87wojie6jy.fsf@dell.be.48ers.dk>
	<20190427163828.rnp75yis33ysgvzp@ranzbook>
In-Reply-To: <20190427163828.rnp75yis33ysgvzp@ranzbook> (andreas@rammhold.de's
	message of "Sat, 27 Apr 2019 18:38:28 +0200")
Message-ID: <87d0l7tl9d.fsf@dell.be.48ers.dk>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
Cc: oss-security@lists.openwall.com
Date: Sat, 27 Apr 2019 19:23:42 +0200
From: Peter Korsgaard <peter@korsgaard.com>
Reply-To: oss-security@lists.openwall.com
Sender: Peter Korsgaard <jacmet@gmail.com>
Subject: Re: [oss-security] Multiple BIND vulnerabilities disclosed (CVE-2018-5743, CVE-2019-6467, and CVE-2019-6468)
To: andreas@rammhold.de

>>>>> "andreas" == andreas  <andreas@rammhold.de> writes:

 > On 12:13 25.04.19, Peter Korsgaard wrote:
 >> It is a bit unfortunate that these security fixes now use
 >> isc_atomic_xadd() which are not available on all architectures:
 >> 
 >> .libs/client.o: In function `mark_tcp_active':
 >> client.c:(.text+0xc7c): undefined reference to `isc_atomic_xadd'
 >> client.c:(.text+0xca0): undefined reference to `isc_atomic_xadd'
 >> .libs/client.o: In function `client_accept':
 >> client.c:(.text+0x2210): undefined reference to `isc_atomic_xadd'
 >> client.c:(.text+0x230c): undefined reference to `isc_atomic_xadd'
 >> .libs/client.o: In function `exit_check':
 >> client.c:(.text+0x2958): undefined reference to `isc_atomic_xadd'
 >> .libs/client.o:client.c:(.text+0x5cb4): more undefined references to `isc_atomic_xadd' follow
 >> collect2: error: ld returned 1 exit status

 > There is a commit [1] on ISCs GitLab that removes the atomic operations
 > in favor of refcounting and thus fixes the aarch64 (and other archs?)
 > build error.

 > I applied that commit for NixOS. Looks good so far [2].

Yes, that was pointed out to me privatelyl. I am using it as well in
Buildroot:

https://git.buildroot.org/buildroot/commit/?id=fc8ace0938a0bcf2e9fa628a88853252eabc991d

Interesting enough, this fix is on the 9.11 branch:

https://github.com/isc-projects/bind9/commits/v9_11

But not part of the v9_11_6 tag:

https://github.com/isc-projects/bind9/commits/v9_11_6

-- 
Bye, Peter Korsgaard
