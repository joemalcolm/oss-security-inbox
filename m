X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["789" "Friday" "19" "January" "2018" "11:40:09" "-0500" "Vladis Dronov" "vdronov@redhat.com" "<1505981632.2048745.1516380009804.JavaMail.zimbra@redhat.com>" "26" "[oss-security] CVE-2018-1049: systemd: automount: access to automounted volumes can lock up" nil nil nil "1" "2018011916:40:09" "[oss-security] CVE-2018-1049: systemd: automount: access to automounted volumes can lock up" (number mark "U       vdronov@redh Jan 19   26/789   " thread-indent "\"[oss-security] CVE-2018-1049: systemd: automount: access to automounted volumes can lock up\"\n") "<266996105.2048140.1516379803305.JavaMail.zimbra@redhat.com>" ("<266996105.2048140.1516379803305.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18295 invoked by uid 550); 19 Jan 2018 16:40:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18277 invoked from network); 19 Jan 2018 16:40:21 -0000
Date: Fri, 19 Jan 2018 11:40:09 -0500 (EST)
From: Vladis Dronov <vdronov@redhat.com>
To: oss-security@lists.openwall.com
Message-ID: <1505981632.2048745.1516380009804.JavaMail.zimbra@redhat.com>
In-Reply-To: <266996105.2048140.1516379803305.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.40.4.209, 10.4.195.15]
Thread-Topic: CVE-2018-1049: systemd: automount: access to automounted volumes can lock up
Thread-Index: ZCPxeO95ixI7NAc38GTBPUOOSE70yQ==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.25]); Fri, 19 Jan 2018 16:40:09 +0000 (UTC)
Subject: [oss-security] CVE-2018-1049: systemd: automount: access to automounted volumes
 can lock up

Heololo,

In systemd prior to v234 a race exists between .mount and .automount units such
that automount requests from kernel may not be serviced by systemd resulting in
kernel holding the mountpoint and any processes that try to use said mount will
hang. A race like this may lead to denial of service, until mount points are
unmounted. This race is easily reproducible.

References:

https://bugs.launchpad.net/ubuntu/+source/systemd/+bug/1709649

https://github.com/coreos/bugs/issues/1630

https://bugzilla.redhat.com/show_bug.cgi?id=1534701

An upstream issue:

https://github.com/systemd/systemd/pull/5916

An upstream patch:

https://github.com/systemd/systemd/commit/e7d54bf58789545a9eb0b3964233defa0b007318

Best regards,
Vladis Dronov | Red Hat, Inc. | Product Security Engineer
