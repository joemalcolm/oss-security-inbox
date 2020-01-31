X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1062" "Saturday" "1" "February" "2020" "01:17:26" "+0530" "Hardik Vyas" "hvyas@redhat.com" "<CAOo2v=A-zfgSrFy73_XMGxV4FbV_fv3Ptj_JdWa3W6U=iowWsA@mail.gmail.com>" "36" "[oss-security] CVE-2020-1700 ceph: connection leak in the RGW Beast front-end permits a DoS against the RGW server" "^Date:" nil nil "2" "2020013119:47:26" "[oss-security] CVE-2020-1700 ceph: connection leak in the RGW Beast front-end permits a DoS against the RGW server" (number mark "        hvyas@redhat Feb  1   36/1062  " thread-indent "\"[oss-security] CVE-2020-1700 ceph: connection leak in the RGW Beast front-end permits a DoS against the RGW server\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-1700 ceph: connection leak in the RGW Beast front-end permits a DoS against the RGW server" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26392 invoked by uid 550); 31 Jan 2020 23:08:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24481 invoked from network); 31 Jan 2020 19:47:55 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1580500063;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=jIgplJu5lqYPXKkdVcnQZArMteVGRWCRxfCOPDYSfHA=;
	b=Wlkmew2X60NRdLx3sheXe1bZoXdUYq2RHM8abKGlTFmYk6cvDNKb0PCA+7z48xCBbiej8H
	7Erec4Nolgclp4ssoQt6zJDMG2BKrS1LVvruanZn3rNhwUA5Ba4SxT4q6FAz4S8gISALeG
	PCdnFaSajcNPMYAZ/xrIMMDd8X0L+es=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=nWIbKyrEs5aK7DG4FI0BNzwkE7n/zm2uW1rKeuGFxRo=;
        b=QVHx/NR9s/zygU3vw78oX88zz1zRxfvo/5444DSfDaYwfgNvr/iUXquBlO0bjBIi5+
         mmlGR5/KZ0YB3c0SacFFIDW5qF1gywVwRG/Dp1YwktXUTBFjqR4knkweg73KuIFzhs17
         Jaa84AP0FWOsbdpIBbet00jzlofak85LR0xS3Z09h9j9aywSGD7W+OgKVGuNt2jtl24R
         Lrxn9e+lwUkgJcKaRZE/jcEIoIA7j0rY7xb7Znf9vaUaPLt/I2Yw19Ntf77x8p0SDXVr
         HMWUuZHh6oZ5RV5mEFge/w89X/Ay39SPgDcRiLysns7/ryvVl6cFAFTTDI4yNRGDZ447
         29Lw==
X-Gm-Message-State: APjAAAUdaALz4Lc+DT6F9xL5zD/2xeayTxwxTK9wviMm7/fK83vmexPQ
	TeAhNgnWT91hku9V5MQWe2YoXlty/lcN2phk4oChVTv8kybD22dCP0YV4blJUyS1oFPcAsExCUr
	BbsBTk21OE+pvu2h/LCBBSJChV0DavrV5gondswT5FE+r
X-Received: by 2002:ae9:c205:: with SMTP id j5mr11834399qkg.58.1580500058148;
        Fri, 31 Jan 2020 11:47:38 -0800 (PST)
X-Google-Smtp-Source: APXvYqzlTsHifPtiPbS2d+axSlwQubmS3mereYIWKfokkcKOgIJf8IlHaKKLx6rQmJmWjUJwy4Q7O7a0epUBo5hVZZw=
X-Received: by 2002:ae9:c205:: with SMTP id j5mr11834370qkg.58.1580500057740;
 Fri, 31 Jan 2020 11:47:37 -0800 (PST)
MIME-Version: 1.0
Message-ID: <CAOo2v=A-zfgSrFy73_XMGxV4FbV_fv3Ptj_JdWa3W6U=iowWsA@mail.gmail.com>
X-MC-Unique: ryarjj2YNg22v65W9kZtZQ-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="000000000000826e0b059d74d885"
Date: Sat, 1 Feb 2020 01:17:26 +0530
From: Hardik Vyas <hvyas@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2020-1700 ceph: connection leak in the RGW Beast front-end
 permits a DoS against the RGW server
To: oss-security@lists.openwall.com

--000000000000826e0b059d74d885
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

A flaw was found in the way the Ceph RGW Beast front-end handles unexpected
disconnects.
An authenticated attacker can abuse this flaw by making multiple disconnect
attempts resulting
in a permanent leak of a socket connection by radosgw. This flaw could lead
to a denial of service
condition by pile up of CLOSE_WAIT sockets, eventually leading to the
exhaustion of available
resources, preventing legitimate users from connecting to the system.

This flaw affects Nautilus based versions. If Beast front end is in use,
switch to CivetWeb to mitigate
the issue. Red Hat has assigned CVE-2020-1700 and rated as Moderate impact
flaw.

PR: https://github.com/ceph/ceph/pull/33017
Patch:
https://github.com/ceph/ceph/commit/ff72c50a2c43c57aead933eb4903ad1ca6d1748a

Credit: Or Friedmann(Red Hat)

Regards,
--=20

Hardik Vyas / Red Hat Product Security

BD48 C633 DE34 733A BBC3  3B72 8A14 AEBB D68B 9381

--000000000000826e0b059d74d885--

