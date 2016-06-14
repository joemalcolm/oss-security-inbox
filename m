X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["834" "Tuesday" "14" "June" "2016" "14:16:24" "-0700" "Tim" "tim-security@sentinelchicken.org" "<20160614211623.GB11505@sentinelchicken.org>" "23" "Re: [oss-security] CVE request: Python HTTP header injection in urrlib2/urllib/httplib/http.client" nil nil nil "6" "2016061421:16:24" "[oss-security] CVE request: Python HTTP header injection in urrlib2/urllib/httplib/http.client" (number mark "U       tim-security Jun 14   23/834   " thread-indent "\"Re: [oss-security] CVE request: Python HTTP header injection in urrlib2/urllib/httplib/http.client\"\n") "<CAKG8Do5XPLJTJR9iaTRMOtFFZYan_Eeaf7KxxLWDgWiUQDsEbw@mail.gmail.com>" ("<CAKG8Do5XPLJTJR9iaTRMOtFFZYan_Eeaf7KxxLWDgWiUQDsEbw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7408 invoked by uid 550); 14 Jun 2016 21:16:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7383 invoked from network); 14 Jun 2016 21:16:43 -0000
Date: Tue, 14 Jun 2016 14:16:24 -0700
From: Tim <tim-security@sentinelchicken.org>
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org
Message-ID: <20160614211623.GB11505@sentinelchicken.org>
References: <CAKG8Do5XPLJTJR9iaTRMOtFFZYan_Eeaf7KxxLWDgWiUQDsEbw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAKG8Do5XPLJTJR9iaTRMOtFFZYan_Eeaf7KxxLWDgWiUQDsEbw@mail.gmail.com>
User-Agent: Mutt/1.6.0 (2016-04-01)
Subject: Re: [oss-security] CVE request: Python HTTP header injection in
 urrlib2/urllib/httplib/http.client


> I would like to request a CVE for a Python header injection flaw in
> urrlib2/urllib/httplib/http.client.
> 
> HTTPConnection.putheader() allows unsafe characters, which can be used to
> inject additional headers.
> 
> Upstream bug with reproducer :
> https://bugs.python.org/issue22928


Thank you for requesting a CVE Cedric.  I have additional information
about this bug, including an additional exploitation path, which I
shared with Python security on January 14, 2016.  Unfortunately, they
have apparently failed to act to notify the public or acquire a CVE.
(They stopped responding to me months ago.)  I'll post the additional
information soon, once I am back at my desk.

In the mean time, do you happen to have specific information on which
versions of the 2.x and 3.x upstream branches were affected/fixed?

Thanks!
tim
