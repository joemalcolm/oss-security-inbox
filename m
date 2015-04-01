X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["347" "Wednesday" "1" "April" "2015" "10:28:27" "-0700" "Roland Dreier" "roland@purestorage.com" "<CAL1RGDXQh2+WQxf9w2Qvo-Npr2MnBZYObyfYfy7fn-Pfue=Odg@mail.gmail.com>" "8" "[oss-security] Re: CVE-2014-8159 kernel: infiniband: uverbs: unprotected physical memory access" nil nil nil "4" "2015040117:28:27" "[oss-security] Re: CVE-2014-8159 kernel: infiniband: uverbs: unprotected physical memory access" (number mark "        roland@pures Apr  1    8/347   " thread-indent "\"[oss-security] Re: CVE-2014-8159 kernel: infiniband: uverbs: unprotected physical memory access\"\n") "<AM3PR05MB0935AABF569F15EA846B8E72DC000@AM3PR05MB0935.eurprd05.prod.outlook.com>" ("<AM3PR05MB0935AABF569F15EA846B8E72DC000@AM3PR05MB0935.eurprd05.prod.outlook.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11994 invoked by uid 550); 1 Apr 2015 17:31:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 10142 invoked from network); 1 Apr 2015 17:29:01 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=purestorage.com; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:content-type;
        bh=D75GMBWptuz8NkuuUtikwE2yNQ2C2X0n2DI2wQLhHcI=;
        b=NlPIieNorZh5FdLRqQ3fm84M9tK/w3GLjZougQC2BCJs6GLadK57aGn7fD5OQ/nmpD
         1wJ1J2HOq9+ObGDnq2ONNI3OKwnLJI/Lg+vgqjbi23MEO1HLC9zyTE9RriyAlmMHKvBu
         LlF6ZGsLaLk0D/Ti9Q2a2Mp5DeI2+7ZpMocj4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc:content-type;
        bh=D75GMBWptuz8NkuuUtikwE2yNQ2C2X0n2DI2wQLhHcI=;
        b=MGgIi6Qur4+5zDxpNiT7Os2EFmHwA+ADiTonD95gyrlesBARSGb+LHKodpHg+6fJv/
         8vngpuKRkp2ylKlf2yAvWOLOVO1A41yl/iyY6emUtMt094ZP5yfiEx7CxBaYYCrTIZyO
         At5Hn52AEOcUaRT5zt8LhriEu0hZWewkkz7tgFNQcHkvTyGfaQxtoeN8gMn72w77wYmF
         cWcrGdR8jQb/Gu4akaSqcS/6A43JWZzafl6EfZ6blTonpkb5qZQrY/fVHzzjiCHWtnxi
         ekKeBp0WfL/SxEFBzT/5Ha+FEvX3IgVRel2ZwMA9ATV4L93kfFNMIpPt7tOZc5l/PiDs
         PRnQ==
X-Gm-Message-State: ALoCoQlcIaKp0C9NWmOq5YKRA78dXWBEXq9MXqM4lrlLgC5m7wfwPnGX3C60flsZ45BSOgqro+uyKtcAqqvGbyMKh2X8r+DVz6Wqtqc/66IqqQVCuoJ6FUOC9+lGdMQmHH672YPCLdoYILEa1b1KYJJDSDFzeYDbQe2Wo4dNKxLQiVQRgT0NmYU=
X-Received: by 10.112.26.209 with SMTP id n17mr36552151lbg.84.1427909327702;
        Wed, 01 Apr 2015 10:28:47 -0700 (PDT)
X-Received: by 10.112.26.209 with SMTP id n17mr36552147lbg.84.1427909327628;
 Wed, 01 Apr 2015 10:28:47 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <AM3PR05MB0935AABF569F15EA846B8E72DC000@AM3PR05MB0935.eurprd05.prod.outlook.com>
References: <AM3PR05MB0935AABF569F15EA846B8E72DC000@AM3PR05MB0935.eurprd05.prod.outlook.com>
Message-ID: <CAL1RGDXQh2+WQxf9w2Qvo-Npr2MnBZYObyfYfy7fn-Pfue=Odg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Cc: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>, 
	"<linux-rdma@vger.kernel.org> (linux-rdma@vger.kernel.org)" <linux-rdma@vger.kernel.org>, 
	"stable@vger.kernel.org" <stable@vger.kernel.org>
Date: Wed, 1 Apr 2015 10:28:27 -0700
From: Roland Dreier <roland@purestorage.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE-2014-8159 kernel: infiniband: uverbs: unprotected physical
 memory access
To: Shachar Raindel <raindel@mellanox.com>

On Wed, Mar 18, 2015 at 10:39 AM, Shachar Raindel <raindel@mellanox.com> wrote:
> Date: Sun, 04 Jan 2015 18:30:32 +0200
> Subject: [PATCH] IB/core: Prevent integer overflow in ib_umem_get address arithmetic

Just so we're clear, this bug has been known since January 4, and it's
getting sent upstream now?

I assume we want it in 4.0 and -stable?
