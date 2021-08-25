X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1268" "Wednesday" "25" "August" "2021" "10:40:29" "+0800" "butt3rflyh4ck" "butterflyhuangxx@gmail.com" nil "42" "[oss-security] Linux kernel: qrtr: another out-of-bound Read in qrtr_endpoint_post in net/qrtr/qrtr.c" nil nil nil "8" nil nil (number mark "U       butterflyhua Aug 25   42/1268  " thread-indent "\"[oss-security] Linux kernel: qrtr: another out-of-bound Read in qrtr_endpoint_post in net/qrtr/qrtr.c\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Linux kernel: qrtr: another out-of-bound Read in qrtr_endpoint_post in net/qrtr/qrtr.c" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26352 invoked by uid 550); 25 Aug 2021 08:14:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26300 invoked from network); 25 Aug 2021 02:40:51 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=GqcfgPPZ/2MkFAdAxxW9E197rGnZXkvNGs5mzY2jps4=;
        b=KuudiK7ZS5MVJHDRBd4GlmOvA+jaUyt6JdOQYeZdL/2PCSmBNNh4hmEmDVpg46+o/A
         SC4P4af3HQoc243lDpbKyYWs7NDOSTaUC4CxvuiO44wFukBdROD2BsqEVXiR4jf38fII
         yTpHP3kujTTKrYcD50czPqZQwKYod1KVpSPim0fEET8pthjfbeseP/8OrK8Gug3Iz8cb
         llf6n2oMEr006Scj9QM7bDjUtxI+VZlBTYFI7G2a5ZJGl3ySXvU44VXGPGhiIrLDnKzR
         SSSoqZfO7eEgzBnb/vfdtcqINYWaAJj9w+0ka2+eT8hQlLMCcCpAGmXWNfLyrSg3cUVU
         D5Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=GqcfgPPZ/2MkFAdAxxW9E197rGnZXkvNGs5mzY2jps4=;
        b=IiQFdcMD7lVVd6nn+ZzTYLEEx1b6JoxZbeLwe7JzS9XwqNp7YwaK6LMoKwormwuPe6
         sFBLTRjwah3vpu3JUQmA7GtfFbMC22Roo7xzyinFWw9s07djoSD5G3BX+7oiLZKSgjAc
         r56RN+Tlx4faS74Un9nQJUq+UDFagfsEyR02MbP3eKvw+/nfUXu7djtXqA/AUGMS9s5c
         ygceh4ObOW9rsAzgAHSh8PArrzqOzun+oCbh+fMycjn88d6FY3C2IklODELIThA+3SMR
         LxewQ8EQ2cc05Gfb0Xw40THUjYfKJapH4LsfmABPmYV2gELcVIHcOL/PfjP4D/g39/Cd
         fIvw==
X-Gm-Message-State: AOAM530wwR+PH6uxK4N+2r69fc5j4pVPEF0RJAFsHKN1kHYNloFlRuH+
	b7deVBagA1E3Ls30oRnr2X/C1iXaa+fGRV+fXzRRLyuccWI=
X-Google-Smtp-Source: ABdhPJznO6YOrNGW/FT5/yCTnQoTraA79dw7sURJMkiJdRJIap9b8lB3pDtN7tUy16vYnW2N4KOdkvULsrj/8vP5gZA=
X-Received: by 2002:a25:ca0b:: with SMTP id a11mr9745195ybg.302.1629859239871;
 Tue, 24 Aug 2021 19:40:39 -0700 (PDT)
MIME-Version: 1.0
From: butt3rflyh4ck <butterflyhuangxx@gmail.com>
Date: Wed, 25 Aug 2021 10:40:29 +0800
Message-ID: <CAFcO6XMiLJqwy=QW0Mv-yruhytSFRwb3yJsdMRVg3Gghm_5u7g@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] Linux kernel: qrtr: another out-of-bound Read in
 qrtr_endpoint_post in net/qrtr/qrtr.c

Hi, There was another out-of-bound read bug in qrtr_endpoint_post in
net/qrtr/qrtr.c in 5.14.0-rc6+ and reproduced it.

This check in  qrtr_endpoint_post was incomplete, did not consider size is 0:
```
if (len != ALIGN(size, 4) + hdrlen)
                goto err;
```
if size from qrtr_hdr is 0, the result of ALIGN(size, 4) will be 0,
In case of len == hdrlen and size == 0 in header this check won't fail and
```
 if (cb->type == QRTR_TYPE_NEW_SERVER) { /* Remote node endpoint can
bridge other distant nodes */
             const struct qrtr_ctrl_pkt *pkt = data + hdrlen;
             qrtr_node_assign(node, le32_to_cpu(pkt->server.node));
 }
```
will also read out of bound from data, which is hdrlen allocated block.


#analyze and some details
https://lists.openwall.net/netdev/2021/08/17/124

#patch
https://git.kernel.org/pub/scm/linux/kernel/git/netdev/net.git/commit/?id=7e78c597c3eb
now not available upstream.

#Timeline
*2021/8/17 - Vulnerability reported to netdev@vger.kernel.org.
*2021/8/20 - Vulnerability confirmed and patched.
*2021/8/23 - Vulnerability reported to secalert@redhat.com.
*2021/8/25 - Opened on oss-security@lists.openwall.com.

#Credit
Active Defense Lab of Venustech.


Regards,
 butt3rflyh4ck.

--
Active Defense Lab of Venustech
