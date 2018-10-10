X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1559" "Wednesday" "10" "October" "2018" "13:13:41" "-0400" "Leo Famulari" "leo@famulari.name" "<20181010171341.GA1223@jasmine.lan>" "38" "Re: [oss-security] ghostscript: bypassing executeonly to escape -dSAFER sandbox (CVE-2018-17961)" "^Cc:" nil nil "10" "2018101017:13:41" "[oss-security] ghostscript: bypassing executeonly to escape -dSAFER sandbox (CVE-2018-17961)" (number mark "        leo@famulari Oct 10   38/1559  " thread-indent "\"Re: [oss-security] ghostscript: bypassing executeonly to escape -dSAFER sandbox (CVE-2018-17961)\"\n") "<CAJ_zFk+nnBgWaDNKgvLnVjp4rz3SttBQvjCCXjiqC71rV6bBrA@mail.gmail.com>" ("<CAJ_zFk+nnBgWaDNKgvLnVjp4rz3SttBQvjCCXjiqC71rV6bBrA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 10077 invoked by uid 550); 10 Oct 2018 17:17:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7762 invoked from network); 10 Oct 2018 17:14:00 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=famulari.name;
	 h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:in-reply-to; s=mesmtp; bh=fxKAMDITZ1ii8EPCsL6hakdL
	bhb9gPfeaahrCV60XJc=; b=toKxZVMbk3WVfZk1bSD/sGzdDKnbMJrq5SRAyPos
	D9WC217kzrBtwztsrv9r4WbnqLBlz/WALuq0iL0AnnDDRX+/R7wfz5rGdvm8iB3R
	Hrx/rLnsXBi57tUcKAwPzH6rUxSWTw4F7iyeRWF5eoHU9mX6xjlupisEDrCTgGD+
	tsQ=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=fxKAMD
	ITZ1ii8EPCsL6hakdLbhb9gPfeaahrCV60XJc=; b=KThTZHHj2iVWrsvgeDWrOz
	Zt2/ltDonn3oSzMxQSk/riiPCInfn4SSKIrEzTTrhS0zyi9/tMIu+LdenanaiXH6
	qFFP7/mi02DDJI3ZjghIEa4d7MP6zgDqyVl9xBIntMotiwgyT9v1ZD7FssX66/V4
	sigp/iFHEyCLRQeYcgyGR6Mog0JDjO8VuPIusDj4oTJ6KNsLEts6lePOxHEONf4U
	5jE8Dr035IrImFjJpHrTtMeUY28AeQNCrVQOTy5VfTQa+Bhg4VQ0JLlD5btMPdU/
	eNEOKqTANbF40z0eE0609cxZnWRobfXqnFjviH/jQk60Ms5HmJv3Ndt7urPJO2Ew
	==
X-ME-Sender: <xms:RzO-W_YlVR5SrOgyyg3rlf6LHe23mXDO-cq95Q5coMz2nktUfjmt4g>
X-ME-Proxy: <xmx:RzO-W-F5EQJG__OR_dNUGWp4A4iGZdT8W7vWlmYBx4led5hTp5ktIw>
    <xmx:RzO-W6Qu9Yjj2ndzN7x0KI91zWfVvfXepjelDy7bclcjzL1iD6z5fw>
    <xmx:RzO-W43QAylXDoywoYBYCTI_qL0z-yOYwRhfxBaxiAcCIicm9HqX8A>
    <xmx:RzO-WxDW4UCgv4SjvIsQpa41ZD3ci0VgYkJvLtURmP5wH71HZtoK1g>
    <xmx:RzO-W3rCYpe50Mo-RzXPzyXpUtRGlWUHM4vaGES3d3r6DGsOsFVeww>
    <xmx:STO-W3khfJkjEf3cV6n-5wNa--OeLLtY2TM8KRgGParhQdWoCn0VsA>
Message-ID: <20181010171341.GA1223@jasmine.lan>
References: <CAJ_zFk+nnBgWaDNKgvLnVjp4rz3SttBQvjCCXjiqC71rV6bBrA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="tKW2IUtsqtDRztdT"
Content-Disposition: inline
In-Reply-To: <CAJ_zFk+nnBgWaDNKgvLnVjp4rz3SttBQvjCCXjiqC71rV6bBrA@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Cc: oss-security@lists.openwall.com
Date: Wed, 10 Oct 2018 13:13:41 -0400
From: Leo Famulari <leo@famulari.name>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] ghostscript: bypassing executeonly to escape
 -dSAFER sandbox (CVE-2018-17961)
To: Tavis Ormandy <taviso@google.com>

--tKW2IUtsqtDRztdT
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 09, 2018 at 06:58:39AM -0700, Tavis Ormandy wrote:
> The fix is public now, here are the necessary commit:
>=20
> http://git.ghostscript.com/?p=3Dghostpdl.git;a=3Dcommitdiff;h=3Da54c9e61e=
7d0
> http://git.ghostscript.com/?p=3Dghostpdl.git;a=3Dcommitdiff;h=3Da6807394b=
d94

Thanks. Does anyone have a patch or patch series that applies to a
released version of Ghostscript? It's difficult to figure out how to
safely adapt these patches to either Ghostscript 9.24 or 9.25.

--tKW2IUtsqtDRztdT
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEsFFZSPHn08G5gDigJkb6MLrKfwgFAlu+M0IACgkQJkb6MLrK
fwjxXhAA1uKP0ZDHTbw87R8CIFvg6TKixzEKvyGoHB0SOwg+wBZB8B8AJdMRZZo4
hw3y2GAG591wKHQIa1/t6ycgbegf06n/dbWovlIGBn9sV+9lutXQ60J/uqJzktqQ
OotZXHSjCtebFBptKFSXgL55zxGtyy53zbKt4opLZRsUnWe+ha9OtB8ltNp1B0Kn
MQ8BHat35KIpdI4+/UaxvwJ0jwCnjEwoA8SHd+UXjdOkNlt0Hq5nTZ9t6UbZ6kNL
lgw2/oNfB4ube6N7FZXzM2c2FrpOAXkLiq1U6yP3eZT2VB7bfCMcO781yYKl1rMT
KYP+TDQcCW3Y8gr+AbnxqrlqfB9m6Gt+gqmLQqCZwuGWYSHFwK0nWadWD02dh5h+
hMv9rpBfVj1xg6G2HUOjZukGpp47ncokhHYSY0ipTZGfwWPiRLeWds4kh2G7+80k
Vcy4O95qYpI8zMVX9uZc3+BXPYBEeDVLDbXxOxDi/wvoVPq4XgIRkl0Dw1ZVNcDG
BAS6CUh/Ld+jTi9+8MO67KQLVkeVqcvxuxowoJ3aY9sUVPEtYYmij0020k8Xxmqq
UQpldEu2PlZQ6hfbE9MB9tBAtGHdrNDTlIc0f5bk+e6CB64H91GflBqR7+FjAJkq
2W9h9hEKox35WzxXdKTmCM3HxkxecfIObvue7TVZsR8OAa+FYjE=
=g62V
-----END PGP SIGNATURE-----

--tKW2IUtsqtDRztdT--
