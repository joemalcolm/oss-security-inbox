Received: (qmail 31838 invoked by uid 550); 29 Apr 2024 18:58:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31817 invoked from network); 29 Apr 2024 18:58:34 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1714417106;
	bh=oTUGeCUq7bWMZUr76PYQRl9c61IU2rP9VSjHuPTE9Q4=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type;
	b=PDT7K8FHu0Z1dsgej2UFj42e33P7Fs3KNV7JPKeSJZqPKnsPi+ytcup59woH4oPnP
	 F7WnnPjvRYR9UFZMzbbfGEMNL+kIj0m8XqUIjlyJQ6sRf2ZGMRpK+8d80ReSpQSxuy
	 ibtCLPBAHhCzkUQEQvNPUoMuBif+gkXcWL94sxH9ES7t+WcFCmh4d9Ha4daj3ZzX+2
	 kL5PUuvhxPYI4Kq8LfWMm59ZlVXXjo8LoVsFPfFzsanT5xbrxVoBoYLx64vVoO75Ml
	 gQqg0H8MDsBPUK4IJw8pGGtiaJ1keaYQO2EUud0WZ7Y/cM12OrLdW9xlA3KlQAhPYn
	 noUm6EntoZKgg==
Message-ID: <f60578e3-939c-49c9-b46e-de26261738d7@canonical.com>
Date: Mon, 29 Apr 2024 11:58:22 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
References: <20240414190855.GA12716@openwall.com>
 <354b913bc1c154c1e3a2fc34ed8ed6b0d4641f11.camel@canonical.com>
 <20240419154435.GA7046@openwall.com>
 <ZiKo7shztRpgvAIC@remnant.pseudorandom.co.uk>
 <20240420181211.GA12463@openwall.com>
 <s7YhmQrnIRbmomFiJi0MJSYAPjcHLyd18qqgj0vxVww8pXjjmpmzh_TKTfQe-aLvqDRRXaVowt__uXBXONKKDA48d1uKDyeEuSiH0yM0uUI=@protonmail.ch>
 <20240421200625.GA16869@openwall.com>
Content-Language: en-US
From: John Johansen <john.johansen@canonical.com>
Autocrypt: addr=john.johansen@canonical.com; keydata=
 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 lT9Q
Organization: Canonical
In-Reply-To: <20240421200625.GA16869@openwall.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] Linux: Disabling network namespaces

On 4/21/24 13:06, Solar Designer wrote:
> On Sat, Apr 20, 2024 at 09:33:07PM +0000, Jordan Glover wrote:
>> bubblwrap has --disable-userns option which prevents creation of nested namespaces (from manpage):
>>
>>         --disable-userns
>> Prevent the process in the sandbox from creating further user namespaces, so that it cannot rearrange the filesystem namespace or do other more complex namespace modification. This is currently implemented by setting the user.max_user_namespaces sysctl to 1, and then entering a nested user namespace which is unable to raise that limit in the outer namespace. This option requires --unshare-user, and doesn't work in the setuid version of bubblewrap.
>>
>> Flatpak uses this (or seccomp filter) to block nested namespaces as this can bypass security its design. For this reason firefox own sandbox doesn't use namespaces in flatpak, see https://bugzilla.mozilla.org/show_bug.cgi?id=1756236
> 
> Thanks, I didn't expect it was this advanced already.
> 
> In what exact way would nested namespaces bypass the security design of
> Flatpak?  Is this about the kernel's attack surface exposed by
> capabilities in a namespace or something else?  I guess capabilities are
> also dropped in the nested namespace?
> 
> After reviewing some kernel code, I have doubts as to how effective the
> dropping of capabilities in a namespace actually is.
> 
> security/commoncap.c: cap_capable() includes this:
> 
>                  /*
>                   * The owner of the user namespace in the parent of the
>                   * user namespace has all caps.
>                   */
>                  if ((ns->parent == cred->user_ns) && uid_eq(ns->owner, cred->euid))
>                          return 0;
> 
> this check is only reached when cap_capable() is called for a target
> namespace other than one the credentials are from.  However, such uses
> do exist, e.g. via Netlink, which would expose e.g. Netfilter:
> 
> net/netlink/af_netlink.c:
> 
> /**
>   * netlink_net_capable - Netlink network namespace message capability test
>   * @skb: socket buffer holding a netlink command from userspace
>   * @cap: The capability to use
>   *
>   * Test to see if the opener of the socket we received the message
>   * from had when the netlink socket was created and the sender of the
>   * message has the capability @cap over the network namespace of
>   * the socket we received the message from.
>   */
> bool netlink_net_capable(const struct sk_buff *skb, int cap)
> {
>          return netlink_ns_capable(skb, sock_net(skb->sk)->user_ns, cap);
> }
> 
> So I worry whether even with all namespaces in a sandbox having dropped
> capabilities, an attack can still be arranged (with a pair of namespaces
> one nested in the other) where a task effectively "has all caps" for a
> dangerous operation like configuring Netfilter due to it hitting code
> paths like this, which bypass capability bit checks.
> 
> The above finding may be a reason for us to prefer making capabilities
> in a namespace ineffective vs. dropping capabilities.  In context of my
> idea/proposal for a new sysctl, it could be better for it to work as I
> had described, overriding security_capable() return, instead of e.g.
> hooking return of create_user_ns() and dropping new cred's capabilities.
> 
> I hope the Ubuntu/AppArmor solution is also safe in this respect, as it
> sounds like it similarly makes capabilities ineffective instead of
> dropping them.
> 
The AppArmor solution is flexible, allowing the policy author to decide
what is done. The namespace creation can be allowed, denied or the profile
can be transitioned on namespace creation. So the behavior can be tuned
selectively per application, and based on whether it is in a user namespace
or not.

The 24.04 Ubuntu behavior is for "unconfined" applications to transition
to a profile that denies further creation of user namespaces and denies
capabilities within the user namespace.

There are profiles for known applications allowing them to use user
namespaces. The behavior of most of these just allow the user namespace
and maybe a specific capability, currently without transitioning the
user namespace to tighter confinement, but ideally the policy would
do more, and there are plans to improve the policy around the set of
applications.

Bubblewrap and unshare have additional behaviors around restricting what
the applications can do as they also take advantage of the exec barrier.

Applications that embedded bubblewrap to setup their sandbox, eg.
steam's pressure vessel, can have their own profiles that can control
bubblewrap separate from the system bubblewrap policy.

Its still early days and policy the rollout/policy has been mostly to set
a default of allowing user namespaces but with no capabilities. Then
provide default very open policy for application that have been found to
need them, with plans to tighten that policy on a per application basis
in the future.

appimages and containers that users expect to be able to run from their
home or other user writable locations are the big issue atm. They are
allowed the default behavior of allowed to create user namespaces without
any capabilities but if they require more, we are requiring privileged
user intervention to individually enable running these applications.

We have found application behavior around restricting user namespaces
to be very inconsistent. Eg. qtwebkit will crash if you deny creation
of the user namespace, but will gracefully fallback to not using
user namespaces in its sandbox if its denied capabilities within the
user namespace during sandbox setup. Firefox on the other hand crashes
when user namespaces or capabilities are denied.


