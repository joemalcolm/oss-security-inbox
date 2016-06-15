X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["692" "Wednesday" "15" "June" "2016" "16:29:50" "+1000" "Wade Mealing" "wmealing@redhat.com" "<CALJHwhQrWQ-TZ2cO=L3v8AVt-OOXGRvdXgtMxABKz6XFnXg9Aw@mail.gmail.com>" "24" "[oss-security] CVE-2016-4470: Linux kernel Uninitialized variable in request_key handling user controlled kfree()." nil nil nil "6" "2016061506:29:50" "[oss-security] CVE-2016-4470: Linux kernel Uninitialized variable in request_key handling user controlled kfree()." (number mark "U       wmealing@red Jun 15   24/692   " thread-indent "\"[oss-security] CVE-2016-4470: Linux kernel Uninitialized variable in request_key handling user controlled kfree().\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 6061 invoked by uid 550); 15 Jun 2016 06:30:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 6005 invoked from network); 15 Jun 2016 06:30:03 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
        bh=O+O8O+g1i1xCOMKguCtA/MD/3dmnV39OQwbXolAEpxo=;
        b=ZIUPoWBsKl8DqBc8CPtlZhBlFXHOb2xvf8OhUyiH9hUavsNGAQed7D34M2Yg3gBLN9
         m2g+wS3ZCDHrXp8YNXRsmXHXUJB/ws5uBjeaw893hf/JOHM+KCWWw+XVhvH3mtldmx+1
         wrC5bIpvf4Vz78bOYtEC/Mlm07Hkkw00sAWepmEbUZghqUrDYdejMQg/7zrbJivVzY+0
         FYN29mkjw9RNWMS662Yhpg5idb9MFoyTRtULVVrDvnTp0dd7teo7bouPkwbfaNsZSDJd
         EphW792mOqGXuoBFVoGXX7S9sWjZZEz45qyYFDyejnwuEC1UuFZiC4tkAymCVgE47MLB
         xDgw==
X-Gm-Message-State: ALyK8tJm7nr9ULHPBTT7+Y0PaJ9cvqNV96cqzGFqD93XR1vM7yZHtlRWLaddeJV+cqEMOLWx5DpSS3nDts8gjP2h
MIME-Version: 1.0
X-Received: by 10.36.64.8 with SMTP id n8mr31839156ita.21.1465972191013; Tue,
 14 Jun 2016 23:29:51 -0700 (PDT)
Date: Wed, 15 Jun 2016 16:29:50 +1000
Message-ID: <CALJHwhQrWQ-TZ2cO=L3v8AVt-OOXGRvdXgtMxABKz6XFnXg9Aw@mail.gmail.com>
From: Wade Mealing <wmealing@redhat.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8
Subject: [oss-security] CVE-2016-4470: Linux kernel Uninitialized variable in request_key
 handling user controlled kfree().

Gday,

A flaw was found in the Linux kernels keyring handling code, where in
key_reject_and_link() there's an uninitialised variable that isn't set
by __key_link_begin() on the destination keyring if that function
fails.

If a destination keyring was supplied, then __key_link_end() is called
whether or not __key_link_begin() succeeded, with the result that the
edit pointers contains members which end up being freed.   These are
the user controlled addresses that can exist from previous memory
contents.

Thanks,

Wade Mealing
Product Security Team

Resources:

https://bugzilla.redhat.com/show_bug.cgi?id=1341716

Patch:
https://www.spinics.net/lists/linux-kernel-janitors/msg26069.html
