X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1437" "Tuesday" "7" "April" "2020" "11:59:24" "+0530" "Hardik Vyas" "hvyas@redhat.com" nil "47" nil nil nil nil "4" nil nil (number mark "U       hvyas@redhat Apr  7   47/1437  " thread-indent "\"[oss-security] CVE-2020-1760 ceph: header-splitting in RGW GetObject has a possible XSS\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-1760 ceph: header-splitting in RGW GetObject has a possible XSS" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7754 invoked by uid 550); 7 Apr 2020 07:19:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17748 invoked from network); 7 Apr 2020 06:29:52 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1586240980;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=X77Ql8qQPH+aXiXmx613JIWGnkDrW12wgMIOgxDtyrA=;
	b=dUq8IAPV2QXtHTEAg+r9trcFVoQkmvoc49DR9c4DFH5Y/k2+/3wpvI6oh9Y6eDYywzDV97
	Bg7sHIWcXaa/0hTP3ZRexlFNXc/5NCuWz9O3uB4NEPRS0rbiMoYNKrdTdz7B/jgb5oxgSP
	dCHqdIwWKHZazNGVNmGq45GRrPzIrNg=
X-MC-Unique: q5RNjOFVPjqqY6a3EfZrtg-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=wNqsivPWRm7nLT6nRRj8W0HP3zrxtsyx/Fc3oPscXsk=;
        b=RbSSCy7zshFOvPp3kfJ8CtmCSG0qGhnUg5tE4IW/6IMriZyPb6z1YDPYCiAyCbTQMy
         B/E0DUtlBN6HJ0YlRQ5rt7cnf7iBYcn2av2rFeu1G+tlcehsajb6PoiueYCcP3XQJMxR
         PNcdx2kOUjjNXol71AkjzwogRCocYwS5fiuHkvxBWavdADSnVZKMRDshLNbIhYrbLtQa
         gnHBjoHlGwkgSJezWvuhmuHKuHNJq26wD2nAyJZFfU2v6dwHQ1QSGYOc1iG8dO8TmJIZ
         6PnfCW9khcajJBajp7gr2GZUrzeH7P0ItJhQ76uTlrycwy8P/OOCuUNrK1rRS1TUqn7z
         8Ibw==
X-Gm-Message-State: AGi0PuZK8fKh91AvyaSIT1UYnTy3cGG0Ht+7aw3ki8dsywvxoL+HZacR
	PhHjDjPiXSueybGpd1+q/ZbaOAj+pXN8QW5ApbB6vU4797m7K1IQCxEqnIspxwpfmOS0oCKfvCz
	pEKwDktL7kG9y2XcwzCOt8ygJlRc8N1tBO45JUUvr7Uf6
X-Received: by 2002:ac8:5508:: with SMTP id j8mr794727qtq.311.1586240975752;
        Mon, 06 Apr 2020 23:29:35 -0700 (PDT)
X-Google-Smtp-Source: APiQypKY+nZX1h96MCoipPyRUS7yE2fzmpc/Zyxiy7GKPRpe83orSCZYKUYZYHzaOSyLWELWCGgJ3lpGTd4eYrk76CY=
X-Received: by 2002:ac8:5508:: with SMTP id j8mr794714qtq.311.1586240975372;
 Mon, 06 Apr 2020 23:29:35 -0700 (PDT)
MIME-Version: 1.0
From: Hardik Vyas <hvyas@redhat.com>
Date: Tue, 7 Apr 2020 11:59:24 +0530
Message-ID: <CAOo2v=Df__0oyoGc+m5HUH-hcdcZOMwACVawe99X2M2jmVj0vQ@mail.gmail.com>
To: oss-security@lists.openwall.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="000000000000dd9ee105a2ad8110"
Subject: [oss-security] CVE-2020-1760 ceph: header-splitting in RGW GetObject has a possible XSS

--000000000000dd9ee105a2ad8110
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

A flaw was found in the Ceph Object Gateway, where it supports
unauthenticated requests sent by an anonymous
user in Amazon S3. This flaw could lead to potential XSS attacks due to the
lack of proper neutralization of
untrusted input. If the attacker knows the path to a publicly readable
object on any RGW cluster and the object
is at least large enough to cover the attack body then it's possible to run
an XSS on any object.

This flaw was introduced with commit
f4a0b2d9260a4523745875e3977a8a1ef9dc5e2e(Oct 9, 2012) and affects
all the way up to master. Red Hat has assigned CVE-2020-1760 for this issue.

Upstream Patches:

https://github.com/ceph/ceph-ci/commit/8aa1f77363ec32bdc57744a143035033291a=
b5e1
https://github.com/ceph/ceph-ci/commit/18eb4d918b27d362312c29a3bbd57a421897=
c0a5
https://github.com/ceph/ceph-ci/commit/1bf14094fec34770d2cc74317f4238ccb2df=
ef98

Credit:

- Initial report to DigitalOcean by William Bowling twitter handle
@wcbowling
- Further evaluation and extension to Robin H. Johnson @robbat2,
rjohnson@digitalocean.com

PS: The patches are currently available from ceph.git clone(ceph-ci) and
will be pushed to active releases soon.

Regards,
--=20

Hardik Vyas / Red Hat Product Security

BD48 C633 DE34 733A BBC3  3B72 8A14 AEBB D68B 9381

--000000000000dd9ee105a2ad8110--

