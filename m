X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["416" "Wednesday" "5" "February" "2020" "11:22:45" "-0700" "Todd C. Miller" "Todd.Miller@sudo.ws" nil "11" nil "^Date:" nil nil "2" nil nil (number mark "        Todd.Miller@ Feb  5   11/416   " thread-indent "\"Re: [oss-security] CVE-2019-18634: buffer overflow in sudo when pwfeedback is enabled\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] CVE-2019-18634: buffer overflow in sudo when pwfeedback is enabled" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 8042 invoked by uid 550); 5 Feb 2020 21:47:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23932 invoked from network); 5 Feb 2020 18:22:58 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=sudo.ws; h=from:to
	:subject:in-reply-to:references:mime-version:content-type
	:content-id:date:message-id; s=selector1; bh=ra0HxuRiLPUKt5qh2jM
	72T2y4yzY3UZJUB5vIYHBMHE=; b=A5qz9eOF/opHqvA8PEtb/dTNqj5jAHF5MRN
	1vqJWctUg+iySmyZGnKAT9nAG6UVBF24/ni2xFLIgna8AFAe/+7rCuo+l9MpCxej
	3AZ1Ssx4bmg9TVS5HZydAPBQkqqmmzQeflVnt3b7Ls3o+NtmCaUL5T++4Q339B4O
	WsTGzpks=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=sudo.ws; h=from:to:subject
	:in-reply-to:references:mime-version:content-type:content-id
	:date:message-id; q=dns; s=selector1; b=dEdCyRsXVSawmLwHLYIa8OoX
	JpS5hkM29/qfd6RPNZwvUZted/IB15zu/j8wWjKFCZrdxA/8bgc7kmYQRMf8G8R4
	fC+vud5t3/XmsGs9PdNMKCQ174dI8rNMfZqX82o15RoeenwA9SIV8Pa4SWtrg7Lq
	HFtFdH2vMYWlJA+UL3g=
In-reply-to: Your message of "Wed, 05 Feb 2020 22:34:53 +1100."
             <CAPWJUny2yaenu_Kg7s4VhuL0nZ4Yg4XPN9HN75e5w0MU4brTnw@mail.gmail.com>
References: <aff313846ed736fa@sudo.ws> <CAPWJUny2yaenu_Kg7s4VhuL0nZ4Yg4XPN9HN75e5w0MU4brTnw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-ID: <70716.1580926965.1@xerxes.sudo.ws>
Message-ID: <aff3405caaf3e70f@sudo.ws>
Date: Wed, 05 Feb 2020 11:22:45 -0700
From: "Todd C. Miller" <Todd.Miller@sudo.ws>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2019-18634: buffer overflow in sudo when pwfeedback is enabled
To: oss-security@lists.openwall.com

On Wed, 05 Feb 2020 22:34:53 +1100, William Bowling wrote:

> When using a pty, sudo_term_eof and sudo_term_kill are initialized to 0x4
> and 0x15 allowing the overflow to be reached, making 1.8.26-1.8.30 also
> vulnerable:

Thanks for sharing the pty exploitation method.  I've updated the
details in https://www.sudo.ws/alerts/pwfeedback.html to make it
clear that the bug is not specific to piped input.

 - todd
