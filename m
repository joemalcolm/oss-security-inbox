Received: (qmail 28025 invoked by uid 550); 6 Aug 2024 17:24:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1079 invoked from network); 6 Aug 2024 16:44:02 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1722962634;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=2z1m9N9sjcY5v9K6mG+w+v3V68ZRsCBeb46bHS5BmAI=;
	b=Cp26bhb97t8uYBqImJLLytS3VslAHybIDVlYVHrqROHAJ9212J4G2mxrJHHVLkbODaKWwm
	bK/zWJv/3NabLFizqN8JDjdZtYCXo85c6NBxtifcf0szuAygKF0sfFhHvX1dnU5SoBsClA
	idZdJHPa3V38tKcpptaBrvoXc/b4YKM=
X-MC-Unique: yRokFe-YP_qL1OtjMhne4w-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722962631; x=1723567431;
        h=message-id:in-reply-to:to:references:date:subject:mime-version
         :content-transfer-encoding:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GE6SMB5hwmusGEickmsChcpzPZ2KDi+w1PHXWwKnlnM=;
        b=DAmsiLvnBv9nn465pIkcFle8ORNzhDWcG2dm6AcsBFDYI3crZPVim9EUvWsTCXyze4
         2u/00y11Wd1du0b1jj+CP2f1di6tCYmtNk9zzGJqUfe22CMh6UA8+yakVonhTpXwqNf8
         iItPupBmVySkx8CD5xmnAvwqQ31AOfs1u0t95Um7XpGuCNAkKfUHupFub6s1xRnfAAlg
         W6C0RLLZJPSqtfuPuJp9VCBHK6a1TJ+aag0SUvLuQOGCjxHQw1NPCnoJt43C+lRvnrIl
         oCv9uboU51k4hQgh7E1J86SjxwccX6UVoOB1jWCnoVMRzLIbW89pj4JcKArsAf5RgnH7
         +y3w==
X-Gm-Message-State: AOJu0YzpB6fzj7WBN0ovouxGCD3WXIPl5PFVVdcp6pCzdAzor7oVE4el
	ON5+oOqGCOd/uqRfwnRoXGRq0UNv1yup1vGUPviRjnsyXa8tdYPuJ4v7Jyv627G680SxjgqBmRU
	KMIJEr9a/oupq5BXPaKZ/Paiwl4aD7iE61m6bFmS62eFH/r0o4D/bAq/54EldEYFw0FolloAS7/
	7h2Xam8viRMyBOWo1SDkSqTJsZnuvXXTv02rOoQcxZC6f8+fTh5w==
X-Received: by 2002:adf:f546:0:b0:36b:b24b:d169 with SMTP id ffacd0b85a97d-36bbc12e00cmr10420854f8f.32.1722962631382;
        Tue, 06 Aug 2024 09:43:51 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEKsEQks4T2Nj/CLCPbjxcAQ5GHIwnTuY3ATWGfpiAOjQXgsmiR3nyMHaGiUvI40usm7s/Yaw==
X-Received: by 2002:adf:f546:0:b0:36b:b24b:d169 with SMTP id ffacd0b85a97d-36bbc12e00cmr10420837f8f.32.1722962630728;
        Tue, 06 Aug 2024 09:43:50 -0700 (PDT)
From: Clemens Lang <cllang@redhat.com>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3774.600.62\))
Date: Tue, 6 Aug 2024 18:43:39 +0200
References: <CAJbOq16ebWS21u439bcV764HhaeQHF+eO64LdMAAKFgjdDLrMg@mail.gmail.com>
To: oss-security@lists.openwall.com
In-Reply-To: <CAJbOq16ebWS21u439bcV764HhaeQHF+eO64LdMAAKFgjdDLrMg@mail.gmail.com>
Message-Id: <F4B7535D-158F-441D-BB5B-D48C6A2A4EE9@redhat.com>
X-Mailer: Apple Mail (2.3774.600.62)
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] feedback requested regarding deprecation of TLS
 1.0/1.1

Hi Neil,

> On 6. Aug 2024, at 11:02, Neil Horman <nhorman@openssl.org> wrote:
>=20
> 1) Are distributions/users comfortable with this approach in the time fra=
me
> proposed?

I don=E2=80=99t think this will be a problem for Fedora, CentOS Stream, and=
 RHEL.
They mostly disable TLS <1.2 without a simple way to bring it back already.


> 2) Would builders of OpenSSL consider using the default configuration (wi=
th
> TLS1.0/1.1 disabled in 4.0), or would they ship with these protocols
> re-enabled in their builds?

I would strongly argue for keeping those disabled in Fedora. It=E2=80=99s a=
lready not simple to re-enabled them in CentOS Stream or RHEL.


> 3) If the deprecated protocols are re-enabled, what would constitute a
> reasonable warning mechanism to inform users that these protocols are goi=
ng
> away at some point in the future to pressure users to update to a newer,
> more secure protocol?

I believe the best you can do as a library is what you are already doing: D=
isabling by default, and possibly marking any TLS-1.0/1.1-specific APIs dep=
recated.

Logging to stderr from a library is out of the question. Logging to syslog =
can fail due to SELinux on distros that have it.

The only other good solution we=E2=80=99ve come up with is to add a USDT pr=
obe point to deprecated code paths and provide a utility for users to run o=
n their system that will highlight any use of these code paths. That=E2=80=
=99s Linux-specific, and most users won=E2=80=99t run such a tool, though.


HTH,
Clemens

--=20
Clemens Lang
RHEL Crypto Team
Red Hat


