X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["948" "Wednesday" "15" "June" "2016" "09:54:21" "-0700" "Tim" "tim-security@sentinelchicken.org" "<20160615165420.GG1225@sentinelchicken.org>" "28" "Re: [oss-security] CVE request: Python HTTP header injection in urrlib2/urllib/httplib/http.client" nil nil nil "6" "2016061516:54:21" "[oss-security] CVE request: Python HTTP header injection in urrlib2/urllib/httplib/http.client" (number mark "U       tim-security Jun 15   28/948   " thread-indent "\"Re: [oss-security] CVE request: Python HTTP header injection in urrlib2/urllib/httplib/http.client\"\n") "<CAKG8Do524=Adj62mrRP0eZb0bp7CbXN3yi_Mid5VxFvdE1sE=A@mail.gmail.com>" ("<CAKG8Do5XPLJTJR9iaTRMOtFFZYan_Eeaf7KxxLWDgWiUQDsEbw@mail.gmail.com>" "<20160614211623.GB11505@sentinelchicken.org>" "<CAKG8Do524=Adj62mrRP0eZb0bp7CbXN3yi_Mid5VxFvdE1sE=A@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20408 invoked by uid 550); 15 Jun 2016 16:55:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20390 invoked from network); 15 Jun 2016 16:55:02 -0000
Date: Wed, 15 Jun 2016 09:54:21 -0700
From: Tim <tim-security@sentinelchicken.org>
To: oss-security@lists.openwall.com
Message-ID: <20160615165420.GG1225@sentinelchicken.org>
References: <CAKG8Do5XPLJTJR9iaTRMOtFFZYan_Eeaf7KxxLWDgWiUQDsEbw@mail.gmail.com>
 <20160614211623.GB11505@sentinelchicken.org>
 <CAKG8Do524=Adj62mrRP0eZb0bp7CbXN3yi_Mid5VxFvdE1sE=A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAKG8Do524=Adj62mrRP0eZb0bp7CbXN3yi_Mid5VxFvdE1sE=A@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [oss-security] CVE request: Python HTTP header injection in
 urrlib2/urllib/httplib/http.client


> Reproducible on all python versions I tested : 2.4, 2.6, 2.7, 3.4 and 3.5
> 
> Fixed branches :
> 3.4 / 3.5 : revision 94952 : https://hg.python.org/cpython/rev/bf3e1c9b80e9
> 2.7 : revision 94951 : https://hg.python.org/cpython/rev/1c45047c5102
> 


Thank you Cedric!

Here are the additional details I promised:
  http://blog.blindspotsecurity.com/2016/06/advisory-http-header-injection-in.html

The gist of it is that protocol injection can occur not only if an
application sets a header based on user-supplied values, but also if
the application ever tries to fetch a URL specified by an attacker
(SSRF case) OR if the application ever accesses any malicious web
server (redirection case).  URLs of the following form allow
injection into the HTTP stream:

  http://127.0.0.1%0d%0aX-injected:%20header%0d%0ax-leftover:%20:12345/foo
  http://localhost%00%0d%0ax-bar:%20:12345/foo

More details in the blog post, of course.

Best regards,
tim
