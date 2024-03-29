Received: (qmail 15396 invoked by uid 550); 29 Mar 2024 23:57:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16031 invoked from network); 29 Mar 2024 23:49:58 -0000
X-Injected-Via-Gmane: http://gmane.org/
To: oss-security@lists.openwall.com
From: Tavis Ormandy <taviso@gmail.com>
Date: Fri, 29 Mar 2024 23:49:42 -0000 (UTC)
Message-ID: <uu7k2m$61a$1@ciao.gmane.io>
References: <20240329155126.kjjfduxw2yrlxgzm@awork3.anarazel.de>
 <uu76c4$u7g$1@ciao.gmane.io> <20240329211052.GA2470@openwall.com>
 <uu7da3$87n$1@ciao.gmane.io>
 <20240329221938.dqit6xuh4es2v6gc@awork3.anarazel.de>
 <uu7g5q$8hl$1@ciao.gmane.io> <01322afdcf6b4dd7b81452dc5afed6b1@amazon.com>
 <6038e843-fc3f-4c51-a48c-feb283242b41@canonical.com>
User-Agent: slrn/1.0.3 (Linux)
Subject: [oss-security] Re: backdoor in upstream xz/liblzma leading to ssh server compromise

On 2024-03-29, Marc Deslauriers wrote:
>> I think we should have a policy that if issues are suspected to be actively exploited, that the issue goes public immediately.  If even there is no patch or mitigation, there's not a lot of benefit to keeping it private.
>
> In this case, we had no reason to believe it was being actively exploited.
>

Yeah... but you also have no reason to not believe that?

What do you propose they were doing with their backdoor?

> If you make it public before a patch or mitigation is available, it has now gone 
> from a single entity being able to exploit it to the whole world being able to 
> exploit it.
>
> That's a whole lot worse.
>

Okay, but do we agree that if there is a mitigation available, it's better
for it to be public?

Isn't doing `dnf downgrade xxx` a mitigation, or `systemctl xxx stop`?

>> 
>> I think everyone was acting in good faith here and did great work, but there wasn't a clear policy for handling this type of issue.
>
>
> I would argue against having a policy requiring something like this to be made 
> public immediately. The important thing here is to do whatever it takes to make 
> sure users are secure as fast as possible, not expose them to even bigger attack 
> surface with no mitigation available.
>
> Marc.

We all want users to be secure as fast as possible. The discussion is
whether keeping backdoors embargoed helps achieve that.

Tavis.

-- 
 _o)            $ lynx lock.cmpxchg8b.com
 /\\  _o)  _o)  $ finger taviso@sdf.org
_\_V _( ) _( )  @taviso

