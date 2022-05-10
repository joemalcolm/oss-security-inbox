Received: (qmail 6142 invoked by uid 550); 10 May 2022 09:30:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9867 invoked from network); 10 May 2022 07:00:03 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=f/iTEo48OohH9HRsScGVrPbkr3mS9KQjbP1H1ua64tc=;
        b=LQQPA5VGZ+j1bXepzzMJaOPxoE4lSAGCIPKBvf1cLvtP6M6gj2nLURhaZbI3JHzz8R
         IpvTEE03qrws2Trxd/iLhbZMwGyy7KZ3JClAu3HxRvp00fLptUMtpcTs90BYN111sAkd
         TMt2mjIxQTod59F7BnT7JS3jVw92B1sVKsljb1BgMqxtyJo2ic1ZqOsfYAJ54FolhidJ
         zapCkjBPAOOI2pE/V0zaROOCzC7E6MeqjV8nwcy31KKtK7E0WpfZ6sLb76UpazoTe98y
         nbb8nyFA3khyAjHgCDAJiRhOmqPHs3RreKRxFjn1QDaUY6p8jAwuz1n8V7fN5xa8e3qy
         JSwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=f/iTEo48OohH9HRsScGVrPbkr3mS9KQjbP1H1ua64tc=;
        b=dz4qhv4pSi4Sgo1KUkwz6BLLEVUMn0huy8RsdqntnVjDx+ssI73/mriraWtFPhV3LA
         aExqTERE1D0j/LP04fK22LfhK2vQ2bT6rn9awW5TWVuRVdEA0Wf6aMJkMnXE/Qa6IWJn
         xaIgishmL4GVADmywYWYfgau8aheSrjCXY6KiXaZoLL8s+So0eB3lkJVqFC0Gj+YuQLe
         U0kJV7ccXSWkSrOqwH8KSQgIMAB8XYSF9sQwEZULC4JOYjl8zd2pFNkgKEVh3d9H23It
         gpalxOPp/hTXz1X42YZh+RKbYaAJ/Hqb8DW9T/iWZCxlPJ7rBZeoovgLnJWa2mJNb5nD
         B+YQ==
X-Gm-Message-State: AOAM531JGPnWBfSr4ffmTCj9eKKV9r9x90a36hemr2RhPUnJVJ1teoKc
	blNkHpnzjS81OmJahUH0suzii7DMjsmQq0+HIrTwQqWn6gXauhzX
X-Google-Smtp-Source: ABdhPJxQc/nHtGBNcZdeIkkbSkPiMs2M85tyqw5QX5r/vInBi19DJZp0/eyCghQatHdWnb9Pgc3pUyiuk83ClUGlreQ=
X-Received: by 2002:a25:c54b:0:b0:649:dfa4:283c with SMTP id
 v72-20020a25c54b000000b00649dfa4283cmr16133073ybe.434.1652165991431; Mon, 09
 May 2022 23:59:51 -0700 (PDT)
MIME-Version: 1.0
From: Minh Yuan <yuanmingbuaa@gmail.com>
Date: Tue, 10 May 2022 14:59:15 +0800
Message-ID: <CAH5WSp5rKR6gaKDAG58nKAiOf4fkzTz-faSFCrX4mo7RNoigFQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="00000000000007860c05dea2df09"
Subject: [oss-security] Linux kernel: A concurrency use-after-free in bad_flp_intr for latest kernel version

--00000000000007860c05dea2df09
Content-Type: text/plain; charset="UTF-8"

Hi everyone,

My fuzzer discovered another concurrency uaf between reset_interrupt and
floppy_end_request in the latest kernel version (5.17.5 for now).

The root cause is that after deallocating current_req in floppy_end_request,
reset_interrupt still holds the freed current_req->error_count and accesses
it concurrently.

Here is the KASAN report:

BUG: KASAN: use-after-free in bad_flp_intr+0x332/0x460

Call Trace:
 __dump_stack
 dump_stack+0x1e9/0x30e
 print_address_description+0x6a/0x310
 kasan_report_error
 kasan_report+0x1bf/0x290
 bad_flp_intr+0x332/0x460
 reset_interrupt+0x16e/0x1b0
 process_one_work+0xc61/0x1530
 worker_thread+0xa7f/0x1440
 kthread+0x346/0x370
 ret_from_fork+0x24/0x30

Allocated by task 12590:
 kmem_cache_alloc_node+0x200/0x390
 alloc_request_simple+0x42/0x70
 mempool_alloc+0x166/0x6b0
 __get_request+0x92c/0x1c50
 get_request+0x756/0x10e0
 blk_queue_bio+0x523/0x12d0
audit: type=1804 audit(1651287706.088:1517): pid=13750 uid=0 auid=0 ses=6
subj==unconfined op=invalid_pcr cause=ToMToU comm="syz-executor.2"
name=2F73797A6B616C6C65722D746573746469723539363038303737352F73797A6B616C6C65722E6C56656931332F313737362F48C7C060
dev="sda" ino=136083 res=1
 generic_make_request+0x561/0xe20
 submit_bio+0x259/0x560
audit: type=1800 audit(1651287706.088:1518): pid=13752 uid=0 auid=0 ses=6
subj==unconfined op=collect_data cause=failed(directio)
comm="syz-executor.2" name=48C7C060 dev="sda" ino=136083 res=0
 __floppy_read_block_0
 floppy_revalidate+0xa70/0xd90
 check_disk_change+0x11e/0x1a0
 floppy_open+0x54d/0x890
 __blkdev_get+0x3ce/0x1ab0
 blkdev_get+0x986/0xb20
 do_dentry_open+0x91d/0x10a0
 do_last
 path_openat+0x298d/0x6de0
 do_filp_open+0x24a/0x4c0
 do_sys_open+0x361/0x5d0
 do_syscall_64+0x111/0x710
 entry_SYSCALL_64_after_hwframe+0x49/0xbe

Freed by task 2856:
 __cache_free
 kmem_cache_free+0xc8/0x260
 blk_free_request
 __blk_put_request+0x4d8/0xcd0
 __blk_end_bidi_request+0x1d4/0x260
 floppy_end_request
 request_done+0x701/0x950
 floppy_shutdown+0x14a/0x2b0
 process_one_work+0xc61/0x1530
 worker_thread+0xa7f/0x1440
 kthread+0x346/0x370
 ret_from_fork+0x24/0x30



Timeline:
* 04.30.22 - Vulnerability reported to security@kernel.org.
* 05.01.22 - Vulnerability reported to linux-distros@vs.openwall.org.
* 05.10.22 - Vulnerability opened.

--00000000000007860c05dea2df09--
