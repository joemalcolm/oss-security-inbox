X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["590" "Sunday" "22" "October" "2017" "08:55:44" "+0300" "Noam Rathaus" "noamr@beyondsecurity.com" "<CAHqykcQNaNcFOrpPdDMny0oVFbuLkReex34wV1NWDYCkevp1EA@mail.gmail.com>" "28" "[oss-security] Netlink XFRM socket subsystem NULL pointer dereference" nil nil nil "10" "2017102205:55:44" "[oss-security] Netlink XFRM socket subsystem NULL pointer dereference" (number mark "U       noamr@beyond Oct 22   28/590   " thread-indent "\"[oss-security] Netlink XFRM socket subsystem NULL pointer dereference\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5750 invoked by uid 550); 22 Oct 2017 10:57:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16213 invoked from network); 22 Oct 2017 05:56:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=beyondsecurity-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:to;
        bh=KbWPRPPKbttrq3wiuDz2+ZBdhVifMXYovXaqedGGOaU=;
        b=piFJ+HuYmIxWv7JUx5tFXcJW7e1zvgJnCPygwYLoQBL2HVaHLNgYAAdjMnas5y3g29
         jX3gbCD12BLL6NRVfzNCWBklYbpxSJHqmri69Uv6byCq0jeHHiw7pWPfrxXiNAyydIDH
         QwK3mTnZd/MdzA/GdiibpU+f6Czg1D5g3bB/JSuEV8n574azZ0uwAMmlIAPenjhN/Xbk
         vdiTKJPwm66FoLZN0osgkJjNjgcieJk9E5QXzNBgjZAtCb5ny1j3IkqRl9ekvBQ6VUWC
         XBD2uUh8KPW9wmW+57XYdrAAVEMPDm9amRaPkh1YZOrDaxFg3uWmBCsskNADetRwquH6
         17HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=KbWPRPPKbttrq3wiuDz2+ZBdhVifMXYovXaqedGGOaU=;
        b=eaNcSTl7hMugdMRNX98V5oz01cHZIw++LUvIytt9ivf13hX+QIh+KHVknqcRNIgiya
         hx4QL77/heoeI+437nepz5n/B4YIwRosuZQum/gt7WLE8Lt5l5JfmlZxV8vLjRqZUXxD
         XEVam8U0xlpglo9pNyxOlFsowToMS73ot5RACZbEkOQG5WVaoPDN5hRm4tbsk8R1MX/A
         BUCX0iVoPs+g/giROyWIJFK08J44Nk4p+A7ywU8eSgFxyiPVbzAVrEolU7ZH0F0O/te3
         4HkVJuZ8+H2tsxcZAQC9lRnxCEs3aIQQ4ite7v0aohpTCsL/nDq8dFir/VvLCwFfLLw2
         CO0g==
X-Gm-Message-State: AMCzsaXyvuWT/fKnBcnIynN/rIKtjrbnkvfTIyZbfxvkvGj8X29ZrzY/
	BD9Y6x9/+IyTd5ZBEGFG2Fbs9RPcUAY2OyIs06t+SbmMzAY=
X-Google-Smtp-Source: ABhQp+TiloumODicPfJLo3BATez4ohLqC7c277bIKstvajD7CovLNHir6bc0tuhSHgNsKcXP7l2v802uhSxTv8L706E=
X-Received: by 10.107.40.68 with SMTP id o65mr13297762ioo.120.1508651785071;
 Sat, 21 Oct 2017 22:56:25 -0700 (PDT)
MIME-Version: 1.0
From: Noam Rathaus <noamr@beyondsecurity.com>
Date: Sun, 22 Oct 2017 08:55:44 +0300
Message-ID: <CAHqykcQNaNcFOrpPdDMny0oVFbuLkReex34wV1NWDYCkevp1EA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="001a113528ccbd411e055c1c5dff"
Subject: [oss-security] Netlink XFRM socket subsystem NULL pointer dereference

--001a113528ccbd411e055c1c5dff
Content-Type: text/plain; charset="UTF-8"

Hi,

I was forwarded by:
Dan Carpenter <dan.carpenter@oracle.com>

To you regarding obtaining a CVE for the mentioned (in the title)
vulnerability

I know a patch is being created and placed into mainstream code of the
Kernel

I would like also to get a CVE for it, so that we can put that in the
advisory we will release

Do we need to give you the full technical writeup of the vulnerability?

-- 

Thanks,
Noam Rathaus
Beyond Security

PGP Key ID: 2D24B275B1EB4475 (Exp 2018-03)

--001a113528ccbd411e055c1c5dff--
