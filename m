X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2208" "Saturday" "20" "January" "2018" "21:18:25" "+0100" "Florian Weimer" "fweimer@redhat.com" "<d777592f-f00c-6b12-64c2-ac762f7b8b38@redhat.com>" "44" "Re: [oss-security] How to deal with reporters who don't want their bugs fixed?" "^Date:" nil nil "1" "2018012020:18:25" "[oss-security] How to deal with reporters who don't want their bugs fixed?" (number mark "        fweimer@redh Jan 20   44/2208  " thread-indent "\"Re: [oss-security] How to deal with reporters who don't want their bugs fixed?\"\n") "<20180118212114.GA8771@openwall.com>" ("<07f40446-1917-893c-2a87-b0d7990579b2@redhat.com>" "<20180118212114.GA8771@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 6098 invoked by uid 550); 20 Jan 2018 20:18:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 6075 invoked from network); 20 Jan 2018 20:18:39 -0000
References: <07f40446-1917-893c-2a87-b0d7990579b2@redhat.com>
 <20180118212114.GA8771@openwall.com>
Message-ID: <d777592f-f00c-6b12-64c2-ac762f7b8b38@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.5.2
MIME-Version: 1.0
In-Reply-To: <20180118212114.GA8771@openwall.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.27]); Sat, 20 Jan 2018 20:18:27 +0000 (UTC)
Date: Sat, 20 Jan 2018 21:18:25 +0100
From: Florian Weimer <fweimer@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] How to deal with reporters who don't want their
 bugs fixed?
To: oss-security@lists.openwall.com

On 01/18/2018 10:21 PM, Solar Designer wrote:
> On Thu, Jan 18, 2018 at 05:10:05PM +0100, Florian Weimer wrote:
>> Subject says it all: What do you do if you receive a vulnerability
>> report, and the reporter requests an embargo at some time in the future
>> because that's when their paper/conference presentation/patent
>> submission is scheduled?
> 
> I think it's best for your project (I guess glibc?) to prominently
> publish near the security contact address a maximum embargo time you'd
> (be likely to) agree to.  That's what security at kernel.org does
> (7 days) and what we do with (linux-)distros (14 days).

I would prefer to be flexible in case something truly awful happens.

Your perspective is skewed because people know that you have a 
preference for short embargoes, so at least I tell people to make sure 
that they have a final patch before contacting the distros list.  Then a 
week or two is probably enough in most cases.  Without a patch, not so much.

On the other hand, it is near impossible to develop quality solutions 
under long embargoes.  We tried that in 2008 and largely failed.  The 
GCC stack checking improvements wouldn't be available today if there had 
been an indefinite, multi-party embargo (we have an aarch64 
implementation which still hasn't been merged upstream).  And a more 
recent attempt yielded few durable results as well.

It also looks like that some reporters see embargoes as a kind of 
validation for their work.  Everyone loves their first embargoes.

> That way, it's
> less important for you to judge whether the reason for embargo is
> valid/altruistic or bogus/selfish - a sane maximum embargo time
> minimizes the damage to all parties either way.

That's not really true.  Depending on the nature of the vulnerability, 
there can be a lot of work before we're confident that we can ship an 
update.  We have some rather bad code out there, with very little or no 
test coverage, and if we modify such code, we really need to make sure 
that users receive a net improvement.  (For example, we thought we had 
the final patch for a DNS stub resolver issue, but it turned out very 
late that it had a crippling memory leak.)

Thanks,
Florian
