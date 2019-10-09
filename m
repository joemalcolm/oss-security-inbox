X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["677" "Wednesday" "9" "October" "2019" "16:57:52" "+0200" "Patrick Uiterwijk" "puiterwijk@redhat.com" "<20191009145752.GA32134@crime.home.puiterwijk.org>" "31" "[oss-security] Koji CVE-2019-17109: koji hub allows arbitrary upload destinations" nil nil nil "10" "2019100914:57:52" "[oss-security] Koji CVE-2019-17109: koji hub allows arbitrary upload destinations" (number mark "U       puiterwijk@r Oct  9   31/677   " thread-indent "\"[oss-security] Koji CVE-2019-17109: koji hub allows arbitrary upload destinations\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Koji CVE-2019-17109: koji hub allows arbitrary upload destinations" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24562 invoked by uid 550); 9 Oct 2019 14:58:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24542 invoked from network); 9 Oct 2019 14:58:20 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1570633088;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=BqLnXn0uG8Jf9kE5K87QGSnano60XGN+TA66xcaf3Ds=;
	b=RlHcmCtsGuJQx3S94AiJylhdMy41pVFiRqbNBqNoNpKlTGXE31LQzrvQIbWGa+iBCFZ4V+
	uX5co6/ahTN7516R0UB8kXTipXA5shhaltQVGnGUhcH8ZF3B7fqSc99ubEConAGT4GB2/v
	+/aXNDcvcsuV642ba+mf5gS3nBMh+5k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=omu5dTd+CWIND2HX9RmEvPS1VLlu20N4JmoWu5jcnWc=;
        b=W1lW3sioeWlJbDN9g/k5/nqVv7njl1u6t+ha3H38eCJYV7Qa+5PRRjR/AT4EeNTt/N
         Rj47GIZsSvvdkh3ZaqpzIyTAl6n74isWIgwJ7PxApAwk6XvH7S1AVzaHnkRs9FmfoHVJ
         hDkR8FiES3WLD89nqmF5z6qHi9UwyQtaw3luu55IullzeXLQr3rZoEv71GD4heQDPMQ3
         snwDcBzlRew9ihLGWOfJLC2TQYsfEEXmP7gqj0iDifNSC77sGP1XoIJWkYCnbwofpMoe
         dPAonxbpoYLBbT0UsgaUmOVZFxa0eJYq1v03GVAAcE1CXwEJfjsbLXEhvHak5RLY2Xyr
         lUVg==
X-Gm-Message-State: APjAAAX2lmRv8zutflFOdCuLbU8dEguzTfa04qho6U/kHDYGRnQm7zyF
	f55Li7gw4koybCCQN/TNUgFzUwFlzxupUxA9Yzl4+Majrw+Dd93te2Ore5vxe6pqSKo7OvH30zq
	6gQpO7k1ov8caeny1cnb2IdmOp/Hg
X-Received: by 2002:aa7:d045:: with SMTP id n5mr3422907edo.24.1570633085875;
        Wed, 09 Oct 2019 07:58:05 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzLl+TJGYunt+TLDmpU+sMF1mNSGK1suTX8j8Hgjkz+rdiGf/eXzmTFndN3BA9wnccardeh/Q==
X-Received: by 2002:aa7:d045:: with SMTP id n5mr3422884edo.24.1570633085561;
        Wed, 09 Oct 2019 07:58:05 -0700 (PDT)
Date: Wed, 9 Oct 2019 16:57:52 +0200
From: Patrick Uiterwijk <puiterwijk@redhat.com>
To: oss-security@lists.openwall.com
Message-ID: <20191009145752.GA32134@crime.home.puiterwijk.org>
MIME-Version: 1.0
User-Agent: Mutt/1.12.1 (2019-06-15)
X-MC-Unique: q_SPXBtmMvaeHCaihs4Bmg-1
X-Mimecast-Spam-Score: 0
Content-Type: text/plain; charset=WINDOWS-1252
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline
Subject: [oss-security] Koji CVE-2019-17109: koji hub allows arbitrary upload destinations

Description
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

The way that the hub code validates upload paths allows for an attacker to =
choose an arbitrary destination for the uploaded file.=20


Affected versions
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

All prior versions of Koji are vulnerable.


Patched versions
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Koji versions 1.14.3, 1.15.3, 1.16.3, 1.17.1, and 1.18.1 are available on t=
he website, and all include patches to solve this problem.


Credits
=3D=3D=3D=3D=3D=3D=3D

This issue was discovered by Yu Ming Zhu of Red Hat.


References
=3D=3D=3D=3D=3D=3D=3D=3D=3D

https://docs.pagure.org/koji/CVE-2019-17109/

