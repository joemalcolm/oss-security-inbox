X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["677" "Friday" "9" "April" "2021" "13:06:09" "+0300" "Alexander Popov" "alex.popov@linux.com" nil "17" "[oss-security] Re: Linux kernel: Exploitable vulnerabilities in AF_VSOCK implementation" nil nil nil "4" nil nil (number mark "U       alex.popov@l Apr  9   17/677   " thread-indent "\"[oss-security] Re: Linux kernel: Exploitable vulnerabilities in AF_VSOCK implementation\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Re: Linux kernel: Exploitable vulnerabilities in AF_VSOCK implementation" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 12233 invoked by uid 550); 9 Apr 2021 10:06:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12203 invoked from network); 9 Apr 2021 10:06:24 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=UVFw0LR3i3BE+ZM8Jb8oNH1P0MSVpaZmhsY+AQ/h+go=;
        b=pwpUaf/CTpIZJTxh0Tq47i9Nwb8oz8vTuAMrssEFjDtxkxo+LDKxLCmBmk/3I7CZK1
         3hakOFUis+8OGIy3bwRc9Dr5ChknNiizSOi+8nFWHHuiSq2dioZPJ69xL/MRhScuMHMa
         9s6WOQT8BNVEgSPJS2i8qtYQO/Kc0XzF+nDXXObiYJEnkC0R6Eh7IoPma5XOO3O3XY9v
         tK2LT8AggegwmW5sJvOgZTbnCujx3Y5tilcgc9TqHqWKPQN2e8onWj2ejGcCpZELoG4b
         j1MxPoCLtEZh2hKtod1CqhlNQ2Bxm37SQXN5n+QHQAPwhU+uW+HdtN3cYuj9BM//5Drh
         vMpQ==
X-Gm-Message-State: AOAM531IKgO/SWfU4bTkDGMAUAT/KuvsdtVrFY/b81geyjGl8iDRqHe8
	pJ3lVpPqGQ1KU9nTUkZJhvQ=
X-Google-Smtp-Source: ABdhPJwno3l0eOIYyV+KzbeUJv0ti3SJMHwnco3zsej8X+zUNt5bE0v7UR9hhA1fELh8oD70Jr5ViA==
X-Received: by 2002:adf:ec0f:: with SMTP id x15mr16756127wrn.233.1617962773272;
        Fri, 09 Apr 2021 03:06:13 -0700 (PDT)
From: Alexander Popov <alex.popov@linux.com>
To: oss-security <oss-security@lists.openwall.com>
Cc: linux-distros@vs.openwall.org,
 Linus Torvalds <torvalds@linuxfoundation.org>, Greg KH <greg@kroah.com>,
 "security@kernel.org" <security@kernel.org>,
 Norbert Slusarek <nslusarek@gmx.net>,
 Stefano Garzarella <sgarzare@redhat.com>, Eric Dumazet
 <edumazet@google.com>, Anthony Liguori <aliguori@amazon.com>,
 David Miller <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Jorgen Hansen <jhansen@vmware.com>,
 Stefan Schmidt <stefan@datenfreihafen.org>,
 Jeff Vander Stoep <jeffv@google.com>,
 Andrey Konovalov <andreyknvl@google.com>
References: <f345a0d3-34f2-a013-545b-bf49ec5a4818@linux.com>
 <F228DD28-51EB-41AC-9092-8E5EC9ACDE79@linux.com>
Message-ID: <299a447a-3084-12c0-013f-b98162f365d1@linux.com>
Date: Fri, 9 Apr 2021 13:06:09 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <F228DD28-51EB-41AC-9092-8E5EC9ACDE79@linux.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: [oss-security] Re: Linux kernel: Exploitable vulnerabilities in AF_VSOCK
 implementation

Hello!

I published a detailed article about exploiting CVE-2021-26708 in AF_VSOCK
implementation: https://a13xp0p0v.github.io/2021/02/09/CVE-2021-26708.html

In this article I describe how to gain local privilege escalation on Fedora 33
Server for x86_64, bypassing SMEP and SMAP.

The race condition may cause write-after-free of a 4-byte controlled value to a
64-byte kernel object at offset 40. That's quite limited memory corruption. I
had a hard time turning it into arbitrary read/write of kernel memory.

In this article I also describe possible exploit mitigations that could prevent
exploitation of CVE-2021-26708 or at least make it harder.

Best regards,
Alexander
