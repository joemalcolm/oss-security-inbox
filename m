X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["576" "Monday" "3" "June" "2019" "12:51:07" "+1000" "Wade Mealing" "wmealing@redhat.com" "<CALJHwhSOFA9exSx9hEHZ7BUQ7i+7nEOJpRNaEQxLTeWdn14DLA@mail.gmail.com>" "19" "[oss-security] kernel: CVE-2018-16871 nfs: NULL pointer dereference due to an anomalized NFS message sequence" nil nil nil "6" "2019060302:51:07" "[oss-security] kernel: CVE-2018-16871 nfs: NULL pointer dereference due to an anomalized NFS message sequence" (number mark "U       wmealing@red Jun  3   19/576   " thread-indent "\"[oss-security] kernel: CVE-2018-16871 nfs: NULL pointer dereference due to an anomalized NFS message sequence\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] kernel: CVE-2018-16871 nfs: NULL pointer dereference due to an anomalized NFS message sequence" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9409 invoked by uid 550); 3 Jun 2019 02:51:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9386 invoked from network); 3 Jun 2019 02:51:31 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=gL6Avw4/LAtixmEirMXWRn6grk4TnNyDqmDEBhyne4A=;
        b=kUpT9I2W2NY7oRham2JBSqMV8OEiEXDyEHzjn+9cj/wPGDkKcbSREdMT8i448e3Bk1
         ECsxJmIgUVjfHLzvEx3lHCcxj2K0tdHA78QV77k14e09vMd3mGexAIp43qryEhwxR7SP
         w8NJkPSyVqKJNM+Ya1g65/6/CwuS9n2zpPITEHogS63iyiVBNyI67WhgVhDeMcC7rk/s
         tn3mbsfrN7pOT54jraezHBB8qFo7pg27ct1loxUmzhT+XVeTUbega6Rp/tmTGXCZmP7t
         IgWdINE5B7NT5XdlBgd+NHZQlxvfsSiKWQv2CjGkUzeZNQSDBWlTsk8HDYl/y3nm5Ygp
         ZE+g==
X-Gm-Message-State: APjAAAWj8V8Xov6TrFGCxkcvaHTAcMrfUnAI9HKD4BFWeixZkO6nqx+0
	Y7ujcrxT+6wqzCv7J2zdeXKIWi6GhiH30sfgCNiaaMszrbo=
X-Google-Smtp-Source: APXvYqyFONE99iAFQUaaw//7yuSeCaev3MOO4zjJuC44ndl63yr/HJ8Pmc7L6uwIuPLRKYeZal0Xsw/5012hS39TVJk=
X-Received: by 2002:a24:148b:: with SMTP id 133mr17504801itg.73.1559530279166;
 Sun, 02 Jun 2019 19:51:19 -0700 (PDT)
MIME-Version: 1.0
From: Wade Mealing <wmealing@redhat.com>
Date: Mon, 3 Jun 2019 12:51:07 +1000
Message-ID: <CALJHwhSOFA9exSx9hEHZ7BUQ7i+7nEOJpRNaEQxLTeWdn14DLA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] kernel: CVE-2018-16871 nfs: NULL pointer dereference due to an
 anomalized NFS message sequence

A flaw was found in NFS in the Linux Kernel. An attacker who is able
to mount an exported NFS file system  is able to trigger a null
pointer dereference by an invalid NFS sequence.

This can panic the machine with a null pointer dereference and
therefore deny to the NFS server. Any outstanding disk writes to the
NFS server will be lost.

Upstream fix:

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=01310bb7c9c98752cc763b36532fab028e0f8f81

Red Hat bugzilla:

https://bugzilla.redhat.com/show_bug.cgi?id=CVE-2018-16871

Thanks,

Wade Mealing
