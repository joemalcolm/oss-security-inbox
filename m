Received: (qmail 32603 invoked by uid 550); 7 May 2024 16:55:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30169 invoked from network); 7 May 2024 16:43:42 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=devco.re; s=google; t=1715100213; x=1715705013; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=K8lJBZVnHq0m8SkqfV4ljAs7MGGRaNWUwSi2k2qQPpY=;
        b=VdiNF55//1PXNjyvFvDMyt5ze1ECX4tb8v9TEF6is+oll9XED5FCmTU9z1CFgAvTah
         sWQs3IwNUWW1fHna3DTyukz5qGjy8Fv9ctMrAWK0ssDPW13+e5Ujp2BM9aIyn3FjwbBv
         6P7Sxc2i/gklThYXlD6jYllhmRDb/1Wd9g2ojpqmRW1FqelOhKWpB2VSNB4BDHwpy1YR
         cuhPm2/+ejQLtpdvYUBNmRzuwZtY1CoWqASVA7iD/rHi1TS3cO27aOTZM1kX5eyIwVMM
         P5VURErVoJegPRHGPJ9M3zBq1wWDdvrvTf265DM63gMsLXNotPRTpdFFuY4Cy1QAKFGP
         PQUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715100213; x=1715705013;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=K8lJBZVnHq0m8SkqfV4ljAs7MGGRaNWUwSi2k2qQPpY=;
        b=d7aXMuov/hLhbVRQZ47UNejEkuMxg95Sg3ElUPHZiYW5VRfAxt06s1VYJIxkTHFii/
         iWovjHYSgolpjmDe09uYPQnD13kdUobIbtEVnAXSdx4GBWeg6th66YI8jccEJrtKJXnT
         5/+drNWlYlFUWCdH8MuaGW6cnKvHvi7lKcKSnHZVREC0xo9mBaUZt1fNx2HGf/4PMAvN
         wAhs3hrrsxjmdYRgydcbjd3rk3TuDDC+Hect2c2UoOZfvWCXWxLm7T4ggdtLMftbU12B
         oKUZbBvAmS/IgLAe0oANjoDRcXZoyy9HOfrSqNd7IU2z5jgV5asPSSyWJe4iaMW/U+Q/
         3FTw==
X-Gm-Message-State: AOJu0Yz3VUP48/RbBNo+WZ40HeOlDW3FoEs0JdF+nYQwkh6SFxrey5BO
	Kp/kxlGouXXAGcFx7NcfcFNopMPcVs8sYTu21rR4dQ1RJ5H71Iu2BSliIWF+4mwycrc9fnrGHDO
	3iGzYCmUhk15BfqFnCwpaftB5hTYvCBC8oRLOA4oem6CChB+MToo=
X-Google-Smtp-Source: AGHT+IFANJbguWoPicsPz+6RN0n49q1cJUQq/lLOChBuoKnD9xM/4uxdK5WRRkSYL46ysZrRfI0RxPDhVr8nKyskI34=
X-Received: by 2002:a5b:2c3:0:b0:dc7:4671:8ae8 with SMTP id
 3f1490d57ef6-debb9dc664bmr173235276.65.1715100213233; Tue, 07 May 2024
 09:43:33 -0700 (PDT)
MIME-Version: 1.0
From: HexRabbit Chen <hexrabbit@devco.re>
Date: Wed, 8 May 2024 00:42:57 +0800
Message-ID: <CAAc67N2A1oS+wNkFT-t-xrF8PzSHfk5CekqDNggEhsbUj9WMNA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2024-26925: Linux: nf_tables: locking issue in the
 nf_tables_abort() function

Hello,

I found a locking issue in nf_tables set element GC implementation and
exploited it in kernelCTF. The bug breaks the sequence number assumption
in set asynchronous GC, which can be used to cause double free, and
leads to local privilege escalation.

Introduced in v6.5:
https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/commit/?id=720344340fb9

Fixed in v6.9-rc3:
https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/commit/?id=0d459e2ffb54

========================================================================
Vulnerability Details
========================================================================

The asynchronous set GC (nft_rhash_gc for example) does not acquire
commit lock while doing the work, instead, it uses GC sequence (gc_seq)
mechanism to protect it from racing with the transaction.

At the begin of nft_rhash_gc() it will save the current GC sequence[1]
and allocate a GC transaction to store information, then traverse the
set to record all expired set element into GC transaction, and finally
call nft_trans_gc_queue_async_done(gc)[3].

------------------------------------------------------------------------
static void nft_rhash_gc(struct work_struct *work)
{
    // ...
    gc_seq = READ_ONCE(nft_net->gc_seq); // [1]

    if (nft_set_gc_is_pending(set))
        goto done;

    gc = nft_trans_gc_alloc(set, gc_seq, GFP_KERNEL);
    if (!gc)
        goto done;

    // ...
    while ((he = rhashtable_walk_next(&hti))) {
        // check if setelem expired
        if (!nft_set_elem_expired(&he->ext))
            continue;

        // ...
        nft_trans_gc_elem_add(gc, he); // [2]
    }

    if (gc)
        nft_trans_gc_queue_async_done(gc); // [3]

    // ...
}
------------------------------------------------------------------------

The function nft_trans_gc_queue_async_done() saves the GC transaction
into a global list and eventually schedules nft_trans_gc_work() to run.
nft_trans_gc_work() then retrieves the gc transaction and calls
nft_trans_gc_work_done() to perform checks on GC sequence.

------------------------------------------------------------------------
static void nft_trans_gc_work(struct work_struct *work)
{
    // ...
    list_for_each_entry_safe(trans, next, &trans_gc_list, list) {
        list_del(&trans->list);
        if (!nft_trans_gc_work_done(trans)) { // [4]
            nft_trans_gc_destroy(trans);
            continue;
        }
        call_rcu(&trans->rcu, nft_trans_gc_trans_free); // [5]
    }
}
------------------------------------------------------------------------

The function nft_trans_gc_work_done() will first acquire the commit
lock[6], and compare the saved GC sequence with current GC sequence[7],
if they are different, which means we race with the transaction. Since
all critical section which modify the control plane are surrounded by
nft_gc_seq_begin() and nft_gc_seq_end() which both increase the current
GC sequence (nft_net->gc_seq), so if it's the case, it means the state
of the set may have been changed, and the function will return false to
stop processing this GC transaction.

------------------------------------------------------------------------
static bool nft_trans_gc_work_done(struct nft_trans_gc *trans)
{
    struct nftables_pernet *nft_net;
    struct nft_ctx ctx = {};

    nft_net = nft_pernet(trans->net);

    mutex_lock(&nft_net->commit_mutex); // [6]

    /* Check for race with transaction, otherwise this batch refers to
     * stale objects that might not be there anymore. Skip transaction if
     * set has been destroyed from control plane transaction in case gc
     * worker loses race.
     */
    if (READ_ONCE(nft_net->gc_seq) != trans->seq || trans->set->dead) { // [7]
        mutex_unlock(&nft_net->commit_mutex);
        return false;
    }

    ctx.net = trans->net;
    ctx.table = trans->set->table;

    nft_trans_gc_setelem_remove(&ctx, trans);
    mutex_unlock(&nft_net->commit_mutex);

    return true;
}
------------------------------------------------------------------------

However, the GC sequence mechanism only works under the assumption that
the commit lock should not be released during the critical section
between nft_gc_seq_begin() and nft_gc_seq_end(). Otherwise, a GC thread
may record the expired object and obtain the released commit lock within
the same gc_seq, thus bypassing the GC sequence check.

__nf_tables_abort() is the one does it wrong, the function is surrounded
by nft_gc_seq_begin() and nft_gc_seq_end()[8], if it received the action
NFNL_ABORT_AUTOLOAD, nf_tables_module_autoload()[9] will be called to
process the module requests, however, the function releases the commit
lock[10] before processing the module request, which breaks the
assumption of GC sequence. As a result, it's now possible for a disabled
set element object to bypass the check, leading to a double free.

------------------------------------------------------------------------
static int nf_tables_abort(struct net *net, struct sk_buff *skb,
               enum nfnl_abort_action action)
{
    gc_seq = nft_gc_seq_begin(nft_net); // [8]
    ret = __nf_tables_abort(net, action);
    nft_gc_seq_end(nft_net, gc_seq); // [8]
    mutex_unlock(&nft_net->commit_mutex);

    return ret;
}

static int __nf_tables_abort(struct net *net, enum nfnl_abort_action action)
{
    // ...

    if (action == NFNL_ABORT_AUTOLOAD)
        nf_tables_module_autoload(net); // [9]
    else
        nf_tables_module_autoload_cleanup(net);

    return 0;
}

static void nf_tables_module_autoload(struct net *net)
{
    struct nftables_pernet *nft_net = nft_pernet(net);
    struct nft_module_request *req, *next;
    LIST_HEAD(module_list);

    list_splice_init(&nft_net->module_list, &module_list);
    mutex_unlock(&nft_net->commit_mutex); // [10]
    list_for_each_entry_safe(req, next, &module_list, list) {
        request_module("%s", req->module);
        req->done = true;
    }
    mutex_lock(&nft_net->commit_mutex);
    list_splice(&module_list, &nft_net->module_list);
}
------------------------------------------------------------------------

The fix to this vulnerability is pretty simple:
just move nf_tables_module_autoload() after the call to nft_gc_seq_end()

------------------------------------------------------------------------
static int nf_tables_abort(struct net *net, struct sk_buff *skb,
               enum nfnl_abort_action action)
{
    gc_seq = nft_gc_seq_begin(nft_net);
    ret = __nf_tables_abort(net, action);
    nft_gc_seq_end(nft_net, gc_seq);

    WARN_ON_ONCE(!list_empty(&nft_net->commit_list));

+   /* module autoload needs to happen after GC sequence update because it
+    * temporarily releases and grabs mutex again.
+    */
+   if (action == NFNL_ABORT_AUTOLOAD)
+       nf_tables_module_autoload(net);
+   else
+       nf_tables_module_autoload_cleanup(net);

    mutex_unlock(&nft_net->commit_mutex);

    return ret;
}
------------------------------------------------------------------------

========================================================================
Exploit Disclosure
========================================================================
I will publish the exploit for this vulnerability on Google's
security-research GitHub repo 30 days after the CVE disclosure, in
accordance with Google's disclosure policy. (approximately on 5/24)

========================================================================
Discoverer
========================================================================
Kuan-Ting Chen (@h3xr4bb1t) of DEVCORE Research Team

Best,
Kuan-Ting Chen
