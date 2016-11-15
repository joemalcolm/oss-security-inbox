X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1354" "Monday" "14" "November" "2016" "22:27:07" "-0500" "Leo Famulari" "leo@famulari.name" "<20161115032707.GA5104@jasmine>" "43" "Re: [oss-security] CVE-2016-4484: - Cryptsetup Initrd root Shell" nil nil nil "11" "2016111503:27:07" "[oss-security] CVE-2016-4484: - Cryptsetup Initrd root Shell" (number mark "U       leo@famulari Nov 14   43/1354  " thread-indent "\"Re: [oss-security] CVE-2016-4484: - Cryptsetup Initrd root Shell\"\n") "<88958a9e-25c1-97ce-1800-bc4bff93d9a9@hmarco.org>" ("<88958a9e-25c1-97ce-1800-bc4bff93d9a9@hmarco.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15420 invoked by uid 550); 15 Nov 2016 04:07:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24246 invoked from network); 15 Nov 2016 03:27:21 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=famulari.name; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to:x-me-sender:x-me-sender:x-sasl-enc
	:x-sasl-enc; s=mesmtp; bh=x/43VSc8RmLqHmX6FLN6/8O6Scs=; b=uaeWQ+
	fbbdcAdmSE8Nde/2PNaEufMOo3K3I24td1wvqcmm/bypCP9j8iK6h0pTcnxMQSnk
	K9WTuRih+CKptNlC2l115UKeMoEh7AkcPv6QKkXj+VEJEB3YEyiz6RVELciNkde1
	TDzP9gvQpWI9Se4K1x1NCsvHzHBATXnlbDEMs=
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-sender
	:x-me-sender:x-sasl-enc:x-sasl-enc; s=smtpout; bh=x/43VSc8RmLqHm
	X6FLN6/8O6Scs=; b=UlXR5T2SMx0MiIiZiVL/5pZrCcrLGtTFtQVNtXM2ksZJ26
	08FXROwzVMvBmCLVRawg0te7wtrbX1hyV/4PFrYE+xUq/P2i5jYe1RJrGuVhFRuv
	exAtOxRck8HKojKGxhr1A+D4icQeEdRoq+Inzgeb9E/ErshFg1JaatgnaFYsE=
X-ME-Sender: <xms:joAqWHo_OUtPG3m9QziNtpDz_PmNPFNDnWTBoRXHJOjaBYzY3qlwtQ>
X-Sasl-enc: jy5zBb8nLL+S1Vt3Jk/73Fz8ssALOZvuDvWq9stH7kSw 1479180430
Date: Mon, 14 Nov 2016 22:27:07 -0500
From: Leo Famulari <leo@famulari.name>
To: oss-security@lists.openwall.com
Cc: fulldisclosure@seclists.org, bugtraq@securityfocus.com
Message-ID: <20161115032707.GA5104@jasmine>
References: <88958a9e-25c1-97ce-1800-bc4bff93d9a9@hmarco.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="J/dobhs11T7y2rNN"
Content-Disposition: inline
In-Reply-To: <88958a9e-25c1-97ce-1800-bc4bff93d9a9@hmarco.org>
User-Agent: Mutt/1.7.1 (2016-10-04)
Subject: Re: [oss-security] CVE-2016-4484: - Cryptsetup Initrd root Shell

--J/dobhs11T7y2rNN
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Nov 14, 2016 at 08:45:51PM +0000, Hector Marco wrote:
> Hello All,
>=20
> Affected package
> ----------------
> Cryptsetup <=3D 2:1

Hi,

Can you clarify which versions are affected?

The latest upstream version is 1.7.3:

https://gitlab.com/cryptsetup/cryptsetup/commits/master

What is the 2:1 version?

--J/dobhs11T7y2rNN
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJYKoCIAAoJECZG+jC6yn8Ih20P/1K0ETdOCLovkNsYMAPxUeNF
KEEbuAHPN3aU24aa/D9MVRLSV423KuoQUOTDgetYzSh0cf0SyZzoa+RM7dPPdOU4
jPF6ka4vThGNl/KnyYH8tynGEjDFG6ZDa+TXc2ySRGnT1vU2iVbzEdhRAyDwPVuY
lwa1n1eZGBXDMO3SVNNZjIwzUzRhZSER7knDmCUV3/313NeOtBK3xQu0quOcZdEv
OPsJxJatbW+yUJ2CqdNo+fKIzdV8+xT2u/5eV3VKp6MELbsrGOVgcNkMS5m1EUih
hUZ3sqotj/T6ua39P7BA0FOpT8Oc8C9v6A/yA3F89IXQWXKOboq/yzppTjlBHXZ8
icCan3Ml0fjoqfWIShwHKq1LBwEI3Bhjh4bp+WxRE3/O2P6iIid4f/NiJKN7iDRp
UbjqWL39zDgbnUaHzhzLxTLfI9lUqdZ2gOf1Pkj9l+4R2gtpHe56b1PxFIQGreTF
K6fUqOqrqofuvpOxojczWmzPhNnQFLgZpfUpx/Ku83Z46Ydpn374aQI7UsrzJDQa
Y36G48PMlNVLpZoDMExTbX3Mle6IcqSXayQSUi28RwdzNXQreoWWsJerx0qDbWQw
D/VNhO0LcoGj1Z1wxXPr6UepnpEKVvfBA+vcVbez3g7xUWha9OQQSRMOfjvUOLMc
0PHNQ8qGFZyHIuY6vv3K
=AA7L
-----END PGP SIGNATURE-----

--J/dobhs11T7y2rNN--
