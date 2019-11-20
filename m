X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3818" "Wednesday" "20" "November" "2019" "12:11:31" "-0600" "Mark Hatle" "mark.hatle@kernel.crashing.org" "<f514d433-55bf-3f09-5d52-d4baef37b178@kernel.crashing.org>" "74" "Re: [oss-security] Mitigating malicious packages in gnu/linux" "^Date:" nil nil "11" "2019112018:11:31" "[oss-security] Mitigating malicious packages in gnu/linux" (number mark "        mark.hatle@k Nov 20   74/3818  " thread-indent "\"Re: [oss-security] Mitigating malicious packages in gnu/linux\"\n") "<20191120174915.GA27616@openwall.com>" ("<CAGUWgD8LDusq3PyWeMd-RoDhOtfiebVtKKV_39GhG+8c0QYFYg@mail.gmail.com>" "<20191120124425.GA25554@openwall.com>" "<87wobumq8e.fsf@hope.eyrie.org>" "<20191120174915.GA27616@openwall.com>") nil nil nil nil nil nil nil "Re: [oss-security] Mitigating malicious packages in gnu/linux" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 23821 invoked by uid 550); 20 Nov 2019 18:18:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 20149 invoked from network); 20 Nov 2019 18:11:47 -0000
References: <CAGUWgD8LDusq3PyWeMd-RoDhOtfiebVtKKV_39GhG+8c0QYFYg@mail.gmail.com>
 <20191120124425.GA25554@openwall.com> <87wobumq8e.fsf@hope.eyrie.org>
 <20191120174915.GA27616@openwall.com>
Message-ID: <f514d433-55bf-3f09-5d52-d4baef37b178@kernel.crashing.org>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191120174915.GA27616@openwall.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Date: Wed, 20 Nov 2019 12:11:31 -0600
From: Mark Hatle <mark.hatle@kernel.crashing.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Mitigating malicious packages in gnu/linux
To: oss-security@lists.openwall.com, Solar Designer <solar@openwall.com>



On 11/20/19 11:49 AM, Solar Designer wrote:
> On Wed, Nov 20, 2019 at 09:06:57AM -0800, Russ Allbery wrote:
>> Solar Designer <solar@openwall.com> writes:
>>
>>> Contrary to traditional best practices, update only what and when needs
>>> to be updated.  (Of course, you take responsibility to watch for any
>>> relevant security updates, or accept the risk if you neglect to do that.
>>> You also miss silent security fixes, but on the other hand you similarly
>>> miss newly introduced vulnerabilities.)
>>
>> I'm very reluctant to give this advice, not because it's wrong, but
>> because the failure mode is misaligned for most people.
>>
>> The average user of a distribution (personal or professional) is at much
>> greater risk of a compromise due to an unpatched security vulnerability
>> than due to malicious code introduced in the distribution package update
>> stream.  Both are *possible*, but one of them is far more common (I would
>> even say by orders of magnitude).  Determining which updates are security
>> updates is tedious and requires a lot of discipline; it's something that
>> humans are generally bad at, and the failure mode is usually to not apply
>> the update.  Many security updates are not explicitly flagged as such (see
>> all the recent discussions on this list about CVEs).
>>
>> The average user is therefore best served by applying all distribution
>> updates.  Choosing not to update to reduce your risk of a supply chain
>> attack is a very advanced technique, and I would tell people to think very
>> hard about whether they want to sign up for the necessary cognitive load
>> and disciplined decision-making required to identify relevant security
>> updates that they need to apply.
> 
> I fully agree.
> 
> Yet I think it's an option that people with a background and concerns
> like Georgi's would want to at least consider.  Not typical end-users.

Agreed.  Security starts with the people doing the initial integration and
review.  Then every step on the chain builds on this.  So if any place in this
chain is compromised (before the end user downloads their magic package), then
they will be affected.

In the past I had been involved with trying to evaluate the security quality of
packages.  This involved security process information, code contribution review,
release process, etc.  There is no "one" way to do this that I'm aware of, but I
think a good analogy from someone in manufacturing.  You either need to treat
your input as 'raw material' and do your own (quality, including security)
review or you need to trust your supplier.  Even when you trust your supplier,
you still need to do (quality) spot checks.

I don't see anything different when working on the provenance of the components
being used.  Either you trust the upstream enough that all that is needed are
spot checks, or you don't trust them at all and all new changes must be reviewed.

Then the next step of the chain is your user either has to trust you, or perform
the same actions.

There are block chain processes for tracing bill of materials which could be
used for this.  Every step of the acceptance/delivery could be added to a
registry and tracked.  At the worst of times this could be used to identify
where the process failure or system compromise was introduced to help avoid it
-- at best it shows the people down the line what has been done so they can make
an informed decision if they trust their supplier or not.

(I'm involved with the Yocto Project/OpenEmbedded components.  We treat the
incoming code as raw materials and attempt to do our own reviews of not only the
upstream code and the submitted community work.  Not, this is not specific to
'security', and trusted maintainers get less review then the new guy who hasn't
contributed before.)

--Mark

> Alexander
> 
