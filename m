X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["747" "Tuesday" "21" "April" "2020" "17:41:42" "+0000" "jellicent@protonmail.com" "jellicent@protonmail.com" "<RrVCUf0UYM4S99v51o8A6lAatx04FP2OR23b5CU8yUASHP5KYo_uzDUGevjvZdhYY8QxFFH190BQOw-r2TG7neN7NOkiAyixvsVOzwCpcs8=@protonmail.com>" "13" "Re: [oss-security] Pacman package manager - taking untrusted input" nil nil nil "4" "2020042117:41:42" "[oss-security] Pacman package manager - taking untrusted input" (number mark "U       jellicent@pr Apr 21   13/747   " thread-indent "\"Re: [oss-security] Pacman package manager - taking untrusted input\"\n") "<5b8fe86a-56e8-715a-1f0d-a4961e516fc2@aminvakil.com>" ("<HVOfwapPoUpExeEC6pUVJFD81vMaCFIGaNo0Uodnx5Sk40Z5SD2JmPGp-IWcmnvIX1Qswb0Kif33n0bqakSLFndsMqYgjY4lTVIRwN_MSfw=@protonmail.com>" "<5b8fe86a-56e8-715a-1f0d-a4961e516fc2@aminvakil.com>") nil nil nil nil nil nil nil "Re: [oss-security] Pacman package manager - taking untrusted input" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19529 invoked by uid 550); 21 Apr 2020 17:43:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17782 invoked from network); 21 Apr 2020 17:41:58 -0000
Date: Tue, 21 Apr 2020 17:41:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail; t=1587490906;
	bh=KWh5dZPrVZkAyra28p9cBKyQBkLNvd9kHQolqpOca4E=;
	h=Date:To:From:Cc:Reply-To:Subject:In-Reply-To:References:From;
	b=Zy7xl+hc0XIMfT/EEuYv1JJ5u8I/Z3DAWYi/033rtEMkNwTHfneHifRVuoR3rJ4Ff
	 3LXmylnMH92r5BJRLW6am0HvC1AQVnJHtzddO775RWRGqBe/dvfp8X9k2Nm7Ulc1jR
	 XSFOydfXBO7plZdHCQnZ7oJUX/SfCyS4SSVpioyU=
To: "info@aminvakil.com" <info@aminvakil.com>
From: "jellicent@protonmail.com" <jellicent@protonmail.com>
Cc: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Message-ID: <RrVCUf0UYM4S99v51o8A6lAatx04FP2OR23b5CU8yUASHP5KYo_uzDUGevjvZdhYY8QxFFH190BQOw-r2TG7neN7NOkiAyixvsVOzwCpcs8=@protonmail.com>
In-Reply-To: <5b8fe86a-56e8-715a-1f0d-a4961e516fc2@aminvakil.com>
References: <HVOfwapPoUpExeEC6pUVJFD81vMaCFIGaNo0Uodnx5Sk40Z5SD2JmPGp-IWcmnvIX1Qswb0Kif33n0bqakSLFndsMqYgjY4lTVIRwN_MSfw=@protonmail.com>
 <5b8fe86a-56e8-715a-1f0d-a4961e516fc2@aminvakil.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] Pacman package manager - taking untrusted input

On Tuesday, April 21, 2020 5:21 PM, Amin Vakil <info@aminvakil.com> wrote:
> Although this is something that can be fixed, it's not a critical
> security issue at all, in all scenarios that has been written if
> database is compromised, the best (worst) thing that malicious actor can
> do is stopping user from installing packages, because he can't create a
> verified gpg signed package which is mandatory for pacman to allow
> installation of the package.

This is incorrect. An attacker need only find a bug in how Pacman does
parsing/reading of the database file to potentially get code execution
on the box as root. See Pacman's CVE history for at least one example
of this. The problem happens before any package signatures come into
play.
