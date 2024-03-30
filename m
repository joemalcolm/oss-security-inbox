Received: (qmail 27929 invoked by uid 550); 30 Mar 2024 12:45:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 8116 invoked from network); 30 Mar 2024 02:49:03 -0000
X-Injected-Via-Gmane: http://gmane.org/
To: oss-security@lists.openwall.com
From: Tavis Ormandy <taviso@gmail.com>
Date: Sat, 30 Mar 2024 02:48:45 -0000 (UTC)
Message-ID: <uu7uid$4ig$1@ciao.gmane.io>
References: <20240329155126.kjjfduxw2yrlxgzm@awork3.anarazel.de>
 <uu76c4$u7g$1@ciao.gmane.io> <20240329211052.GA2470@openwall.com>
 <uu7da3$87n$1@ciao.gmane.io>
 <20240329221938.dqit6xuh4es2v6gc@awork3.anarazel.de>
 <uu7g5q$8hl$1@ciao.gmane.io> <01322afdcf6b4dd7b81452dc5afed6b1@amazon.com>
 <6038e843-fc3f-4c51-a48c-feb283242b41@canonical.com>
 <uu7k2m$61a$1@ciao.gmane.io>
 <4f2d978b-e94d-44c1-b6d1-d4c18c9d9eb0@canonical.com>
User-Agent: slrn/1.0.3 (Linux)
Subject: [oss-security] Re: backdoor in upstream xz/liblzma leading to ssh server compromise

On 2024-03-30, Marc Deslauriers wrote:
> On 2024-03-29 19:49, Tavis Ormandy wrote:
>> On 2024-03-29, Marc Deslauriers wrote:
>>>> I think we should have a policy that if issues are suspected to be actively exploited, that the issue goes public immediately.  If even there is no patch or mitigation, there's not a lot of benefit to keeping it private.
>>>
>>> In this case, we had no reason to believe it was being actively exploited.
>>>
>> 
>> Yeah... but you also have no reason to not believe that?
>> 
>> What do you propose they were doing with their backdoor?
>
> They were still attempting to get it into distros,
>

You can do two things at once, I suspect attackers can too :)

>> Isn't doing `dnf downgrade xxx` a mitigation, or `systemctl xxx stop`?
>
> All we knew was that a payload was being attached to liblzma, it took a while to 
> get the other details. We wanted to make sure it wasn't propagating to packages 
> it compressed.
>

Sure - but why do you have to do that in private? You can get everyone
to help get those answers and converge on the correct solution
quickly.

The attackers already knew about this issue, so you were just keeping it
from defenders... that doesn't make sense to me.

> It wasn't obvious at the time that simply reverting to the previous version 
> would be a complete solution, and I don't think telling everyone to stop ssh on 
> all their servers and cloud instances is a viable mitigation at all.
>

Yeah, you're making big decisions for a lot of people here.

If your organization was not on the list and got compromised during the
embargo, do you think you would be thanking everyone for delaying your
response?

>> 
>> We all want users to be secure as fast as possible. The discussion is
>> whether keeping backdoors embargoed helps achieve that.
>
> It took a day to figure out what it was, what the impact was, and how to get it 
> fixed, at which point there was agreement it shouldn't be keep embargoed. Nobody 
> was pushing for it to be embargoed any longer than it needed to be.
>

Yeah, my point is just this would have been better handled in public!

I respect your work and I'm glad you were working on this, but in public
we could have got more eyes on this!

Tavis.

-- 
 _o)            $ lynx lock.cmpxchg8b.com
 /\\  _o)  _o)  $ finger taviso@sdf.org
_\_V _( ) _( )  @taviso

