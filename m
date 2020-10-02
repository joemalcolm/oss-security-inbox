X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1076" "Friday" "2" "October" "2020" "11:30:01" "+0200" "Mauro Matteo Cascella" "mcascell@redhat.com" "<CAA8xKjVm5LJHMYVWYGRU81ysLHnAMNyE106ipqcCMnKbPvxSeg@mail.gmail.com>" "28" "[oss-security] CVE-2020-25637 libvirt: double free in qemuAgentGetInterfaces() in qemu_agent.c" nil nil nil "10" "2020100209:30:01" "[oss-security] CVE-2020-25637 libvirt: double free in qemuAgentGetInterfaces() in qemu_agent.c" (number mark "U       mcascell@red Oct  2   28/1076  " thread-indent "\"[oss-security] CVE-2020-25637 libvirt: double free in qemuAgentGetInterfaces() in qemu_agent.c\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-25637 libvirt: double free in qemuAgentGetInterfaces() in qemu_agent.c" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15387 invoked by uid 550); 2 Oct 2020 09:36:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11767 invoked from network); 2 Oct 2020 09:30:31 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1601631019;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=RheKllg8w6Fj2ejUuTs79s51vqreUDLzivSocQqRZwc=;
	b=Jpi9/jEATGX4wkSkgYAtclXd7kxwcaNKW8MobhG2Q/5xmBO4eitQIG22irh2hMMmi5I2SO
	VjxkK8VQ1MWUn9ljkKWCxdCPPjq733SqU4VyfLgsle/RlmBDcCzUmQD6CEREXiZCk8Gi8p
	OmkHUgxyrEFv/8PTYyTZQGyQ9pb0HYw=
X-MC-Unique: QSuZ6lC5P-6ZLSQlp2MN6A-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=RheKllg8w6Fj2ejUuTs79s51vqreUDLzivSocQqRZwc=;
        b=aRrz6ry18OwrttghKfc1URJo3L5t5hmDSoAMWaTA8lLTd7ejBkJmi3m4/brUK+Do50
         8y/UVFA6p9oKnBoGDGctpAiMNktJNE8MgnQZT0A3xjsl3YgBSfEWUnj8bKvHZoqpOx/j
         TJSDt1gdTd0Mv/iBdQhIZe98aClkmY6nDJMNZGCkC4Oux/Dz6XqRFEPGvsfb/7Nqj+c+
         0ZFPMkTR3wcFLVpZol+4XN4nRF22nXtAVlIfin0dlAcP4ShJqH/Zdp0rC/k66TERgJKe
         5zuBO5hpaQhLietMyJZq/Xu6EVkfHI9BVXpfUIRPezUc4n2C/gTbsmHjdHCsQeGnC9Dg
         LACA==
X-Gm-Message-State: AOAM530EhaHHsbwG3/R1AWl7laGPpUhdxzCYh4ZiD4mldNS/Pb7eluq6
	ePaLVjSTgPxDejKu3HTRn0RypYjzFf80f/tuILVi8dwkQQ7v7eHGOJc0XA9ADwaBURAgq7RrxIm
	GCV4+nVyPvo8+G0NE/ywaIPSCM5ehvji0KxBXGH/3VgZg
X-Received: by 2002:a05:6402:209:: with SMTP id t9mr1406669edv.208.1601631012138;
        Fri, 02 Oct 2020 02:30:12 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyC9CaPm2qnlLDE36mAT+CQdWcDkxMfukl23Bs3Ck60NGfHnwlZ/0SWnNdK7/rvcsP8O/QNlTmr5gCmF9yV5pA=
X-Received: by 2002:a05:6402:209:: with SMTP id t9mr1406658edv.208.1601631011916;
 Fri, 02 Oct 2020 02:30:11 -0700 (PDT)
MIME-Version: 1.0
From: Mauro Matteo Cascella <mcascell@redhat.com>
Date: Fri, 2 Oct 2020 11:30:01 +0200
Message-ID: <CAA8xKjVm5LJHMYVWYGRU81ysLHnAMNyE106ipqcCMnKbPvxSeg@mail.gmail.com>
To: oss-security@lists.openwall.com
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=mcascell@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2020-25637 libvirt: double free in
 qemuAgentGetInterfaces() in qemu_agent.c

Hello,

A double free memory issue was found to occur in the libvirt API
responsible for requesting information about network interfaces of a
running QEMU domain. This flaw affects the polkit access control
driver. Specifically, clients connecting to the read-write socket with
limited ACL permissions could use this flaw to crash the libvirt
daemon, resulting in a denial of service, or potentially escalate
their privileges on the system.

CVE-2020-25637 has been assigned for this flaw.

Fixed in libvirt v6.8.0 (2020-10-01).

Upstream commits:
* https://libvirt.org/git/?p=libvirt.git;a=commit;h=955029bd0ad7ef96000f529ac38204a8f4a96401
* https://libvirt.org/git/?p=libvirt.git;a=commit;h=50864dcda191eb35732dbd80fb6ca251a6bba923
* https://libvirt.org/git/?p=libvirt.git;a=commit;h=e4116eaa44cb366b59f7fe98f4b88d04c04970ad
* https://libvirt.org/git/?p=libvirt.git;a=commit;h=a63b48c5ecef077bf0f909a85f453a605600cf05

Credit: Ilja Van Sprundel (IOActive).

Thank you,

-- 
Mauro Matteo Cascella, Red Hat Product Security
6F78 E20B 5935 928C F0A8  1A9D 4E55 23B8 BB34 10B0

