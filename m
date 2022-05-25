Received: (qmail 21999 invoked by uid 550); 25 May 2022 16:43:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18034 invoked from network); 25 May 2022 15:41:21 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1653493269;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=6BLhoI0zKjr+oAAuiBIo587xrcGGciqJX9XM7NiICFg=;
	b=FfJ3cjA91gdYS+TItEQpN5eiOHm30RYDPALXb57XytEXyUlw0gqm5tA/SX0jnVExZyEhZA
	lTFKHR1GM7tFnyKo+vowf3fRcDeFPW/cbDWEhFLA4LQlWE2Q4qMwe/bloTDiSglMkySzF+
	MI37kuh0GYiFWkPbOVfIGrIgXj7iS1o=
X-MC-Unique: ecsCagXWOk-VLqsWBAgILg-1
From: Kamil Dudka <kdudka@redhat.com>
To: Marc Deslauriers <marc.deslauriers@canonical.com>
Cc: oss-security@lists.openwall.com, Guilherme de Almeida Suckevicz <gsuckevi@redhat.com>
Date: Wed, 25 May 2022 17:41:03 +0200
Message-ID: <4449206.LvFx2qVVIh@nbkamil>
In-Reply-To: <24add3d4-c09d-76d7-0dee-6e0c089ff0e6@canonical.com>
References: <e410d6e9-53cb-e83e-0dbc-412467ba21db@redhat.com> <5618910.DvuYhMxLoT@nbkamil> <24add3d4-c09d-76d7-0dee-6e0c089ff0e6@canonical.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=kdudka@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Subject: Re: [oss-security] Re: CVE-2022-1348 logrotate: potential DoS from unprivileged users via the state file

On Wednesday, May 25, 2022 4:07:34 PM CEST Marc Deslauriers wrote:
> On 2022-05-25 09:37, Kamil Dudka wrote:
> > On Wednesday, May 25, 2022 3:19:31 PM CEST Marc Deslauriers wrote:
> >> On 2022-05-18 09:54, Kamil Dudka wrote:
> >>> The current version of the patch to fix CVE-2022-1348 in logrotate is
> >>> attached.  We are going to apply the patch upstream on May 25th, when
> >>> the embargo is lifted.
> >> 
> >> FWIW, I don't think the patch actually works when logrotate is built with
> >> ACL support...
> >> 
> >> Marc.
> > 
> > You are right.  Although the patch mitigates the security issue, it is not
> > 
> > perfect.  I had already opened an upstream pull request to improve it:
> >     https://github.com/logrotate/logrotate/pull/446
> > 
> > I might create a bug fix release soon with the patch included.
> > 
> > Sorry for the troubles!
> > 
> > Kamil
> 
> Oh! I had not seen that pull request. Thanks, that should solve the issue!
> 
> Marc.

Thanks for confirmation!  I have merged the pull request and released 3.20.1:

    https://github.com/logrotate/logrotate/releases/tag/3.20.1

The following two commits should be cherry-picked for older releases
of logrotate (from 3.17.0 to 3.19.0):

    https://github.com/logrotate/logrotate/commit/1f76a381e2caa0603ae3dbc51ed0f1aa0d6658b9
    https://github.com/logrotate/logrotate/commit/addbd293242b0b78aa54f054e6c1d249451f137d

Kamil


