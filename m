X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["613" "Monday" "7" "August" "2017" "09:52:49" "-0400" "Vladis Dronov" "vdronov@redhat.com" "<613154429.39760878.1502113969550.JavaMail.zimbra@redhat.com>" "14" "Re: [oss-security] [CVE-2017-7533] kernel: inotify: a race between inotify_handle_event() and sys_rename()" nil nil nil "8" "2017080713:52:49" "[oss-security] [CVE-2017-7533] kernel: inotify: a race between inotify_handle_event() and sys_rename()" (number mark "U       vdronov@redh Aug  7   14/613   " thread-indent "\"Re: [oss-security] [CVE-2017-7533] kernel: inotify: a race between inotify_handle_event() and sys_rename()\"\n") "<d0a17b55-f653-4b64-1459-cab178ff0a56@oracle.com>" ("<754818373.38559522.1501768802232.JavaMail.zimbra@redhat.com>" "<d0a17b55-f653-4b64-1459-cab178ff0a56@oracle.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17886 invoked by uid 550); 7 Aug 2017 13:53:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17769 invoked from network); 7 Aug 2017 13:53:01 -0000
DMARC-Filter: OpenDMARC Filter v1.3.2 mx1.redhat.com A36205D697
Authentication-Results: ext-mx10.extmail.prod.ext.phx2.redhat.com; dmarc=none (p=none dis=none) header.from=redhat.com
Authentication-Results: ext-mx10.extmail.prod.ext.phx2.redhat.com; spf=fail smtp.mailfrom=vdronov@redhat.com
Date: Mon, 7 Aug 2017 09:52:49 -0400 (EDT)
From: Vladis Dronov <vdronov@redhat.com>
To: oss-security@lists.openwall.com
Message-ID: <613154429.39760878.1502113969550.JavaMail.zimbra@redhat.com>
In-Reply-To: <d0a17b55-f653-4b64-1459-cab178ff0a56@oracle.com>
References: <754818373.38559522.1501768802232.JavaMail.zimbra@redhat.com> <d0a17b55-f653-4b64-1459-cab178ff0a56@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.40.4.119, 10.4.195.12]
Thread-Topic: kernel: inotify: a race between inotify_handle_event() and sys_rename()
Thread-Index: tqnb4eiY64pFDmxIvR21NuXkBZanjw==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.39]); Mon, 07 Aug 2017 13:52:49 +0000 (UTC)
Subject: Re: [oss-security] [CVE-2017-7533] kernel: inotify: a race between
 inotify_handle_event() and sys_rename()

Hello, John,

> > https://access.redhat.com/security/vulnerabilities/3112931
>
> I suspect there's nothing in this that's not repeated elsewhere, but
> that page says "Access Denied".

Indeed, this article is not published yet and we are (I am) working on it, it should be ready soon.
I've included the link to the article in the announce for the reference of future readers. You are
correct, the article mostly duplicates the announce and the only additional information is related
to the Red Hat's products, like advisories with the fix.

Best regards,
Vladis Dronov | Red Hat, Inc. | Product Security Engineer
