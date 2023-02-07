Received: (qmail 28307 invoked by uid 550); 7 Feb 2023 15:14:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7681 invoked from network); 7 Feb 2023 14:45:51 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=URJ7CSjjt4cbObTsz7ufPvS8knxwjYwfbFKECqpu1D4=;
        b=MfohdpJpVaX8xNNT3pbkgGSR/q9kmzN089ix9Attwie9k+nP3fkhGfrSW2yOAGn2zb
         WvPUBivNX0xUDvIJjque6nhku9BIaEpMGlzJzW/s8lr1AyOEuHOQJhNQGujzf+W2pDsx
         V87v3PcOdtTppS8c2Aur3ff9VLmzsq5DIV8lqdzSjgFKuADmCS5IvGTPOLijz5dJXQmO
         1iwpn308b3Lr2nggpf0h7Zu9YIQPuL7OI87x4fE8CBnUZ7dzqLN3bM/3eTNsWpKCm8mf
         6Ym9jFIItp2xa/TTaBeGQ1WPHSf1kMneqC+j4WHdOM5EMnObXBd8MgBCItIzD4h3rfbO
         njMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=URJ7CSjjt4cbObTsz7ufPvS8knxwjYwfbFKECqpu1D4=;
        b=la4ZGEeAzhMvkl2xi9dRGaWRI35xJ8gY+CEsmDH7wflC84SBCLHvScWTLfD/CmnmZ0
         Ndxo5O0tVb/dToutN5PwoiHtPhQ/bfC5qDRF8Tf2i8NzOozRrI26CJnvG9c3oR2Zde94
         nkuN7H0PnyMF6W2XtQL68wZ3Ii5WZgjc49J9fhbLL7uel2499EJSkV3siDcOojoPpNHI
         egbOAJUXyroGlotHRvKmZhbYV778JbPWIOeFcRZ1WEu39sFsk/r+oqq+kQen+8p7luTW
         o3SaPUSpo5srdnsydaZcKM4a0LeF50MCD/p74RDNmYY9dtccBnzxBdfz2WmZ9zZz70Wx
         Z8kA==
X-Gm-Message-State: AO0yUKUyWfi28T7K2Gx8vXZ6iaHJTu10GFwySab+NS2UR3voqszhk255
	r3sHpZpGZMoeJXtZqXiPeUl3JPw/hqPHk9vhdOgIog5eJtmvcw==
X-Google-Smtp-Source: AK7set+cYCr2JanGLqy/RQo/LoQz6+ZlwW3C57ioEGHUvEnMZ6BCEYEPvx4qGoMOjRevVrYqRHlHWcmsShIJ575OQn8=
X-Received: by 2002:a17:902:bcc8:b0:196:77ef:d51f with SMTP id
 o8-20020a170902bcc800b0019677efd51fmr758749pls.19.1675781138584; Tue, 07 Feb
 2023 06:45:38 -0800 (PST)
MIME-Version: 1.0
From: Georgi Guninski <gguninski@gmail.com>
Date: Tue, 7 Feb 2023 16:45:16 +0200
Message-ID: <CAGUWgD8zb-UEWp8TVHDSbo=iaCU4gWqnJHCFSPiR0fQWS73gPg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] SEGV in `alloca(BIG)` and `long pl[BIG]`

Hi v3nd0rz crowd.

Inline are two C warez, which crash on
`alloca(BIG)` and `long pl[BIG]`.

I think alloca(BIG) should return error if BIG>max_signed_size_t.
In C++ `new[BUG]` throws exception and core dumps.

===
#include <stdlib.h>
#include <stdio.h>
#include <alloca.h>
/*
 * Author:  Georgi Guninski
 * CV: https://j.ludost.net/resumegg.pdf
[joro@fedora prim]$ gcc alloca1.c
[joro@fedora prim]$ ./a.out -1
calloc=(nil) alloca()=0x7fff66c931e0
Segmentation fault (core dumped)

[joro@fedora prim]$ ./a.out 4611686018427387904
Bus error (core dumped)
 */
int main(int ac, char **av) {
    void *p;
    size_t l,cou;
    l=atol(av[1]);
    p=calloc(l,l);
    char *pl=alloca(l);
    printf("calloc=%p alloca()=%p\n",p,pl);
    if (pl) {
        for(cou=0;cou<l;cou++)
            pl[cou]=0xcc;
    }
    return(0);
}
===

#include <stdlib.h>
#include <stdio.h>
/*
 * calloc1.c
 *  * Author:  Georgi Guninski
 * CV: https://j.ludost.net/resumegg.pdf
[joro@fedora prim]$ gcc calloc1.c
[joro@fedora prim]$ ./a.out -1
calloc=(nil) long[l]=0x7ffe33f7e930
Segmentation fault (core dumped)
 * */
int main(int ac, char **av) {
    void *p;
    size_t l,cou;
    l=atol(av[1]);
    p=calloc(l,l);
    long pl[l];
    printf("calloc=%p long[l]=%p\n",p,pl);
    if (pl) {
        for(cou=0;cou<l;cou++)
            pl[cou]=0xcafebabe;
    }
    return(0);
}
===

===
