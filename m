Received: (qmail 9430 invoked by uid 550); 21 Apr 2024 20:44:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25759 invoked from network); 21 Apr 2024 20:06:33 -0000
Date: Sun, 21 Apr 2024 22:06:25 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Message-ID: <20240421200625.GA16869@openwall.com>
References: <20240414190855.GA12716@openwall.com> <354b913bc1c154c1e3a2fc34ed8ed6b0d4641f11.camel@canonical.com> <20240419154435.GA7046@openwall.com> <ZiKo7shztRpgvAIC@remnant.pseudorandom.co.uk> <20240420181211.GA12463@openwall.com> <s7YhmQrnIRbmomFiJi0MJSYAPjcHLyd18qqgj0vxVww8pXjjmpmzh_TKTfQe-aLvqDRRXaVowt__uXBXONKKDA48d1uKDyeEuSiH0yM0uUI=@protonmail.ch>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <s7YhmQrnIRbmomFiJi0MJSYAPjcHLyd18qqgj0vxVww8pXjjmpmzh_TKTfQe-aLvqDRRXaVowt__uXBXONKKDA48d1uKDyeEuSiH0yM0uUI=@protonmail.ch>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] Linux: Disabling network namespaces

On Sat, Apr 20, 2024 at 09:33:07PM +0000, Jordan Glover wrote:
> bubblwrap has --disable-userns option which prevents creation of nested namespaces (from manpage):
> 
>        --disable-userns
> Prevent the process in the sandbox from creating further user namespaces, so that it cannot rearrange the filesystem namespace or do other more complex namespace modification. This is currently implemented by setting the user.max_user_namespaces sysctl to 1, and then entering a nested user namespace which is unable to raise that limit in the outer namespace. This option requires --unshare-user, and doesn't work in the setuid version of bubblewrap.
> 
> Flatpak uses this (or seccomp filter) to block nested namespaces as this can bypass security its design. For this reason firefox own sandbox doesn't use namespaces in flatpak, see https://bugzilla.mozilla.org/show_bug.cgi?id=1756236

Thanks, I didn't expect it was this advanced already.

In what exact way would nested namespaces bypass the security design of
Flatpak?  Is this about the kernel's attack surface exposed by
capabilities in a namespace or something else?  I guess capabilities are
also dropped in the nested namespace?

After reviewing some kernel code, I have doubts as to how effective the
dropping of capabilities in a namespace actually is.

security/commoncap.c: cap_capable() includes this:

                /*
                 * The owner of the user namespace in the parent of the
                 * user namespace has all caps.
                 */
                if ((ns->parent == cred->user_ns) && uid_eq(ns->owner, cred->euid))
                        return 0;

this check is only reached when cap_capable() is called for a target
namespace other than one the credentials are from.  However, such uses
do exist, e.g. via Netlink, which would expose e.g. Netfilter:

net/netlink/af_netlink.c:

/**
 * netlink_net_capable - Netlink network namespace message capability test
 * @skb: socket buffer holding a netlink command from userspace
 * @cap: The capability to use
 *
 * Test to see if the opener of the socket we received the message
 * from had when the netlink socket was created and the sender of the
 * message has the capability @cap over the network namespace of
 * the socket we received the message from.
 */
bool netlink_net_capable(const struct sk_buff *skb, int cap)
{
        return netlink_ns_capable(skb, sock_net(skb->sk)->user_ns, cap);
}

So I worry whether even with all namespaces in a sandbox having dropped
capabilities, an attack can still be arranged (with a pair of namespaces
one nested in the other) where a task effectively "has all caps" for a
dangerous operation like configuring Netfilter due to it hitting code
paths like this, which bypass capability bit checks.

The above finding may be a reason for us to prefer making capabilities
in a namespace ineffective vs. dropping capabilities.  In context of my
idea/proposal for a new sysctl, it could be better for it to work as I
had described, overriding security_capable() return, instead of e.g.
hooking return of create_user_ns() and dropping new cred's capabilities.

I hope the Ubuntu/AppArmor solution is also safe in this respect, as it
sounds like it similarly makes capabilities ineffective instead of
dropping them.

Alexander
