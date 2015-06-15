X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1088" "Monday" "15" "June" "2015" "14:39:33" "+0200" "Tomas Hoger" "thoger@redhat.com" "<20150615143933.462b5cda@redhat.com>" "34" "Re: [oss-security] Re: CVE Request: various issues in PHP" nil nil nil "6" "2015061512:39:33" "[oss-security] Re: CVE Request: various issues in PHP" (number mark "        thoger@redha Jun 15   34/1088  " thread-indent "\"Re: [oss-security] Re: CVE Request: various issues in PHP\"\n") "<20150529170751.482ad9f4@redhat.com>" ("<CAEsznC6KasPjN9vNLcWgGkcGZee6K=200Wx4yXRrehVS2bUPvg@mail.gmail.com>" "<CAEsznC72a6SvHxr9-NywXehaOfpXkbgCkjeh8ijVGsyeYAc98A@mail.gmail.com>" "<20150520134934.GA29538@mail.corp.redhat.com>" "<20150529170751.482ad9f4@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17864 invoked by uid 550); 15 Jun 2015 12:39:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17844 invoked from network); 15 Jun 2015 12:39:54 -0000
Message-ID: <20150615143933.462b5cda@redhat.com>
In-Reply-To: <20150529170751.482ad9f4@redhat.com>
References: <CAEsznC6KasPjN9vNLcWgGkcGZee6K=200Wx4yXRrehVS2bUPvg@mail.gmail.com>
	<CAEsznC72a6SvHxr9-NywXehaOfpXkbgCkjeh8ijVGsyeYAc98A@mail.gmail.com>
	<20150520134934.GA29538@mail.corp.redhat.com>
	<20150529170751.482ad9f4@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.27
Cc: <kaplanlior@gmail.com>, <security@php.net>
Date: Mon, 15 Jun 2015 14:39:33 +0200
From: Tomas Hoger <thoger@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: CVE Request: various issues in PHP
To: oss-security@lists.openwall.com, cve-assign@mitre.org

On Fri, 29 May 2015 17:07:51 +0200 Tomas Hoger wrote:

> I think there are few fixes in 5.4.40 / 5.5.24 / 5.6.8 that should have
> CVEs assigned:
> 
> 
> https://bugs.php.net/bug.php?id=69353
> http://git.php.net/?p=php-src.git;a=commitdiff;h=52b93f0cfd3cba7ff98cc5198df6ca4f23865f80
> 
> More CVE-2015-4025 / CVE-2015-4026 / CVE-2006-7243 like issues.  More
> notes on what got changed is in RHBZ:
> https://bugzilla.redhat.com/show_bug.cgi?id=1213407#c5
> 
> 
> https://bugs.php.net/bug.php?id=69152
> http://git.php.net/?p=php-src.git;a=commitdiff;h=0c136a2abd49298b66acb0cad504f0f972f5bfe8
> http://git.php.net/?p=php-src.git;a=commitdiff;h=51856a76f87ecb24fe1385342be43610fb6c86e4
> http://git.php.net/?p=php-src.git;a=commitdiff;h=fb83c76deec58f1fab17c350f04c9f042e5977d1
> 
> More unserialize issues.
> 
> 
> https://bugs.php.net/bug.php?id=68819
> http://git.php.net/?p=php-src.git;a=commitdiff;h=f938112c495b0d26572435c0be73ac0bfe642ecd
> 
> Fileinfo DoS.
> 
> 
> Can CVEs be assigned for these?  Thank you!

Re-send this CVE request.

-- 
Tomas Hoger / Red Hat Product Security
