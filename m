X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["522" "Friday" "22" "January" "2021" "16:52:19" "+0530" "P J P" "ppandit@redhat.com" "<osro0op-5878-q9n9-55r2-9021propo6n3@erqung.pbz>" "19" "Re: [oss-security] CVE-2020-35517 QEMU: virtiofsd: potential privileged host device access from guest" nil nil nil "1" "2021012211:22:19" "[oss-security] CVE-2020-35517 QEMU: virtiofsd: potential privileged host device access from guest" (number mark "U       ppandit@redh Jan 22   19/522   " thread-indent "\"Re: [oss-security] CVE-2020-35517 QEMU: virtiofsd: potential privileged host device access from guest\"\n") "<807f9c58-ee87-c594-ea89-be816ac6d2ae@redhat.com>" ("<so4o1n2-r92q-8sn6-829r-qns5o0qo873@erqung.pbz>" "<807f9c58-ee87-c594-ea89-be816ac6d2ae@redhat.com>") nil nil nil nil nil nil nil "Re: [oss-security] CVE-2020-35517 QEMU: virtiofsd: potential privileged host device access from guest" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9696 invoked by uid 550); 22 Jan 2021 11:22:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9675 invoked from network); 22 Jan 2021 11:22:43 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1611314552;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=CYp7fMwPb+vTK8kv47IrpRlnmWoYBEtOuBGIFxBvu4M=;
	b=F9tOX4Wp/rBhRlzbW91i1qX9XMeojqGmVFungM6fpLbqu8yrstGoYM7W0pPe/kmOMxIxGp
	CM6f08yAsGQFE5ZUy7PM7sgO5kCXdGu8FgVCXiVyvEH8kBomlV2qELMo195T8gPG4ED/CE
	kiDUjJo1dSVLlGsSjcM/MmBYdbDnCwE=
X-MC-Unique: -D3EHK5WN3yPlQGZTmCQ4w-1
Date: Fri, 22 Jan 2021 16:52:19 +0530 (IST)
From: P J P <ppandit@redhat.com>
To: oss security list <oss-security@lists.openwall.com>
In-Reply-To: <807f9c58-ee87-c594-ea89-be816ac6d2ae@redhat.com>
Message-ID: <osro0op-5878-q9n9-55r2-9021propo6n3@erqung.pbz>
References: <so4o1n2-r92q-8sn6-829r-qns5o0qo873@erqung.pbz> <807f9c58-ee87-c594-ea89-be816ac6d2ae@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=ppandit@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Subject: Re: [oss-security] CVE-2020-35517 QEMU: virtiofsd: potential privileged
 host device access from guest

+-- On Fri, 22 Jan 2021, Daniel Walsh wrote --+
| Did SELinux block this flaw?

* Not sure if there's a SELinux policy to block it. Didn't have a reproducer 
  handy.

| Seems virtiofsd should be running without CAP_MKNOD by default.

* Yes, there's an issue for nodev
    -> https://gitlab.com/virtio-fs/qemu/-/issues/24

  virtiofsd(1) also supports '-o modcaps=-mknod' option, it's not default 
  though.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
8685 545E B54C 486B C6EB 271E E285 8B5A F050 DE8D

