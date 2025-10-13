Received: (qmail 32357 invoked by uid 550); 13 Oct 2025 17:23:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 17789 invoked from network); 13 Oct 2025 08:03:27 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi; s=lahtoruutu;
	t=1760342592;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=DytaniwoQ0Z72swygRjyyC9/WOIjFTND+H40vfj/uuY=;
	b=AHNtQ/+4yTIYUBy8j/rV6y/SI4mSNyz95xGA3kBvxFmUn1jjxztaUBx2+2RW8zRvt6aw8D
	YGFREULzyq0Azit6oKgURZIevnS8EpGJYZvxw1g6mxYEFB58pYqDozgoNsP+gD5YqrX0BQ
	95NLhqZzbWDfi19fcFGYjBEVQhY9KAQDAAyblVK5GQl2ebOyLu4DUilknSqJvkShQcRsa6
	nLFs5w6eXeUXHdyERtdJ74Uk+xKGJLAEjBZ9zG+449mMc5or42ZqbGx7Rqb39mcP/AzNaH
	6tqZc09iEC/b/C3P2OZRfu7r4MonPKlAA5iIvP91cT6NRGKeuiwxm/l8fuiVnQ==
ARC-Seal: i=1; s=lahtoruutu; d=iki.fi; t=1760342592; a=rsa-sha256;
	cv=none;
	b=eDT0JSIvfmkWEfpLbeun5QfgnQbo0Ao6BV6DFY1ziQt9AGTc2M4K6kIB8acf3isnd9Dys4
	q6rvPw0j9cctUbjGdIX+RbqW/NPtgulDOBAeymmdboB1TUDp5LeINvJfVxutOwyZTLc1vf
	+bDMZRCqh3uIApOOGKmgsWU+6kBACi77MqFtlPreXMX0hu2P/9iC1xdcJ1vLaDWDG/Iwrx
	onWgQHeWZ+EDYYcIR0IaQa5lB9eSejisr5NVt+3Yg8RsvjCtQOS9YfGWXiYLv6C859xIRV
	Np560f3eFuuhjPHkxp+raDhoi8+2EdabHUsSFBR6EFTcwhHG6yk15Dsqm29wFA==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=bbb smtp.mailfrom=bbb@iki.fi
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi;
	s=lahtoruutu; t=1760342592;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=DytaniwoQ0Z72swygRjyyC9/WOIjFTND+H40vfj/uuY=;
	b=gnYO52F34l+c3zbKUgzhJpy+ux/MgVlcL/Esb9DJUriuoCjQ5gSoLGvFxu/HNTFcXeZwKF
	1X02ELkHN2Fg8GklbDlW6jI7ia2esLnzfbgNo5YLfmOVuBFn/PFKNPRko0UtyOX6XQqAHk
	LudxXhviS95TmgLTDGGA+u4wmRMpnMdXPvzat3Jhv/skQJhKqxv9LypVvxvAVF8RV4Magi
	kwgivUg2BO9yzrfxqxyRjplhKMwamHNtqmiRp91QwCoFVcNpe2LJPXoyrsaQXw8zLqw6jE
	6GzLiCnn7OpmLlNRfsW/Aa1X6fuDVpO95cBAe9IyX63mdgFwq65cesmxeupdgQ==
Date: Mon, 13 Oct 2025 04:03:09 -0400 (EDT)
From: Billy Brumley <bbb@iki.fi>
To: oss-security@lists.openwall.com
Message-ID: <fd686bd9-d2a7-89f9-f438-7ed38e127591@iki.fi>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256; boundary="1757367822-55284450-1760342591=:25770"
Subject: [oss-security] BoringSSL private key loading is not constant time

--1757367822-55284450-1760342591=:25770
Content-Type: text/plain; format=flowed; charset=US-ASCII

Howdy Folks,

I spoke at the OpenSSL Conference in Prague last week, where I stepped 
through the following demo I wrote

https://gitlab.com/platsec/boringssl-keyload-vuln

This was on BoringSSL main HEAD. (At the time, at least.)

Here "constant time" is in the cryptographic sense. Time to load a private 
key should not depend on bits of said key taking certain values, yet it 
does in BoringSSL's implementation. Constant-time crypto code seems to be 
important to BoringSSL / Google.

I'm providing this information (and PoC) to the community in the spirit of 
transparency.

Cheers,

BBB

-- 
Dr. Billy B. Brumley, D.Sc. (Tech.)
Director of Research, ESL Global Cybersecurity Institute (GCI)
Kevin O'Sullivan Endowed Professor, Department of Cybersecurity (CSEC)
Director, Platform Security Laboratory (PLATSEC)
Rochester Institute of Technology
Cybersecurity Hall 70-1770
100 Lomb Memorial Drive
Rochester, NY, 14623-5608, USA
S/MIME public key: https://people.rit.edu/bbbics/bbbics@rit.edu.crt
S/MIME public key: https://people.rit.edu/bbbics/bbb@iki.fi.crt
https://www.rit.edu/directory/bbbics-billy-brumley
https://www.rit.edu/cybersecurity/
--1757367822-55284450-1760342591=:25770
Content-Type: application/pkcs7-signature; name=smime.p7s
Content-Transfer-Encoding: BASE64
Content-Description: S/MIME Cryptographic Signature
Content-Disposition: attachment; filename=smime.p7s

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

--1757367822-55284450-1760342591=:25770--

