X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3357" "Thursday" "14" "January" "2016" "15:21:36" "+0100" "Jason A. Donenfeld" "Jason@zx2c4.com" "<CAHmME9qMafTAqWTgj6oRHmN9HZtJ8KrghR1U63H=r+jA7M3zyg@mail.gmail.com>" "77" "[oss-security] CVE Request: CGit - Multiple vulnerabilities" "^Cc:" nil nil "1" "2016011414:21:36" "[oss-security] CVE Request: CGit - Multiple vulnerabilities" (number mark "        Jason@zx2c4. Jan 14   77/3357  " thread-indent "\"[oss-security] CVE Request: CGit - Multiple vulnerabilities\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28161 invoked by uid 550); 14 Jan 2016 14:21:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28139 invoked from network); 14 Jan 2016 14:21:50 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=zx2c4.com; h=mime-version
	:date:message-id:subject:from:to:cc:content-type; s=mail; bh=i6C
	yOudykl/+uj7fz1BHLWFukRA=; b=a0snEJeQhF7gGCzyc3jCB0KBe/GupS15uLP
	R4+Kqg8w4pgYxqH2Q4JHH5Dza67KeBXJ04/wxv8k+aah699IuwtrDo3S97Z4DTeL
	B/33KZiADuGYLX5VRhic+jG6kcRF23CAFPTwfhz4DSyQtENNne1APUO8b9YAQ3RX
	K2qw0Ny/fP/2TZqNDP9BSLVQIJU3yrDm+hUaHKEX2VU16l+KfvdRIwS2C4H33yE/
	Dmri67li5VhHamav5dIJmnbgPU9W7moamPOf70WoTMElKS+EesjhN19fcvN6hXMg
	h0IAJCVFPk3cwyOV0yr0Um+wR2OKKI6FIsO36aEKw4ZsIG2I8Mw==
X-Gm-Message-State: ALoCoQkSxOrmlRCHHoKEIY4jt8BCfJK8TWbXprsbg2jO9KRazGnR6zk0sWi49fQiL/a4jfXynIZZLp4ijcQWmt9iON+XdSr5ZQ==
MIME-Version: 1.0
X-Received: by 10.194.21.135 with SMTP id v7mr4308184wje.131.1452781296665;
 Thu, 14 Jan 2016 06:21:36 -0800 (PST)
X-Gmail-Original-Message-ID: <CAHmME9qMafTAqWTgj6oRHmN9HZtJ8KrghR1U63H=r+jA7M3zyg@mail.gmail.com>
Message-ID: <CAHmME9qMafTAqWTgj6oRHmN9HZtJ8KrghR1U63H=r+jA7M3zyg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Cc: Daniel Chromek <chromek@eset.sk>, 
	Krzysztof Katowicz-Kowalewski <krzysztof.kowalewski@eset.pl>, Erik Cabetas <erik@includesecurity.com>, 
	Konstantin Ryabitsev <mricon@kernel.org>
Date: Thu, 14 Jan 2016 15:21:36 +0100
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request: CGit - Multiple vulnerabilities
To: "cgit@lists.zx2c4.com" <cgit@lists.zx2c4.com>, oss-security <oss-security@lists.openwall.com>

Hi folks,

Krzysztof Katowicz-Kowalewski from ESET, Erik Cabetas from Include
Security, and myself (Jason Donenfeld) from Edge Security, have found
a few vulnerabilities in CGit:


1. Reflected Cross Site Scripting & Header Injection in Mimetype Query
String [Katowicz-Kowalewski]

The ui-blob handler accepted a mimetype as a query string and then
echoed this string verbatim back. A malicious user could provide a
string like:

  http://git.zx2c4.com/cgit/blob/cgit.c?mimetype=text/html%0d%0a%0d%0a<script>xss</script>

This has been fixed by removing support for the mimetype query string parameter:
http://git.zx2c4.com/cgit/commit/?id=1c581a072651524f3b0d91f33e22a42c4166dd96
And then restricting to only generic mimetypes:
http://git.zx2c4.com/cgit/commit/?id=92996ac2a6fc4e944c3d723e12d5ab244a43508e
And finally, just in case, setting the IE anti-sniffing header as well
as a restrictive CSP header:
http://git.zx2c4.com/cgit/commit/?id=9ca2566972db968df4479108b29bb92551138b57


2. Stored Cross Site Scripting & Header Injection in Filename
Parameter [Donenfeld]

A user who has write access to the git repository could create
filenames containing new lines that would result in that filename,
including the newlines, being included in a header, resulting in
header injection and eventually XSS.

This has been fixed by properly escaping filenames in headers:
http://git.zx2c4.com/cgit/commit/?id=513b3863d999f91b47d7e9f26710390db55f9463
Additionally, while the redirect for the /about -> /about/ page does
*not* appear to be vulnerable due to mitigating conditions, the
following commit was made to similarly harden potential injections
here:
http://git.zx2c4.com/cgit/commit/?id=4291453ec30656c2f59645d8a74cf295ce0253a9

3. Stored Cross Site Scripting in Git Repo Files [Katowicz-Kowalewski]

A user who has write access to the git repository can add HTML pages
and then serve them with an HTML mimetype. A user could therefore
upload pages with malicious javascript executing in the same origin as
the cgit web site. While this is ordinarily not a problem for
single-use users - and indeed some users rather like being able to
serve html from cgit - sites that allow potentially malicious third
party users may not find this behavior desirable.

This has been fixed by adding a configuration option,
"enable-html-serving", which is by default off:
http://git.zx2c4.com/cgit/commit/?id=aaba5f8b925f44f7d5ffb0a45fe349642d478513
This flag sets anti-sniffing, CSP, and restricts mimetypes to
non-"application/" (except for application/pdf and
application/octet-stream) and non-"text/" (except for text/plain). If
you have a better idea of what sort of white/black list to use for
this, I am open to suggestions.

4. Integer Overflow resulting in Buffer Overflow [Cabetas]

ctx.env.content_length is an unsigned int, coming from the
CONTENT_LENGTH environment variable, which is parsed by strtoul. The
HTTP/1.1 spec says that "any Content-Length greater than or equal to
zero is a valid value." By storing this unsigned int into an int, we
potentially overflow it, resulting in the following bounding check
failing, leading to a buffer overflow.

This has been fixed by this commit:
http://git.zx2c4.com/cgit/commit/?id=4458abf64172a62b92810c2293450106e6dfc763


A new version containing these security fixes will be published shortly.

Thanks,
Jason
