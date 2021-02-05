X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1611" "Friday" "5" "February" "2021" "18:33:26" "+0300" "Alexander Popov" "alex.popov@linux.com" "<F228DD28-51EB-41AC-9092-8E5EC9ACDE79@linux.com>" "47" "[oss-security] Re: Linux kernel: Exploitable vulnerabilities in AF_VSOCK implementation" nil nil nil "2" "2021020515:33:26" "[oss-security] Re: Linux kernel: Exploitable vulnerabilities in AF_VSOCK implementation" (number mark "U       alex.popov@l Feb  5   47/1611  " thread-indent "\"[oss-security] Re: Linux kernel: Exploitable vulnerabilities in AF_VSOCK implementation\"\n") "<f345a0d3-34f2-a013-545b-bf49ec5a4818@linux.com>" ("<f345a0d3-34f2-a013-545b-bf49ec5a4818@linux.com>") nil nil nil nil nil nil nil "[oss-security] Re: Linux kernel: Exploitable vulnerabilities in AF_VSOCK implementation" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21637 invoked by uid 550); 5 Feb 2021 15:33:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21616 invoked from network); 5 Feb 2021 15:33:51 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:references:mime-version
         :content-transfer-encoding:subject:to:cc:from:message-id;
        bh=iJ7Xr3dWYscW0plesNKRfy7/K4h5oxQsJJUQ2+GNaog=;
        b=gReaTIxGRYROsU4gPCRUUzL6n5dXYHiqHf7d/wS8RJ3yTWuikEm9vZn5KBGMZ7npIM
         dzkeqMX+Z2Sxr47FqNtyoHL94A0mzZfgPs0SFEyVbYlnUY7ryATQIa5Dn91Bomwgq7OH
         2nknMDdb9aSuDb29eR0ms4pv2V5vPdNWip1dS1wYKXMWLXEs2et0DPfNzqfBvDn0yP7l
         meaZYIsVPZ4SPKPDCh8Ils+dtH97pF0CKZOQWIg7Z6jFCOmtwoxnI4LXhhPjuPzhbbGJ
         TnsSjpd0LSmCY1WzlA1XZ8WLSEbFjrM6t52M1NDvYsh7MJamZqxVgYHzJ7D0/3vvguRp
         qlZg==
X-Gm-Message-State: AOAM532VWerM+GgzjFU/z/ZiFD4SwRN3bWT5zSJv/I6973enLBWG87tV
	pDg+CkYtgVigFV8ZHi1aVMge9SXuQXw=
X-Google-Smtp-Source: ABdhPJzOP2SieVHvxIGiyeWNxxXGFjBum31MBk81Cd8NaYZvjqke9YXiH1aXVNvGIj3k/FtDNJizoQ==
X-Received: by 2002:a1c:7c17:: with SMTP id x23mr4181998wmc.65.1612539220035;
        Fri, 05 Feb 2021 07:33:40 -0800 (PST)
Date: Fri, 05 Feb 2021 18:33:26 +0300
In-Reply-To: <f345a0d3-34f2-a013-545b-bf49ec5a4818@linux.com>
References: <f345a0d3-34f2-a013-545b-bf49ec5a4818@linux.com>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
To: oss-security <oss-security@lists.openwall.com>
CC: linux-distros@vs.openwall.org,Linus Torvalds <torvalds@linuxfoundation.org>,Greg KH <greg@kroah.com>,"security@kernel.org" <security@kernel.org>,Norbert Slusarek <nslusarek@gmx.net>,Stefano Garzarella <sgarzare@redhat.com>,Eric Dumazet <edumazet@google.com>,Anthony Liguori <aliguori@amazon.com>,David Miller <davem@davemloft.net>,Jakub Kicinski <kuba@kernel.org>,Jorgen Hansen <jhansen@vmware.com>,Stefan Schmidt <stefan@datenfreihafen.org>,Jeff Vander Stoep <jeffv@google.com>,Andrey Konovalov <andreyknvl@google.com>
From: Alexander Popov <alex.popov@linux.com>
Message-ID: <F228DD28-51EB-41AC-9092-8E5EC9ACDE79@linux.com>
Subject: [oss-security] Re: Linux kernel: Exploitable vulnerabilities in AF_VSOCK implementation



On February 5, 2021 12:43:31 AM GMT+03:00, Alexander Popov <alex.popov@linu=
x.com> wrote:
>Hello!
>
>Let me inform you about the Linux kernel vulnerabilities that I've
>found in
>AF_VSOCK implementation. I managed to exploit one of them for a local
>privilege
>escalation on Fedora Server 33 for x86_64, bypassing SMEP and SMAP. I'm
>going to
>share all the details about the exploit techniques later.
>
>CONFIG_VSOCKETS and CONFIG_VIRTIO_VSOCKETS are shipped as kernel
>modules in all
>major GNU/Linux distributions. The vulnerable modules are automatically
>loaded
>when you create a socket for AF_VSOCK. That is available for
>unprivileged users
>and user namespaces are not needed for that.
>
>These vulnerabilities are race conditions caused by wrong locking in
>net/vmw_vsock/af_vsock.c. The race conditions were implicitly
>introduced in
>November 2019 in the commits c0cfa2d8a788fcf4 and 6a2c0962105ae8ce that
>added
>VSOCK multi-transport support. These commits were merged in the Linux
>kernel
>v5.5-rc1.
>
>I prepared the fixing patch and made responsible disclosure to
>security@kernel.org. Now the patch is merged into the mainline kernel:
>  "vsock: fix the race conditions in multi-transport support"
>
>https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/=
?id=3Dc518adafa39f37858697ac9309c6cf1805581446
>This patch is also backported into the affected stable trees.
>
>I've requested a CVE ID for these vulnerabilities at
>https://cveform.mitre.org/.

CVE-2021-26708 is assigned to these issues:
https://nvd.nist.gov/vuln/detail/CVE-2021-26708

Best regards,
Alexander
