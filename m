X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1746" "Thursday" "18" "January" "2018" "16:38:41" "-0500" "Luedtke, Nicholas (Cyber Security)" "nicholas.luedtke@hpe.com" "<519d9522-0531-a553-5bf3-de6d4e712a35@hpe.com>" "36" "Re: [oss-security] How to deal with reporters who don't want their bugs fixed?" "^Date:" nil nil "1" "2018011821:38:41" "[oss-security] How to deal with reporters who don't want their bugs fixed?" (number mark "        nicholas.lue Jan 18   36/1746  " thread-indent "\"Re: [oss-security] How to deal with reporters who don't want their bugs fixed?\"\n") "<20180118212114.GA8771@openwall.com>" ("<07f40446-1917-893c-2a87-b0d7990579b2@redhat.com>" "<20180118212114.GA8771@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1925 invoked by uid 550); 18 Jan 2018 21:52:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7910 invoked from network); 18 Jan 2018 21:38:53 -0000
References: <07f40446-1917-893c-2a87-b0d7990579b2@redhat.com>
 <20180118212114.GA8771@openwall.com>
Message-ID: <519d9522-0531-a553-5bf3-de6d4e712a35@hpe.com>
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <20180118212114.GA8771@openwall.com>
Content-Type: multipart/alternative;
 boundary="------------32428BAEE822DACBC0D82734"
Content-Language: en-US
Date: Thu, 18 Jan 2018 16:38:41 -0500
From: "Luedtke, Nicholas (Cyber Security)" <nicholas.luedtke@hpe.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] How to deal with reporters who don't want their
 bugs fixed?
To: oss-security@lists.openwall.com

--------------32428BAEE822DACBC0D82734
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit


On 1/18/2018 4:21 PM, Solar Designer wrote:
> I think it's best for your project (I guess glibc?) to prominently
> publish near the security contact address a maximum embargo time you'd
> (be likely to) agree to.  That's what security at kernel.org does
> (7 days) and what we do with (linux-)distros (14 days).  That way, it's
> less important for you to judge whether the reason for embargo is
> valid/altruistic or bogus/selfish - a sane maximum embargo time
> minimizes the damage to all parties either way.  When someone requests a
> longer embargo for whatever reason, just decline and insist on your
> previously published maximum.  Those who want to have their issue
> disclosure timed with some other event will then be expected to delay
> reporting the issue to your project until it's close enough to that
> other event.  That's not ideal, but I think it's better than having no
> maximum embargo time specified.

I generally agree with this, but it also creates the risk that reporters 
will simply wait till the maximum time frame fits within their desired 
reporting time.  Which of course delays the reporting of the bug to the 
vendor/project. What I have seen in the past is a negotiated partial 
disclosure where the patch is released with minimum details with the 
line that says "Full details with be released by XXX at YYY conference." 
That way if ego is the factor then the reporter also gets a slight 
teaser for his/her talk. Of course one could just use the patch to get 
the details depending on the issue.

--Nicholas Luedtke HPE Cyber Security




--------------32428BAEE822DACBC0D82734--
