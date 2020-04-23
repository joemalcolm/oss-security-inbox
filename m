X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["976" "Thursday" "23" "April" "2020" "16:41:43" "+0200" "Stefan Cornelius" "scorneli@redhat.com" "<20200423164143.4bbda865@lenovo>" "26" "Re: [oss-security] mailman 2.x: XSS via file attachments in list archives" nil nil nil "4" "2020042314:41:43" "[oss-security] mailman 2.x: XSS via file attachments in list archives" (number mark "U       scorneli@red Apr 23   26/976   " thread-indent "\"Re: [oss-security] mailman 2.x: XSS via file attachments in list archives\"\n") "<1309bdbba176b41aebdbeacf5a402fd9180f05c4.camel@k4vqc.com>" ("<20200224153451.4d773294@computer>" "<1309bdbba176b41aebdbeacf5a402fd9180f05c4.camel@k4vqc.com>") nil nil nil nil nil nil nil "Re: [oss-security] mailman 2.x: XSS via file attachments in list archives" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7195 invoked by uid 550); 23 Apr 2020 14:42:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7174 invoked from network); 23 Apr 2020 14:42:01 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1587652910;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Su0giwwvfRWiaWB/oRr0NdQAy1H8q4ESVhZjw3euMZ0=;
	b=OGP9f0mI8TpwhnGw5xH71wMAsrjth1dh4I/NEzvStZBhx0DPgWPrDOvrnzqUN7Ob3q2OPI
	35DObRFuA8C3esUkmiAS8vnqBslPw84UOnOGH9q+nSqXtLmnn0Rh+Zm/z7KwZSt47EOZIN
	3tD9/hM5Jt/PRm5eXXt+uYNFiVsqfvs=
X-MC-Unique: t_ksA6TRNvSXJv2iVwSg1Q-1
Date: Thu, 23 Apr 2020 16:41:43 +0200
From: Stefan Cornelius <scorneli@redhat.com>
To: oss-security@lists.openwall.com
Message-ID: <20200423164143.4bbda865@lenovo>
In-Reply-To: <1309bdbba176b41aebdbeacf5a402fd9180f05c4.camel@k4vqc.com>
References: <20200224153451.4d773294@computer>
	<1309bdbba176b41aebdbeacf5a402fd9180f05c4.camel@k4vqc.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] mailman 2.x: XSS via file attachments in list
 archives

On Mon, 24 Feb 2020 11:06:38 -0500
Jim Popovitch <jim@k4vqc.com> wrote:

> On Mon, 2020-02-24 at 15:34 +0100, Hanno B=C3=B6ck wrote:
> > This change is in mailman 2.1.30rc1, but not in any stable release
> > of mailman.=20=20
>=20
> Just for some added info, Mailman v2.1.30 is almost released, the
> holdup is with some language translations.  Mailman v2.1.30 will be
> the last of the Mailman v2 releases as primary development and effort
> has long shifted to Mailman v3. Further, the Mailman v2 branch is
> tied to Python v2, which is now EOL by the fine Python folk.
>=20
> Once Mailman v2.1.30 is release, I'm sure the various distributions
> will pull the commit and merge the particulars into their release
> branches, and that will surely include this XSS fix.=20

Hi,

It seems like this does not have a CVE? Is there a reason for this, or
did this just slip through the cracks/was never really requested?

Thanks,
--=20
Stefan Cornelius / Red Hat Product Security

