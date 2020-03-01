X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["626" "Sunday" "1" "March" "2020" "11:07:35" "+0100" "Florian Weimer" "fweimer@redhat.com" "<87ftesqtg8.fsf@oldenburg2.str.redhat.com>" "21" "Re: [oss-security] LPE and RCE in OpenSMTPD's default install (CVE-2020-8794)" "^Cc:" nil nil "3" "2020030110:07:35" "[oss-security] LPE and RCE in OpenSMTPD's default install (CVE-2020-8794)" (number mark "        fweimer@redh Mar  1   21/626   " thread-indent "\"Re: [oss-security] LPE and RCE in OpenSMTPD's default install (CVE-2020-8794)\"\n") "<CAN_LGv2vhWw6hPL+71GHbRMF8HC8K+0yMjocjXu46pET8zYzNg@mail.gmail.com>" ("<20200224184538.GF17396@localhost.localdomain>" "<20200226202819.GA1051@localhost.localdomain>" "<CAN_LGv2vhWw6hPL+71GHbRMF8HC8K+0yMjocjXu46pET8zYzNg@mail.gmail.com>") nil nil nil nil nil nil nil "Re: [oss-security] LPE and RCE in OpenSMTPD's default install (CVE-2020-8794)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11999 invoked by uid 550); 1 Mar 2020 10:07:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11981 invoked from network); 1 Mar 2020 10:07:58 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1583057266;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=qjbW9FsYha9AOvSU2jRoTnZitNJByl0E/Txx/mdejiY=;
	b=LCBV8ehz2nDI3/wYXQr6NKhGfd50hnBLDELSECt8OhuqQlfb+Tv8WYT/ihrfwR0jUZLm47
	zcYpL5uuBFLl8B9/59IvY7slqqQZSnwY+FMg9u79rz7CqfXqXZ/y2oDOe5FDbM8+cqDp2K
	gzI3s0As6begx9JJLq0L9pjB7K3b5Rc=
X-MC-Unique: 6kODtUM6OZSAsjCnOkyRmA-1
References: <20200224184538.GF17396@localhost.localdomain>
	<20200226202819.GA1051@localhost.localdomain>
	<CAN_LGv2vhWw6hPL+71GHbRMF8HC8K+0yMjocjXu46pET8zYzNg@mail.gmail.com>
In-Reply-To: <CAN_LGv2vhWw6hPL+71GHbRMF8HC8K+0yMjocjXu46pET8zYzNg@mail.gmail.com>
	(Alexander E. Patrakov's message of "Sun, 1 Mar 2020 07:47:15 +0500")
Message-ID: <87ftesqtg8.fsf@oldenburg2.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.3 (gnu/linux)
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable
Cc: oss-security@lists.openwall.com
Date: Sun, 01 Mar 2020 11:07:35 +0100
From: Florian Weimer <fweimer@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] LPE and RCE in OpenSMTPD's default install (CVE-2020-8794)
To: "Alexander E. Patrakov" <patrakov@gmail.com>

* Alexander E. Patrakov:

> Just in case, I would like to complain here that my Fedora 31 systems
> have not received an update.
>
> There is indeed something in testing, but it is (mistakenly?) marked
> as a bugfix release and not as a security update:
>
> https://bodhi.fedoraproject.org/updates/?packages=3Dopensmtpd

I have edited the update and flagged it as security.

However, without feedback from community testing (karma), this update
cannot be pushed at this time.

The package also failed to build on Fedora 32 and 33/rawhide due to C
conformance issues, so there are no updates available there.

Thanks,
Florian

