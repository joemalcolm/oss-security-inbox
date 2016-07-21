X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["823" "Wednesday" "20" "July" "2016" "21:31:28" "-0700" "Lucian Cojocar" "lucian@cojocar.com" "<2436f805-5fbc-ebe3-0d5c-b47903803427@cojocar.com>" "23" "Re: [oss-security] CVE Request: uclibc-ng (and uclibc): ARM arch: code execution" nil nil nil "7" "2016072104:31:28" "[oss-security] CVE Request: uclibc-ng (and uclibc): ARM arch: code execution" (number mark "U       lucian@cojoc Jul 20   23/823   " thread-indent "\"Re: [oss-security] CVE Request: uclibc-ng (and uclibc): ARM arch: code execution\"\n") "<3f71b0bd-71dd-723e-eed8-925bf2e2c8f7@cojocar.com>" ("<3f71b0bd-71dd-723e-eed8-925bf2e2c8f7@cojocar.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14021 invoked by uid 550); 21 Jul 2016 04:31:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14003 invoked from network); 21 Jul 2016 04:31:42 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=simple; d=cojocar.com; h=subject
	:reply-to:references:to:from:message-id:date:mime-version
	:in-reply-to:content-type:content-transfer-encoding; s=mail; bh=
	jcEpXi4Low6Srei5lM1IBNIBIyU=; b=GVqij7QGpPSdBVKlVxil0IwqoRA2dGxV
	Eeu4q7JFdpvZRQJ4YrOKDEM4RbZH9uL/m6Srud/gn9WZ14zIExbb2byi1DsC+irU
	vT83LkYgjW8Hr04gGSMN3z+1/aWrRU4McMYgTD/asrBTec22+qtwMn0cNKLX614v
	ZRNCeObY9v8=
DomainKey-Signature: a=rsa-sha1; c=simple; d=cojocar.com; h=subject
	:reply-to:references:to:from:message-id:date:mime-version
	:in-reply-to:content-type:content-transfer-encoding; q=dns; s=
	mail; b=Kq9RGZHO5cPUyDfJToSdmgv1bDIHjhIkUz2vAEBjgczM7ovddyMJYwUU
	RktT72DM4i9qnbi1kzofauZucfHXPi4s8di3UzmuVYBvTBPh0LhVx5Wc/kBeCg+h
	cOFz/6wFvCpNjuH5VPTVQ13NS4Cc3Kc1N2+hiuC0cQRn+bdiUFs=
References: <3f71b0bd-71dd-723e-eed8-925bf2e2c8f7@cojocar.com>
To: oss-security@lists.openwall.com
From: Lucian Cojocar <lucian@cojocar.com>
Message-ID: <2436f805-5fbc-ebe3-0d5c-b47903803427@cojocar.com>
Date: Wed, 20 Jul 2016 21:31:28 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Icedove/45.1.0
MIME-Version: 1.0
In-Reply-To: <3f71b0bd-71dd-723e-eed8-925bf2e2c8f7@cojocar.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] CVE Request: uclibc-ng (and uclibc): ARM arch:
 code execution

On 06/29/2016 12:13 AM, Lucian Cojocar wrote:
> Hi all,
> 
> u-clibc and uclibc-ng is used in several projects[4, 5].
> 
> As described here[3], an attacker that controls the length parameter of
> the `memset' can also control the value of the PC register. The issue is
> similar to CVE-2011-2702. A patch has been proposed for uclibc-ng[1]. A
> denial of service proof of concept is available[2].
> 

This was fixed in version 1.0.16 of uclibc-ng[1]

[1] http://mailman.uclibc-ng.org/pipermail/devel/2016-July/001067.html

Lucian

> 
> [1]http://repo.or.cz/uclibc-ng.git/commit/e3848e3dd64a8d6437531488fe341354bc02eaed
> [2]http://article.gmane.org/gmane.comp.lib.uclibc-ng/27
> [3]http://mailman.uclibc-ng.org/pipermail/devel/2016-May/000890.html
> [4]https://www.uclibc.org/products.html
> [5]http://www.uclibc-ng.org/ 
