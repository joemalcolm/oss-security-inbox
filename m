X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4651" "Monday" "1" "July" "2019" "16:02:10" "+0930" "Simon Lees" "sflees@suse.de" "<21cb97a5-99a4-edc9-41ce-19ceb92e62bf@suse.de>" "102" "Re: [oss-security] linux-distros membership application - Microsoft" "^Date:" nil nil "7" "2019070106:32:10" "[oss-security] linux-distros membership application - Microsoft" (number mark "        sflees@suse. Jul  1  102/4651  " thread-indent "\"Re: [oss-security] linux-distros membership application - Microsoft\"\n") "<20190628170812.GG11506@sasha-vm>" ("<20190626141358.GK7898@sasha-vm>" "<20190627140321.GA29338@openwall.com>" "<20190627170508.GB11506@sasha-vm>" "<20190628125743.GA2187@openwall.com>" "<20190628170812.GG11506@sasha-vm>") nil nil nil nil nil nil nil "Re: [oss-security] linux-distros membership application - Microsoft" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 22099 invoked by uid 550); 1 Jul 2019 06:32:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22075 invoked from network); 1 Jul 2019 06:32:40 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
References: <20190626141358.GK7898@sasha-vm>
 <20190627140321.GA29338@openwall.com> <20190627170508.GB11506@sasha-vm>
 <20190628125743.GA2187@openwall.com> <20190628170812.GG11506@sasha-vm>
Message-ID: <21cb97a5-99a4-edc9-41ce-19ceb92e62bf@suse.de>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190628170812.GG11506@sasha-vm>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Date: Mon, 1 Jul 2019 16:02:10 +0930
From: Simon Lees <sflees@suse.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] linux-distros membership application - Microsoft
To: oss-security@lists.openwall.com



On 29/06/2019 02:38, Sasha Levin wrote:
> On Fri, Jun 28, 2019 at 02:57:43PM +0200, Solar Designer wrote:
>> On Thu, Jun 27, 2019 at 01:05:08PM -0400, Sasha Levin wrote:
>>> security@k.o is not a disclosure list, but
>>> rather just a way to pull in kernel folks to fix issues. Some (most?) of
>>> the kernel bugs that get fixed don't go through that list to begin with.
>>
>> "Some (most?) of the kernel [security] bugs that get fixed don't go
>> through" linux-distros as well.
> 
> True, but we care about more than just the kernel side of things.
> 
>>> The kernel's documentation with regards to security issues and
>>> disclosure actually points to linux-distros:
>>> https://www.kernel.org/doc/Documentation/admin-guide/security-bugs.rst .
>>
>> I'm not entirely happy with the wording used there, which currently is:
>>
>> ---
>> Fixes for sensitive bugs, such as those that might lead to privilege
>> escalations, may need to be coordinated with the private
>> <linux-distros@vs.openwall.org> mailing list so that distribution vendors
>> are well prepared to issue a fixed kernel upon public disclosure of the
>> upstream fix. Distros will need some time to test the proposed patch and
>> will generally request at least a few days of embargo, and vendor update
>> publication prefers to happen Tuesday through Thursday. When appropriate,
>> the security team can assist with this coordination, or the reporter can
>> include linux-distros from the start. In this case, remember to prefix
>> the email Subject line with "[vs]" as described in the linux-distros 
>> wiki:
>> <http://oss-security.openwall.org/wiki/mailing-lists/distros#how-to-use-the-lists> 
>>
>> ---
>>
>> This says that "Distros [...] will generally request at least a few days
>> of embargo", but the actual policy of (linux-)distros is that the
>> reporter must provide a tentative public disclosure date/time in their
>> very first message.
>>
>> Also, this doesn't say that by disclosing something to (linux-)distros
>> the reporter accepts the list's policy, and leaves actually reading that
>> wiki page with the policy optional.
>>
>> I don't readily have suggested edits, but we should address these issues
>> somehow.  Please feel free to suggest edits.
> 
> Can I suggest that we fork the discussion around security-bugs.rst to
> LKML? I can suggest an initial patch to address your comments here but I
> think that this is better handled on LKML.
> 
>> On a related note, this might not be representative, but I ran a Twitter
>> poll on days of week for vulnerability disclosures:
>>
>> https://twitter.com/solardiz/status/923885360001757185
>>
>> Poll: What days of week work best for you for public disclosure by
>> others of vulnerabilities in software you (or your employer, etc.) use?
>>
>> 23% No preference or Other
>> 33% Mon
>> 36% Tue, Wed, Thu
>> 8% Fri, Sat, Sun
>>
>> 164 votes
>>
>> 12:13 PM - 27 Oct 2017
>>
>> As you can see, Mon fared really well - almost same as Tue, Wed, Thu
>> combined, meaning that it might be _the_ preferred day of week for
>> vulnerability disclosures.  So we probably shouldn't exclude Mondays.
> 
> My concern with Monday is timezones: we should do the math here, but I'd
> like to avoid spilling over to Sunday (or very early Monday for that
> matter) for some timezones.

I missed the twitter poll but from my perspective as someone involved in 
making and releasing such updates for SUSE customers Monday disclosures 
tend to work for us but only due to timezones, generally disclosure 
times happen into the late afternoon evening, which means that if 
lengthy QA tests were left running over the weekend our QA team will 
have time to review the results during Monday and we will be ready to 
release. I am guessing that some other distro's wouldn't end up with 
this luxury. Having said that it will often depend on the amount of 
total time we have and the size of the test suite, having said that many 
of our automated tests will finish over night.

I guess for distro's who employ people to fix security issues, a Monday 
morning / lunch time disclosure is mostly going to mean that everyone 
will aim to have update's ready on the Friday night if possible which 
doesn't really help with keeping embargo times as short as practical. On 
the other hand it might give people patching issues in there spare time 
more of a chance.

-- 

Simon Lees (Simotek)                            http://simotek.net

Emergency Update Team                           keybase.io/simotek
SUSE Linux                           Adelaide Australia, UTC+10:30
GPG Fingerprint: 5B87 DB9D 88DC F606 E489 CEC5 0922 C246 02F0 014B
