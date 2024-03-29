Received: (qmail 3953 invoked by uid 550); 29 Mar 2024 23:49:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3908 invoked from network); 29 Mar 2024 23:49:20 -0000
From: Russ Allbery <eagle@eyrie.org>
To: oss-security@lists.openwall.com
In-Reply-To: <6038e843-fc3f-4c51-a48c-feb283242b41@canonical.com> (Marc
	Deslauriers's message of "Fri, 29 Mar 2024 19:15:11 -0400")
Organization: The Eyrie
References: <20240329155126.kjjfduxw2yrlxgzm@awork3.anarazel.de>
	<uu76c4$u7g$1@ciao.gmane.io> <20240329211052.GA2470@openwall.com>
	<uu7da3$87n$1@ciao.gmane.io>
	<20240329221938.dqit6xuh4es2v6gc@awork3.anarazel.de>
	<uu7g5q$8hl$1@ciao.gmane.io>
	<01322afdcf6b4dd7b81452dc5afed6b1@amazon.com>
	<6038e843-fc3f-4c51-a48c-feb283242b41@canonical.com>
User-Agent: Gnus/5.13 (Gnus v5.13)
Date: Fri, 29 Mar 2024 16:49:09 -0700
Message-ID: <87r0fsiop6.fsf@hope.eyrie.org>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [oss-security] Re: backdoor in upstream xz/liblzma leading to
 ssh server compromise

Marc Deslauriers <marc.deslauriers@canonical.com> writes:

> I would argue against having a policy requiring something like this to
> be made public immediately. The important thing here is to do whatever
> it takes to make sure users are secure as fast as possible, not expose
> them to even bigger attack surface with no mitigation available.

There is an interesting potential disagreement of interests here, too, in
that one's ability to respond to a disclosed vulnerability with no
available updated packages is heavily resource-dependent.  Large
(security-savvy) companies may reasonably prefer disclosure as early as
possible because they have in-house security teams that follow lists like
this and are capable of taking immediate action in advance of a general
fix.  However, smaller organizations or individuals who are reliant on
distributions for notification and patches are potentially more vulnerable
to any increased attacker activity that might happen due to the public
announcement and before the availability of updated packages.

That gap could be closed somewhat by distributions sending immediate
security alerts with mitigations and workarounds once the issue becomes
public and then following up with alerts once patches are available, at
the cost of an obvious increase in work and stress for distributions (and
possible contention of resources between putting out a migitation alert
and preparing a proper fix).

(Disclosure: I am a member of the Debian project, but I am not a member of
the Debian security team and am speaking solely for myself here.)

-- 
Russ Allbery (eagle@eyrie.org)             <https://www.eyrie.org/~eagle/>
