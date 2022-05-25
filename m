Received: (qmail 12046 invoked by uid 550); 25 May 2022 13:52:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5687 invoked from network); 25 May 2022 13:37:39 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1653485847;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=islws4Wn4/uG+8fGP6AwxvOTC9pTCd5poUX8hQVDtZA=;
	b=Sl1WxL4NJsyKqO8xgoy00iOw+0L0+YftF3Ie5xqnhNTRjUpjnwB8yxTkuQ133/30KYireH
	qXINMgZ4wydi3rWWIA53XlFbr0RCDfwd6NihOjw15IUrh7YvnM8ApylCKbXvcv57P8011s
	ZRIqzowOx9tjw+JAxQWw8Ihd2lK3T38=
X-MC-Unique: k4Dfvu5WMOigP3yObqM0jA-1
From: Kamil Dudka <kdudka@redhat.com>
To: Marc Deslauriers <marc.deslauriers@canonical.com>
Cc: oss-security@lists.openwall.com, Guilherme de Almeida Suckevicz <gsuckevi@redhat.com>
Date: Wed, 25 May 2022 15:37:24 +0200
Message-ID: <5618910.DvuYhMxLoT@nbkamil>
In-Reply-To: <c41c3628-6132-9893-55ce-d86ff251e4fd@canonical.com>
References: <e410d6e9-53cb-e83e-0dbc-412467ba21db@redhat.com> <2183384.iZASKD2KPV@nbkamil> <c41c3628-6132-9893-55ce-d86ff251e4fd@canonical.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=kdudka@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Subject: [oss-security] Re: CVE-2022-1348 logrotate: potential DoS from unprivileged users via the state file

On Wednesday, May 25, 2022 3:19:31 PM CEST Marc Deslauriers wrote:
> On 2022-05-18 09:54, Kamil Dudka wrote:
> > The current version of the patch to fix CVE-2022-1348 in logrotate is
> > attached.  We are going to apply the patch upstream on May 25th, when
> > the embargo is lifted.
> 
> FWIW, I don't think the patch actually works when logrotate is built with
> ACL support...
> 
> Marc.

You are right.  Although the patch mitigates the security issue, it is not 
perfect.  I had already opened an upstream pull request to improve it:

    https://github.com/logrotate/logrotate/pull/446

I might create a bug fix release soon with the patch included.

Sorry for the troubles!

Kamil


