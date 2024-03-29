Received: (qmail 13951 invoked by uid 550); 29 Mar 2024 22:45:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28604 invoked from network); 29 Mar 2024 22:43:23 -0000
X-Injected-Via-Gmane: http://gmane.org/
To: oss-security@lists.openwall.com
From: Tavis Ormandy <taviso@gmail.com>
Date: Fri, 29 Mar 2024 22:43:07 -0000 (UTC)
Message-ID: <uu7g5q$8hl$1@ciao.gmane.io>
References: <20240329155126.kjjfduxw2yrlxgzm@awork3.anarazel.de>
 <uu76c4$u7g$1@ciao.gmane.io> <20240329211052.GA2470@openwall.com>
 <uu7da3$87n$1@ciao.gmane.io>
 <20240329221938.dqit6xuh4es2v6gc@awork3.anarazel.de>
User-Agent: slrn/1.0.3 (Linux)
Subject: [oss-security] Re: backdoor in upstream xz/liblzma leading to ssh server compromise

On 2024-03-29, Andres Freund wrote:
> Hi,
>
> On 2024-03-29 21:54:11 -0000, Tavis Ormandy wrote:
>> On 2024-03-29, Solar Designer wrote:
>> >> I have a minor procedural question for Solar though, shouldn't this
>> >> have been redirected to oss-security immediately from distros? What's
>> >> the rationale for an embargo here?
>> >
>> > We don't have a clear policy for such case.  Some distros list members
>> > have indeed suggested making this public ASAP.  We ended up delaying
>> > publication by one day per my suggestion (as a compromise between ASAP
>> > and having no specific CRD), and I think these are some reasons why:
>>
>> Thanks, a compromise is better than nothing :) I think I would have
>> argued for immediately discussing this in the open.
>
> FWIW, I don't know much of the tradeoffs in this space. With that caveat:
>

Sure, it's distros moderators job to determine if an embargo is
necessary :)

> Personally I would have felt quite hesitant to post to distros@ if I knew that
> distros wouldn't get a reasonable, small, amount of time to prepare, so they
> have fixed packages available at the time of the public posting.
>

I guess I would hope you would trust the moderators to evaluate the
necessity of an embargo.

>> > 2. We didn't know how the culprit (or group) would react when they
>> > learned of the full extent of the community's awareness.
>>
>> This is true with any vulnerability, there is always the possibility an
>> attacker is already aware of it. They could respond to a patch being
>> released by trying to extract as much value from their exploit before
>> it's worthless.
>>
>> I'm not convinced that's a good argument to delay making the patch
>> available?
>
> What patch? You mean going back to an older version?
>

No, vulnerabilities usually require a patch, and we never know if bad
guys already know about the bug (unfortunately they won't tell us). You
could argue that if we release a patch, the attacker might respond by
trying to compromise as many targets as possible before their exploit is
worthless.

After all, if you're spending $1M to develop an exploit, why not keep an
eye on git commits to monitor if your investment is about to be ruined?

If someone said "it's better to let the attackers work slowly and
stealthily than alert them and potentially incentivize them to
compromise lots of people". I think most people would be strongly
opposed, I know I am!

I think this is not significanly different to Solars argument - If we
discuss this in public, maybe the attackers will start compromising
systems more aggressively.

Tavis.

-- 
 _o)            $ lynx lock.cmpxchg8b.com
 /\\  _o)  _o)  $ finger taviso@sdf.org
_\_V _( ) _( )  @taviso

