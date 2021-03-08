X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1507" "Monday" "8" "March" "2021" "15:35:38" "+0100" "Mauro Matteo Cascella" "mcascell@redhat.com" nil "39" "[oss-security] CVE-2021-20263 QEMU: virtiofsd: 'security.capabilities' is not dropped with xattrmap option" nil nil nil "3" nil nil (number mark "U       mcascell@red Mar  8   39/1507  " thread-indent "\"[oss-security] CVE-2021-20263 QEMU: virtiofsd: 'security.capabilities' is not dropped with xattrmap option\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-20263 QEMU: virtiofsd: 'security.capabilities' is not dropped with xattrmap option" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 8171 invoked by uid 550); 8 Mar 2021 15:37:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11331 invoked from network); 8 Mar 2021 14:36:13 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1615214161;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
	bh=lBZ0YfG7dbNb+AJWy3o7waFJqeIGEmaTboHw10r4JfI=;
	b=JNBS9SbMM45bygPkBgnxPxeV3dLoA41K7Q8ry1ineawk/ShBpn3ANtKRjwMbA/bddRsWvi
	nMVFquJcf/T68MtZT3UbAEIMhsTBnpJvf4XOckdXpc7gBCmZ19W3KK4jYZ6XCGVYGG76wK
	LjSVvEm/ao9aWwVkj+JxQvuguqoGBr4=
X-MC-Unique: CjPXjtvNPoW_kJD65bfA_w-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=lBZ0YfG7dbNb+AJWy3o7waFJqeIGEmaTboHw10r4JfI=;
        b=gLvuAvToIj38C739g7rKhoFo+CO4awwV5uNw7MOMTLfRpQy0kfLduwLL+iscYRfI1G
         RCNTYYdt/FZuvlXK+G89N1//dSlH9HxEhLmHOacrLvMRezHeKiI3HuuyjvUd2pGtW/dV
         fUPp4Y5yXk/42jDlRhwl5R+xRwlkomTn06P1usQmUbZUYvpu26MKE6+jSZZphTOtj52y
         nxjBzSP9rf/fhQ+79KDXbVhGr7GNqYwnUKBG7BiwXb9EeVd1vU+ddNjMZKcDJa+8pF8P
         a4y+GA5Cx1vCpEVckpBM5cOxRq8Heh2QXZFFtQNZgo4GsPi/LhflkWwpbdWByruBJe+A
         tkTw==
X-Gm-Message-State: AOAM5307iQ6xUxAfR5Y1uJE3Bqhzx1lkm/iYRF0b6Wuw0SmnA2FCgmQ5
	Z1WvP9XCHAwIRxKsyYWaUtSlznUDfJr0JMsEYKDzavxwKS2x1aWsam9eQVJguGBCIFWErCb6ffn
	pTSW/5IZ9JKm+SuNZ8zgeUJ6+mq0ZcxNIiso6B7I17Ifj
X-Received: by 2002:a17:906:fa04:: with SMTP id lo4mr15288288ejb.44.1615214149471;
        Mon, 08 Mar 2021 06:35:49 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwoZa0InsSXJOWSB0LR/5tb+YSfj5QTWDil6ronu+IAl9mF9cWyt8dAASbfAxelleP+8wPUYJu7Inn0akHVkpk=
X-Received: by 2002:a17:906:fa04:: with SMTP id lo4mr15288275ejb.44.1615214149315;
 Mon, 08 Mar 2021 06:35:49 -0800 (PST)
MIME-Version: 1.0
From: Mauro Matteo Cascella <mcascell@redhat.com>
Date: Mon, 8 Mar 2021 15:35:38 +0100
Message-ID: <CAA8xKjXLrzagaAMMSFBoFT=vgq4ksj8ZjCuFit1Hz-Mvot2vyA@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: "Dr. David Alan Gilbert" <dgilbert@redhat.com>
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=mcascell@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2021-20263 QEMU: virtiofsd: 'security.capabilities' is not
 dropped with xattrmap option

Hello,

A flaw was found in the virtio-fs shared file system daemon
(virtiofsd) of QEMU. Virtio-fs is meant to share a host file system
directory with a guest virtual machine. The new 'xattrmap' option may
cause the 'security.capability' xattr in the guest to not drop on file
write, potentially leading to a modified, privileged executable in the
guest. In rare circumstances, this flaw could be used by a malicious
user to elevate their privileges within the guest.

For the problem to happen virtiofsd needs to be running with '-o
xattr' and '-o xattrmap' (to enable and rename xattrs, respectively).
The problem only occurs if 'security.capability' is one of the xattrs
that's being renamed. Different caching modes cause different guest
behavior: '-o cache=none' makes the issue easy to reproduce. There's a
suspicion the flaw could be reproduced with the default option '-o
cache=auto' as well.

The impact of this flaw is limited by the fact that xattrmap is a
recent feature that's little used so far. Additionally, unprivileged
users shouldn't be granted write permission on privileged executables
in the first place.

Virtiofsd 'xattrmap' feature in QEMU 5.2:
https://gitlab.com/virtio-fs/qemu/-/commit/6084633dff3a05d6317

Upstream patch:
https://lists.gnu.org/archive/html/qemu-devel/2021-03/msg01244.html

This issue was reported by Dr. David Alan Gilbert (CC'd).

CVE-2021-20263 assigned by Red Hat, Inc.

Best regards.
-- 
Mauro Matteo Cascella
Red Hat Product Security
PGP-Key ID: BB3410B0

