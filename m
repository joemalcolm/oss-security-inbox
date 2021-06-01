X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["896" "Tuesday" "1" "June" "2021" "15:37:06" "+0800" "butt3rflyh4ck" "butterflyhuangxx@gmail.com" nil "31" "[oss-security] Linux kernel: nfc: null ptr dereference in llcp_sock_getname" nil nil nil "6" nil nil (number mark "U       butterflyhua Jun  1   31/896   " thread-indent "\"[oss-security] Linux kernel: nfc: null ptr dereference in llcp_sock_getname\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Linux kernel: nfc: null ptr dereference in llcp_sock_getname" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14143 invoked by uid 550); 1 Jun 2021 09:29:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24133 invoked from network); 1 Jun 2021 07:37:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=6SLjqErgFUgRCgEMdd49kJw/49/WU5fJgkSTQdPfijE=;
        b=fEsdb/RNJ/rbJKO4UftgFp6HzPgxnz4y/Cx3Bqrg2IA9hGZQ2hV4sW7vhIFDCERMp4
         alGYCy2dB+2ccurB36SHwbbBeePo9aI0Nkon2IKveEp+dVxAOBUsF45wbPHZih8JUWhg
         OtT5hSBs3AWmsuC6OwA/bv61k4qL+w2ypZuVtQ3dhkIgfc7Hel68loJ8zTOQUsFh8DSA
         jRMb1NaUQWFdnaEVXczxqTvEczkHrkhy7JH/ubn/q5fPHy0DJaGOz0xR3D2/6qYlrAki
         +fYdFF+qJo6fyH0fMH+IEXSec3jfste2y2jEjNn72oOO7XelzeChPAfpMbzaaLWl79/K
         cBQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=6SLjqErgFUgRCgEMdd49kJw/49/WU5fJgkSTQdPfijE=;
        b=XcIonxTqs1JcCkXVMqAczptm38DY/xQbcxtMBV3FsyLelI999HGV+bSeoE2c/eilnN
         f9DYYGLLqD3dBEbDNG5S0XBbAOLitSi09cjVSsuOANBC5E5Rw1ucvNugufYvmq63m1tj
         JT0bGLzBOjn3QCxjXiS85Q30uCn59Ez8ua6+JnvQgdLfjkn6j1VsU6sk/24r0f6dF/Ov
         JrZr4XhKc+P0Gy+SeBZJ3eLotl797QkoZXI1hS1JdovxTKha/+kkKAlyhz4RxGhfecbx
         cjD659VPhMfgp9bmUvD2Y/IJBUEtlFwNjhlGXCoD7FwE4147PsBcsnPg3nHwiZlgiHlx
         sK9w==
X-Gm-Message-State: AOAM532lncAAytDpuMTn0+3ve1XA2AuajAoTeiSz/ectAsVVL0oLKPrw
	3Uald47FMT0bkrJZhgyNSAlbL2W8wPx/AHbCoN2tWQlsSvU=
X-Google-Smtp-Source: ABdhPJyPsec7A+R/zi4x51/B0wzZdZ2OydChX1BwNHwmkZpHYSPa3Z2pCMYp+26OMD6ayYGlK7O/W/c93M3HDktJwVA=
X-Received: by 2002:a25:1b0b:: with SMTP id b11mr38638417ybb.302.1622533035831;
 Tue, 01 Jun 2021 00:37:15 -0700 (PDT)
MIME-Version: 1.0
From: butt3rflyh4ck <butterflyhuangxx@gmail.com>
Date: Tue, 1 Jun 2021 15:37:06 +0800
Message-ID: <CAFcO6XOFPEGiO_HwajTB3zA9d3jyhUwDX742huVhaNtQy0=TfQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] Linux kernel: nfc: null ptr dereference in llcp_sock_getname

 Hi, there was a null pointer dereference in llcp_sock_getname in
net/nfc/llcp_sock.c and reproduced it in linux-5.13.0-rc2. An
unprivileged user can trigger this bug and cause denial of service.

#Root Cause
After creating an nfc socket, bind the address by calling bind(), if
LLCP_SAP_MAX was used as SAP, it cause the bind() failed and there
would set llcp_sock->service_name  as NULL.

Although bind() returns an error here, it does not affect calling
other socket functions. sock_getname() would invoke
llcp_sock_getname(), llcp_sock_getname copied service  name from
llcp_sock->service_name by memcpy but llcp_sock->service_name is NULL.

#Fix
the patch for this issue:
https://git.kernel.org/pub/scm/linux/kernel/git/netdev/net.git/commit/?id=4ac06a1e013c

#CVE
CVE not assigned.

#Credits
Active Defense Lab of Venustech.



Regards,
   butt3rflyh4ck.

--
Active Defense Lab of Venustech
