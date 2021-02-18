X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2717" "Thursday" "18" "February" "2021" "09:32:06" "-0500" "Steve Grubb" "sgrubb@redhat.com" nil "100" "Re: [oss-security] Vulnerability in the Linux Audit Framework Auditd" nil nil nil "2" nil nil (number mark "U       sgrubb@redha Feb 18  100/2717  " thread-indent "\"Re: [oss-security] Vulnerability in the Linux Audit Framework Auditd\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Vulnerability in the Linux Audit Framework Auditd" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5556 invoked by uid 550); 18 Feb 2021 14:32:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5536 invoked from network); 18 Feb 2021 14:32:26 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1613658734;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=2taeg/tla7B8CXc3voHozbDrS9+6n0u88tikUMeoRFs=;
	b=MHWBC3iR9dMMT6SwPUf3SEIXHRQ7+C9CtBRRR54W8+H+xMm9FJl0BqiOhvHKZXr3Ot8ZDj
	oL1I2+3pnHmj421kiVm3YB57l/IHkgECo3gsCoP9NgY5ln/PYyeeDjPnpB0pSBXhAuSTpx
	VZQ/dUYkIjliAjw8TJ7dRfMz+FecRvU=
X-MC-Unique: ixQzpAG7MyCMAcf3KviAfA-1
From: Steve Grubb <sgrubb@redhat.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Cc: Felix Kosterhon <felix.kosterhon@secuinfra.com>
Date: Thu, 18 Feb 2021 09:32:06 -0500
Message-ID: <2132838.iZASKD2KPV@x2>
Organization: Red Hat
In-Reply-To: <41A7FAA9-5814-47A7-A9A5-B36D9DE550A8@secuinfra.com>
References: <41A7FAA9-5814-47A7-A9A5-B36D9DE550A8@secuinfra.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=sgrubb@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"
Subject: Re: [oss-security] Vulnerability in the Linux Audit Framework Auditd

Hello,

I normally do not comment on security announcements, but this needs some=20
fixing...

On Thursday, February 18, 2021 5:15:20 AM EST Felix Kosterhon wrote:
> my name is Felix Kosterhon and i am Cyber Defense Analyst at SECUINFRA
> GmbH, Germany.
>=20
> We discovered a security vulnerability in the Linux Audit Framework
> (Auditd).

Before people start asking for an updated audit package, auditd is not=20
responsible for this. The Linux Kernel is where any issue might lie. Blamin=
g=20
auditd  is like saying syslog has a security problem because a login was no=
t=20
recorded.

> During our research we discovered that the usage of a certain
> open-syscall (open_by_handle_at) is not covered by the current file watch
> implementation of Auditd.

Where to begin? name_to_handle_at/open_by_handle_at work together.=20
name_to_handle_at is the syscall that would have the path name and returns =
a=20
handle. open_by_handle_at() takes the handle and makes a descriptor. That=20
means open_by_handle_at() has no idea what the path might be. All it has is=
=20
numbers. So, if there was going to be a watch placed, it would be more=20
meaningful on name_to_handle_at(). Anyone concerned can place a syscall aud=
it=20
rule on name_to_handle_at() like this:

-a always,exit -F arch=3Db32 -S name_to_handle_at  -F auid>=3D1000 -F auid!=
=3Dunset
-a always,exit -F arch=3Db64 -S name_to_handle_at -F auid>=3D1000 -F auid!=
=3Dunset

But then...what might use this? All the references I can find seem to=20
associate this syscall with NFS. And if that is the case, the audit system=
=20
doesn't really support remote file systems. Sometimes it does. But that is=
=20
more likely accidental than anything planned.

But this does not stop anyone with admin privileges from using the syscall=
=20
pair locally.

-Steve

> This allows a local attacker with elevated
> privileges (CAP_DAC_READ_SEARCH capability) to read and modify files
> without being noticed by the implemented Auditd file watches.
>
> We disclosed our finding to RedHat, Inc. in November and it will be
> published today, Feb 18, under CVE-2020-35501. As suggested by RedHat,
> Inc., we want to inform you about this security flaw. If you have any
> further questions, we are happy to help you.
>=20
> We would also like to subscribe to your mailing list to stay informed abo=
ut
> current security topics.
>=20
> Best Regards,
>=20
>=20
>=20
> Felix Kosterhon
>=20
> Cyber Defense Analyst
>=20
>=20
>=20
>=20
>=20
> SECUINFRA GmbH
>=20
> M=FCnchener Stra=DFe 36
>=20
> 60329 Frankfurt/Main
>=20
>=20
>=20
> Mobile:  +49 151 18975666
>=20
>=20
>=20
> felix.kosterhon@secuinfra.com
>=20
> www.secuinfra.com
>=20
>=20
>=20
> Follow us on XING.




