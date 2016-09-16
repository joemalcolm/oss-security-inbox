X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5751" "Friday" "16" "September" "2016" "08:55:29" "-0700" "Jeffrey Walton" "noloader@gmail.com" "<4ee5cd2a-2692-446b-abf2-923003c1b9fc@googlegroups.com>" "105" "[oss-security] Fwd: CVE-2016-7420 and dev-brach 'trap' ready for testing" nil nil nil "9" "2016091615:55:29" "[oss-security] Fwd: CVE-2016-7420 and dev-brach 'trap' ready for testing" (number mark "U       noloader@gma Sep 16  105/5751  " thread-indent "\"[oss-security] Fwd: CVE-2016-7420 and dev-brach 'trap' ready for testing\"\n") "<be82baee-131f-4588-a23e-6983bafe9b39@googlegroups.com>" ("<be82baee-131f-4588-a23e-6983bafe9b39@googlegroups.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7355 invoked by uid 550); 16 Sep 2016 16:04:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32651 invoked from network); 16 Sep 2016 15:55:41 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version;
        bh=oO+sUrAS8fONzlf6j+2EkN9wuyI15ZeN7MQtSapACzc=;
        b=E9fKIB+rCHe6fqeyMP8EEpX+6A9+qZ8YJQbhEirvjx9WmoI/tiwLprBBOm99fg+SIY
         msL5AgEnuTRimO+LhuRdcY64DvKNkqp8CeQpNBuJgXMTF3mBXSiLHEgf1EnddHGJFQLU
         18gCdE8oLthc2LUNxPEEq0LpzuQ9+9jGM4LqzO7HrpAyTLNglo8l3ZFXSpRU1CGKbTlU
         b+AtJmjT3CPaMuXy7JUwrZKViKLECpbZiwljwbY0RECEbRmA2VkgDfs+LYg3Qu0QjJeU
         Fo+5gVsehrSBzFuq4ikJdNVDDwFzs0rF7XfoM6cp3hV6siXJLt2CQPk41vXvnV0Qzyr3
         HDgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:message-id:in-reply-to:references
         :subject:mime-version;
        bh=oO+sUrAS8fONzlf6j+2EkN9wuyI15ZeN7MQtSapACzc=;
        b=Ij2WgocgZFJTGgD0M+N13sm2CQL1pX7NNNGeVNCG9DjKXw7Hgk7wwjwwXM3WFpd90T
         MGOlRjSel6DAA0wpjlHtWem2px6VpxaJZM1ZhGLSKFkn7CrXJ85RUhDwf0iZMeZNVYna
         0Ep0zOVVKsE3wPc0vtd1TXCgY/giAvmLyWOfMAQNf5mJdV6ixewOR96070CHg2NGso+i
         O2Hs0LMdwDaAcWDJliZBcjRay39jmkcuNbLYnykBbA0qPwbH6a4aQmdHE/1W19PrldZY
         gpQtaTgUtVR4M1J07xe0pu91qC4yzwbb4V/hGti4jd5rJfWVUUr1BKWzpXNrHcHDSltJ
         59JA==
X-Gm-Message-State: AE9vXwPm1eb5SSXoMVqW+ETaBTQwlPGdrPmWODsG5W97irKsTlpJoA831x9/Bp8PruEd213T6NTo
X-Received: by 10.157.51.3 with SMTP id f3mr1064132otc.4.1474041329452;
        Fri, 16 Sep 2016 08:55:29 -0700 (PDT)
Date: Fri, 16 Sep 2016 08:55:29 -0700 (PDT)
From: Jeffrey Walton <noloader@gmail.com>
To: oss-security@lists.openwall.com
Message-Id: <4ee5cd2a-2692-446b-abf2-923003c1b9fc@googlegroups.com>
In-Reply-To: <be82baee-131f-4588-a23e-6983bafe9b39@googlegroups.com>
References: <be82baee-131f-4588-a23e-6983bafe9b39@googlegroups.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_212_579843860.1474041329377"
Subject: [oss-security] Fwd: CVE-2016-7420 and dev-brach 'trap' ready for testing

------=_Part_212_579843860.1474041329377
Content-Type: multipart/alternative; 
	boundary="----=_Part_213_230850126.1474041329378"

------=_Part_213_230850126.1474041329378
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

The improved code should be available in Master in the next few days. After 
about three or four weeks we will release Crypto++ 5.6.5.

The decision to release Crypto++ 5.6.5 was driven by Error Reporting 
services like Apport, CrashReporter and WER; and company's like Apple, 
Google and Microsoft's cooperation with governments to mine sensitive 
information.

On Friday, September 16, 2016 at 11:51:36 AM UTC-4, Jeffrey Walton wrote:
>
> Hi Everyone,
>
> CVE-2016-7420 caused us to cut-in CRYPTOPP_ASSERT a little earlier than 
> expected. <trap.h> and CRYPTOPP_ASSERT have existed in Master for over a 
> year. We set up a dev-branch called 'trap' to isolate the cut-in during 
> testing.
>
> The cut-over to CRYPTOPP_ASSERT occurred at 
> https://github.com/weidai11/cryptopp/commit/399a1546de71f41598c15edada28e7f0d616f541 
> . It tested OK under modern versions of Clang, CGG, Solaris and Visual 
> Studio.
>
> The defining factor of CRYPTOPP_ASSERT is it abandons Posix NDEBUG, which 
> we used to rely upon to remove asserts. We switched strategies, and now we 
> enable CRYPTOPP_ASSERT if any the following are defined: CRYPTOPP_DEBUG, 
> DEBUG, _DEBUG. This strategy side steps bad release/production 
> configurations due to policy (Debian never defines NDEBUG) and 
> errors/omissions (users or Autotools or CMake or Eclipse <other build 
> system> fails to define NDEBUG).
>
> CRYPTOPP_ASSERT also adds a nice feature: it raises SIGTRAP rather than 
> SIGABRT. SIGABRT will snap the debugger, if present. And it won't follow 
> Posix's idiotic footsteps and crash the program with a SIGABRT while a 
> developer is debugging it.
>
> The last two, DEBUG and _DEBUG, are set in Visual Studio projects by 
> Microsoft; and they cause CRYPTOPP_DEBUG to be set automatically. BSD, 
> Linux, Solaris and Unix user will have to -DCRYPTOPP_DEBUG=1 or uncomment 
> CRYPTOPP_DEBUG in config.h.
>
> If all goes well with testing, then we will merge Trap dev-branch into 
> Master this weekend or early next week. Our test script takes two or three 
> days to run on IoT gadets like BeableBoards and CubieTrucks, so the 
> earliest we can merge will be late Saturday or Sunday.
>
> Jeff
>

------=_Part_213_230850126.1474041329378
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">The improved code should be available in Master in the nex=
t few days. After about three or four weeks we will release Crypto++ 5.6.5.=
<br><br>The decision to release Crypto++ 5.6.5 was driven by Error Reportin=
g services like Apport, CrashReporter and WER; and company&#39;s like Apple=
, Google and Microsoft&#39;s cooperation with governments to mine sensitive=
 information.<br><br>On Friday, September 16, 2016 at 11:51:36 AM UTC-4, Je=
ffrey Walton wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;mar=
gin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;"><div dir=3D=
"ltr">Hi Everyone,<br><br>CVE-2016-7420 caused us to cut-in CRYPTOPP_ASSERT=
 a little earlier than expected. &lt;trap.h&gt; and CRYPTOPP_ASSERT have ex=
isted in Master for over a year. We set up a dev-branch called &#39;trap&#3=
9; to isolate the cut-in during testing.<br><br>The cut-over to CRYPTOPP_AS=
SERT occurred at <a href=3D"https://github.com/weidai11/cryptopp/commit/399=
a1546de71f41598c15edada28e7f0d616f541" target=3D"_blank" rel=3D"nofollow" o=
nmousedown=3D"this.href=3D&#39;https://www.google.com/url?q\x3dhttps%3A%2F%=
2Fgithub.com%2Fweidai11%2Fcryptopp%2Fcommit%2F399a1546de71f41598c15edada28e=
7f0d616f541\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNGaLKQ2HJ4aLYaevhFRWf6qI=
LAJgw&#39;;return true;" onclick=3D"this.href=3D&#39;https://www.google.com=
/url?q\x3dhttps%3A%2F%2Fgithub.com%2Fweidai11%2Fcryptopp%2Fcommit%2F399a154=
6de71f41598c15edada28e7f0d616f541\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNG=
aLKQ2HJ4aLYaevhFRWf6qILAJgw&#39;;return true;">https://github.com/weidai11/=
<wbr>cryptopp/commit/<wbr>399a1546de71f41598c15edada28e7<wbr>f0d616f541</a>=
 . It tested OK under modern versions of Clang, CGG, Solaris and Visual Stu=
dio.<br><br>The defining factor of CRYPTOPP_ASSERT is it abandons Posix NDE=
BUG, which we used to rely upon to remove asserts. We switched strategies, =
and now we enable CRYPTOPP_ASSERT if any the following are defined: CRYPTOP=
P_DEBUG, DEBUG, _DEBUG. This strategy side steps bad release/production con=
figurations due to policy (Debian never defines NDEBUG) and errors/omission=
s (users or Autotools or CMake or Eclipse &lt;other build system&gt; fails =
to define NDEBUG).<br><br>CRYPTOPP_ASSERT also adds a nice feature: it rais=
es SIGTRAP rather than SIGABRT. SIGABRT will snap the debugger, if present.=
 And it won&#39;t follow Posix&#39;s idiotic footsteps and crash the progra=
m with a SIGABRT while a developer is debugging it.<br><br>The last two, DE=
BUG and _DEBUG, are set in Visual Studio projects by Microsoft; and they ca=
use CRYPTOPP_DEBUG to be set automatically. BSD, Linux, Solaris and Unix us=
er will have to -DCRYPTOPP_DEBUG=3D1 or uncomment CRYPTOPP_DEBUG in config.=
h.<br><br>If all goes well with testing, then we will merge Trap dev-branch=
 into Master this weekend or early next week. Our test script takes two or =
three days to run on IoT gadets like BeableBoards and CubieTrucks, so the e=
arliest we can merge will be late Saturday or Sunday.<br><br>Jeff<br></div>=
</blockquote></div>=

------=_Part_213_230850126.1474041329378--

------=_Part_212_579843860.1474041329377--
