X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1421" "Tuesday" "11" "August" "2015" "14:58:10" "+0200" "Adam Maris" "amaris@redhat.com" "<55C9F162.8030700@redhat.com>" "29" "Re: [oss-security] CVE for crypto_get_random() from libsrtp" nil nil nil "8" "2015081112:58:10" "[oss-security] CVE for crypto_get_random() from libsrtp" (number mark "        amaris@redha Aug 11   29/1421  " thread-indent "\"Re: [oss-security] CVE for crypto_get_random() from libsrtp\"\n") "<20150811114801.GA2731@yuggoth.org>" ("<55BB6E77.1070007@redhat.com>" "<CACYkhxiBvVbV-Xg-gM7ZdJzR=xaR2ta_OA-K6Lvftxvo9j3=uA@mail.gmail.com>" "<55C9A996.5090705@redhat.com>" "<20150811114801.GA2731@yuggoth.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3925 invoked by uid 550); 11 Aug 2015 12:58:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3889 invoked from network); 11 Aug 2015 12:58:24 -0000
References: <55BB6E77.1070007@redhat.com>
 <CACYkhxiBvVbV-Xg-gM7ZdJzR=xaR2ta_OA-K6Lvftxvo9j3=uA@mail.gmail.com>
 <55C9A996.5090705@redhat.com> <20150811114801.GA2731@yuggoth.org>
Message-ID: <55C9F162.8030700@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.1.0
MIME-Version: 1.0
In-Reply-To: <20150811114801.GA2731@yuggoth.org>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.27
Date: Tue, 11 Aug 2015 14:58:10 +0200
From: Adam Maris <amaris@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE for crypto_get_random() from libsrtp
To: oss-security@lists.openwall.com



On 11/08/15 13:48, Jeremy Stanley wrote:
> On 2015-08-11 09:51:50 +0200 (+0200), Adam Maris wrote:
> [...]
>> Unless CVE is assigned, we don't plan to ship any patch at the moment.
> I find this an interesting stance. Don't you decide on your own
> whether your customers are impacted by a bug sufficiently to require
> a fix (security vulnerability or otherwise)? It seems reasonable to
> me that you would choose whether or not to ship a patch
> independently of how MITRE chooses to classify (or not) the
> associated bug... and vice versa, if a CVE is assigned for a bug you
> consider to have minimal impact, do you release a patch for it
> anyway just because there's a CVE?
This has nothing to do with us not fixing flaws just because they don't 
get a CVE. I assure you that we've fixed security flaws that had no CVEs 
before. And if you look through our CVE database, you'll find many 
examples of simple crashers that unfortunately got a CVE, which we did 
not fix.
The main reason for not fixing it for now is that we think 80 bits of 
randomness is enough for most applications up to this day, especially if 
it's session data and not permanent storage, etc. Therefore we classify 
this issue as having a Low security impact. If a CVE is assigned for 
this issue, we will create an entry in our CVE database but the end 
result will likely be the same, wontfix.

-- 
Adam Maris / Red Hat Product Security

