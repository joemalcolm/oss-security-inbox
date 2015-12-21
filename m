X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1486" "Monday" "21" "December" "2015" "22:38:09" "+0100" "Florian Weimer" "fweimer@redhat.com" "<56787141.5040202@redhat.com>" "34" "Re: [oss-security] CVE request for math/big.Exp" "^Date:" nil nil "12" "2015122121:38:09" "[oss-security] CVE request for math/big.Exp" (number mark "        fweimer@redh Dec 21   34/1486  " thread-indent "\"Re: [oss-security] CVE request for math/big.Exp\"\n") "<CA+s3sfFMSqi3-5b=4-=gx_nXYye=0oWuWtpwsgEe6mdiq8a_Ew@mail.gmail.com>" ("<CA+s3sfFMSqi3-5b=4-=gx_nXYye=0oWuWtpwsgEe6mdiq8a_Ew@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13761 invoked by uid 550); 21 Dec 2015 21:38:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13733 invoked from network); 21 Dec 2015 21:38:23 -0000
References: <CA+s3sfFMSqi3-5b=4-=gx_nXYye=0oWuWtpwsgEe6mdiq8a_Ew@mail.gmail.com>
Message-ID: <56787141.5040202@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <CA+s3sfFMSqi3-5b=4-=gx_nXYye=0oWuWtpwsgEe6mdiq8a_Ew@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.26
Date: Mon, 21 Dec 2015 22:38:09 +0100
From: Florian Weimer <fweimer@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE request for math/big.Exp
To: oss-security@lists.openwall.com

On 12/21/2015 05:07 PM, Jason Buberel wrote:
> OSS-Security,
> 
> The Go open source project has received notification of an error in the
> math/big library (https://golang.org/pkg/math/big/). The problem that was
> identified is similar to CVE-2015-3193
> <https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2015-3193>. The
> vulnerability was introduced in the 1.5 release, and remains present in Go
> 1.5.1 and 1.5.2.
> 
> A fix for the issue has been applied to the master branch of the Go repo
> under CL 17672 <https://go-review.googlesource.com/#/c/17672/>. We will
> also be releasing Go 1.5.3 to fix this vulnerability.
> 
> We are requesting a CVE ID in order to coordinate updates with
> distributions that include binary packages for the Go programming language.
> We will also announce and request that all Go programs using the math/big
> package that were compiled with version 1.5, 1.5.1, or 1.5.2 be recompiled
> with  1.5.3 (when released) due to the static linking nature of the Go
> toolchain.

Considering that until recently, Go did not protect against RSA-CRT key
leaks, doesn't that mean that all certificates whose private key was
touched by Go code should be re-issued?

RSA-CRT hardening was added in this commit:

https://github.com/golang/go/commit/40ac3690efe420ff7665c6fe1eec0933c41d1413

To protect against future key leaks due to similar issues in the
implementation integer arithmetic, I strongly recommend backporting this
hardening feature.

Florian
