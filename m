X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["420" "Tuesday" "16" "May" "2017" "23:45:29" "+0200" "Jason A. Donenfeld" "zx2c4@gentoo.org" "<CAHmME9qxWkWWKmgDqPU4RrUx67QMYhXtr0s3GmmAUU+s4o=C3w@mail.gmail.com>" "12" "[oss-security] Re: Integer Overflow in rxvt" nil nil nil "5" "2017051621:45:29" "[oss-security] Re: Integer Overflow in rxvt" (number mark "U       zx2c4@gentoo May 16   12/420   " thread-indent "\"[oss-security] Re: Integer Overflow in rxvt\"\n") "<CAHmME9pxyiMx1LCD93HmBNF_EnLqJiyGfTnUCNuqgctNnuYLAQ@mail.gmail.com>" ("<CAHmME9qMDNZ8-X_S4vNeHkUWxAacN2onuRZ4=SCo4CPqqVPmhQ@mail.gmail.com>" "<CAHmME9pxyiMx1LCD93HmBNF_EnLqJiyGfTnUCNuqgctNnuYLAQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21814 invoked by uid 550); 16 May 2017 21:49:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20039 invoked from network); 16 May 2017 21:45:44 -0000
X-Gm-Message-State: AODbwcAhe9DTDKq4oS/4cvKhSxdvlt6FvGPAvEsyvDKu4+jJOV0rlARJ
	GqEf8LkYAjp317Rr8B8psxofwJApzQ==
X-Received: by 10.202.212.205 with SMTP id l196mr87141oig.4.1494971130276;
 Tue, 16 May 2017 14:45:30 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAHmME9pxyiMx1LCD93HmBNF_EnLqJiyGfTnUCNuqgctNnuYLAQ@mail.gmail.com>
References: <CAHmME9qMDNZ8-X_S4vNeHkUWxAacN2onuRZ4=SCo4CPqqVPmhQ@mail.gmail.com>
 <CAHmME9pxyiMx1LCD93HmBNF_EnLqJiyGfTnUCNuqgctNnuYLAQ@mail.gmail.com>
From: "Jason A. Donenfeld" <zx2c4@gentoo.org>
Date: Tue, 16 May 2017 23:45:29 +0200
X-Gmail-Original-Message-ID: <CAHmME9qxWkWWKmgDqPU4RrUx67QMYhXtr0s3GmmAUU+s4o=C3w@mail.gmail.com>
Message-ID: <CAHmME9qxWkWWKmgDqPU4RrUx67QMYhXtr0s3GmmAUU+s4o=C3w@mail.gmail.com>
To: oss-security <oss-security@lists.openwall.com>
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] Re: Integer Overflow in rxvt

Hi folks,

Just a small update on this. Gentoo has moved forward with removing
rxvt from our distribution [1]. I'd recommend other distributions
follow, since every use case of rxvt is handled by rxvt-unicode, and
rxvt has no upstream anymore, in addition to what sounds like likely
more vulnerabilities.

Regards,
Jason

[1] https://gitweb.gentoo.org/repo/gentoo.git/commit/?id=c50296e8e46086273f5d02e7a2a55e8b66f0d547
