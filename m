X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["415" "Tuesday" "25" "June" "2019" "23:09:36" "+0200" "Martin Carpenter" "martin.carpenter@gmail.com" "<068eb724241a91d08f36f2262c90ae30bf135fa1.camel@gmail.com>" "11" "Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" "^Date:" nil nil "6" "2019062521:09:36" "[oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" (number mark "        martin.carpe Jun 25   11/415   " thread-indent "\"Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz\"\n") "<87a7e5zqbl.fsf@oldenburg2.str.redhat.com>" ("<CAFRnB2UmyOiRV9fnMffcAtF4ruuJZwx=fg5X=hLbQjeFN=t3Bg@mail.gmail.com>" "<20190617113203.GH15432@suse.de>" "<CACT4Y+Zu1r10wKxjAbJqZ5rXc8eq5NRWjuNVPLHbwZGAem1OTg@mail.gmail.com>" "<alpine.GSO.2.20.1906241038470.23351@scrappy.simplesystems.org>" "<alpine.LRH.2.21.1906241152180.4597@fairfax.gathman.org>" "<87a7e5zqbl.fsf@oldenburg2.str.redhat.com>") nil nil nil nil nil nil nil "Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7574 invoked by uid 550); 26 Jun 2019 09:37:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 12214 invoked from network); 25 Jun 2019 21:09:50 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:date:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=SyYxYkbDvFYMzifBdqBcB+YZWD0qki97PTophyg2dqo=;
        b=MKFiyfBMK14t3g1hM8r9uWFucUD3o5ZlZx2Ls4u50+cUkH3QMElNFW6PXsngWjMPpq
         JG6VdfKgJ2K2FNLhwCr6xQPs7OlSkvzKHwlzgF/g9ZbOrKaGowP/JXycCxWXziNdew1R
         bepK56Cvu5PshOl2CU7bKo5n8ku/QHYwEBtVSrH7KWXw2AcKDfbrwPan3m702GKDa3fi
         YKJyVla2rScP/qMzDy3QGJjfRMqrVHWiVxeETyEwsutHxWHe3XoE3u5a+2PY+RUxh04J
         jlsTI7jQs/jihqUsUaBcyH5WwI/atYLQBOPjnKNFgPCCOTjXkqLd5o06zF/4W3vuEt9f
         DxbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=SyYxYkbDvFYMzifBdqBcB+YZWD0qki97PTophyg2dqo=;
        b=D+etShXRR2ELCoNQhZb2ZVfCB7GqZEDBnHhDDdq8/eitnV8tys+v9LeOtiIW6/4KTY
         QFVCZX1X8rKTPY0hY+Nt9bmPZ5DRXZ+WdpRPmJ286bbyX1ga1ybmPl5Zgq1sm3+QnqRW
         ikpu+6iqqkpwfeQNPAhF/266IeObfSCiCQnbGO4KSexOa2c6Qub5gcus7Vq2s47BCNkg
         vNKWadot7wV4RIsyqhl9d87G8QE19rAlKVmtCSQLt4KjqGBIU7lcBLgiZIsPLZVPX+xK
         xZsWEmEkz6Y50qyC93ZN5gfv5a3cWBJofJfjFQh7WlyCRf76DgGmX/HWeXaN+IR5NoXj
         ioSw==
X-Gm-Message-State: APjAAAUqsLIBnpQ0i/0IGMzNzn+zN+D5sfCHuZf7KeacUfC/b3LNJA6T
	BTBcWW8WRNNxh5NERAW7ErCKtwZ8
X-Google-Smtp-Source: APXvYqxd1y/Bh5fnxhLiTCXFhQQu5BIf3+G4zXFtB61UKP1ZvdRKhLhTTBbQHA2FfGbANXiTAErgxw==
X-Received: by 2002:adf:e48e:: with SMTP id i14mr125746wrm.311.1561496979072;
        Tue, 25 Jun 2019 14:09:39 -0700 (PDT)
Message-ID: <068eb724241a91d08f36f2262c90ae30bf135fa1.camel@gmail.com>
In-Reply-To: <87a7e5zqbl.fsf@oldenburg2.str.redhat.com>
References: 
	<CAFRnB2UmyOiRV9fnMffcAtF4ruuJZwx=fg5X=hLbQjeFN=t3Bg@mail.gmail.com>
	 <20190617113203.GH15432@suse.de>
	 <CACT4Y+Zu1r10wKxjAbJqZ5rXc8eq5NRWjuNVPLHbwZGAem1OTg@mail.gmail.com>
	 <alpine.GSO.2.20.1906241038470.23351@scrappy.simplesystems.org>
	 <alpine.LRH.2.21.1906241152180.4597@fairfax.gathman.org>
	 <87a7e5zqbl.fsf@oldenburg2.str.redhat.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Date: Tue, 25 Jun 2019 23:09:36 +0200
From: Martin Carpenter <martin.carpenter@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Thousands of vulnerabilities, almost no CVEs:
 OSS-Fuzz
To: oss-security@lists.openwall.com

On Tue, 2019-06-25 at 16:34 +0200, Florian Weimer wrote:

> Fuzzing is used to show that a function is partial, when it is
> expected to be total

This definition is cute but it misses the case where the function is
defined over its entire domain but sometimes gives the wrong answer.
Fuzzers can find these bugs, as well as C-style crashes. (Simple recipe
for crash-seeking fuzzers is: test harness + abort(3)).


