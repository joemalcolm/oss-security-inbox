X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2780" "Tuesday" "3" "May" "2016" "16:57:13" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20160503145713.GA9004@eldamar.local>" "72" "[oss-security] Re: CVE Request: libpam-sshauth: local root privilege escalation" nil nil nil "5" "2016050314:57:13" "[oss-security] Re: CVE Request: libpam-sshauth: local root privilege escalation" (number mark "U       carnil@debia May  3   72/2780  " thread-indent "\"[oss-security] Re: CVE Request: libpam-sshauth: local root privilege escalation\"\n") "<20160501140215.AED64332069@smtpvbsrv1.mitre.org>" ("<20160501054304.GA31390@eldamar.local>" "<20160501140215.AED64332069@smtpvbsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7369 invoked by uid 550); 3 May 2016 14:57:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7344 invoked from network); 3 May 2016 14:57:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=vSP0ZN+tPbKPfmMvTnKYBVMJ3D2vG9MRJNN5cfIUhgU=;
        b=TbtAxbbgVkKZ7DSkz71HeUY5hcWwOlRASFBoLabj39RAoygTwyKqwdrpK1B1VL6QW5
         SWshyffCxOKLciY+6tvD9VsTz52iH+4csV4XpHqST5tEICGjyYiShUHVHjRq3Yjv9lp/
         dVl2dvk/zbzJcmkUiZh/wSq4UhAVGS/0eY10gFnR8FqfkdCSeo+zea5QJCvno3Yvy/gP
         YhR05dceUl1S5rdLocecqmp9ANbzCzZKpAIw97jPcwe61ikkLYkYkeLFgZkCyJ0mdl+K
         moyMvKZiXYE1AJCTo/v6g4YEkk07PSzeNJcOkOYL29WpWMMYQZjm7NEQ99XmxCtH1r+C
         p3kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=vSP0ZN+tPbKPfmMvTnKYBVMJ3D2vG9MRJNN5cfIUhgU=;
        b=ZjjIlhKt0iMSlOvghO+BpJE2Do1WtgKgGlMP7LZ5n2Eaq5QJGJVBLMxcdV1d9hbGwa
         4MjhqGxGX38/AzMUHIxGJeyb6lL7CEWvaT3nPzqtezH2q0Lg+uH0tE6R7dIEEFB/3Jw4
         JKUWJa8Yp/kHg2y/HwvLhDDNUouTEQRbo9gFF0Nls9OCL/M0FIYU4hrqGxTRJrET4x/k
         pMZNwacM4LzIoLsmAzaArKPusIMH/PHyFLYIaqra8sizyhNUtb8k8kSfM2rKvSRVYEJv
         tLbbXth9VvE/EkTlBZHdBU9p5/uA0PXT89ifzaxh6XD2jn0UoyAMpYbj3RvnBjlrG5Ci
         kfEg==
X-Gm-Message-State: AOPr4FXIWlSzmzML79QHokdiSbFMi//DhsGW0BS+DK+4+aFdIvh4Taaf4agi4Q7Av3oQQA==
X-Received: by 10.28.226.213 with SMTP id z204mr3711489wmg.99.1462287437093;
        Tue, 03 May 2016 07:57:17 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Tue, 3 May 2016 16:57:13 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: cve-assign@mitre.org
Cc: oss-security@lists.openwall.com, Vagrant Cascadian <vagrant@debian.org>
Message-ID: <20160503145713.GA9004@eldamar.local>
References: <20160501054304.GA31390@eldamar.local>
 <20160501140215.AED64332069@smtpvbsrv1.mitre.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160501140215.AED64332069@smtpvbsrv1.mitre.org>
User-Agent: Mutt/1.6.0 (2016-04-01)
Subject: [oss-security] Re: CVE Request: libpam-sshauth: local root privilege escalation

Hi,

On Sun, May 01, 2016 at 10:02:15AM -0400, cve-assign@mitre.org wrote:
> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA256
> 
> > Due to a programming error, libpam-sshauth returned PAM_SUCCESS where
> > it should fail with PAM_AUTH_ERR. This was fixed in Debian in the last
> > upload to unstable with the attached patch.
> > 
> > https://bazaar.launchpad.net/~ltsp-upstream/ltsp/libpam-sshauth/revision/114
> 
> We can assign a CVE ID because it appears that something definitely is
> wrong from the Debian perspective, either the code itself or
> documentation/lack-of-documentation about how the code was supposed to
> be used.
> 
> Use CVE-2016-4422.

Thanks for assigning the CVE identifier.

> 
> However, we don't completely understand the issue:
> 
> > Introduced with:
> > https://bazaar.launchpad.net/~ltsp-upstream/ltsp/libpam-sshauth/revision/93/src/pam_sshauth.c
> 
> Here, the commit message for revision 93 was "Succeed for system
> accounts."
> 
> We don't know why introducing the undocumented behavior of "Is it a
> system user? Fail" would be better than simply not checking
> "pwent->pw_uid < UID_MIN" at all. Also, is there any risk that, with
> this libpam-sshauth update, a system's PAM configuration might
> suddenly provide no way for root to login via SSH?
> 
> Is it possible that the original motivation for revision 93 was that
> the PAM_SUCCESS from pam_sm_authenticate was supposed to be specially
> handled elsewhere in the "pwent->pw_uid < UID_MIN" case?
> 
> Although not directly applicable to libpam-sshauth, the examples
> section of the
> http://www.linux-pam.org/Linux-PAM-html/sag-pam_succeed_if.html man
> page shows that a set of rules is sometimes designed with UID_MIN
> special cases.

It might be right that revision 93 cannot be considred the introducing
revision for the problem. By following the example as given in the
README.

https://sources.debian.net/src/libpam-sshauth/0.3.1-1/README/#L75

$ cat /etc/pam.d/testservice 
auth    required        pam_sshauth.so host=127.0.0.1 nostrict # or wherever
auth    required        pam_exec.so expose_authtok /usr/bin/ltsp-session
session required        pam_exec.so /usr/bin/ltsp-session
$ pamtester -v testservice root authenticate open_session close_session
pamtester: invoking pam_start(testservice, root, ...)
pamtester: performing operation - authenticate
Password: <anypassword>
pamtester: successfully authenticated
pamtester: performing operation - open_session
pamtester: successfully opened a session
pamtester: performing operation - close_session
pamtester: session has successfully been closed.

I want though to add the Debian maintainer for libpam-sshauth to more
accurately answer the raised questions, Vagrant Cascadian
<vagrant@debian.org>. 

Regards,
Salvatore
