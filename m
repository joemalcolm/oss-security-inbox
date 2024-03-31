Received: (qmail 27803 invoked by uid 550); 31 Mar 2024 00:23:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27685 invoked from network); 31 Mar 2024 00:23:36 -0000
Date: Sun, 31 Mar 2024 01:23:28 +0100 (CET)
From: Jan Engelhardt <jengelh@inai.de>
To: oss-security@lists.openwall.com
In-Reply-To: <5e72e6db-733c-423a-8213-f4698780cbab@wichmann.us>
Message-ID: <n13o1633-6409-9p3p-95or-94on654ps8s4@vanv.qr>
References: <20240329155126.kjjfduxw2yrlxgzm@awork3.anarazel.de> <uu76c4$u7g$1@ciao.gmane.io> <20240329211052.GA2470@openwall.com> <uu7da3$87n$1@ciao.gmane.io> <20240329221938.dqit6xuh4es2v6gc@awork3.anarazel.de> <uu7g5q$8hl$1@ciao.gmane.io>
 <01322afdcf6b4dd7b81452dc5afed6b1@amazon.com> <6038e843-fc3f-4c51-a48c-feb283242b41@canonical.com> <uu7k2m$61a$1@ciao.gmane.io> <CAOp4FwT+kqoG1JRawFu6tkz0LUMgkT9RCVfh7vyaN3bbFkYx3Q@mail.gmail.com> <72a9dfe5-a88d-4711-bc90-cd9269124f08@schafweide.org>
 <87cyrbzw2z.fsf@daath.pimeys.fr> <CAH8yC8nw_5rvGtemqZ3ojSaOCoLZnb+5q8m4NxTf5QTJ=5hoQg@mail.gmail.com> <5e72e6db-733c-423a-8213-f4698780cbab@wichmann.us>
User-Agent: Alpine 2.26 (LSU 649 2022-06-02)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Subject: Re: [oss-security] Re: backdoor in upstream xz/liblzma leading to
 ssh server compromise


On Saturday 2024-03-30 21:43, Mats Wichmann wrote:
> On 3/30/24 09:32, Jeffrey Walton wrote:
>
>>> Someone asked what would become of xz as a project. I do hope in
>>> light of this event, some people step in to help.
>> 
>> Perhaps Lasse should turn over control of the project to an entity
>
> In light of this scenario (at least what I understand about it),
> it's got to be even harder now for an overloaded maintainer to
> accept help of a significant nature.

I think it may not make much of a difference.


In the instance of xz, the usurper convinced maintainers with
contributions over the course of some 2 years to gain reasonable
control of the project, and in essence, users.

If instead, we picture that a maintainer withholds control (either due 
to lack of will, or lack of time), an usurper would have to start a fork 
and convince *users* directly to trust and favor the replacement, an 
undertaking which might have reasonably taken about 2-3 years as well 
(judging from the timeframes it took libjpeg-turbo or systemd to get a 
footing in distros).


Other software might have completely different "usurp time"
characteristics. That all depends on both how integrated a software
is in the larger ecosystem and how many users there already are that
would care (for either an improvement or when it breaks).
