X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1098" "Thursday" "8" "December" "2016" "15:36:48" "-0800" "Sarah Newman" "srn@prgmr.com" "<7ea32dbf-3f22-de92-8922-727d0512d090@prgmr.com>" "36" "Re: [oss-security] Opensource Python whitebox code analysis tool recommendations" nil nil nil "12" "2016120823:36:48" "[oss-security] Opensource Python whitebox code analysis tool recommendations" (number mark "U       srn@prgmr.co Dec  8   36/1098  " thread-indent "\"Re: [oss-security] Opensource Python whitebox code analysis tool recommendations\"\n") "<2ECE9D9EEF1F524185270138AE232659550547C3@S0MSMAIL112.arc.local>" ("<2ECE9D9EEF1F524185270138AE232659550547C3@S0MSMAIL112.arc.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5278 invoked by uid 550); 8 Dec 2016 23:53:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28224 invoked from network); 8 Dec 2016 23:37:09 -0000
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.prgmr.com D1F5A28C008
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=prgmr.com;
	s=default; t=1481240216;
	bh=rM5NAzAfEGbuBAzbebHa3lH9m88dDMM6yT+tVfCudwc=;
	h=Subject:To:References:From:Date:In-Reply-To:From;
	b=WTbyoVaJ25kRcWzhik4LhoVl4s+BCmj37FG9qgxS8JmfI7C6pmWfb4hLpNJHqTJps
	 9LQXJjiLV6FacTf0/JUUeu8iteptT+j+kTYd/J3Tw6u3qRmQ5Rg8s0SwMhSiaHCdQz
	 1rdszQqfSS08Sf0FYMl7sfQ1SKwt8Uxo2JcTWyqM=
To: oss-security@lists.openwall.com
References: <2ECE9D9EEF1F524185270138AE232659550547C3@S0MSMAIL112.arc.local>
From: Sarah Newman <srn@prgmr.com>
Message-ID: <7ea32dbf-3f22-de92-8922-727d0512d090@prgmr.com>
Date: Thu, 8 Dec 2016 15:36:48 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.5.1
MIME-Version: 1.0
In-Reply-To: <2ECE9D9EEF1F524185270138AE232659550547C3@S0MSMAIL112.arc.local>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] Opensource Python whitebox code analysis tool
 recommendations

On 12/06/2016 09:02 AM, Fiedler Roman wrote:
> Hello list,
> 
> I just stubled over effects of following programming error due to unwanted 
> singleton in Python, bypassing intended process restrictions (allowed number 
> of elements in my case) and of course data corruption:
> 
> class A:
>   def __init__(self, value=[]):
>     self.value=value
>     self.valueCloned=value[:]
>   def show(self):
>     print 'IDs value %x, cloned %x' % (id(self.value), id(self.valueCloned))
>   def append(self, data):
>     self.value.append(data)
> 
> # Keep reference to avoid garbage collection interference.
> objFirst=A()
> objFirst.show()
> objNext=A()
> objNext.show()
> # Check references to prohibit optimization.
> if objFirst==objNext: raise Exception('Impossible')
> 
> 
> 
> As this type of error seems to be more common in code, at least according to 
> grep, are there tool recommendations to do automatic analysis of code?
> 

It's not exactly the tool you're looking for, but pylint would have warned you:

W:  2, 2: Dangerous default value [] as argument (dangerous-default-value)

--Sarah

