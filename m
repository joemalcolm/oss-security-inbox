X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["639" "Wednesday" "8" "April" "2020" "21:26:07" "-0400" "Stuart D Gathman" "stuart@gathman.org" "<alpine.LRH.2.21.2004082122240.17854@mail.gathman.org>" "13" "Re: [oss-security] [CVE-2019-16782] Possible Information Leak / Session Hijack Vulnerability in Rack" nil nil nil "4" "2020040901:26:07" "[oss-security] [CVE-2019-16782] Possible Information Leak / Session Hijack Vulnerability in Rack" (number mark "U       stuart@gathm Apr  8   13/639   " thread-indent "\"Re: [oss-security] [CVE-2019-16782] Possible Information Leak / Session Hijack Vulnerability in Rack\"\n") "<87h7xt3a5s.fsf@silverfish.pri>" ("<20191218181602.GA62521@tc-lan-adapter.local>" "<CAN_LGv17OG6JB-dm+t62WbDJajEAdik+fncnownEvrv+NUSvoQ@mail.gmail.com>" "<87h7xt3a5s.fsf@silverfish.pri>") nil nil nil nil nil nil nil "Re: [oss-security] [CVE-2019-16782] Possible Information Leak / Session Hijack Vulnerability in Rack" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30124 invoked by uid 550); 9 Apr 2020 11:18:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3736 invoked from network); 9 Apr 2020 01:26:58 -0000
Authentication-Results: mail.gathman.org; iprev=pass policy.iprev="2001:470:8:809::1010" (mail.gathman.org); auth=pass (CRAM-MD5 sslbits=256) smtp.auth=stuart
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gathman.org; 
 i=@gathman.org; q=dns/txt; s=default; t=1586395572; 
 h=date : from : to : subject : in-reply-to : message-id : 
 references : mime-version : content-type : date : from : 
 subject; bh=zQBEeANpkc7g9kjcYXWmLTC4zAht8eug8lEQu6NkXP0=; 
 b=bxKNoc+k0/BmUSSKCcqyKIDO//hYE/wrbJT5QbZC00EJRVwj0nBJ1vxz
 yWkECqh+fhL358KcPb5Xbs8pidnrPQKF0ebaWX/NLrGFp0AHnXEF5nfmMh
 QWSaTs1RkoTcZvqyeZLVXSZtfA6Fyn0FPonVuIc4Mob6a+ooiQTEZDmt4=
Date: Wed, 8 Apr 2020 21:26:07 -0400 (EDT)
From: Stuart D Gathman <stuart@gathman.org>
To: oss-security@lists.openwall.com
In-Reply-To: <87h7xt3a5s.fsf@silverfish.pri>
Message-ID: <alpine.LRH.2.21.2004082122240.17854@mail.gathman.org>
References: <20191218181602.GA62521@tc-lan-adapter.local> <CAN_LGv17OG6JB-dm+t62WbDJajEAdik+fncnownEvrv+NUSvoQ@mail.gmail.com> <87h7xt3a5s.fsf@silverfish.pri>
User-Agent: Alpine 2.21 (LRH 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII; format=flowed
Subject: Re: [oss-security] [CVE-2019-16782] Possible Information Leak /
 Session Hijack Vulnerability in Rack

On Thu, 9 Apr 2020, Brian May wrote:

>> 1. The attacker could send various bogus session ids, starting with
>> all possible valid bytes. The database, if it uses a trie (yes,
>> strawman example - is it used by any real-world database?) as a data
>> structure to speed up looking up sessions, will terminate the
>> comparison early on invalid bytes, thus disclosing them.

Not real-world as the number of installations is maybe 6 now, but
the one I wrote removes leading duplicates from index records (replacing
with a dup count).  I believe that timing the lookups could disclose
bytes as described.  It's super efficient, though.  :-)

