X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["38" "Monday" "1" "May" "2017" "20:28:16" "+0200" "Jason A. Donenfeld" "Jason@zx2c4.com" "<CAHmME9pxyiMx1LCD93HmBNF_EnLqJiyGfTnUCNuqgctNnuYLAQ@mail.gmail.com>" "1" "[oss-security] Re: Integer Overflow in rxvt" nil nil nil "5" "2017050118:28:16" "[oss-security] Re: Integer Overflow in rxvt" (number mark "U       Jason@zx2c4. May  1    1/38    " thread-indent "\"[oss-security] Re: Integer Overflow in rxvt\"\n") "<CAHmME9qMDNZ8-X_S4vNeHkUWxAacN2onuRZ4=SCo4CPqqVPmhQ@mail.gmail.com>" ("<CAHmME9qMDNZ8-X_S4vNeHkUWxAacN2onuRZ4=SCo4CPqqVPmhQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32106 invoked by uid 550); 1 May 2017 18:29:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30715 invoked from network); 1 May 2017 18:28:30 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=zx2c4.com; h=mime-version
	:in-reply-to:references:from:date:message-id:subject:to
	:content-type; s=mail; bh=0c1azi6cFDqYEJJkO8ZwBwew1dc=; b=hApu7D
	Oke6ofetmFMKID0MywA+RZ6ubhtDebXXNruY6Ln1mY5aN0jRZtBALfD/5Ey5TJdD
	w0x5inzJ4aH0UquLL2bZP/vvZi1rtT2FXOcwLExYB26LJr6zZye1JyEv6+HCV2AF
	3IEU7wQdHY8xubj+u7bWD1I/IG3AtGyMEgyC8eNVHmC5C12gusoDKVWbX7mfR/na
	LnKkKEzg8CIAsS6l3UppUf4/HT2SZJTBkm77Mk8SjwBkp6YSawE0u2Wf5R6Ydvv/
	8YPuyW2hP0HjQiivi+om0Qzqy6gvm8aNl5PyiXgdJBCPVvMEKYybfmSjvMi5m3jP
	1AtUdyFtsDukM8hA==
X-Gm-Message-State: AN3rC/6zQ1wMvMFasbOiznyRdcS+Fh7RT+mzuKu2XqVrjETwCSV4GybK
	X05HI4GBkIZhZyzqjlLEGXl4T2L7fg==
X-Received: by 10.202.219.7 with SMTP id s7mr7613510oig.147.1493663297135;
 Mon, 01 May 2017 11:28:17 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAHmME9qMDNZ8-X_S4vNeHkUWxAacN2onuRZ4=SCo4CPqqVPmhQ@mail.gmail.com>
References: <CAHmME9qMDNZ8-X_S4vNeHkUWxAacN2onuRZ4=SCo4CPqqVPmhQ@mail.gmail.com>
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
Date: Mon, 1 May 2017 20:28:16 +0200
X-Gmail-Original-Message-ID: <CAHmME9pxyiMx1LCD93HmBNF_EnLqJiyGfTnUCNuqgctNnuYLAQ@mail.gmail.com>
Message-ID: <CAHmME9pxyiMx1LCD93HmBNF_EnLqJiyGfTnUCNuqgctNnuYLAQ@mail.gmail.com>
To: oss-security <oss-security@lists.openwall.com>
Content-Type: text/plain; charset=UTF-8
Subject: [oss-security] Re: Integer Overflow in rxvt

This has been assigned CVE-2017-7483.
