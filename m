X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["397" "Tuesday" "10" "November" "2020" "13:37:31" "-0500" "Len Brown" "lenb@kernel.org" "<CAJvTdK=tZjaiCaS=1=L=r0ZKg16jLS0OMqQ3bfxmhnopMo59Gw@mail.gmail.com>" "13" "[oss-security] CVE-2020-8694 RAPL power meter, Linux intel_powercap" nil nil nil "11" "2020111018:37:31" "[oss-security] CVE-2020-8694 RAPL power meter, Linux intel_powercap" (number mark "U       lenb@kernel. Nov 10   13/397   " thread-indent "\"[oss-security] CVE-2020-8694 RAPL power meter, Linux intel_powercap\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-8694 RAPL power meter, Linux intel_powercap" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18351 invoked by uid 550); 10 Nov 2020 18:51:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13825 invoked from network); 10 Nov 2020 18:37:54 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=Uj8MpUj0/GWybRLiyj/fECoyAz7EW1g/jV1qpkFG5XY=;
        b=qg+NqfaXSABKd7zuR1pE8e150npUMqXth+D4olW97NBM/94j25Bbf9d+PfeYEcrqfe
         9mRIdUUuUdmESYaIeT5HW4uz9C0n6eyrQpaTwQUtdUxvhm7lrcwEfoJbQGvaM0ueO/p3
         apBrfk0WwiP9rvj3vEwalgaFYDvJYynDGxmVDGsNbfy40PycPJ+TMfsaQquQBgeaTTUu
         /wTooXvzRVA/rSAkUlIuB+js2RwX9DCXmr8M3SXBJBwBYBT+/DDzrD9RCSxOvXZIl4Qa
         OCdnyDJJitbRKRDXKcVL5P1fdHqSisdE41L/cFS2mxIzjPxUW3/cHhJL3uMH7D4N6jf0
         PHmg==
X-Gm-Message-State: AOAM532I6W/4aFjVTL8UE88pKSplt3excP1ljNb0Dx9kMkD2V7VagGsi
	jdU0HTITGpAAiwFrCCK2Y9ZpW04fw6LksJNDzg7YPq46uFtY+w==
X-Google-Smtp-Source: ABdhPJya5m3Jaa7GPGqrJeIFmgekwVAr5DbKI1emdZao2BORG4oQ2m8cLDJfXStLwwZ9aTmQ8jqFOe/ZILNBPBQ4xoM=
X-Received: by 2002:a17:907:1112:: with SMTP id qu18mr21108097ejb.507.1605033462885;
 Tue, 10 Nov 2020 10:37:42 -0800 (PST)
MIME-Version: 1.0
From: Len Brown <lenb@kernel.org>
Date: Tue, 10 Nov 2020 13:37:31 -0500
Message-ID: <CAJvTdK=tZjaiCaS=1=L=r0ZKg16jLS0OMqQ3bfxmhnopMo59Gw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2020-8694 RAPL power meter, Linux intel_powercap

FYI,

Today Linux was patched:

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=949dd0104c496fa7c14991a23c03c62e44637e71

to help address the vulnerability of employing the hardware RAPL power
meter in a side-channel attack.

https://www.intel.com/content/www/us/en/security-center/advisory/intel-sa-00389.html

thanks,
Len Brown, Intel Open Source Technology Center
