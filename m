X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["714" "Saturday" "13" "May" "2017" "22:44:44" "-0400" "Yury German" "yury@technologysecure.com" "<F98F0BB5-6485-45D0-BF61-186895EAAA33@technologysecure.com>" "15" "[oss-security] Kernel 4.1.y might not contain patches for CVE-2016-10229" nil nil nil "5" "2017051402:44:44" "[oss-security] Kernel 4.1.y might not contain patches for CVE-2016-10229" (number mark "U       yury@technol May 13   15/714   " thread-indent "\"[oss-security] Kernel 4.1.y might not contain patches for CVE-2016-10229\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32236 invoked by uid 550); 14 May 2017 03:35:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28181 invoked from network); 14 May 2017 02:44:58 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=technologysecure-com.20150623.gappssmtp.com; s=20150623;
        h=from:content-transfer-encoding:subject:message-id:date:to
         :mime-version;
        bh=ldXHF5RELJ1gPoGgTD2WGjyQSgga+U4PboJID7H3Cg0=;
        b=CBb/VmMYs2yO3EVb+WGmrhbg1XDwRM7d2pwh6XvOmRgniyOzXhDmcUPEXRPBIerxM1
         9I2QBtEk81Fco/l+Ghad3dyAwuYXyCJHablqCHkiMDagLk7G5pRWbFCP/F/a6MWp4U2p
         BRuT98UPVVTXd0g1unNS8NkYfDZaBY6XZJWppNnViSi0BtEWpsRfo+lE9LimmUlLdHwR
         1MqZXMvI2eyheMGCNQ0iWyDMBjggWBNvrASg7+nnh1ogtTXOA/QvYhwGG5N/CerqWch3
         cqc0Sl5Ez3KSGA0f6zbOyOtIFcGKlfptqA2Ej161a4jHTQkeLfaV+0+KWxr68BInYPCU
         5z4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:content-transfer-encoding:subject
         :message-id:date:to:mime-version;
        bh=ldXHF5RELJ1gPoGgTD2WGjyQSgga+U4PboJID7H3Cg0=;
        b=IQ6C3tHMb4AcbdtvpDEM+vwEFXMpdrucHI9tZiJFu50yz/vhrhwyI7l73EGdp2rvrb
         +GQ+dHpSzVrs0iMPr/FVaplVYl39s3mm5Z68TwRuT1JNzAWnJDdtJcmxkai3qx6DYknA
         RDo87gsPiViV/MF1yME6z9bqvvmHGZTmcw7uEGJobGeeRt+48IhCFqWtrGZUKgcAvCxX
         +x1sQ98V5H06x+6bq5HK7HPrRdgAmGgniLuScpjJ6fYW8jXe5v26Ky4PI2xxkFEV1uqO
         /bBmD+5auldMmYvv5B4TBHydm4fFCd9Bjm/Vr/rJKg3mBkKy1MUDiND0IhIsJb7an3SW
         QXyQ==
X-Gm-Message-State: AODbwcDfnYNOSLe7XG/uA+xSl4rrl6YfD9UQ6iUhe98PhN1K9LG0p0dl
	n711xLO+ZiJp4u405NE=
X-Received: by 10.55.198.197 with SMTP id s66mr11440833qkl.179.1494729886097;
        Sat, 13 May 2017 19:44:46 -0700 (PDT)
From: Yury German <yury@technologysecure.com>
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Message-Id: <F98F0BB5-6485-45D0-BF61-186895EAAA33@technologysecure.com>
Date: Sat, 13 May 2017 22:44:44 -0400
To: oss-security@lists.openwall.com
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Mailer: Apple Mail (2.3124)
Subject: [oss-security] Kernel 4.1.y might not contain patches for CVE-2016-10229

This is just a small notice that Linux Kernel 4.1.y might not contain patch=
es to CVE-2016-10229 [1]. This is a reference to the Vanilla Linux sources =
without any distribution specific patching. Typically a number of distribut=
ions apply their own patches to the standard vanilla Kernel.=20

The patches might also not be needed for 4.1.y sources as were discussed on=
 the mailing list [see [2]].=20

Please check with the distribution you are using to see if the patches for =
CVE-2016-10229 have been applied to the kernel 4.1.y tree for the distribut=
ion that you are using.=20

[1] http://web.nvd.nist.gov/view/vuln/detail?vulnId=3DCVE-2016-10229
[2] https://www.spinics.net/lists/stable/msg167674.html

