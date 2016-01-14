X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["113" "Thursday" "14" "January" "2016" "15:46:26" "+0100" "Jason A. Donenfeld" "Jason@zx2c4.com" "<CAHmME9poTixFqc3TXGfPReg32rUUw_XVko61sONSZnRdxkLLdQ@mail.gmail.com>" "2" "[oss-security] Re: CVE Request: CGit - Multiple vulnerabilities" nil nil nil "1" "2016011414:46:26" "[oss-security] Re: CVE Request: CGit - Multiple vulnerabilities" (number mark "U       Jason@zx2c4. Jan 14    2/113   " thread-indent "\"[oss-security] Re: CVE Request: CGit - Multiple vulnerabilities\"\n") "<CAHmME9qMafTAqWTgj6oRHmN9HZtJ8KrghR1U63H=r+jA7M3zyg@mail.gmail.com>" ("<CAHmME9qMafTAqWTgj6oRHmN9HZtJ8KrghR1U63H=r+jA7M3zyg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27792 invoked by uid 550); 14 Jan 2016 14:46:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27768 invoked from network); 14 Jan 2016 14:46:44 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=zx2c4.com; h=mime-version
	:in-reply-to:references:date:message-id:subject:from:to:cc
	:content-type; s=mail; bh=WyeH8StnUNwBuM4xMxa5V35TFfY=; b=R3kxNO
	GTRRLbieLJ3Wef0X+sEablNJJAYS2+yGaP9xuiJMofJBY9mJw07KwGAnfWCVrpKg
	YBSebnfCgvSgNE9pbuwGfhOWqEb9Zsx00K/HLOFcwOpNEI6uM1U7HDKD5W4liOU5
	+1eLDsIu0g9dxA+3ZZdZce8KPXLakI1r9+sInZh4ZsMDQW+CkpItMGpVhxWwMUf3
	r5pdV0KcGLR/Q9Tg7zvB8fyDcyShxiyupBK2TYGC4JcPFXK70BuS/MtIzJuKM0VN
	1IWhHUou6TnOrkaOf8/UB6E3h7X7s3dYmpXIrzKFWdPNpQk3+fNxr581ISbhqduU
	KOmIajfoE2jPb4pw==
X-Gm-Message-State: ALoCoQlsoI2CBT43GOlF4ZLQuhCO/0Y068Sr+7dfHSgWyPAq8kl/3Rc/x3nLLtIH4uilit6i4dQa6EdqhCdZO2Qulgvs+iiYhg==
MIME-Version: 1.0
X-Received: by 10.28.64.131 with SMTP id n125mr22166257wma.65.1452782786506;
 Thu, 14 Jan 2016 06:46:26 -0800 (PST)
In-Reply-To: <CAHmME9qMafTAqWTgj6oRHmN9HZtJ8KrghR1U63H=r+jA7M3zyg@mail.gmail.com>
References: <CAHmME9qMafTAqWTgj6oRHmN9HZtJ8KrghR1U63H=r+jA7M3zyg@mail.gmail.com>
Date: Thu, 14 Jan 2016 15:46:26 +0100
X-Gmail-Original-Message-ID: <CAHmME9poTixFqc3TXGfPReg32rUUw_XVko61sONSZnRdxkLLdQ@mail.gmail.com>
Message-ID: <CAHmME9poTixFqc3TXGfPReg32rUUw_XVko61sONSZnRdxkLLdQ@mail.gmail.com>
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
To: "cgit@lists.zx2c4.com" <cgit@lists.zx2c4.com>, oss-security <oss-security@lists.openwall.com>
Cc: Daniel Chromek <chromek@eset.sk>, 
	Krzysztof Katowicz-Kowalewski <krzysztof.kowalewski@eset.pl>, Erik Cabetas <erik@includesecurity.com>, 
	Konstantin Ryabitsev <mricon@kernel.org>
Content-Type: text/plain; charset=UTF-8
Subject: [oss-security] Re: CVE Request: CGit - Multiple vulnerabilities

These issues are fixed in the new release, v0.12:
http://lists.zx2c4.com/pipermail/cgit/2016-January/002817.html
