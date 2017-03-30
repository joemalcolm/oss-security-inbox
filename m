X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["508" "Thursday" "30" "March" "2017" "14:55:42" "+0300" "Alexander Popov" "alex.popov@linux.com" "<f3785fb8-b95a-522b-14b4-94e8cefb02ab@linux.com>" "15" "[oss-security] Re: Linux kernel: CVE-2017-2636: local privilege escalation flaw in n_hdlc" nil nil nil "3" "2017033011:55:42" "[oss-security] Re: Linux kernel: CVE-2017-2636: local privilege escalation flaw in n_hdlc" (number mark "U       alex.popov@l Mar 30   15/508   " thread-indent "\"[oss-security] Re: Linux kernel: CVE-2017-2636: local privilege escalation flaw in n_hdlc\"\n") "<5ced8dfa-a2e9-1dff-9708-54a76f6b4c59@linux.com>" ("<5ced8dfa-a2e9-1dff-9708-54a76f6b4c59@linux.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17525 invoked by uid 550); 30 Mar 2017 12:22:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27875 invoked from network); 30 Mar 2017 11:55:57 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:reply-to:subject:references:to:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-transfer-encoding;
        bh=W3BsZCJP1Bc7ge4akz6GruZHHlJrVFNGtCxGqt0c5cQ=;
        b=RvxR5NHNaMgsnigsbbZ+uaCAnQbICMWdHgh0a10StK2bsDsXvi9q8gQuRv30EKNVjk
         6reXYJdHcItUnRcXNH+n52Ab4S6WPJ7R7J1Z55vtE6spuUFwNiR/Pgwh6hUf0PWlHTUK
         frjd42CFcDB9pcK/QjYYjIC1IwVCDAnJqBn+4NBiPEUyhNaFcnLcuJrBWKx/MMxp+rQn
         G4giQHXgKnsbLuV/SPZScmI7iMh3xvsyoh/QrgCWp1eJ0m3dtlsfz69J/MsQBOIaW7Bu
         gxwlP1NgLud9wOC1Ava1rXThqXx7wmpV0cOnzS2KCmG7Ui5ybgVYMusRmP+5IVIS5EtO
         iVzQ==
X-Gm-Message-State: AFeK/H3r8RBSv6WxTPn8/6S2rM5GJTBi7cKbkiDW+Oz8f8jaFkSADxKgTctgb+Fou2qhKQ==
X-Received: by 10.46.20.69 with SMTP id 5mr2132074lju.81.1490874945845;
        Thu, 30 Mar 2017 04:55:45 -0700 (PDT)
References: <5ced8dfa-a2e9-1dff-9708-54a76f6b4c59@linux.com>
To: oss-security@lists.openwall.com
From: Alexander Popov <alex.popov@linux.com>
Message-ID: <f3785fb8-b95a-522b-14b4-94e8cefb02ab@linux.com>
Date: Thu, 30 Mar 2017 14:55:42 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <5ced8dfa-a2e9-1dff-9708-54a76f6b4c59@linux.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Subject: [oss-security] Re: Linux kernel: CVE-2017-2636: local privilege escalation flaw in
 n_hdlc

On 07.03.2017 20:45, Alexander Popov wrote:
> This is an announcement of CVE-2017-2636, which is a race condition in
> the n_hdlc Linux kernel driver (drivers/tty/n_hdlc.c). It can be exploited
> to gain a local privilege escalation.
> 
> This driver provides HDLC serial line discipline and comes as a kernel module
> in many Linux distributions, which have CONFIG_N_HDLC=m in the kernel config.

Hello,

I've published the write-up: https://a13xp0p0v.github.io/2017/03/24/CVE-2017-2636.html

--
Alexander

