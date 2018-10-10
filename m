X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1473" "Wednesday" "10" "October" "2018" "08:49:35" "-0700" "Ian Zimmerman" "itz@very.loosely.org" "<20181010154935.lwpdsekv7wsbscqe@matica.foolinux.mooo.com>" "32" "[oss-security] Re: ghostscript: bypassing executeonly to escape -dSAFER sandbox (CVE-2018-17961)" "^Date:" nil nil "10" "2018101015:49:35" "[oss-security] Re: ghostscript: bypassing executeonly to escape -dSAFER sandbox (CVE-2018-17961)" (number mark "U       itz@very.loo Oct 10   32/1473  " thread-indent "\"[oss-security] Re: ghostscript: bypassing executeonly to escape -dSAFER sandbox (CVE-2018-17961)\"\n") "<20181010145330.63e183d8@computer>" ("<CAJ_zFk+nnBgWaDNKgvLnVjp4rz3SttBQvjCCXjiqC71rV6bBrA@mail.gmail.com>" "<e9f76ebb-869e-69c5-7623-bae8553636ab@ehuk.net>" "<20181010145330.63e183d8@computer>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23974 invoked by uid 550); 10 Oct 2018 15:49:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23939 invoked from network); 10 Oct 2018 15:49:47 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=very.loosely.org; s=r1; h=In-Reply-To:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Sender:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
	List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=sJtF/FSKpsNC3dyjLrAibXzF//B/v3U6fEr2GZm5My0=; b=iZRKvvnSEpMQC6GkFs6xn8W/Q8
	HsubwR5RKlWjLstn41l3PNWW4jNVPpaS411MJ1EpDQl0igj7IMmJaC9hO4m21LQr3Q/A0GHO7nXd9
	UbjpVijfCPM1bM/jApgz99+V0LTWPx/01b5f0f3QwXgd3a+3RXvSYv43BBpAz7gkzKHo=;
Message-ID: <20181010154935.lwpdsekv7wsbscqe@matica.foolinux.mooo.com>
References: <CAJ_zFk+nnBgWaDNKgvLnVjp4rz3SttBQvjCCXjiqC71rV6bBrA@mail.gmail.com>
 <e9f76ebb-869e-69c5-7623-bae8553636ab@ehuk.net>
 <20181010145330.63e183d8@computer>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20181010145330.63e183d8@computer>
User-Agent: NeoMutt/20180716
Date: Wed, 10 Oct 2018 08:49:35 -0700
From: Ian Zimmerman <itz@very.loosely.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: ghostscript: bypassing executeonly to escape -dSAFER sandbox
 (CVE-2018-17961)
To: oss-security@lists.openwall.com

On 2018-10-10 14:53, Hanno Böck wrote:

> evince installs a thumbnail entry to
> /usr/share/thumbnailers
> 
> This is a generic location where applications can install files (I
> believe they follow the .desktop specification, which is an ini-based
> format). This is thus not nautilus-specific, but every filemanager that
> uses this format will be affected. A quick googling tells me e.g.
> pcmanfm is also affected. I'm not sure if dolphin uses them as well.

It seems to be a bug that this directory is under /usr/share, and not
under /etc where admins could modify it to selectively disable things.  I
checked and there is no parallel /etc/thumbnailers directory to drop
overriding entries into - though maybe ~/.local/share/thumbnailers would
work?  But already the fact that I have to guess is a bug :-(

By the way, on fedora the /usr/share/thumbnailers entry indeed does
belong to the evince package, but there is a separate evince-nautilus
package and its description says:

: This package contains the evince extension for the nautilus file manager.
: It adds an additional tab called "Document" to the file properties dialog.

Do you think that removing evince-nautilus would eliminate the nautilus
attack vector at least?

-- 
Please don't Cc: me privately on mailing lists and Usenet,
if you also post the followup to the list or newsgroup.
To reply privately _only_ on Usenet and on broken lists
which rewrite From, fetch the TXT record for no-use.mooo.com.
