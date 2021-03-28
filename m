X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["344" "Sunday" "28" "March" "2021" "21:31:59" "+0200" "Jeroen Roovers" "jer@xs4all.nl" nil "12" "Re: [oss-security] OpenSSL 1.1.1 CVE-2021-3450 CA certificate check bypass with X509_V_FLAG_X509_STRICT, CVE-2021-3449 NULL pointer deref in signature_algorithms processing" nil nil nil "3" nil nil (number mark "U       jer@xs4all.n Mar 28   12/344   " thread-indent "\"Re: [oss-security] OpenSSL 1.1.1 CVE-2021-3450 CA certificate check bypass with X509_V_FLAG_X509_STRICT, CVE-2021-3449 NULL pointer deref in signature_algorithms processing\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] OpenSSL 1.1.1 CVE-2021-3450 CA certificate check bypass with X509_V_FLAG_X509_STRICT, CVE-2021-3449 NULL pointer deref in signature_algorithms processing" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24501 invoked by uid 550); 28 Mar 2021 19:52:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32557 invoked from network); 28 Mar 2021 19:32:15 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s2;
	t=1616959923; bh=fGOgmX666sAitVNXNrcBc8nJudVucqwb9BsJEizDXtU=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type:From:
	 Subject;
	b=kPUc2RSAw/KkSC56C/WdP/02MclzOlmuAlSI5ipZqgROGtam/CbgD2OT/fLgqErXT
	 MalxwqevhN26OBJ3p6XKVKTt5Wl40JkcVZ/KEWMwvMWQFOBv6kj3wjMqFzkHdVTqAM
	 WY00fZUy54/ZrUs0e1mZk/JNFRyENI887dRj1ONKaGJMmazaLI25rYqMTUtNmg7tod
	 mSy5OS6WHGQtaPemzQp/mvKlKOVea5fgyuXHZyN9xNTHRzpIKHL4BIVmOyfWfB4839
	 p0aYp/HbwCJE3YnpAZxu9I2bFvr38SWRJ5hLW/TyteOayNs55G/PPj5+T0Q59AWl/2
	 GZvRmqAftM18A==
Date: Sun, 28 Mar 2021 21:31:59 +0200
From: Jeroen Roovers <jer@xs4all.nl>
To: Mark J Cox <mark@openssl.org>
Cc: oss-security@lists.openwall.com
Message-ID: <20210328213159.1957204a@wim.jer>
In-Reply-To: <CABU6YOakUYGG7UAbUe0kZ5j5QfM2x9NytNzri8m4Ei0LaJRXeg@mail.gmail.com>
References: <20210327180255.GA12647@openwall.com>
	<CANnUo4LFUr3Ou8ofA8saEn9TASDvASQvk8-grg3gQSuwqYaFoA@mail.gmail.com>
	<CABU6YOakUYGG7UAbUe0kZ5j5QfM2x9NytNzri8m4Ei0LaJRXeg@mail.gmail.com>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-CMAE-Envelope: MS4xfPKCajUkpHhVRnXzTKLL9UD8yxp4rGRV+3b3AcNuReRt6nk5SwNp0995VndivkbRhiywTPlin6bDpVtZ65MjLZueXExfef1AhDwyIJ/OU6BS/FlhCt+I
 X9gaZcFpjkvnJ1sRv5zx9KRFWXHK/ddzAIYzwcsYcx8pyY/atG2rzMWm47H9L9OerX70+tMxHS/VCnRdltLTFLYyYXxUH5Bxn4E=
Subject: Re: [oss-security] OpenSSL 1.1.1 CVE-2021-3450 CA certificate check
 bypass with X509_V_FLAG_X509_STRICT, CVE-2021-3449 NULL pointer deref in
 signature_algorithms processing

On Sun, 28 Mar 2021 18:35:29 +0000
Mark J Cox <mark@openssl.org> wrote:

> Usually that process of waiting for responses takes an extra trip
> around the sun due to timezones

Surely you meant to indicate a day (approximately one full rotation of
the Earth) here and not a year (one orbit of the Earth around the Sun).


Kind regards,
     jer
