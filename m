X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["568" "Friday" "5" "August" "2016" "20:23:57" "+0800" "Idler" "idler1984@gmail.com" "<CACCOJE22F7zG5Ay1qL1bO0OvFyixGiuLOC_Y_L6tneeieVMdeA@mail.gmail.com>" "18" "[oss-security] CVE Request - Samsung Exynos fimg2d NULL Pointer Dereference" nil nil nil "8" "2016080512:23:57" "[oss-security] CVE Request - Samsung Exynos fimg2d NULL Pointer Dereference" (number mark "U       idler1984@gm Aug  5   18/568   " thread-indent "\"[oss-security] CVE Request - Samsung Exynos fimg2d NULL Pointer Dereference\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32567 invoked by uid 550); 5 Aug 2016 19:20:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16232 invoked from network); 5 Aug 2016 12:24:08 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=+vDOII81UmUYFj3uRM4BMj+7r1HAJzpbsWUzRzwvndU=;
        b=Fy95y7dj2s1KFWVoBgNCy6/lZ8eBt+51gcHIYufYBgQyIr+8VOlwWPdz5uLvrVuEdS
         m4bPdBSlZtK3IoS5aA/5wzU9AKBYM4GdhyOthgdegDDTLUDDrN+Vk94FkYLQxQMw6yxl
         CQ9CVxtLDzR+kp59ZrYcpxcdjae8kHeDJcna8dZeMRb6Lt+x/+/A8TV5sjGS6Sx2vVwR
         QZpDR+3ehVfGO9Zp8kp5CJc1cxLEmBKFl9YulOwT6wOivupPtseB8yMSao+zfeA5g1XA
         nbAFjiptJfAPPR+7jQ2Wmuu+5bLqQYeaZzAS6ov4J1zGNEIvXx5ghsiQ1kSHZH5ZKaDh
         IUlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=+vDOII81UmUYFj3uRM4BMj+7r1HAJzpbsWUzRzwvndU=;
        b=VxH7V0Gvw8C3zo76UuuhCfpKlz3mMRePw1GCmVvjZ5Ma/m14fLYHNlV1gueNE4nFfs
         hXKbWsJdxKXVCK3DeIRG7nddrWFBWKoC+Sn53vQhRoR6w/jTKiZBImK+EeIaibMeqEte
         hBrYDeRq340/uw8ewo3sdyw6zMZG6z7LNUYIW5E2pJ52FDvCAxb0oHEgIg/th7f10A68
         19xK8RtIxj3lX5lUJgkwYmFzoAOOXMjKldFm/awpiMU7yFLXlPZxxUXVp++07eHlWn6P
         ZBj+vdJW2qvGV7+Mh6nZ/2Q0BF5w/9RdTwbfyrzftcrm25uE27tDOkH7Xt3Qwh11wMFJ
         wbzQ==
X-Gm-Message-State: AEkoouu6gcJenAhdXZoihHzFscSOttP4J3TThO7xuXNlbp/9CE0jKOF/AllvSZszLZslwGcQnBh5E9t6WPDUuQ==
X-Received: by 10.194.15.130 with SMTP id x2mr71979292wjc.122.1470399837493;
 Fri, 05 Aug 2016 05:23:57 -0700 (PDT)
MIME-Version: 1.0
From: Idler <idler1984@gmail.com>
Date: Fri, 5 Aug 2016 20:23:57 +0800
Message-ID: <CACCOJE22F7zG5Ay1qL1bO0OvFyixGiuLOC_Y_L6tneeieVMdeA@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: anarcheuz@gmail.com, cve-assign@mitre.org
Content-Type: text/plain; charset=UTF-8
Subject: [oss-security] CVE Request - Samsung Exynos fimg2d NULL Pointer Dereference

Hello,

I'd like to request CVE for the following vulnerability fixed in
Samsung Exynos fimg2d driver for Android:

Security bulletin: http://security.samsungmobile.com/smrupdate.html#SMR-AUG-2016

SVE-2016-6382: fimg2d NULL Pointer Dereference

Severity: Medium
Affected versions: L(5.0/5.1), M(6.0) devices with Exynos7420 chipset
Reported on: June 7, 2016
Disclosure status: Privately disclosed.
The vulnerability exists due to a null pointer dereference on fimg2d driver.
The patch verifies if the object is null before dereferencing it.

Best Regards,
James Fang
