X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1598" "Friday" "26" "August" "2016" "15:32:07" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160826193207.933116C5275@smtpvmsrv1.mitre.org>" "37" "[oss-security] Re: CVE request -- linux kernel: Setting a POSIX ACL via setxattr doesn't clear the setgid bit" "^Cc:" nil nil "8" "2016082619:32:07" "[oss-security] Re: CVE request -- linux kernel: Setting a POSIX ACL via setxattr doesn't clear the setgid bit" (number mark "        cve-assign@m Aug 26   37/1598  " thread-indent "\"[oss-security] Re: CVE request -- linux kernel: Setting a POSIX ACL via setxattr doesn't clear the setgid bit\"\n") "<18071790.5699934.1472202311154.JavaMail.zimbra@redhat.com>" ("<18071790.5699934.1472202311154.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 18242 invoked by uid 550); 26 Aug 2016 19:32:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 18147 invoked from network); 26 Aug 2016 19:32:20 -0000
In-Reply-To: <18071790.5699934.1472202311154.JavaMail.zimbra@redhat.com>
Message-Id: <20160826193207.933116C5275@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Fri, 26 Aug 2016 15:32:07 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request -- linux kernel: Setting a POSIX ACL via setxattr doesn't clear the setgid bit
To: vdronov@redhat.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> http://www.spinics.net/lists/linux-fsdevel/msg98328.html
> http://marc.info/?l=linux-fsdevel&m=147162313630259&w=2
> https://bugzilla.redhat.com/show_bug.cgi?id=1368938
> 
> When file permissions are modified via chmod(2) and the user is not in
> the owning group or capable of CAP_FSETID, the setgid bit is cleared in
> inode_change_ok(). Setting a POSIX ACL via setxattr(2) sets the file
> permissions as well as the new ACL, but doesn't clear the setgid bit in
> a similar way; this allows to bypass the check in chmod(2).

Use CVE-2016-7097.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXwJjjAAoJEHb/MwWLVhi284YP/ihwFVoOjVLV9YP0yvlP/659
WSAvWtzaMIG6QuQvvJ5G9SdEhHTr7Jj1kvG0ro1pVKLHp7qjyJaKpGBTQHCcLJiP
Y90qISQr59A9ar25u7TuCEzsBxmIxgj474jk8PQQDG3AgekMfxyWYRFiowpzZW1i
oi4ruafp0pXwIj11iXtQH0fsyDfSZ19R9q7xCxm7P6aJKHT8OyJBcsvHmKunBodx
usfOWEPslskKWXkR5QPLVJdDmUaemDQTWqoVxUW3DjKBqda6YnmUWlV2DcQNpKxz
BOoak6kfSk9Oo8o37TGvFSqSRr5TEADZXQtIHSOpojK97AWY9MS1wDQI4Vw67Ift
626pc/Eg7eI/kSXuY+/v3XFK9P5Eml9xrciRyeQEQYbU3+jYNZ36QT0mSx/wniq4
Y9WsYw2r+FxQjj9F4Er3LEBKdGEv9Zz1B359/VvP747wIC9QYGI6X88PGxlFmp0I
zU/lSHz0K3hp/3tAjfs9LeGNZmjW6JJqfbX0EBReF1OL1UexbXrEZ2AYWuP6x0E9
UjrGrADbN/d6ZJljO2cgtGZURfiek3c8dFBrq44Brc4ZRs3zK5YbEORXbFd44gWM
PRJnTHnfb+FVMcPVmeWgobMDMGjzXB6JTceS8gS6+9SNdnYgKsMuQ7ZTmAEIG2zV
OmwRfyzqMNzGOiB7/ZS/
=9rZk
-----END PGP SIGNATURE-----
