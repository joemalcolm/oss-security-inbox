X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2852" "Wednesday" "4" "May" "2016" "09:12:52" "-0400" "Kangjie Lu" "kangjielu@gmail.com" "<CABEk9Yz0mijhgKqKEugbvfAdqJKRcn6-HYyET3MA-D2EROo0tw@mail.gmail.com>" "86" "[oss-security] CVE Request: information leak in wilc1000 module of Linux kernel" nil nil nil "5" "2016050413:12:52" "[oss-security] CVE Request: information leak in wilc1000 module of Linux kernel" (number mark "U       kangjielu@gm May  4   86/2852  " thread-indent "\"[oss-security] CVE Request: information leak in wilc1000 module of Linux kernel\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20122 invoked by uid 550); 4 May 2016 13:13:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20098 invoked from network); 4 May 2016 13:13:04 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to;
        bh=3js4sSeY+D28NUbhhQzFA3MVeNjfdj62wfnYyUE3uLo=;
        b=Zvau9Zbj3fc8o9Q5OHWe6nyIIYYsy25TCDtkNpjchO1cT2DTGgfGgAZDSOfmQoNXYB
         m+guqO2OSS0CFMUj0Wo0smizD5a7OVl/A055WmBK4uHUJuAtRItTtgUkbl32yyU/1HNC
         VbWpwvbFu9yjPpqbCJKm05AHvVOAt/D+iulOUk03KJrdTkW/UPLLyyFFZzaph/mjprKi
         B8d40ud7lUgj9s7dQS77nqVmXUCKoEmJEFZ00OXaamp1FSX0SQlrNhGna6iYYosAEE0s
         UZW4+s+wtZzPZbz1Pz7dPNdg3gEAg1cxv7ZON+NTdkxY6KQ15JmhZFHpsLNIc83sXUCj
         /sxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
        bh=3js4sSeY+D28NUbhhQzFA3MVeNjfdj62wfnYyUE3uLo=;
        b=JgJZx4ypXwr9IKsT54Z+Y1qLRJ57Q4UQY1MBdVrG74erlRQk0vS6CtgEVGwr4ebCc5
         v7NZlFyyZkgi3fx3o0zvIknqOzJNTQ5vJlCrjyrbRJSXQlZqQY+o3swVaIGPoeYxTSq9
         sPocQqlA/dk0btjTBOhUGawhLI0eovJun5vHdzfSfBa3ty9MpNuNWW5OcNiKfJtxSe4I
         LkkQjRrZVFV912rOQqqNcEDl3mar4Ka15FAPhaPatPt070I0RHooBsaVQ0OA5OWniA6X
         iDACBLvMrFNqpckNe3q8kmr+lmWbyGEOPaOoZOMaSffiRDV0VrmHfUVp8B4SvtJ59JzF
         k7Cw==
X-Gm-Message-State: AOPr4FWlc/pUzstTofjpdWdPODIIIdy8sEneylNXjfJs4h3KGDT/5pIkEyTsdlcc9jnNa+1PcTcQJ8hckrSM1Q==
MIME-Version: 1.0
X-Received: by 10.202.2.79 with SMTP id 76mr4100663oic.108.1462367572664; Wed,
 04 May 2016 06:12:52 -0700 (PDT)
Date: Wed, 4 May 2016 09:12:52 -0400
Message-ID: <CABEk9Yz0mijhgKqKEugbvfAdqJKRcn6-HYyET3MA-D2EROo0tw@mail.gmail.com>
From: Kangjie Lu <kangjielu@gmail.com>
To: oss-security@lists.openwall.com, Taesoo Kim <taesoo@gatech.edu>, 
	Chengyu Song <csong84@gatech.edu>, Insu Yun <insu@gatech.edu>
Content-Type: multipart/alternative; boundary=001a1137bac8b32c56053203fb43
Subject: [oss-security] CVE Request: information leak in wilc1000 module of Linux kernel

--001a1137bac8b32c56053203fb43
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,

In the milc1000 module (drivers/staging/wilc1000/wilc_wfi_cfgoperations.c),
The 6-bytes stack object =E2=80=9Cmac=E2=80=9D is not initialized but leake=
d via =E2=80=9Cnla_put=E2=80=9D.
This bug may result in leaks of sensitive kernel stack data.

The patch of this bug has been accepted by Linux kernel maintainer and will
be
merged in the next kernel release (see the message bellow).

Fix info:
*http://www.spinics.net/lists/linux-wireless/msg150352.html
<http://www.spinics.net/lists/linux-wireless/msg150352.html>*
git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git

Could you please assign a CVE to it?

Thanks,
Kangjie Lu


---------- Forwarded message ----------
From: <gregkh@linuxfoundation.org>
Date: Wed, May 4, 2016 at 1:57 AM
Subject: patch "staging: wilc1000: fix infoleak in wilc_wfi_cfgoperations"
added to staging-testing
To: kangjielu@gmail.com, gregkh@linuxfoundation.org, kjlu@gatech.edu



This is a note to let you know that I've just added the patch titled

    staging: wilc1000: fix infoleak in wilc_wfi_cfgoperations

to my staging git tree which can be found at
    git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git
in the staging-testing branch.

The patch will show up in the next release of the linux-next tree
(usually sometime within the next 24 hours during the week.)

The patch will be merged to the staging-next branch sometime soon,
after it passes testing, and the merge window is open.

If you have any questions about this process, please let me know.


=46rom d13829686bba3e06e2217f044beb8fd5a9abf792 Mon Sep 17 00:00:00 2001
From: Kangjie Lu <kangjielu@gmail.com>
Date: Tue, 3 May 2016 21:36:11 -0400
Subject: staging: wilc1000: fix infoleak in wilc_wfi_cfgoperations

"mac" is an array allocated in stack without being initialized,
and will be sent out via "nla_put". The dump_station() is supposed
to initialize the mac address; otherwise, sensitive data in kernel
stack will be leaked. To fix this, copy the mac address to it.

Signed-off-by: Kangjie Lu <kjlu@gatech.edu>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
index 85031f75d7ee..4b041356f823 100644
--- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
+++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
@@ -1804,6 +1804,7 @@ static int dump_station(struct wiphy *wiphy, struct
net_device *dev,

        wilc_get_rssi(vif, &sinfo->signal);

+       memcpy(mac, priv->au8AssociatedBss, ETH_ALEN);
        return 0;
 }

--
2.8.2

--001a1137bac8b32c56053203fb43--
