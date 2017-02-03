X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["614" "Friday" "3" "February" "2017" "15:52:19" "+1000" "Wade Mealing" "wmealing@redhat.com" "<CALJHwhTW6d4uVqQDvDkn80AWvLSGXGsXT-9RE_ORyBXz59NNHA@mail.gmail.com>" "21" "[oss-security] Local DoS: Linux Kernel EXT4 Memory Corruption / SLAB-Out-of-Bounds Read" nil nil nil "2" "2017020305:52:19" "[oss-security] Local DoS: Linux Kernel EXT4 Memory Corruption / SLAB-Out-of-Bounds Read" (number mark "U       wmealing@red Feb  3   21/614   " thread-indent "\"[oss-security] Local DoS: Linux Kernel EXT4 Memory Corruption / SLAB-Out-of-Bounds Read\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 31975 invoked by uid 550); 3 Feb 2017 05:52:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31956 invoked from network); 3 Feb 2017 05:52:31 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=+ZodbO7NkQ1oUAOIKn1NW5br2PuL/kszgvrbGhC2L1E=;
        b=EQOjF7KeGCCo9+A/z1K/5DoZsLfiCHMSM3tn++uqiR9pEfguEmyQtFzNBtTZk55YYK
         hMESszWO5HlBrl+NGxeEHKYSHQyTgcM6rFhC6V814bmQh583NGerSg4aAd4oaeJYABC1
         tgiw1G9ScCVyavKLUUuWWuPowrUGwfwLHbkItX7i2sfpi6xysticlkDsoXAtFqH2yBW3
         wtTpoSQmA1cAslM/C0BsOLSi+yQuROqtKxpWytRrdGUaEC1PYJApgKxHZ6D6KMaMeBEx
         OVB1Ej7ec6GtsFuMb8tCNksPTFZ0r8AF4lVuR9a/ZM+W0jfU0r9UKq+v1FOhFOG35SCR
         4g4g==
X-Gm-Message-State: AIkVDXKqO5nWYtJqBDM0IbSAL3rbzIcpdNJjuAXPDnA5Ew5EulLvm5qG5XPP/tQSfyPwtePsAoQP1XWjdDvuz+is
X-Received: by 10.36.190.68 with SMTP id i65mr934274itf.118.1486101139815;
 Thu, 02 Feb 2017 21:52:19 -0800 (PST)
MIME-Version: 1.0
From: Wade Mealing <wmealing@redhat.com>
Date: Fri, 3 Feb 2017 15:52:19 +1000
Message-ID: <CALJHwhTW6d4uVqQDvDkn80AWvLSGXGsXT-9RE_ORyBXz59NNHA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8
Subject: [oss-security] Local DoS: Linux Kernel EXT4 Memory Corruption / SLAB-Out-of-Bounds Read

Gday,

I'd like to ask for a CVE for the flaw the EXT4 filesystem as described as:

Mounting a crafted EXT4 image read-only leads to a memory corruption and
SLAB-Out-of-Bounds Reads (according to KASAN).  Since the mounting
procedure is a privileged operation, an attacker is probably not able
to trigger this vulnerability on the commandline.
Instead the automatic mounting feature of the GUI via a crafted
USB-device is required.

>From full disclosure at:

http://seclists.org/fulldisclosure/2016/Nov/75

If it has been assigned elsewhere, I am unable to see it.

Thanks,

Wade Mealing
Red Hat Product Security
