Received: (qmail 7937 invoked by uid 550); 29 Mar 2024 21:56:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5904 invoked from network); 29 Mar 2024 21:54:28 -0000
X-Injected-Via-Gmane: http://gmane.org/
To: oss-security@lists.openwall.com
From: Tavis Ormandy <taviso@gmail.com>
Date: Fri, 29 Mar 2024 21:54:11 -0000 (UTC)
Message-ID: <uu7da3$87n$1@ciao.gmane.io>
References: <20240329155126.kjjfduxw2yrlxgzm@awork3.anarazel.de>
 <uu76c4$u7g$1@ciao.gmane.io> <20240329211052.GA2470@openwall.com>
User-Agent: slrn/1.0.3 (Linux)
Subject: [oss-security] Re: backdoor in upstream xz/liblzma leading to ssh server compromise

On 2024-03-29, Solar Designer wrote:
>> I have a minor procedural question for Solar though, shouldn't this
>> have been redirected to oss-security immediately from distros? What's
>> the rationale for an embargo here?
>
> We don't have a clear policy for such case.  Some distros list members
> have indeed suggested making this public ASAP.  We ended up delaying
> publication by one day per my suggestion (as a compromise between ASAP
> and having no specific CRD), and I think these are some reasons why:

Thanks, a compromise is better than nothing :) I think I would have
argued for immediately discussing this in the open.

>
> If this were made public yesterday, there would be more of a panic.

There are lots of actions possible without any official guidance from
vendors, and sometimes hours can make a difference. I don't think it's
fair to characterize that as panic.

>
> 2. We didn't know how the culprit (or group) would react when they
> learned of the full extent of the community's awareness.

This is true with any vulnerability, there is always the possibility an
attacker is already aware of it. They could respond to a patch being
released by trying to extract as much value from their exploit before
it's worthless.

I'm not convinced that's a good argument to delay making the patch available?

> 3. We were aware of concurrent coordination efforts by other groups
> (CERT/CC, CISA) and we didn't want to interfere with their plans.

The trade-off here is we're delaying everybody elses ability to react.
I worry they might want a delay to patch the systems they care about
first.

Perhaps if a representative had said the feds request a few hours
because they're deploying a helicopter full of agents to make an arrest,
well okay, that's more convincing :)

> 4. More findings were still being made and the wording of Andres'
> posting improved per private feedback.
>

Sure, but this could have been done in the open on oss-security, right?

Tavis.

-- 
 _o)            $ lynx lock.cmpxchg8b.com
 /\\  _o)  _o)  $ finger taviso@sdf.org
_\_V _( ) _( )  @taviso

