Received: (qmail 7247 invoked by uid 550); 18 Oct 2023 19:31:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7226 invoked from network); 18 Oct 2023 19:31:06 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=orlitzky.com; s=mail2;
	t=1697657454; bh=Wh5pqs/1HKU2yU8HRHvZanhy2zr2krxl/LfJiNRjeAs=;
	h=Subject:From:To:Date:In-Reply-To:References;
	b=TanyMBq7Zy7lFO6FTP24uv4G2uYi25pDy8UEUtuWpJCpDf8VE+n/IogL+vSp7RZ9x
	 iYOaxcHhA6TV8GdBF1B+PkdR+t5DFsH58AaVuGF7suSUoFtLEKbjVsC8vCF+UhYbP2
	 k/8rPbsnpjVYlbnLN7l43aXOjBrieVbK7hCy1HPs=
Message-ID: <693e917eaca0983293396d084c7cf2f44525a7a5.camel@orlitzky.com>
From: Michael Orlitzky <michael@orlitzky.com>
To: oss-security@lists.openwall.com
Date: Wed, 18 Oct 2023 15:30:51 -0400
In-Reply-To: <bb8d7948-912c-0c96-6a7e-2f05a4cabfd0@tnetconsulting.net>
References: <e5dc2cc159fa7e7f287e10482366011e.f0e92af0@rotted.prefixed>
	 <bb8d7948-912c-0c96-6a7e-2f05a4cabfd0@tnetconsulting.net>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.4 
MIME-Version: 1.0
Subject: Re: [oss-security] with firefox on X11, any page can pastejack you
 anytime

On Wed, 2023-10-18 at 13:25 -0500, Grant Taylor wrote:
>=20
> It probably applies to a lot more than that.  I suspect that anything=20
> that can run 3rd party code can do the same thing.

That's the crux of it but I don't think it frees Firefox from
responsibility. Despite the premise being contrary to common sense and
fifty years of evidence, Firefox promises to sandbox all of the bad
things that untrusted third-party code might do to you.

Are there any other programs that run third-party code by default and
are not considered vulnerabilities?

