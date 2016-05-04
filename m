X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1390" "Wednesday" "4" "May" "2016" "16:43:36" "-0400" "Kangjie Lu" "kangjielu@gmail.com" "<CABEk9YxcYnhx2VDgzVztLSdY0hjGe20=7P=yp6v3WyE9-tHyfQ@mail.gmail.com>" "53" "[oss-security] CVE Request: kernel information leak vulnerability in llc module" "^Date:" nil nil "5" "2016050420:43:36" "[oss-security] CVE Request: kernel information leak vulnerability in llc module" (number mark "U       kangjielu@gm May  4   53/1390  " thread-indent "\"[oss-security] CVE Request: kernel information leak vulnerability in llc module\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 10157 invoked by uid 550); 4 May 2016 20:43:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 10139 invoked from network); 4 May 2016 20:43:49 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to;
        bh=Ql146RIz+p5ZaBDKn/LuPXUz8fQxSY+9uRC3ck+wKH8=;
        b=mxwJpZJR8Js/l954+UiYawYtMPQynUFEhBSmJBoFZYw/wdtWcqHEKimJgaeuVJVyYh
         lIhj+QlRZCwQolAQ4Fz+9zjPmloiair/t7AzrU7xQ1RaxUCi5MSxSo3pjfqWnCp2bJcl
         JYyp/B7wPwNslleRXKgPt5Da7HPOUk4X+aIuw4nuK1IdvE2iMs8W4JoIMWL0HXMTmxZu
         nEp7hywCwsZI7kCtdm2nVOyGnpuQJ4DSPfPLNfn/zMgiUg/nBch94KSp4aMKpW9PKFkS
         rbSnxnlRjeLWcnqTvnI8Kqt29p28r6TWt0lkamxTquz7O1OAf9aRt6kBiqlzGML8r7KP
         9o1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
        bh=Ql146RIz+p5ZaBDKn/LuPXUz8fQxSY+9uRC3ck+wKH8=;
        b=G6BlwOeqAk9sAQTxl9KDr8erXGQiquADSsCYrZfDrCLnqW4XjFwhzfC4omhAphVv6g
         CqmBp2IevlOJwdqf1pQvswKFzjm/nSOyTfQujeiP2D4mmMG0yyLelRIlm75q3/KJFK0L
         wUVg8S+/KbP/GH93g0M4d/X+kHrskJIrnIHKWuW20rP3AO7e/yeg30r/YTTHlTaSVcBv
         Ff36w8xp7BVpVfilpmIWFNBDW0bbMZkFtibYKj7+TMXTOXXljb49xiUW+qx0XE8gdyne
         jaDBC//thM5ynat4F/OoSdwz8EyKm64sthRTtBatsB8dR0TrLsVPC6FsnfLCJ15dls/E
         x5mw==
X-Gm-Message-State: AOPr4FX9ksoLJmmfIH+og5WsxoIK9fLJFIehtLQdi5Y55CcmvdpPp4HKabkIrCiEFdHBGAvcdO0lZgiUnVWzKA==
MIME-Version: 1.0
X-Received: by 10.60.133.103 with SMTP id pb7mr3209665oeb.76.1462394616893;
 Wed, 04 May 2016 13:43:36 -0700 (PDT)
Message-ID: <CABEk9YxcYnhx2VDgzVztLSdY0hjGe20=7P=yp6v3WyE9-tHyfQ@mail.gmail.com>
Content-Type: multipart/alternative; boundary=047d7b47286aa95c4705320a47a9
Date: Wed, 4 May 2016 16:43:36 -0400
From: Kangjie Lu <kangjielu@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request: kernel information leak vulnerability in llc module
To: oss-security@lists.openwall.com, Chengyu Song <csong84@gatech.edu>, 
	Taesoo Kim <taesoo@gatech.edu>, Insu Yun <insu@gatech.edu>

--047d7b47286aa95c4705320a47a9
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,

We found a kernel information leak vulnerability in the llc module.
In the file "net/llc/af_llc.c", The stack object =E2=80=9Cinfo=E2=80=9D has=
 a total size of
12 bytes. Its last byte is padding which is not initialized and leaked
via =E2=80=9Cput_cmsg=E2=80=9D.

Our patch to this vulnerability has been accepted and applied by
linux kernel maintainer (please refer to the message bellow).

Fix info:
http://marc.info/?l=3Dlinux-netdev&m=3D146239325130106&w=3D2
http://marc.info/?l=3Dlinux-kernel&m=3D146239321930088&w=3D2


Please help assign a CVE to this vulnerability.



Thanks a lot!
Kangjie Lu




---------- Forwarded message ----------
From: David Miller <davem@davemloft.net>
Date: Wed, May 4, 2016 at 4:20 PM
Subject: Re: [PATCH] fix infoleak in llc
To: kangjielu@gmail.com
Cc: acme@ghostprotocols.net, netdev@vger.kernel.org,
linux-kernel@vger.kernel.org, taesoo@gatech.edu, insu@gatech.edu,
kjlu@gatech.edu


From: Kangjie Lu <kangjielu@gmail.com>
Date: Tue,  3 May 2016 16:35:05 -0400

> The stack object =E2=80=9Cinfo=E2=80=9D has a total size of 12 bytes. Its=
 last byte
> is padding which is not initialized and leaked via =E2=80=9Cput_cmsg=E2=
=80=9D.
>
> Signed-off-by: Kangjie Lu <kjlu@gatech.edu>

Applied.

--047d7b47286aa95c4705320a47a9--
