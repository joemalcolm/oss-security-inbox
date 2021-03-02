X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1862" "Tuesday" "2" "March" "2021" "10:18:10" "-0500" "Steve Grubb" "sgrubb@redhat.com" nil "42" "Re: [oss-security] Vulnerability in the Linux Audit Framework Auditd" nil nil nil "3" nil nil (number mark "U       sgrubb@redha Mar  2   42/1862  " thread-indent "\"Re: [oss-security] Vulnerability in the Linux Audit Framework Auditd\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Vulnerability in the Linux Audit Framework Auditd" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19493 invoked by uid 550); 2 Mar 2021 15:18:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19475 invoked from network); 2 Mar 2021 15:18:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1614698296;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=meoawaeD+JowmZXFdlc8RIc6wPziYZqL10gf6z78cWk=;
	b=MyDfoExWKX55SyQRRHnoOuIQ+nj5TSjB0xUlq7KBWQ4QkIzFTykbQ69WNBYGxSfx2bH7+R
	nizCQupF5HbjJcJtez4C5tEflw0Ue05JJggnWQ6b1a/2WJCL7rI3FWkqHsqiAf3720KD6w
	SQpmblcfCaXyeB3BDfuISJ7DizYtbj0=
X-MC-Unique: EyLkyIYBO2WZakgeo5FHOg-1
From: Steve Grubb <sgrubb@redhat.com>
To: oss-security@lists.openwall.com, Salvatore Bonaccorso <carnil@debian.org>
Cc: Felix Kosterhon <felix.kosterhon@secuinfra.com>
Date: Tue, 02 Mar 2021 10:18:10 -0500
Message-ID: <2073738.irdbgypaU6@x2>
Organization: Red Hat
In-Reply-To: <YDgNJsbBFtYumXCp@eldamar.lan>
References: <41A7FAA9-5814-47A7-A9A5-B36D9DE550A8@secuinfra.com> <E42466DE-9ABE-4996-9F6B-D82DA14396B9@secuinfra.com> <YDgNJsbBFtYumXCp@eldamar.lan>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=sgrubb@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Subject: Re: [oss-security] Vulnerability in the Linux Audit Framework Auditd

Hello,

On Thursday, February 25, 2021 3:48:38 PM EST Salvatore Bonaccorso wrote:
> On Thu, Feb 18, 2021 at 03:52:54PM +0000, Felix Kosterhon wrote:
> > Hello Mr. Grubb,
> > 
> > thank you for your insight.
> > First and foremost we would like to clarify that our intent is not
> > to put blame on anyone but to improve the level of security for the
> > affected systems and the organisations utilising Auditd.
> > According to the rules.conf manual page, file-watch rules are meant
> > to monitor any accesses to files based on their permission level.
> > For the syscalls mentioned in this report this is not the case.
> > 
> > RedHat Inc. shares our perspective on this issue and has assigned a
> > CVE for the vulnerability. Additionally they informed us that they
> > will work together with the Upstream Linux Kernel Developers on
> > behalf of fixing this issue.
> 
> Is there a reference to this which can be followed/tracked? Asking
> because the Red Hat bugzilla entry for CVE-2020-35501 for now would
> still be restricted, but would like to get a better idea on how to
> track this issue within Debian.

Not sure who is supposed to answer this. I started an upstream audit 
discussion:

https://listman.redhat.com/archives/linux-audit/2021-February/msg00079.html

The current thinking is perhaps just document this in a man page. End users 
can always use a syscall audit rule and pick up any use. The shipped rules 
have open_by_handle_at as part of the syscalls being watched for quite some 
time. Typically people don't write their own rules, they have to meet the 
DISA STIG or CIS which prescribes the rules you need to be using. So, I don't 
know if there really is anything to do.

Maybe we can get a patch adding open_by_handle_at to the permission filter in 
the kernel. We'll just have to see how the upstream discussion unfolds.

-Steve


