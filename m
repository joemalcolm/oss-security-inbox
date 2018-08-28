X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1290" "Tuesday" "28" "August" "2018" "17:45:37" "+0800" "Xiami" "pengyu.tao@yooli.com" "<20180828094537.GA10578@localvm.private.f2light.com>" "48" "Re: [oss-security] Linux kernel: FS_IOC_FSSETXATTR will lead to EXT4-fs shut down" "^Date:" nil nil "8" "2018082809:45:37" "[oss-security] Linux kernel: FS_IOC_FSSETXATTR will lead to EXT4-fs shut down" (number mark "U       pengyu.tao@y Aug 28   48/1290  " thread-indent "\"Re: [oss-security] Linux kernel: FS_IOC_FSSETXATTR will lead to EXT4-fs shut down\"\n") "<FDE8244F9EEE7E4F8308F32BD3BEDF01BF9E4799@EXMBX-TJ008.tencent.com>" ("<FDE8244F9EEE7E4F8308F32BD3BEDF01BF9E4799@EXMBX-TJ008.tencent.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 29699 invoked by uid 550); 28 Aug 2018 09:58:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 16286 invoked from network); 28 Aug 2018 09:45:58 -0000
X-QQ-mid: bizesmtp22t1535449542tauwoiqe
X-QQ-SSF: 00400000000000F0FHF0B00L0000000
X-QQ-FEAT: q17Yoz/cMVrg7NN5JVFprwx++gOwKq2WeTYILkPtqLJh9YgV/OfHZh7Bk1ZwT
	ejWML+aH8qDQZHLMy1fuWgj6KEGxmFKPUXVVkjc4W+w79cr428M04OwkFoWbQiaFJuG40dT
	RsDUYsZpZNLWajGMhwXj6NqqAoNr3gOwXhr/nJ9Ynx5StBPAXbx8ClDZSBkDhwHrV/G3U/w
	Z3JXQzuzsLfVPIgDakyi1tufflXqTl8b6sqmX3ePXHvJsTUKQi+ZiazgzvjdgR7vFc3DMdY
	sVIVSFsN7gwNrzK46aj/sG1vgkYZdICV4kXhBBjPRnqBek
X-QQ-GoodBg: 2
Message-ID: <20180828094537.GA10578@localvm.private.f2light.com>+6A304428CF1ACB2B
References: <FDE8244F9EEE7E4F8308F32BD3BEDF01BF9E4799@EXMBX-TJ008.tencent.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <FDE8244F9EEE7E4F8308F32BD3BEDF01BF9E4799@EXMBX-TJ008.tencent.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:yooli.com:qybgforeign:qybgforeign2
X-QQ-Bgrelay: 1
Date: Tue, 28 Aug 2018 17:45:37 +0800
From: Xiami <pengyu.tao@yooli.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Linux kernel: FS_IOC_FSSETXATTR will lead to
 EXT4-fs shut down
To: oss-security@lists.openwall.com

On Tue, Aug 28, 2018 at 08:27:50AM +0000, zhrzhang(张洪睿) wrote:
> Hello：
>         when I fuzz，I found the kernel will always no output from machine, and error FS_IOC_FSSETXATTR contribute to this.
> 
>         the syzlog is as below:
> 
> r0 = creat(&(0x7f0000000140)='./file0\x00', 0x0)
> ioctl$FS_IOC_FSSETXATTR(r0, 0x8004587d, &(0x7f0000000080)={0x0, 0x0, 0x0, 0x8})

Your ioctl command 0x8004587d is exactly EXT4_IOC_SHUTDOWN defined in fs/ext4/ext4.h

> 
>         the poc will show like this:
> 
> #define _GNU_SOURCE
> 
> #include <endian.h>
> #include <stdint.h>
> #include <stdio.h>
> #include <stdlib.h>
> #include <string.h>
> #include <sys/syscall.h>
> #include <sys/types.h>
> #include <unistd.h>
> 
> uint64_t r[1] = {0xffffffffffffffff};
> 
> int main(void)
> {
> syscall(__NR_mmap, 0x20000000, 0x1000000, 3, 0x32, -1, 0);
> long res = 0;
> memcpy((void*)0x20000140, "./file0", 8);
> res = syscall(__NR_creat, 0x20000140, 0);
> if (res != -1)
> r[0] = res;
> *(uint32_t*)0x20000080 = 0;
> *(uint32_t*)0x20000084 = 0;
> *(uint32_t*)0x20000088 = 0;
> *(uint32_t*)0x2000008c = 8;
> *(uint32_t*)0x20000090 = 0;
> *(uint64_t*)0x20000098 = 0;
> syscall(__NR_ioctl, r[0], 0x8004587d, 0x20000080);
> return 0;
> }
> ________________________________
> zhrzhang(张洪睿)


