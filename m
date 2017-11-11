X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1233" "Saturday" "11" "November" "2017" "14:49:19" "-0500" "Stuart Gathman" "stuart@gathman.org" "<b4297572-e986-5133-2f84-a2cda2839d29@gathman.org>" "20" "Re: [oss-security] CVE-2017-15102: Linux kernel: usb: NULL-deref due to a race condition in [legousbtower] driver" nil nil nil "11" "2017111119:49:19" "[oss-security] CVE-2017-15102: Linux kernel: usb: NULL-deref due to a race condition in [legousbtower] driver" (number mark "U       stuart@gathm Nov 11   20/1233  " thread-indent "\"Re: [oss-security] CVE-2017-15102: Linux kernel: usb: NULL-deref due to a race condition in [legousbtower] driver\"\n") "<E1eCqK7-00047g-Kl@rmmprod07.runbox>" ("<E1eCqK7-00047g-Kl@rmmprod07.runbox>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 4075 invoked by uid 550); 11 Nov 2017 19:51:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3327 invoked from network); 11 Nov 2017 19:49:33 -0000
Authentication-Results: mail.gathman.org; auth=pass (CRAM-MD5 sslbits=None) smtp.auth=stuart
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gathman.org; 
 i=@gathman.org; q=dns/txt; s=default; t=1510429759; 
 h=subject : to : references : from : message-id : date : 
 mime-version : in-reply-to : content-type : 
 content-transfer-encoding : subject : from : date; 
 bh=qx2ETkAyrF52pWOcipN6o+N9WQbt9ShYqvdqnmS5vJs=; 
 b=R5O0XYaoQGYkYhq1UqkLcv73ZQvkIOELcKsZvqUFZCXrC1sQJ1+wgcDr
 S+JsviRsbfBMF3ugg3iaWCuGlbvKTIDGLpfbRzi3DDEDChKq2FLU6924Zl
 lAyHv4dzo5O5ma2bE0f/owEDZwWEkc0osTJizN+OX2EmMsJo4w0Lkmf34=
To: oss-security@lists.openwall.com
References: <E1eCqK7-00047g-Kl@rmmprod07.runbox>
From: Stuart Gathman <stuart@gathman.org>
Organization: Gathman Systems
Jabber-Id:  stuart@gathman.org
Message-ID: <b4297572-e986-5133-2f84-a2cda2839d29@gathman.org>
Date: Sat, 11 Nov 2017 14:49:19 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <E1eCqK7-00047g-Kl@rmmprod07.runbox>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Content-Language: en-US
Subject: Re: [oss-security] CVE-2017-15102: Linux kernel: usb: NULL-deref due
 to a race condition in [legousbtower] driver

On 11/09/2017 12:09 PM, David A. Wheeler wrote:
> In the US, there has been recent proposed legislation that requires
> that "Internet of Things" devices sold to the federal government cannot have
> "known security vulnerabilities" ("Internet of Things Cybersecurity Improvement
> Act of 2017" proposed by Senators Mark Warner (R-Va.) and Cory Gardner (D-Colo.)).
> I suspect many other countries have or will pass similiar laws,
> or will interpret their existing laws this way.
> It's easy to argue that known security vulnerabilities are known flaws
> that should be remediated by the manufacturer (at no cost to the consumer).
>
> I agree that many vulnerabilities don't have CVE ids.
> You don't need to identify *all* vulnerabilities in old kernels... just enough to make
> it easier to update the kernel than try to back-patch everything.
> If manufacturers have to fix the CVEs to sell products, or to avoid massive returns,
> that creates an *economic* reason for manufacturers to
> begin responsibly maintain their products.
This will create an economic reason to use closed source software - as
there would then be far fewer  "known security vulnerabilities".

"As long as we keep it secret, we don't have to fix it...."
