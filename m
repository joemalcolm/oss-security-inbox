X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["817" "Thursday" "15" "October" "2015" "12:39:44" "-0700" "Blibbet" "blibbet@gmail.com" "<56200100.8010400@gmail.com>" "22" "Re: [oss-security] Re: CVE Request - Linux kernel - securelevel/secureboot bypass." nil nil nil "10" "2015101519:39:44" "[oss-security] Re: CVE Request - Linux kernel - securelevel/secureboot bypass." (number mark "        blibbet@gmai Oct 15   22/817   " thread-indent "\"Re: [oss-security] Re: CVE Request - Linux kernel - securelevel/secureboot bypass.\"\n") "<20151015165850.69C4A3AE01F@smtpvbsrv1.mitre.org>" ("<20151015165850.69C4A3AE01F@smtpvbsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11549 invoked by uid 550); 15 Oct 2015 19:42:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9910 invoked from network); 15 Oct 2015 19:39:59 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-type:content-transfer-encoding;
        bh=AbdBZHmlBOdBWi34azaTU/mbARZNIK+XeFf6jTEqYhc=;
        b=UzbNU8UbqpKr0Bz7l7PBsQF91NK3/IXzHKK5ll4GNBQSMYygsxPG0KH+27AinV0MJy
         tEXqV3lVvGKxXW7xPRMnTglbyGUC21IN4ORYPTb4hPyTbgw1JFocLn5b1B/BeQHTnD2x
         pXjEwJFLYMl1AUDgoLIPTZ8iW3+TCNUwCfG9SFD3mVHnl3z0DRKswPS8YKHlUm99wV4X
         MjPNT57qUzEh42bjgsXJS1p6RVmvxvThxZ/uXHu6HyCJWjH61P42LsmnL3Pbsob8HxWV
         KYCOzm8eaydkIii5f7L4qOibOiD+86TLJt5P4vWE5uoeVzZv+gtdDnECIex9mEVPvaIa
         2IpA==
X-Received: by 10.68.93.227 with SMTP id cx3mr11730615pbb.155.1444937987003;
        Thu, 15 Oct 2015 12:39:47 -0700 (PDT)
References: <20151015165850.69C4A3AE01F@smtpvbsrv1.mitre.org>
Message-ID: <56200100.8010400@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <20151015165850.69C4A3AE01F@smtpvbsrv1.mitre.org>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
Date: Thu, 15 Oct 2015 12:39:44 -0700
From: Blibbet <blibbet@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: CVE Request - Linux kernel -
 securelevel/secureboot bypass.
To: oss-security@lists.openwall.com



On 10/15/2015 09:58 AM, cve-assign@mitre.org wrote:
> As far as we can tell, you are reporting an issue in functionality
> that was developed for a Red Hat product. Because identical
> functionality is not currently offered elsewhere, a CVE ID can be
> assigned without considering the details of the securelevel behavior
> that may later be implemented (or considered optimal) outside of Red
> Hat.

I haven't seen Red Hat's new patch yet, but does this count? It sounds
like similar functionality, at least.
https://github.com/mjg59/linux/commit/4980702888a73e0fd4b48ef6f6683345011aa3a6

More URLs here:
http://firmwaresecurity.com/2015/10/06/matthew-garretts-new-linux-fork/
http://firmwaresecurity.com/2015/10/09/clarification-of-matthew-garretts-linux-fork/

Thanks,
Lee
RSS: http://firmwaresecurity.com/feed

