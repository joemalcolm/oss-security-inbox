Received: (qmail 32120 invoked by uid 550); 19 Feb 2026 04:16:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 26137 invoked from network); 19 Feb 2026 04:15:27 -0000
Date: Thu, 19 Feb 2026 05:15:19 +0100
From: Solar Designer <solar@openwall.com>
To: Bastian Blank <bblank@thinkmo.de>, oss-security@lists.openwall.com
Cc: Greg Dahlman <dahlman@gmail.com>
Message-ID: <20260219041519.GA19288@openwall.com>
References: <CAM=PXV50+jaVYFueXFbZpioBX3PMrUG2Ey8WoQ5NT89J9gFwCA@mail.gmail.com> <20260203154656.lbkt4j7ucvv2lprh@shell.thinkmo.de>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260203154656.lbkt4j7ucvv2lprh@shell.thinkmo.de>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] Systemd vsock sshd

On Tue, Feb 03, 2026 at 04:46:56PM +0100, Bastian Blank wrote:
> On Sat, Dec 27, 2025 at 08:46:49PM -0700, Greg Dahlman wrote:
> >   **vsock exists in the global namespace** - Unlike "af_inet" sockets,
> >   vsock connections are not bound to a particular network namespace.
> >   By default they are visible to every namespace on the host.
> 
> Every address family in Linux needs to implement it's own namespace
> handling.  In 2007, all existing address families got a check to only
> allow the inital network namespace.  af_vsock is newer and never got
> this check.
> 
> Every point after the first one is just a result, not a cause.
> 
> So a fix would be something like that (untested, no time right now):
> 
> --- a/net/vmw_vsock/af_vsock.c
> +++ b/net/vmw_vsock/af_vsock.c
> @@ -2553,6 +2553,9 @@ static int vsock_create(struct net *net, struct socket *sock,
>          if (protocol && protocol != PF_VSOCK)
>                  return -EPROTONOSUPPORT;
>  
> +        if (!net_eq(net, &init_net))
> +                return -EAFNOSUPPORT;
> +
>          switch (sock->type) {
>          case SOCK_DGRAM:
>                  sock->ops = &vsock_dgram_ops;

Brad Spengler pointed me at this Linux merge commit (it's not in 6.19,
should get into 6.20):

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=099ca4121ea747acc8a0d36852f2f477943f306d

commit 099ca4121ea747acc8a0d36852f2f477943f306d
Merge: 3eef6c061f97 b3b7b33264c6
Author: Paolo Abeni <pabeni@redhat.com>
Date:   Tue Jan 27 10:45:40 2026 +0100

    Merge branch 'vsock-add-namespace-support-to-vhost-vsock-and-loopback'
    
    Bobby Eshleman says:
    
    ====================
    vsock: add namespace support to vhost-vsock and loopback
    
    This series adds namespace support to vhost-vsock and loopback. It does
    not add namespaces to any of the other guest transports (virtio-vsock,
    hyperv, or vmci).
    
    The current revision supports two modes: local and global. Local
    mode is complete isolation of namespaces, while global mode is complete
    sharing between namespaces of CIDs (the original behavior).
    
    The mode is set using the parent namespace's
    /proc/sys/net/vsock/child_ns_mode and inherited when a new namespace is
    created. The mode of the current namespace can be queried by reading
    /proc/sys/net/vsock/ns_mode. The mode can not change after the namespace
    has been created.
    
    Modes are per-netns. This allows a system to configure namespaces
    independently (some may share CIDs, others are completely isolated).
    This also supports future possible mixed use cases, where there may be
    namespaces in global mode spinning up VMs while there are mixed mode
    namespaces that provide services to the VMs, but are not allowed to
    allocate from the global CID pool (this mode is not implemented in this
    series).
    
    Additionally, added tests for the new namespace features:
    
    tools/testing/selftests/vsock/vmtest.sh
    1..25
    ok 1 vm_server_host_client
    ok 2 vm_client_host_server
    ok 3 vm_loopback
    ok 4 ns_host_vsock_ns_mode_ok
    ok 5 ns_host_vsock_child_ns_mode_ok
    ok 6 ns_global_same_cid_fails
    ok 7 ns_local_same_cid_ok
    ok 8 ns_global_local_same_cid_ok
    ok 9 ns_local_global_same_cid_ok
    ok 10 ns_diff_global_host_connect_to_global_vm_ok
    ok 11 ns_diff_global_host_connect_to_local_vm_fails
    ok 12 ns_diff_global_vm_connect_to_global_host_ok
    ok 13 ns_diff_global_vm_connect_to_local_host_fails
    ok 14 ns_diff_local_host_connect_to_local_vm_fails
    ok 15 ns_diff_local_vm_connect_to_local_host_fails
    ok 16 ns_diff_global_to_local_loopback_local_fails
    ok 17 ns_diff_local_to_global_loopback_fails
    ok 18 ns_diff_local_to_local_loopback_fails
    ok 19 ns_diff_global_to_global_loopback_ok
    ok 20 ns_same_local_loopback_ok
    ok 21 ns_same_local_host_connect_to_local_vm_ok
    ok 22 ns_same_local_vm_connect_to_local_host_ok
    ok 23 ns_delete_vm_ok
    ok 24 ns_delete_host_ok
    ok 25 ns_delete_both_ok
    SUMMARY: PASS=25 SKIP=0 FAIL=0
    
    Thanks again for everyone's help and reviews!
    
    Suggested-by: Sargun Dhillon <sargun@sargun.me>
    Signed-off-by: Bobby Eshleman <bobbyeshleman@gmail.com>
    
    v15: https://lore.kernel.org/r/20260116-vsock-vmtest-v15-0-bbfd1a668548@meta.com
    v14: https://lore.kernel.org/r/20260112-vsock-vmtest-v14-0-a5c332db3e2b@meta.com
    v13: https://lore.kernel.org/all/20251223-vsock-vmtest-v13-0-9d6db8e7c80b@meta.com/
    v12: https://lore.kernel.org/r/20251126-vsock-vmtest-v12-0-257ee21cd5de@meta.com
    v11: https://lore.kernel.org/r/20251120-vsock-vmtest-v11-0-55cbc80249a7@meta.com
    v10: https://lore.kernel.org/r/20251117-vsock-vmtest-v10-0-df08f165bf3e@meta.com
    v9: https://lore.kernel.org/all/20251111-vsock-vmtest-v9-0-852787a37bed@meta.com
    v8: https://lore.kernel.org/r/20251023-vsock-vmtest-v8-0-dea984d02bb0@meta.com
    v7: https://lore.kernel.org/r/20251021-vsock-vmtest-v7-0-0661b7b6f081@meta.com
    v6: https://lore.kernel.org/r/20250916-vsock-vmtest-v6-0-064d2eb0c89d@meta.com
    v5: https://lore.kernel.org/r/20250827-vsock-vmtest-v5-0-0ba580bede5b@meta.com
    v4: https://lore.kernel.org/r/20250805-vsock-vmtest-v4-0-059ec51ab111@meta.com
    v2: https://lore.kernel.org/kvm/20250312-vsock-netns-v2-0-84bffa1aa97a@gmail.com
    v1: https://lore.kernel.org/r/20200116172428.311437-1-sgarzare@redhat.com
    ====================
    
    Link: https://patch.msgid.link/20260121-vsock-vmtest-v16-0-2859a7512097@meta.com
    Signed-off-by: Paolo Abeni <pabeni@redhat.com>

Brad's comments on it are:

https://x.com/spendergrsec/status/2021929584384438428

Feb 12
Looks like the defaults (global for both ns_mode/child_ns_mode) keep everything working the same as currently, doesn't seem like it'd restrict anything under unpriv userns as nothing stops changing child_ns_mode back to global after first setting it to local.

Feb 14
Same things I noticed: https://git.kernel.org/pub/scm/linux/kernel/git/netdev/net.git/commit/?id=36e838630c111a510f47e49d559bd26aba7d9a1b https://git.kernel.org/pub/scm/linux/kernel/git/netdev/net.git/commit/?id=6a997f38bdf822d4c5cc10b445ff1cb26872580a

Feb 16
The design of this whole thing actually seems to me entirely broken and useless, especially for something that took 7 years to land.  If you want any kind of reasonable legit use of vsock with this, you're forced into global/global mode that allows all the unreasonable things.
The local mode also forcing local id allocation is the main aspect making it unusable (and unfixable later, unless I'm missing something).  If at least the id allocation were global, then you could implement some reasonable directional/cap-based policies...
but not when you can't even see what you should be able to connect to (especially so when the same id can be reused by local mode containers).

The referenced netdev commits made on Feb 13 fix issues with the
initially merged implementation, and aren't yet in Linus' tree.

> But I have a question:  why do you name sshd, while every AF_VSOCK
> listener is affected?

I assume you're asking Greg - CC'ing.

Alexander
