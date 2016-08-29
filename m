X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1349" "Monday" "29" "August" "2016" "04:33:39" "-0400" "Vladis Dronov" "vdronov@redhat.com" "<217636066.6300862.1472459619099.JavaMail.zimbra@redhat.com>" "37" "Re: [oss-security] CVE request -- linux kernel: Setting a POSIX ACL via setxattr doesn't clear the setgid bit" "^Cc:" nil nil "8" "2016082908:33:39" "[oss-security] CVE request -- linux kernel: Setting a POSIX ACL via setxattr doesn't clear the setgid bit" (number mark "        vdronov@redh Aug 29   37/1349  " thread-indent "\"Re: [oss-security] CVE request -- linux kernel: Setting a POSIX ACL via setxattr doesn't clear the setgid bit\"\n") "<201608271220.u7RCK1Dr005804@int-mx13.intmail.prod.int.phx2.redhat.com>" ("<183593889.43262406.1459342377531.JavaMail.zimbra@redhat.com>" "<18071790.5699934.1472202311154.JavaMail.zimbra@redhat.com>" "<201608271220.u7RCK1Dr005804@int-mx13.intmail.prod.int.phx2.redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 16156 invoked by uid 550); 29 Aug 2016 08:55:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3639 invoked from network); 29 Aug 2016 08:34:04 -0000
Message-ID: <217636066.6300862.1472459619099.JavaMail.zimbra@redhat.com>
In-Reply-To: <201608271220.u7RCK1Dr005804@int-mx13.intmail.prod.int.phx2.redhat.com>
References: <183593889.43262406.1459342377531.JavaMail.zimbra@redhat.com> <18071790.5699934.1472202311154.JavaMail.zimbra@redhat.com> <201608271220.u7RCK1Dr005804@int-mx13.intmail.prod.int.phx2.redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.40.0.182]
X-Mailer: Zimbra 8.0.6_GA_5922 (ZimbraWebClient - FF48 (Linux)/8.0.6_GA_5922)
Thread-Topic: CVE request -- linux kernel: Setting a POSIX ACL via setxattr doesn't clear the setgid bit
Thread-Index: BlCAxfZxE0RER3Y0nhcx/GimctXyEQ==
Cc: oss-security@lists.openwall.com
Date: Mon, 29 Aug 2016 04:33:39 -0400 (EDT)
From: Vladis Dronov <vdronov@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE request -- linux kernel: Setting a POSIX ACL
 via setxattr doesn't clear the setgid bit
To: me@halfdog.net

Hello,
 
Honestly, I do not see a relation between this patch and overlays. The patch
touches the code of underlying filesystems. So, most probably, upperdir ACL
issue is not fixed by this suggested patch.

Best regards,
Vladis Dronov | Red Hat, Inc. | Product Security Engineer


----- Original Message -----
From: me@halfdog.net
To: oss-security@lists.openwall.com, "Vladis Dronov" <vdronov@redhat.com>
Sent: Saturday, August 27, 2016 1:24:47 PM
Subject: Re: [oss-security] CVE request -- linux kernel: Setting a POSIX ACL via setxattr doesn't clear the setgid bit

Vladis Dronov writes:
> Hello,
>
> We would like to ask for a CVE-ID for the following securuty flaw.
>
> When file permissions are modified via chmod(2) and the user is not in
> the owning group or capable of CAP_FSETID, the setgid bit is cleared in
> inode_change_ok().  Setting a POSIX ACL via setxattr(2) sets the file
> permissions as well as the new ACL, but doesn't clear the setgid bit in
> a similar way; this allows to bypass the check in chmod(2).
> ...

Does this also fix the upperdir ACL access gain from
http://www.halfdog.net/Security/2016/UserNamespaceOverlayfsXattrSetgidPrivilegeEscalation/
?

The overlayfs upperdir part is already fixed, so the one would
have to execute replacement commands for the steps already prohibited
by the userns/overlayfs fixes.

hd
